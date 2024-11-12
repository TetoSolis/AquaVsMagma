***
# Gant Connecté pour Environnement Virtuel : Mini-jeu Minecraft

## Introduction

Ce projet a pour objectif d’intégrer un **gant connecté** dans un environnement virtuel en utilisant un **ESP32** pour interagir avec le jeu **Minecraft**. L’expérience de jeu devient immersive et interactive grâce à l’activation de **super pouvoirs** lors d’un mini-jeu, opposant deux équipes en réseau.

---

## 📦 Matériel Utilisé

### Liste du matériel à disposition :

- 2 Raspberry Pi
- 2 ESP32
- Borne Linksys
- Ordinateurs portables
- Platine de montage
- Boutons
- Câbles

---

## 🎯 Définition du Projet

Ce projet repose sur plusieurs **User Stories**, définissant les fonctionnalités attendues :

### **User Story 1 : Jouer en réseau avec un objectif compétitif**

1. **Mise en réseau** :
    - Connecter les Raspberry Pi et ESP32 dans un réseau local.
2. **Serveur Minecraft** :
    - Héberger un serveur permettant plusieurs connexions simultanées.
3. **Mini-jeu** :
    - Cacher aléatoirement un diamant dans l’univers du jeu.
    - Deux équipes s’affrontent pour trouver ou défendre ce diamant.

### **User Story 2 : Super pouvoirs et pièges activés par les gants connectés**

1. **Super pouvoirs et malus** :
    - Chaque joueur dispose d’un gant connecté pour activer des pouvoirs spéciaux ou poser des pièges.
2. **Boutons par doigt** :
    - Chaque doigt (hors pouce) déclenche une action spécifique dans le jeu.

### **User Story 3 : Gant autonome et interactions en temps réel**

1. **Alimentation autonome** :
    - Les gants doivent fonctionner sur batterie.
2. **Communication via MQTT** :
    - Un serveur MQTT sera utilisé pour échanger les données entre les ESP32 et les Raspberry Pi.
3. **Proximité et victoire** :
    - Les joueurs recevront des indications sur leur distance au diamant. Une notification apparaîtra lorsqu’un joueur se rapproche ou remporte la partie.

### **User Story 4 : Configuration et stabilité**

1. **Réglages personnalisables** :
    - Assigner des super pouvoirs aux doigts.
    - Configurer un délai anti-rebond.
    - Augmenter le nombre de joueurs pris en charge.

---

## ⚔️ Règles du Mini-Jeu

- **Objectif** : Trouver et casser le bloc de diamant caché en 10 minutes, ou empêcher l’équipe adverse de le faire.
- **Équipes** :
    - 2 équipes de 2 joueurs.
    - Chaque équipe dispose d’un **combattant** (casse ou défend le diamant) et d’un **sorcier** (active les pouvoirs pour soutenir son coéquipier).
- **Victoire** : La partie se termine lorsque :
    - Le bloc de diamant est détruit.
    - 10 minutes se sont écoulées sans que le diamant ne soit trouvé.

---

## 🔧 Fonctionnalités Techniques

### **I. Réseau et serveur Minecraft**

- Configuration d’un réseau local avec Raspberry Pi et ESP32.
- Hébergement d’un serveur Minecraft pour plusieurs joueurs.
- Mise en place d’un système de génération aléatoire pour cacher le bloc de diamant.

### **II. Super pouvoirs et pièges**

- Création de pouvoirs personnalisés activés via les gants connectés.
- Actions spécifiques liées à chaque bouton des gants.

### **III. Interaction et affichage en temps réel**

- Détection de la distance au diamant avec un retour visuel aux joueurs.
- Système d’affichage des notifications de victoire ou de proximité.

### **IV. Configuration des gants**

- Assignation des pouvoirs à chaque doigt.
- Gestion de la stabilité (anti-rebond).
- Compatibilité avec un plus grand nombre de joueurs.

***
## 🤝 Contributeurs

- Guillaume Greder (TetoSolis)
- Xavier Knoeppfler
- Théo Marchand
- Yanis Dezzaz

> _Ce projet a été développé dans le cadre d’une SAE._

***