# TP_DevOps_Terraform

0. Initialiser le projet et télécharger les dépendances grâce à cette ligne de commande
```
terraform init
```
1. Prévisualiser les changements qui vont être réalisés
```
terraform plan
```
2. Appliquer les changements
```
terraform apply
```
3. Récupérer l'adresse IP du container
```
docker inspect server1
```
4. Tester la connection SSH en passant par l'hôte ou se connecter directement en SSH au container via son adresse IP (mot de passe : test)
```
ssh test@localhost -p 24
```
ou
```
ssh test@<adresse_IP_container>
```