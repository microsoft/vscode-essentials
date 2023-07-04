## Les fonctions d'édition avancées

Quand l'on passe une grande partie de son temps à éditer du code, il est important de pouvoir le faire rapidement et efficacement. VS Code propose de nombreuses fonctionnalités d'édition avancées qui vous permettront de gagner du temps et de vous concentrer ainsi sur l'essentiel.

### Navigation rapide

Naviguer rapidement parmi plusieurs fichiers est une tâche indispensable lorsque l'on code. La méthode la plus efficace est d'utiliser le raccourci `Ctrl+P` (ou `Cmd+P` sur Mac). Le panneau de navigation rapide s'affiche alors, et vous liste les fichiers de votre projet par ordre d'utilisation récente.

![Navigation de fichier rapide](./images/quick-navigation.png)

Plusieurs options s'offrent alors à vous:

- Si vous appuyez à nouveau sur `Ctrl+P` (ou `Cmd+P` sur Mac), vous basculerez automatiquement sur le dernier fichier ouvert précédemment. C'est une méthode très efficace pour naviguer rapidement entre deux fichiers, par exemple lorsque vous écrivez des tests unitaires pour une classe. En gardant appuyé `Ctrl` (ou `Cmd` sur Mac), et en appuyant sur `P` plusieurs fois, vous pouvez aller encore plus loin dans l'historique des fichiers ouverts.
- Vous pouvez saisir une partie du nom du fichier que vous recherchez, et VS Code vous proposera les fichiers correspondants dans votre projet.
- En rajoutant un `@` après votre recherche, vous pouvez rechercher un symbole dans le fichier ciblé. Cela peut être une variable, une fonction, une classe, etc. Si vous n'avez pas saisi de recherche, cela vous permet de naviguer dans le fichier courant.
- En rajoutant un `:` après votre recherche, vous accéder directement à une ligne spécifique dans le fichier ciblé. De même que précedemment, cela fonctionne aussi pour le fichier courant.

Si vous ne connaissez pas bien la structure du projet et le nom des fichiers, une autre Alternative est d'utiliser le raccourci `Maj+Ctrl+.` (ou `Maj+Cmd+.` sur Mac). Cela va ouvrir la barre de navigation (_breadcrumbs_), qui vous permettra de naviguer dans le fichier courant et remonter l'arborescence de votre projet en utilisant les flèches du clavier.

### Refactoring

Quand on code, la première version est rarement définitive. Refactorer son code est une étape importante pour le rendre plus lisible, plus maintenable, et plus performant. Heureusement, VS Code propose de nombreuses fonctionnalités pour vous aider à gagnger du temps lors de cette étape.

Pour renommer rapidement une variable, une fonction, ou une classe, il suffit de positionner le curseur sur celui-ci et d'appuyer sur `F2` ou de faire un clic droit et de sélectionner `Renommer le symbole`. Une fois le nouveau nom saisi, soit vous êtes confiant et vous appuyez sur `Entrée` pour valider, soit vous préférez vérifier les changements avant de les appliquer avec `Maj+Entrée` pour ouvrir une fenêtre de prévisualisation.

![Aperçu de la refactorisation](./images/rename-symbol-preview.png)

Lorsque vous sélectionnez du code, vous verrez apparaître une petite ampoule au début de la ligne. En cliquant dessus, vous pourrez accéder à des actions de refactorisation spécifiques au code sélectionné.

![Actions de refactorisation](./images/refactor-actions.png)

Selon le contexte, vous pourrez par exemple extraire une fonction, une variable, ou une constante, convertir des types de boucles ou d'import, et bien d'autres choses encore. Ces actions sont également accessibles via le raccourci `Maj+Ctrl+R`. A noter que cette liste d'actions peut aussi être enrichie par des extensions.

Si vous appréciez avoir une base de code propre et bien formatée, vous pouvez également utiliser le raccourci `Maj+Alt+F` pour formater automatiquement votre code. Cela fonctionne pour tous les langages, et vous pouvez même configurer le formatage selon vos préférences. Selon le langage, il est possible que vous ayez besoin d'installer une extension pour que cela fonctionne, VS Code vous le proposera automatiquement le cas échéant. Pour éviter les oublis, vous pouvez également configurer VS Code pour qu'il formate automatiquement votre code à chaque sauvegarde. Si vous ouvrer l'interface des paramètres, et que vous recherchez `format`, vous trouverez l'option `Editor: Format On Save` qui vous permettra d'activer cette fonctionnalité.

![Paramètres de formatage automatique](./images/format-settings.png)

> **Le saviez-vous ?** Il est possible d'insérer facilement des emojis à tout moment dans VS Code grâce à l'Emoji Picker intégré. Pour l'ouvrir, utilisez le raccourci clavier `Ctrl+I` (ou `Cmd+I` sur Mac). Vous pouvez ensuite rechercher un emoji par son nom, et l'insérer dans votre code en appuyant sur `Entrée`.

### Edition multi-curseurs

`Ctrl+D` + raccourci pour cancel last

`Maj+Alt+Cmd+haut/bas`

### Snippets

Emmet

### Edition collaborative

Ce n'est par parce que l'on travaille à distance que l'on doit travailler seul! Grâce à des extensions comme **Live Share**, il est possible de collaborer en temps réel avec vos collègues sur le même projet, pour du pair-programming ou de la revue de code par exemple. Après avoir installé l'extension, il suffit de sélectionner la nouvelle icône Live Share qui s'est rajoutée dans la barre latérale et de cliquer sur `Share` pour démarrer une session collaborative. On peut ensuite inviter ses collègues à rejoindre la session en leur envoyant le lien généré.

![Session Live Share](./images/live-share.png)

Une fois la session démarrée, vous pouvez voir les modifications apportées par vos collègues en temps réel, et discuter avec eux via le chat intégré. On peut aussi partager son terminal, et même rediriger des ports pour partager un serveur local. On a également le choix de restreindre les droits de modification et d'accès au terminal, pour éviter les mauvaises surprises. C'est très pratique par exemple pour faire des démonstrations ou des cours à distance!
