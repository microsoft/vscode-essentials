## Personnalisation de l'éditeur

L'une des forces de VS Code est sa capacité à être personnalisé et s'adapter entièrement à vos besoins. On peut ainsi modifier l'apparence de l'éditeur, ajouter des extensions, de modifier ou créer ses raccourcis clavier, et bien plus encore.

Une des premières choses que l'on fait après avoir installé VS Code est de choisir un thème. Il en existe des centaines, et vous pouvez même créer le vôtre. Si vous ouvrez la palette de commandes et cherchez l'option `Préférences: Thème de couleur`, vous pourrez en choisir un dans la liste les thèmes disponibles.

> **Astuce**: en navigant dans la liste avec les flèche haut et bas du clavier, vous pourrez voir un aperçu du thème sélectionné.

![Choix du thème](./images/theme.png)

Si les thèmes proposés par défaut ne vous conviennent pas, vous pouvez également en télécharger d'autres sur le marketplace d'extensions. Selectionnez l'icône d'extension dans la barre latérale, et entrez `@category:"themes"` dans la barre de recherche. A noter qu'un thème VS Code peut couvrir un ou plusieurs des éléments suivants, qui peuvent être choisis indépendamment:

- Couleurs de l'interface
- Icônes de fichiers
- Icônes du produit (barre latérale, barre d'outils, etc.)

Votre choix de thème est sauvegardé dans vos _Préférences utilisateur_, et s'applique par défaut à tous vos projets (aussi appelés _espaces de travail_).

```
"workbench.colorTheme": "Default Dark+"
```

Il est cependant possible de choisir un thème différent pour vos projets en créant un fichier de configuration spécifique pour l'espace de travail, comme nous allons le voir plus loin.

### Modification du thème courant

Si vous voulez changer une ou plusieurs couleurs du thème courant, vous pouvez le faire en modifiant le fichier `settings.json` de vos préférences utilisateur. Pour cela, ouvrez la palette de commandes et cherchez l'option `Préférences: Ouvrir les paramètres (JSON)`.

Les propriétés `workbench.colorCustomizations` et `editor.tokenColorCustomizations` vous permettent de modifier respectivement les couleurs de l'interface et de l'éditeur de code. Par exemple, vous pouvez changer la couleur de fond de la barre latérale avec la propriété `activityBar.background`:

```
"workbench.colorCustomizations": {
    "activityBar.background": "#223355",
}
```

L'autocomplétion (`Ctrl+Espace`) vous permettra de voir toutes les valeurs disponibles pour ces propriétés.

Il est également possible d'apporter des changements au thème courant via des extensions. Par exemple l'extension `background` du marketplace permet d'ajouter une image de fond à l'éditeur, et l'extension `Peacock` vous permet de changer la couleur de chaque nouvelle instance de VS Code pour mieux les différencier.

### Racourcis clavier

https://code.visualstudio.com/docs/getstarted/keybindings#_command-arguments

raccourcis clavier,

> **Astuce**: Il est possible d'obtenir un PDF d'une page récapitulant tous les raccourcis claviers en selectionnant `Aide: Référence des raccourcis clavier` dans la palette de commande.

### Configuration des paramètres

config,

synchronisation

### Modification de l'interface

L'agencement de l'interface

zen mode

### Utilisation des profils

profiles,

### Configuration par projet

(workspace, extensions, snippets, settings, etc.)

extensions VVV next part
