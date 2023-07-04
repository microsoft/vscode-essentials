## Les fonctions d'édition avancées

Quand l'on passe une grande partie de son temps à éditer du code, il est important de pouvoir le faire rapidement et efficacement. VS Code propose de nombreuses fonctionnalités d'édition avancées qui vous permettront de gagner du temps et de vous concentrer ainsi sur l'essentiel.

### Navigation rapide

Naviguer rapidement parmi plusieurs fichiers est une tâche indispensable lorsque l'on code. La méthode la plus efficace est d'utiliser le raccourci `ctrl+p` (ou `cmd+p` sur Mac). Le panneau de navigation rapide s'affiche alors, et vous liste les fichiers de votre projet par ordre d'utilisation récente.

TODO ![Navigation de fichier rapide](./images/quick-navigation.png)

Plusieurs options s'offrent alors à vous:

- Si vous appuyez à nouveau sur `ctrl+p` (ou `cmd+p` sur Mac), vous basculerez automatiquement sur le dernier fichier ouvert précédemment. C'est une méthode très efficace pour naviguer rapidement entre deux fichiers, par exemple lorsque vous écrivez des tests unitaires pour une classe. En gardant appuyé `ctrl` (ou `cmd` sur Mac), et en appuyant sur `p` plusieurs fois, vous pouvez aller encore plus loin dans l'historique des fichiers ouverts.
- Vous pouvez saisir une partie du nom du fichier que vous recherchez, et VS Code vous proposera les fichiers correspondants dans votre projet.
- En rajoutant un `@` après votre recherche, vous pouvez rechercher un symbole dans le fichier ciblé. Cela peut être une variable, une fonction, une classe, etc. Si vous n'avez pas saisi de recherche, cela vous permet de naviguer dans le fichier courant.
- En rajoutant un `:` après votre recherche, vous accéder directement à une ligne spécifique dans le fichier ciblé. De même que précedemment, cela fonctionne aussi pour le fichier courant.

Si vous ne connaissez pas bien la structure du projet et le nom des fichiers, une autre alternative est d'utiliser le raccourci `shift+ctrl+.` (ou `shift+cmd+.` sur Mac). Cela va ouvrir la barre de navigation (_breadcrumbs_), qui vous permettra de naviguer dans le fichier courant et remonter l'arborescence de votre projet en utilisant les flèches du clavier.

### Refactoring

Un besoin récurrent lorsque l'on code est de pouvoir renommer rapidement une variable, une fonction, ou une classe. VS Code permet de le faire très facilement, en utilisant la commande `Rename Symbol` (ou `Renommer le symbole` en français). Pour l'utiliser, placez votre curseur sur le symbole à renommer, puis appuyez sur `F2`. Vous pouvez également utiliser le raccourci clavier `ctrl+r` (ou `cmd+r` sur Mac). Une fois la commande exécutée, vous pouvez saisir le nouveau nom du symbole, et VS Code se chargera de le remplacer partout dans votre code.

- code formatting (prettier)

### Edition multi-curseurs

`ctrl+d`

`shift+alt+cmd+haut/bas`

### Snippets

Emmet

### Edition collaborative

live share

regex search/replace?

> **Le saviez-vous ?** Il est possible d'insérer facilement des emojis à tout moment dans VS Code grâce à l'Emoji Picker intégré. Pour l'ouvrir, utilisez le raccourci clavier `ctrl+i` (ou `cmd+i` sur Mac). Vous pouvez ensuite rechercher un emoji par son nom, et l'insérer dans votre code en appuyant sur `Entrée`.
