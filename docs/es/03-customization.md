## Personaliza tu editor

Una de las fortalezas de VS Code es su capacidad de ser personalizado y completamente adaptado a tus necesidades. Así, puedes cambiar la apariencia del editor, agregar extensiones, cambiar o crear tus propios atajos de teclado, y mucho más.

Una de las primeras cosas que se hacen después de instalar VS Code es elegir un tema. Hay cientos disponibles, e incluso puedes crear el tuyo propio. Si abres la paleta de comandos y buscas la opción `Preferences: Color Theme`, puedes elegir uno de la lista de temas disponibles.

> **Consejo**: navegando la lista con las flechas arriba y abajo del teclado, puedes previsualizar el tema seleccionado.

![Elección de tema](./images/theme.png)

Si los temas predeterminados no te convienen, también puedes descargar otros desde el marketplace de extensiones. Selecciona el ícono de extensiones en la barra lateral e ingresa `@category:"themes"` en la barra de búsqueda. Ten en cuenta que un tema de VS Code puede cubrir uno o más de los siguientes elementos, que pueden elegirse independientemente:

- Colores de la interfaz
- Íconos de archivos
- Íconos del producto (barra lateral, barra de herramientas, etc.)

Tu elección de tema se guarda en tus _Preferencias de Usuario_ y se aplica por defecto a todos tus proyectos (también llamados _workspaces_).

```
"workbench.colorTheme": "Default Dark+"
```

Sin embargo, es posible elegir un tema diferente para tus proyectos creando un archivo de configuración específico para el workspace, como veremos más adelante.

### Cambiar el tema actual

Si quieres cambiar uno o más colores del tema actual, puedes hacerlo modificando el archivo `settings.json` de tus preferencias de usuario. Para ello, abre la paleta de comandos y busca la opción `Preferences: Open Settings (JSON)`.

Las propiedades `workbench.colorCustomizations` y `editor.tokenColorCustomizations` te permiten modificar los colores de la interfaz y los colores del editor de código, respectivamente. Por ejemplo, puedes cambiar el color de fondo de la barra lateral con la propiedad `activityBar.background`:

```
"workbench.colorCustomizations": {
    "activityBar.background": "#223355",
}
```

El autocompletado (`Ctrl+Space`) te permitirá ver todos los valores disponibles para estas propiedades.

También es posible personalizar el tema actual a través de extensiones. Por ejemplo, la extensión **background** del marketplace te permite agregar una imagen de fondo al editor, y la extensión **Peacock** te permite cambiar el color de cada nueva instancia de VS Code para diferenciarlas mejor.

### Configuración

Todas las configuraciones de VS Code así como de las extensiones instaladas se almacenan en un archivo JSON, el archivo `settings.json` visto anteriormente. Puedes acceder a él abriendo la paleta de comandos y buscando la opción `Preferences: Open Settings (JSON)` o cambiarlas a través de la interfaz gráfica con `Preferences: Open Settings (UI)`. Hay dos tipos de configuraciones:

- Configuraciones de usuario, que se aplican a todos los proyectos.
- Configuraciones de workspace, que solo se aplican al proyecto actual. Estas preferencias se almacenan en un archivo `.vscode/settings.json` en la raíz del proyecto y pueden compartirse con otros miembros del equipo.

También es posible sincronizar tus configuraciones entre varias máquinas para replicar fácilmente tu configuración en todas partes. Para ello, abre la paleta de comandos y lanza `Settings Sync: Turn On Settings Sync`. Luego puedes elegir qué datos quieres sincronizar y conectarte a través de una cuenta de GitHub o Microsoft para el almacenamiento.

![Sincronización de configuraciones](./images/settings-sync.png)

Solo sigue el mismo proceso en tus otras máquinas para encontrar tu configuración.

> **Consejo**: es posible ignorar la sincronización de ciertas configuraciones o extensiones con las siguientes propiedades de tu archivo `settings.json`:
>
> ```
> "settingsSync.ignoredExtensions": [ ],
> "settingsSync.ignoredSettings": [ ]
> ```

Ten en cuenta también que la carpeta `.vscode` puede contener otros archivos de configuración, como `launch.json` para la configuración del depurador, `tasks.json` para la configuración de tareas, o `extensions.json` para configurar extensiones recomendadas para el proyecto. Cuando se comparte con el equipo, esta carpeta estandariza la configuración del editor para todos los desarrolladores.

### Atajos de teclado

Para ser eficiente mientras programas, nada supera a conocer cómo usar los atajos de teclado. VS Code ofrece cientos, y puedes cambiar los existentes o crear nuevos. Para ello, abre la paleta de comandos y busca la opción `Preferences: Open Keyboard Shortcuts`. Verás entonces la extensa lista de atajos de teclado ya configurados, pero también todos los comandos del editor y de las extensiones instaladas para los cuales puedes crear un atajo.

De forma similar a las configuraciones de usuario, los atajos de teclado se almacenan en un archivo `keybindings.json` que puede modificarse directamente. Si te sientes cómodo con JSON, incluso es posible agregar condiciones para que el atajo solo esté activo en ciertos contextos o configurar macros que consisten en una serie de comandos. Por ejemplo, aquí el atajo `Ctrl+N` crea un nuevo archivo TypeScript e inserta una plantilla de clase:

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

### Personalizar la interfaz

Más allá del tema y los colores, es posible personalizar profundamente la interfaz de VS Code para adaptarla a tus necesidades. En la barra de título, tienes cuatro íconos que te permiten ocultar los paneles principales de la interfaz, pero también personalizar la interfaz en más detalle seleccionando el de la derecha:

![Personalizar diseño](./images/customize-layout.png)

El diseño de la interfaz también puede cambiarse completamente arrastrando y soltando los diferentes paneles, e incluso puedes crear grupos de paneles arrastrándolos y soltándolos unos sobre otros. La ventana del editor también puede dividirse horizontal o verticalmente a través de los comandos `Split Editor` de la paleta de comandos, para mostrar múltiples archivos simultáneamente. Finalmente, puedes elegir qué elementos mostrar u ocultar haciendo clic derecho en la mayoría de los elementos de la interfaz, como la barra lateral, barra de estado, minimapa, etc. ¡Llevándolo al extremo, a veces incluso se vuelve difícil reconocer VS Code!

![Ejemplo de diseño personalizado](./images/vscode-custom.png)

> **Consejo**: Si deseas enfocarte temporalmente solo en tu código y evitar cualquier distracción, entonces el _modo zen_ es para ti. Simplemente actívalo a través de la paleta de comandos, y VS Code cambiará a pantalla completa y luego ocultará todos los elementos de la interfaz para dejar solo el editor de código.

### Usar perfiles

Si trabajas en diferentes contextos o tecnologías, puede ser útil poder cambiar rápidamente de configuraciones, y pasar de un conjunto de extensiones a otro, por ejemplo. VS Code ha integrado recientemente la gestión de perfiles, que te permite guardar una configuración de extensiones, configuraciones, snippets e incluso diseños de interfaz, y cargarlos con un clic. VS Code guarda automáticamente todas tus modificaciones en el perfil `Default`, pero puedes crear otros para guardar diferentes configuraciones.

Para crear un perfil, abre la paleta de comandos y busca la opción `Profiles: Create Profile`. Luego puedes elegir crear un perfil vacío, duplicar uno existente, o incluso usar una de las plantillas propuestas. Una vez creado el perfil, puedes personalizar todas las opciones de VS Code que desees, y se guardarán en el perfil. Para cambiar de perfil más adelante, abre la paleta de comandos y busca la opción `Profiles: Switch Profile`.
