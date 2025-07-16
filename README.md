# Game of life - KATA

Ce Kata consiste à calculer la prochaine génération du « Game of Life » de Conway, à une position de départ donnée.

Le Game of Life n’est pas un jeu, puisqu'il ne nécessite aucun joueur ; il s’agit d’un automate cellulaire, un modèle où chaque état conduit mécaniquement à l’état suivant à partir de règles pré-établies.

Le jeu commence avec une grille de cellules à deux dimensions, où chaque cellule est soit vivante, soit morte. Pour le Kata, la grille est finie et aucune cellule ne peut exister or des limites de la grille.

Lors du calcul de la prochaine génération sur la grille, les règles suivantes sont respectées :

1 - Toute cellule vivante avec moins de deux cellules voisines vivantes meurt, pour cause de sous-population

2 - Toute cellule vivante avec plus de trois cellules voisines vivantes meurt, pour cause de surpopulation

3 - Toute cellule vivante avec deux ou trois cellules voisines vivantes vit à la prochaine génération.

4 - Toute cellule morte avec exactement trois cellules voisines vivantes devient une cellule vivante.

## Stack technique

- [Typescript](https://www.typescriptlang.org/)
- [PNPM](https://pnpm.io/)
- [ESLint](https://eslint.org/)
- [Jest](https://jestjs.io/)
- [Docker](https://www.docker.com/)
- GitHub Actions (CI/CD)

## Prerequis

Il faut avoir installer sur sa machine les éléments suivant:

- [Nodejs](https://nodejs.org/en) (avec npm)

## Installation

Pour installer l'environnement il vous suffit de lancer:

- Si vous êtes sur WLS/Linux/MAC : l'executable setup.sh
- Si vous êtes sur Windows: setup.ps1

## Configuration pre-push et commit message git

Après avoir exécuté les installation de projet il va falloir initialisé le pre-push de git pour cela il faudra faire la commande:

```bash
git config core.hooksPath githooks
```

Pour WSL/Linux/Mac il faudra aussi faire la commande:

```bash
chmod +x githooks/pre-push githooks/pre-push.sh
```

De plus pour les commits il faudra ajouter la commande :

```bash
git config commit.template githooks/.gitmessage.txt
```

## Commande du projet

**dev**: Lancer le projet sans le build
**lint**: Lancer le linter
**lint:fix**: Lancer le linter avec les fix automatique
**format**: Lancer les test prettier
**test**: Lancer les tests unitaires
**build**: Build le projet
**start**: Lance le projet builder
**build:local**: Pour lancer le linter, le prettier, les tests, le build puis start le projet pour éviter de faire toutes les commandes une par une en local.

## Dockerisation

Pour construire l'application sur Docker il suffira de faire la commande :

```bash
docker compose up --build
```

Pour l'arreter il suffira de faire la commande :

```bash
docker compose down
```
