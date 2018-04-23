# 2048
Projet C++ pour l'école Centrale de Lyon.

But: recréer le jeu 2048 en C++.

ABRESOL Victor

BLIGAND Océane


Le jeu peut être ouvert à l'aide Qt (branche master).
Le jeu est constitué d'une grille de 4x4. 
Les contrôles du jeu sont les flêches directionnelles du clavier.
Pour commencer simplement appuyer sur l'une des flêche. Après le principe est exactement celui du jeu original 2048.
Nous avons ajouter des couleurs différentes pour chaque valeur que peut prendre les cases (jusqu'à 2048). Le jeu peut théoriquement aller au delà de 2048 mais les cases resterons grises.
Le score actuel est affiché au dessus de la grille ainsi que le meilleur score juste à côté (ce meilleur score est remis à 0 à chaque lancement du jeu, pour voir une différence avec le score actuel il faut donc avoir fait au moins une autre partie avant).
En dessous de la grille il y a un bouton retour qui permet de revenir à l'état précédent de la grille en cas d'erreur. Toutefois cela ne permet de revenir qu'une seule fois en arrière.
Il y a également un bouton nouvelle partie permettant de redémarrer le jeu à tout moment.


Les autres branches que le master sont des branches pour tester des animations tel que le déplacement des cases. Ces tests n'ont pas aboutis.
