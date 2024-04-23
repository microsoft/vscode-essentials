## Customize your editor

One of the strengths of VS Code is its ability to be customized and fully adapted to your needs. Thus, you can change the appearance of the editor, add extensions, change or create your own keyboard shortcuts, and much more.

One of the first things done after installing VS Code is choosing a theme. There are hundreds available, and you can even create your own. If you open the command palette and search for the option `Preferences: Color Theme`, you can choose one from the list of available themes.

> **Tip**: by navigating the list with the up and down arrows on the keyboard, you can preview the selected theme.

![Theme choice](./images/theme.png)

If the default themes do not suit you, you can also download others from the extension marketplace. Select the extension icon on the sidebar and enter `@category:"themes"` in the search bar. Note that a VS Code theme can cover one or more of the following elements, which can be chosen independently:

- Interface colors
- File icons
- Product icons (sidebar, toolbar, etc.)

Your theme choice is saved in your _User Preferences_ and applies by default to all your projects (also called _workspaces_).

```
"workbench.colorTheme": "Default Dark+"
```

However, it is possible to choose a different theme for your projects by creating a specific configuration file for the workspace, as we will see later.

### Changing the Current Theme

If you want to change one or more colors of the current theme, you can do so by changing the `settings.json` file of your user preferences. To do this, open the command palette and search for the option `Preferences: Open Settings (JSON)`.

The properties `workbench.colorCustomizations` and `editor.tokenColorCustomizations` allow you to modify the interface colors and the code editor's colors, respectively. For example, you can change the sidebar background color with the `activityBar.background` property:

```
"workbench.colorCustomizations": {
    "activityBar.background": "#223355",
}
```

Autocomplete (`Ctrl+Space`) will allow you to see all the available values for these properties.

It is also possible to customize to the current theme through extensions. For example, the **background** extension from the marketplace allows you to add a background image to the editor, and the **Peacock** extension allows you to change the color of each new instance of VS Code to differentiate them better.

### Configuration Settings

All the settings of VS Code as well as installed extensions are stored in a JSON file, the previously seen `settings.json` file. You can access it by opening the command palette and searching for the option `Preferences: Open Settings (JSON)` or change them via the graphical interface with `Preferences: Open Settings (UI)`. There are two types of settings:

- User settings, which apply to all projects.
- Workspace settings, which only apply to the current project. These preferences are stored in a `.vscode/settings.json` file at the root of the project and can be shared with other team members.

It is also possible to synchronize your settings across several machines to easily replicate your configuration everywhere. To do this, open the command palette and launch `Settings Sync: Turn On Settings Sync`. You can then choose what data you want to synchronize and connect via a GitHub or Microsoft account for storage.

![Settings Synchronization](./images/settings-sync.png)

Just follow the same process on your other machines to find your configuration.

> **Tip**: it is possible to ignore the synchronization of certain settings or extensions with the following properties of your `settings.json` file:
>
> ```
> "settingsSync.ignoredExtensions": [ ],
> "settingsSync.ignoredSettings": [ ]
> ```

Note also that the `.vscode` folder can contain other configuration files, like `launch.json` for debugger configuration, `tasks.json` for task configuration, or `extensions.json` for configuring extensions recommended for the project. When shared with the team, this folder thus standardizes the editor configuration for all developers.

### Keyboard Shortcuts

To be efficient while coding, nothing beats knowing how to use keyboard shortcuts. VS Code offers hundreds, and you can change existing ones or create new ones. To do this, open the command palette and search for the option `Preferences: Open Keyboard Shortcuts`. You will then see the extensive list of already configured keyboard shortcuts, but also all the editor's and installed extensions' commands for which you can create a shortcut.

Similarly to user settings, keyboard shortcuts are stored in a `keybindings.json` file that can be directly changed. If you are comfortable with JSON, it is even possible to add conditions so that the shortcut is only active in certain contexts or configure macros consisting of a series of commands. For example, here the shortcut `Ctrl+N` creates a new TypeScript file and inserts a class template:

```json
{
  "key": "ctrl+n",
  "command": "runCommands",
  "args": {
    "commands": [
      {
        "command": "workbench.action.files.newUntitledFile",
        "args": {
          "languageId": "typescript"
        }
      },
      {
        "command": "editor.action.insertSnippet",
        "args": {
          "langId": "typescript",
          "snippet": "class ${1:ClassName} {\n\tconstructor() {\n\t\t$0\n\t}\n}"
        }
      }
    ]
  }
},
```

### Customizing the Interface

Beyond the theme and colors, it is possible to deeply customize the VS Code interface to suit your needs. In the title bar, you have four icons that allow you to hide the main panels of the interface, but also customize the interface in more detail by selecting the one on the right:

![Customize layout](./images/customize-layout.png)

The layout of the interface can also be completely changed by dragging and dropping the different panels, and you can even create panel groups by dragging and dropping them onto each other. The editor window can also be split horizontally or vertically via the `Split Editor` commands from the command palette, to display multiple files simultaneously. Finally, you can choose which elements to show or hide by right-clicking on most of the interface elements, such as the sidebar, status bar, minimap, etc. By pushing a bit, it sometimes even becomes difficult to recognize VS Code!

![Example of a customized layout](./images/vscode-custom.png)

> **Tip**: If you wish to temporarily focus only on your code and avoid any distractions, then _zen mode_ is for you. Simply activate it via the command palette, and VS Code will switch to full screen and then hide all interface elements to leave only the code editor.

### Using Profiles

If you work in different contexts or technologies, it can be useful to be able to quickly change configurations, and switch from one set of extensions to another, for example. VS Code has recently integrated profile management, which allows you to save a configuration of extensions, settings, snippets, and even interface layouts, and load them with a click. VS Code automatically saves all your modifications in the `Default` profile, but you can create others to save different configurations.

To create a profile, open the command palette and search for the option `Profiles: Create Profile`. You can then choose to create an empty profile, duplicate an existing one, or even use one of the proposed templates. Once the profile is created, you can customize all the options of VS Code you wish, and they will be saved in the profile. To change profiles later, open the command palette and search for the option `Profiles: Switch Profile`.
