# Note: tout texte qui débute par un # (dièse) est rendu inactif dans R
# Cela permet d'ajouter des informations ou des commentaires.
# Veuillez commenter vos scripts pour que l'on comprenne ce que vous faites.

# VOS NOMS ICI / Hiver 2020


##### EXERCICE 1 ######

# Créer une structure de données appropriée

# a) La fonction c() permet de créer des vecteurs ou des listes (c = concatenate)
#    Pour créer un vecteur avec les comptes d'animaux et le nom des variables (EXEMPLE) :
#    vec <- c(a=1,b=2,...)



# b) La fonction barplot() permet de créer des diagrammes en batons. Je vous donne une liste d'options.
#    barplot(..., main='Titre', xlab='Axe des X', ylab='Axe des Y', col="pink", cex.main=1.2, cex.lab=1.2, cex.axis=1.2)



# c) La fonction sum() permet de calculer... des sommes
# Consulter la section sur l’indexation (p54) du document R_101_debutant_Fr.pdf



##### EXERCICE 2 ######

# a) Chargez le fichier de données BIO1006_H2017_TP1_Q2.txt
# Vous devez l'enregistrer dans votre répertoire courant (l'espace de travail défini en début de session RStudio).
# La fonction read.table() permet de charger les données d'un fichier sous forme de 'data.frame' (structure de données).
# Vous devez utiliser l'option read.table(..., header=T) car il y a des en-têtes, c'est à dire un nom pour chaque colonne.
x <- read.table("BIO1006_TP1_Q2.txt", header=TRUE)


# b) Représentation graphique: Boxplot. Je vous donne une série d'options.
boxplot(x$chlorophylle ~ x$site, col=c("red","orange","yellow","green","blue"), xlab="X", ylab="Y", main = "Titre", cex.lab=1.5, cex.main=1.5, cex.axis=1.5)

#    Notez le signe ~ qui indique ici qu'on souhaite représenter la variable "chlorophylle" en fonction de la variable "site".
#    Il s'agit de la syntaxe normale pour définir un modèle linéaire dans R (x~y = x "en fonction de" y).
#    col: ici il y a un vecteur de 5 couleurs; libre à vous de mettre les couleurs de votre choix (voir aussi Rcolor.pdf pour d'autres exemples)
#    Pour sauvegarder vos figures, vous pouvez utiliser la fonction 'Export' de la fenetre de graphique de RStudio.

par(mar=c(5,6,4,2)) # voir les options de la fonction par(). Permet ici de laisser plus de place sur le graphique pour les légendes des axes.


# c) Obtenir la médiane et la valeur maximale de coliformes par site d'échantillonnage
# Vous pouvez utiliser la fonction summary() OU les fonctions max() et median()
# Consulter la section sur l’indexation (p54) du document R_101_debutant_Fr.pdf



# d) Ajoute des lignes de référence pour voir les niveaux seuils
# Utilisez la fonction lines(c(x1,x2), c(y1,y2) ,lwd=3, lty=4, col="black")
# Un exemple complet qui produit un graphique similaire est disponible p31 du document R_101_debutant_Fr.pdf


### fin !