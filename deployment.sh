#!/bin/bash

# Création des variables
export PROJET=pojet-ecole # Change me
export REGION=europe-west9 # Change me
export ZONE=europe-west9-a # Change me
export CLUSTER=herve-cluster # Change me

# 1- Connexion au cluster
gcloud container clusters get-credentials $CLUSTER --zone $ZONE --project $PROJET

# 2- Creation des ressources Elastic
kubectl create -f https://download.elastic.co/downloads/eck/2.10.0/crds.yaml

# 3- Installation de l'operateur
kubectl apply -f https://download.elastic.co/downloads/eck/2.10.0/operator.yaml

# 4- Attente du déploiement de l'operator
sleep 30

# 5- Deploiement d'Elasticsearch

kubectl apply -f ./elasticsearch/elasticsearch-deployment.yaml

# 6 - Déploiement de kibana, fleet

kubectl apply -f fleet.yaml

# Déploiement du serveur nginx et son service

kubectl apply -f ./nginx/nginx-deployment.yml

kubectl apply -f ./nginx/nginx-service.yml
