#include <WiFi.h>
#include <ArduinoHA.h>
#define BROKER_ADDR     IPAddress(192, 168, 1, 115)
#define WIFI_SSID       "plouf"
#define WIFI_PASSWORD   "dracaufeu"
#define LED_PIN         2  // Assuming the LED is connected to GPIO pin 2


WiFiClient client;
HADevice device;
HAMqtt mqtt(client, device);

// Define a Home Assistant switch
HASwitch ledSwitch("led");

const int but1 = 34; 
const int but2 = 35;
const int but3 = 32;
const int but4 = 33;
int firstload = 0;

void onSwitchCommand(bool state, HASwitch* sender)
{
    Serial.print("Received switch command: ");
    Serial.println(state ? "ON" : "OFF");
    digitalWrite(LED_PIN, state ? HIGH : LOW);
    sender->setState(state); // report state back to Home Assistant
}

void setup()
{
  pinMode(but1, INPUT);
  pinMode(but2, INPUT);
  pinMode(but3, INPUT);
  pinMode(but4, INPUT);

  // Unique ID must be set! Using the MAC address as a unique identifier.
  byte mac[6];
  WiFi.macAddress(mac);
  device.setUniqueId(mac, sizeof(mac));
  Serial.begin(921600);
  delay(10);
  // We start by connecting to a WiFi network
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.println();
  Serial.println();
  Serial.print("Waiting for WiFi... ");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }
  Serial.println();
  Serial.println("Connected to the network");
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  delay(500);

  // Set device details (optional)
  device.setName("ESP-AQUA");
  device.setSoftwareVersion("1.0.0");

  // Initialize LED pin
  pinMode(LED_PIN, OUTPUT);
  digitalWrite(LED_PIN, LOW);

  // Set up Home Assistant switch
  ledSwitch.onCommand(onSwitchCommand);
  ledSwitch.setName("LED Switch"); // optional

  mqtt.begin(BROKER_ADDR,8883,"dracaufeu","carapuce");
  
}

void loop()
{
  mqtt.loop();
  if( firstload == 0){mqtt.publish("ESP/AQUA/", "1"); firstload = 1;}
  delay(100);
  if( digitalRead(but1)==1 ){
    Serial.println("Boutton 1 pressé.");
    mqtt.publish("ESP/AQUA/buttonPress", "1");
    while(digitalRead(but1)==1){delay(50);Serial.print(".");}
    Serial.println("fin de la pression");
  }
  else if( digitalRead(but2)==1 ){
    Serial.println("Boutton 2 pressé.");
    mqtt.publish("ESP/AQUA/buttonPress", "2"); 
    while(digitalRead(but2)==1){delay(50);Serial.print(".");}
    Serial.println("fin de la pression");
  }
  else if( digitalRead(but3)==1 ){
    Serial.println("Boutton 3 pressé.");
    mqtt.publish("ESP/AQUA/buttonPress", "3"); 
    while(digitalRead(but3)==1){delay(50);Serial.print(".");}
    Serial.println("fin de la pression");
  }
  else if( digitalRead(but4)==1 ){
    Serial.println("Boutton 4 pressé.");
    mqtt.publish("ESP/AQUA/buttonPress", "4"); 
    while(digitalRead(but4)==1){delay(50);Serial.print(".");}
    Serial.println("fin de la pression");
  }
}