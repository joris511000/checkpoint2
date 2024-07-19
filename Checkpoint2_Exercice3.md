# exercice 3
### Q.3.1 Quel est le matériel réseau A ?
Quel est son rôle sur ce schéma vis-à-vis des ordinateurs ?

**c'est un switch, son role est de relier tos les appareil d'un meme sous reseau ensemble en l'ocurence ici des ordinateur** 

### Q.3.2 Quel est le matériel réseau B ?
Quel est son rôle pour le réseau 10.10.0.0/16 ?

**c'est un routeur, son role est de servire de passerelle entre plusieur sous reseau, ici il relie le reseau 10.10.0.0/16 au reseau 10.12.2.0/24 contrairement au switch que ne lie pas les adresse ip le routeur les lie et les oriente vers le bon sous reseau si il les connais.**  

### Q.3.3 Que signifie f0/0 et g1/0 sur l’élément B ?

**Ce sont des port Ethernet "F" sgnifie Fastethernet et "G" gigaethernet les numero quand a eux sont leur numero de port et de routeur**

### Q.3.4 Pour l'ordinateur PC2, que représente /16 dans son adresse IP ?

**SA reprensente sont masque sous reseau "/16" signifie que son masque sous reseau est 255.255.0.0**

### Q.3.5 Pour ce même ordinateur, que représente l'adresse 10.10.255.254 ?

**C'est son adresse hote**  

### Q.3.6 Pour les ordinateur PC1, PC2, et PC5 donne :

```
PC1
Adresse de Réseau : 10.10.0.0
Première Adresse Disponible : 10.10.0.1
Dernière Adresse Disponible : 10.10.255.254
Adresse de Diffusion : 10.10.255.255
PC2
Adresse de Réseau : 10.11.0.0
Première Adresse Disponible : 10.11.0.1
Dernière Adresse Disponible : 10.11.255.254
Adresse de Diffusion : 10.11.255.255
PC5
Adresse de Réseau : 10.10.0.0
Première Adresse Disponible : 10.10.0.1
Dernière Adresse Disponible : 10.11.255.253
Adresse de Diffusion : 10.11.255.255
```
### Q.3.7 En t'aidant des informations que tu as fourni à la question 3.6, et à l'aide de tes connaissances, indique parmi tous les ordinateurs du schéma, lesquels vont pouvoir communiquer entre-eux.

 **les PC1, PC3, PC4, et PC5 peuvent communiquer ensemble le pc 2 n'est pas sur le bon sous reseau** 

 ### Q.3.8 De même, indique ceux qui vont pouvoir atteindre le réseau 172.16.5.254

**PC1, PC2, PC3, PC4, et PC5 peuvent tous atteindre le réseau 172.16.5.0/24 puisque leurs sous-réseaux couvrent le réseau de destination et la passerelle par défaut devrait être en mesure de router le trafic vers ce réseau.**

### Q.3.9 Quel incidence y-a-t'il pour les ordinateurs PC2 et PC3 si on interverti leur ports de connexion sur le matériel A ?

**Ces 2 pc ne pouront plus communiqué avec d'autre machine car il seront dans un reseau incorecte pour eux** 

### Q.3.10 On souhaite mettre la configuration IP des ordinateurs en dynamique. Quelles sont les modifications possible ?

**Mettre en place un serveur DHCP** 
## fichier1 
### Q.3.11 Sur le paquet N°5, quelle est l'adresse mac du matériel qui initialise la communication ? Déduis-en le nom du matériel.
**l'adresse mac Source : 00:50:79:66:68:00  et 00:50:79 est un OUI attribué à Apple Inc.**

### Q.3.12 Est-ce que la communication enregistrée dans cette capture a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.
**oui, elle a bien fonctionner on vois bien les demande et reponse entre des appareil Apple Inc.**


### Q.3.13 Dans cette capture, à quel matériel correspond le request et le reply ? Donne le nom, l'adresse IP, et l'adresse mac de chaque materiel.
**request ip 10.10.4.1 MAC adresse 00:50:79:66:68:00 Apple Inc PC1**

**reply ip 10.10.4.2 MAC adress 00:50:79:66:68:03 Apple Inc PC4**

### Q.3.14 Dans le paquet N°2, quel est le protocole encapsulé ? Quel est son rôle ?
**c'est le protocol ARP. Lorsqu'un périphérique (appelé "émetteur") souhaite envoyer des données à un autre périphérique sur le réseau local mais ne connaît pas l'adresse MAC correspondant à l'adresse IP cible, il envoie une requête ARP.**

### Q.3.15 Quels ont été les rôles des matériels A et B dans cette communication ?
**les switch (A) a permit la liaison entre les 2 machine  les routeur (B) n'a pas servie dans ce cas il sont dans me même sous reseau** 
# Effectué en dehors du timing
## Fichier 2 

### Q.3.16 Dans cette trame, qui initialise la communication ? Donne l'adresse IP ainsi que le nom du matériel.
**Appareil Source MAC (ca:01:da:d2:00:08) IP 10.10.80.3 routeurB** 
### Q.3.17 Quel est le protocole encapsulé ? Quel est son rôle ?
**c'est le protocol icmp,  Il permet aux systèmes d'échanger des informations sur les problèmes rencontrés lors de la transmission des paquets et d'effectuer des diagnostics pour assurer une communication réseau fluide.** 
### Q.3.18 Est-ce que cette communication a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.
**non elle na pas fonctionné car il se sous pas dans ke meme sous reseau** 

### Q.3.19 Explique la ligne du paquet N° 2
**c'est la response du routeur au ping qui lui dis qu'il na pas trouver l'adresse demander**

### Q.3.20 Quels ont été les rôles des matériels A et B ?
**le role du switch (A) a ete de transmettre la requete dans tous le sous reseau et au routeur (B) et celui si ne connaissant pas l'adresse demander a repondu qu'il ne la connaisait pas**
## Fichier 3 :

### Q.3.21 Dans cette trame, donne les noms et les adresses IP des matériels sources et destination.
**source: routeur (B) ip 10.10.4.2**
**destiantion : routeur (R2) 172.16.5.253** 
### Q.3.22 Quelles sont les adresses mac source et destination ? Qu'en déduis-tu ?
**source: mac adress ca:01:da:d2:00:1c** 
**destination: mac adress ca:03:9e:ef:00:38**
### Q.3.23 A quel emplacement du réseau a été enregistré cette communication ?
**La communication a été enregistrée dans un réseau interne privé, typiquement un réseau d'entreprise, où les adresses IP privées sont utilisées. Les adresses MAC indiquent les équipements spécifiques au sein du réseau**