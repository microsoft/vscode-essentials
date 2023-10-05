## La gestion de git dans VS Code

Si vous travaillez en équipe ou sur votre propre projet, il est fort probable que vous utilisez _git_ afin de gérer votre code source. Git est le standard de-facto pour la gestion de contrôle du code source. VS Code vous permet de travailler aisément avec Git. Dans cette partie, nous allons voir les principales fonctionnalités dont vous aurez besoin au quotidien.

> Pour cette section, nous considérons que vous connaissez déjà les bases de Git (qu'est-ce qu'un repository, un clone, un commit). Si vous découvrez Git, nous vous conseillons de suivre ces modules gratuits en ligne https://learn.microsoft.com/training/paths/intro-to-vc-git/.

### Initialiser ou cloner un dépôt

Afin de travailler avec Git, vous devez être dans un répertoire qui est déjà un dépôt git. Si vous avez déjà un tel répertoire sur votre machine - par exemple parce que vous l'avez cloné via la ligne de commande ou un autre outil - il vous suffit d'ouvrir le répertoire avec VS Code.

Vous avez un dossier contenant votre code, mais ce n'est pas encore un dépôt git ? Vous pouvez simplement créer un dépôt en ouvrant ce répertoire, puis en cliquant sur le bouton **Initialiser le dépôt** dans la barre latérale _Contrôle de code source_.

![](./images/global-git.png)

Si vous avez déjà un dépôt distant, par exemple sur GitHub, vous pouvez simplement le cloner avec la commande `Git: Cloner`.

### Commit, push & pull

Vous avez maintenant ouvert un dépôt git dans VS Code. Une fois votre travail terminé, il est temps de commiter. La barre latérale _Contrôle de code source_ vous permet de visualiser les fichiers en cours d'édition ainsi que leur statuts par rapport à git : sont-t-ils trackés? Sont-ils indexés pour le prochain commit (ou _staged_ en anglais) ?

L'état de suivi apparaît à droite du nom du fichier : M pour _modifié_, D pour _supprimé_, U pour _non tracké_, A pour _ajouté_. Les fichiers sont regroupés sous deux sections : _Changements_ pour les fichiers modifiés mais non indexés, et _Changements indexés_ pour les fichiers qui vont être inclus dans le commit.

Valider (_commit_) des modifications dans Git nécessite d'ajouter un message descriptif qui explique la nature de chaque modification. Vous pouvez l'ajouter dans le champ _Messages_ en haut de la barre latérale. Une fois votre message ajouté, cliquez sur **Validation**, et voilà ! Vos modifications sont maintenant stockés dans un commit.

Pour partager ce commit avec vos collègues, il vous faut l'envoyer sur votre dépôt distant. La commande _push_ est accessible depuis plusieurs endroits : dans la barre d'état, à droite du nom de la branche courante, dans la palette de commande `Git : push`, ou encore dans le menu contextuel de la barre latérale, accessible sur l'icône **...** en haut à droite.

Récupérer les commits distants se fait aussi simplement à l'aide de la commande `Tirer (pull)`, accessibles aux mêmes endroits que la commande push.

VS Code vous proposera également une commande `Synchroniser les changements` qui va effectuer ces deux commandes séquentiellement.

### Branches et tags

Vous pouvez gérer les branches et les tags depuis VS Code simplement. Tout d'abord via la barre d'état, la branche courante est affichée en permanence. Il suffit de cliquer dessus afin d'explorer la liste des branches, distantes et locales, et de passer sur une autre branche.

Lorsque vous êtes sur le point de faire une release de votre projet, il est courant d'utiliser des tags pour "marquer" ce moment dans le temps, ou plus exactement le commit correspondant à cette livraison. Le moyen le plus simple pour créer un _tag_ est d'exécuter la commande `Git : Créer une balise` dans la palette. N'oubliez pas de pousser vos changements sur le dépôt distant afin que les tags soient accessibles par toute l'équipe.

### Gérer les conflits

Faire un _push_ ou un _pull_ est généralement facile... Jusqu'à ce qu'apparaisse un conflit ! Dans ces cas-là, vous aurez toujours du travail à faire, mais VS Code sera là pour vous aider !

Lorsqu'une opération engendre un conflit, VS Code regroupera les fichiers en conflit dans la section **Fusionner les changements**. Vous aurez alors un aperçu des confits. En ouvrant l'éditeur de fusion (via le bouton **Résoudre dans l'éditeur de fusion** en bas à droite de l'éditeur).

![](./images/merge.png)

Une fois le confit résolu, vous pouvez simplement valider le commit.

<!-- >
### Status & gutter indicators

- Commit to push
- Line diff & commit
-->
<!-- Ajouter un tableau qui compare les icônes dans la status bar -->

### Comprendre l'historique

Nous venons de voir les étapes principales de l'utilisation de Git dans VS Code. Il reste un outil essentiel : explorer l'historique Git.

Vous pouvez explorer l'historique de n'importe quel fichier avec l'option **Ouvrir la chronologie** du menu contextuel de l'explorateur de fichiers. La chronologie s'ouvre alors en bas du panneau de l'explorateur de fichiers. Un double-clic sur un commit ouvrira le diff correspondant au fichier sélectionné.

Si vous souhaitez aller plus loin, je vous conseille l'extension **Git Graph**. Une fois installé, vous pouvez afficher le graphe des commits et des branches via la commande `Git Graph: View git graph``. Vous aurez ainsi accès à une représentation visuelle de votre historique de commit, à la liste des tags.

![](./images/git-graph.png)

Pour des usages plus avancés, cette extension vous permet également de faire un _checkout_ ou un _cherry-pick_ de commits en particulier.

> **Astuce** : Vous pouvez accéder à la ligne de commande git depuis l'éditeur intégré. De plus, le panneau de sortie _git_ vous permet de voir les commandes git exécutées pour vous par VS Code.
