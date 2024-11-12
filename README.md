### Gant Connecté pour Environnement Virtuel : Mini-jeu Minecraft

#### 🎥 Présentation de la Vidéo

La vidéo liée au projet est divisée en **deux parties distinctes** :

1. **Présentation et explication** : Une introduction détaillée au projet, expliquant le fonctionnement, les objectifs, et les éléments techniques.
2. **Démonstration** : Une mise en pratique montrant le gant connecté en action dans l'environnement Minecraft.

**💡 Astuce :**  
Vous n'êtes pas obligé de regarder les deux parties dans leur intégralité. Vous pouvez :

- Visionner uniquement la **présentation** si vous souhaitez comprendre les détails techniques et conceptuels.
- Passer directement à la **démonstration** pour voir le projet en fonctionnement.

[**Voir la vidéo ici**](https://www.youtube.com/watch?v=33_mbglr2H0)

---

### Introduction

Ce projet vise à intégrer un **gant connecté** dans un environnement virtuel, permettant aux utilisateurs d'interagir avec le jeu **Minecraft**. L'objectif est de rendre l'expérience de jeu immersive grâce à des **super pouvoirs** activés dans un mini-jeu compétitif opposant deux équipes connectées en réseau.

---

### 📦 Matériel Utilisé

Pour ce projet, nous avons utilisé :

- **2 Raspberry Pi**
- **2 ESP32**
- **Borne Linksys**
- **Ordinateurs portables**
- **Platine de montage**
- **Boutons**
- **Câbles**

---

### 🎯 Définition du Projet

Le projet repose sur plusieurs **User Stories**, décrivant les fonctionnalités principales :

#### **User Story 1 : Jouer en réseau avec un objectif compétitif**

- **Mise en réseau** : Connecter les Raspberry Pi et ESP32 dans un réseau local.
- **Serveur Minecraft** : Héberger un serveur permettant plusieurs connexions simultanées.
- **Mini-jeu** :
    - Cacher un **diamant** aléatoirement dans l’univers du jeu.
    - Les équipes s’affrontent pour trouver ou défendre ce diamant.

#### **User Story 2 : Super pouvoirs et pièges activés par les gants connectés**

- **Super pouvoirs et malus** : Chaque joueur active des pouvoirs ou pose des pièges via les gants.
- **Boutons par doigt** : Chaque doigt (hors pouce) déclenche une action spécifique dans le jeu.

#### **User Story 3 : Gant autonome et interactions en temps réel**

- **Alimentation autonome** : Les gants fonctionnent sur batterie.
- **Communication via MQTT** : Les ESP32 échangent des données avec les Raspberry Pi via un serveur MQTT.
- **Proximité et victoire** :
    - Notifications sur la distance au diamant.
    - Indications en cas de victoire ou rapprochement.

#### **User Story 4 : Configuration et stabilité**

- **Réglages personnalisables** :
    - Assignation des super pouvoirs aux doigts.
    - Délai anti-rebond configurable.
    - Augmentation du nombre de joueurs pris en charge.

---

### ⚔️ Règles du Mini-Jeu

- **Objectif** : Trouver et casser le bloc de diamant caché en **10 minutes** ou empêcher l’équipe adverse de le faire.
- **Équipes** :
    - 2 équipes de 2 joueurs (1 combattant et 1 sorcier).
- **Victoire** :
    - Le bloc de diamant est détruit.
    - Les 10 minutes s’écoulent sans que le diamant ne soit trouvé.

---

### 🔧 Fonctionnalités Techniques

#### **I. Réseau et serveur Minecraft**

- Configuration d’un réseau local avec Raspberry Pi et ESP32.
- Hébergement d’un serveur Minecraft multi-joueurs.
- Génération aléatoire du bloc de diamant.

#### **II. Super pouvoirs et pièges**

- Activation de pouvoirs personnalisés via les gants.
- Actions spécifiques liées aux boutons.

#### **III. Interaction et affichage en temps réel**

- Détection de la distance au diamant avec un retour visuel.
- Notifications de victoire ou de proximité.

#### **IV. Configuration des gants**

- Assignation des pouvoirs par doigt.
- Gestion de la stabilité (anti-rebond).
- Compatibilité pour un plus grand nombre de joueurs.

---

### 🤝 Contributeurs

- **Guillaume Greder (TetoSolis)**
- **Xavier Knoeppfler**
- **Théo Marchand**
- **Yanis Dezzaz**

Projet développé dans le cadre d’une SAE.
