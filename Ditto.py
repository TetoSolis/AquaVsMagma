import paho.mqtt.client as mqtt
from mcrcon import MCRcon
import ssl

with MCRcon("192.168.1.117", "dracaufeu") as mcr:
    resp = mcr.command("/say mqtt allume")
    print(resp)

mcr = MCRcon("192.168.1.117", "dracaufeu")
mcr.connect()

def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))
    client.subscribe("ESP/#")


def on_message(client, userdata, msg):
#    print(msg.topic+" "+str(msg.payload))
#    print(str(msg.payload))
    if (str(msg.topic) == "ESP/AQUA/buttonPress"):
        if (str(msg.payload) == "b'1'"):
            print("Boutton 1 est pressé.")
            resp = mcr.command("/function aqua:supersaut")
            print(resp)
        elif (str(msg.payload) == "b'2'"):
            print("Boutton 2 est pressé.")
            resp = mcr.command("/function aqua:superpunch")
            print(resp)      
        elif (str(msg.payload) == "b'3'"):
            print("Boutton 3 est pressé.")
            resp = mcr.command("/function aqua:cocon")
            print(resp)     
        elif (str(msg.payload) == "b'4'"):
            print("Boutton 4 est pressé")
            resp = mcr.command("/function aqua:lenteur")
            print(resp)
    elif (str(msg.topic) == "ESP/MAGMA/buttonPress"):
        if (str(msg.payload) == "b'1'"):
            print("Boutton 1 est pressé.")
            resp = mcr.command("/function magma:supersaut")
            print(resp)
        elif (str(msg.payload) == "b'2'"):
            print("Boutton 2 est pressé.")
            resp = mcr.command("/function magma:superpunch")
            print(resp)      
        elif (str(msg.payload) == "b'3'"):
            print("Boutton 3 est pressé.")
            resp = mcr.command("/function magma:cocon")
            print(resp)     
        elif (str(msg.payload) == "b'4'"):
            print("Boutton 4 est pressé")
            resp = mcr.command("/function magma:lenteur")
            print(resp)

    elif (str(msg.topic) == "ESP/AQUA/"):
         if (str(msg.payload) == "b'1'"):
            print("ESP de la team AQUA est connecté.")
            client.publish("aha/08d1f9e8e990/led/cmd_t","ON") 
    elif (str(msg.topic) == "ESP/MAGMA/"):
         if (str(msg.payload) == "b'1'"):
            print("ESP de la team MAGMA est connecté.")
            client.publish("aha/08d1f99a6ac8/led/cmd_t","ON")
    else :
        print("nope")
        return ("Erreur")

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message

client.username_pw_set(username="dracaufeu",password="carapuce")
client.connect("192.168.1.115", 8883, 60) 
client.loop_forever()