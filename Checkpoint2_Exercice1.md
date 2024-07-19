## Q.1.1 Sans changer les adresses IPv4 des 2 machines, montre et explique le résultat d'un ping IPv4 du serveur vers le client.
![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20090943.png?raw=true)

**le ping ne marche pas car il ne sont pas dans le même sous reseau  pour que sa marche il a sufie de modifier l'adress du client pour quel soit dans le meme reseau** 

![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20091252.png?raw=true)

## Q.1.2 Montre et explique le résultat d'un ping du serveur vers le client avec le nom des machines.
**les ping en utilisant le nom de la machine fonctionne le dns sur le serveur et bien configurer** 

![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20091523.png?raw=true)
## Q.1.3 Désactive le protocole IPv6 sur le client.
**j**'ai bien désactivé l IPV6 mais je n'ai pas eu de modification a faire etant donné que sa marchais deja a la question précedente**

## Q.1.4 Change et montre les configurations réseaux sur le client et/ou sur le serveur pour mettre en place le DHCP.
**les dhcp etait deja bien configurer** 

![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20092405.png?raw=true)
**j'ai juste passer le client pour obtenir un adresse automatiquement** 

![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20092516.png?raw=true)
**et j'ai obtenue cette adresse** 

![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20092608.png?raw=true)
## Q.1.5 Explique pourquoi le client ne récupère pas la 1ère adresse disponible sur cette plage.
**Tous simplement car il y a une exclusion de 20 1er adresse** 

![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20093019.png?raw=true)

## Q.1.6 Fais une modification sur le DHCP pour que le client ai l'adresse IP 172.16.10.15.
**j'ai crée une reservation pour le client** 

![](https://github.com/joris511000/checkpoint2/blob/main/Capture%20d'%C3%A9cran%202024-07-19%20093803.png?raw=true)
## Q.1.7 Au vu de tes manipulations, explique l'intérêt de passer ce réseau en IPv6 ?
**c'est plus simple , beaucoup plus d'adresse disponible elle se configure automatiquement meme sans dhcp**

## Q.1.8 Est-ce que dans ce cas le serveur DHCP est obsolète ?
**Bien que IPv6 introduise des méthodes de configuration automatique comme SLAAC, les serveurs DHCPv6 restent cruciaux pour une gestion efficace et centralisée des réseaux, surtout dans les environnements complexes ou de grande envergure. Ils permettent une distribution complète des configurations réseau, assurent la conformité aux politiques administratives et facilitent la transition entre IPv4 et IPv6.**

## Quelle modification peut-on faire sur le serveur DHCP pour qu'il reste actif et qu'il te permette de gérer les adresses IPv6 ?
 **On peut assez facilement configurer les DHCP en IPV6 en lui crée une etendu dans IPV6**