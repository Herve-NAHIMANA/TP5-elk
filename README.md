# TP5 - MISE EN PLACE D'UNE SOLUTION DE CENTRALISATION ET DE GESTION DES LOGS

---------------------------------------------------------------------------------------------------------------------

## Objectif

Le TP consiste à mettre en place une solution de centralisation des logs et de leur gestion.
Les fichiers présents dans ce dépôt, permettra de déployer la solution dans un cluster kubernetes existant.

### Composition du dépôt

Le dépôt est composé d':

- Un dossier **Elasticsearch** qui permet de déployer elasticsearch
- Un dossier imgs qui contient les images
- Un dossier **nginx** pour le déploiement du serveur nginx
- Un fichier **fleet.yaml** pour le déploiement de kibana,fleet.
- Un fichier **deploymnent.sh** qui lancera automatiquement toutes les commandes afin d'avoir un environnement prêt et fonctionnel

#### Prerequis

- Un compte de facturation GCP
- Un cluster

#### Installation de l'environnement

- [Se connecter sur la console gcp](console.cloud.google.com)
- Utiliser un éditeur de texte au choix pour modifier le code
- Cliquer sur **Activer Cloud Shell** ![](imgs/cloudshell.PNG) pour avoir le terminal cloud shell
- Cliquer sur Uploads ![](imgs/Upload.PNG) pour télécharger les fichiers modifiés si ils sont modifiés en déhors de la console.
- se place dans le dossier **tp5-elk** avec ``cd tp5-elk``
- lance avec la commande ``sh deployment.sh`` le fichier de déploiement.
- Lancez la commande ``kubectl get secret elasticsearch-quickstart-es-elastic-user -o=jsonpath='{.data.elastic}' | base64 --decode; echo`` pour récupérer le mot de passer de kibana afin d'accéder à l'interface graphique de kibana.