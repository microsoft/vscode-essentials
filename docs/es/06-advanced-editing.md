## Funcionalidades avanzadas de edición

Cuando pasas una parte sustancial de tu tiempo editando código, es importante poder hacerlo rápida y eficientemente. VS Code ofrece numerosas funcionalidades avanzadas de edición que te ahorrarán tiempo y te permitirán concentrarte en lo esencial.

### Navegación rápida

Navegar rápidamente entre varios archivos es una tarea indispensable al programar. El método más eficiente es usar el atajo `Ctrl+P` (o `Cmd+P` en Mac). El panel de navegación rápida aparece entonces, listando los archivos de tu proyecto por orden de uso reciente.

![Navegación rápida de archivos](./images/quick-navigation.png)

Varias opciones están entonces disponibles:

- Si presionas `Ctrl+P` (o `Cmd+P` en Mac) de nuevo, cambiarás automáticamente al archivo abierto anteriormente. Este es un método muy eficiente para navegar rápidamente entre dos archivos, por ejemplo, al escribir pruebas unitarias para una clase. Manteniendo `Ctrl` (o `Cmd` en Mac) presionado y presionando `P` varias veces, puedes retroceder aún más en el historial de archivos abiertos.
- Puedes escribir parte del nombre del archivo que buscas, y VS Code sugerirá los archivos coincidentes en tu proyecto.
- Agregando un `@` después de tu búsqueda, puedes buscar un símbolo en el archivo objetivo. Puede ser una variable, una función, una clase, etc. Si no has ingresado una búsqueda, esto te permite navegar en el archivo actual.
- Agregando un `:` después de tu búsqueda, accedes directamente a una línea específica en el archivo objetivo. Al igual que anteriormente, esto también funciona para el archivo actual.

Si no estás familiarizado con la estructura del proyecto y los nombres de archivos, otra alternativa es usar el atajo `Shift+Ctrl+.` (o `Shift+Cmd+.` en Mac). Esto abre la barra de navegación (_breadcrumbs_), que te permite navegar en el archivo actual y subir en la jerarquía de tu proyecto usando las flechas del teclado.

### Refactorización

Al escribir código, la primera versión rara vez es definitiva. Refactorizar tu código es un paso importante para hacerlo más legible, mantenible y eficiente. Afortunadamente, VS Code ofrece numerosas funcionalidades para ayudarte a ahorrar tiempo durante este paso.

Para renombrar rápidamente una variable, una función o una clase, simplemente posiciona el cursor sobre ella y presiona `F2` o haz clic derecho y selecciona `Rename Symbol`. Una vez que hayas ingresado el nuevo nombre, o estás seguro y presionas `Enter` para validar, o prefieres verificar los cambios antes de aplicarlos con `Shift+Enter` para abrir una ventana de vista previa.

![Vista previa de refactorización](./images/rename-symbol-preview.png)

Cuando seleccionas código, una pequeña bombilla aparecerá al inicio de la línea. Al hacer clic en ella podrás acceder a acciones de refactorización específicas para el código seleccionado.

![Acciones de refactorización](./images/refactor-actions.png)

Dependiendo del contexto, por ejemplo, puedes extraer una función, una variable o una constante, convertir tipos de bucles o importaciones, y muchas otras cosas. Estas acciones también son accesibles a través del atajo `Shift+Ctrl+R`. Ten en cuenta que esta lista de acciones también puede ser enriquecida por extensiones.

Si aprecias tener una base de código limpia y bien formateada, también puedes usar el atajo `Shift+Alt+F` para formatear automáticamente tu código. Esto funciona para todos los lenguajes, e incluso puedes configurar el formato según tus preferencias. Dependiendo del lenguaje, puede que necesites instalar una extensión para que funcione, y VS Code te sugerirá automáticamente esto si es necesario. Para no olvidarlo, también puedes configurar VS Code para que formatee automáticamente tu código en cada guardado. Si abres la interfaz de configuración y buscas `format`, encontrarás la opción `Editor: Format On Save` que te permitirá activar esta funcionalidad.

![Configuración de formato automático](./images/format-settings.png)

> **¿Sabías que?** Es posible insertar fácilmente emojis en cualquier momento en VS Code gracias al Emoji Picker del sistema. Para abrirlo, usa el atajo de teclado `Win+.` en Windows o `Ctrl+Cmd+Espacio` en Mac. Luego puedes buscar un emoji por su nombre e insertarlo en tu código presionando `Enter`.

### Edición multi-cursor

Mi funcionalidad favorita de VS Code es sin duda la edición multi-cursor. Te permite editar múltiples partes de tu código _al mismo tiempo_ y ahorrar un tiempo precioso. Hay varias formas de activar esta funcionalidad:

- Usando `Alt+Click` para agregar un cursor donde haces clic.
- A través del atajo `Ctrl+Alt+Arriba/Abajo` (o `Cmd+Alt+Arriba/Abajo` en Mac) para agregar un cursor en la línea de arriba o abajo del cursor actual.
- Seleccionando una palabra o una frase y presionando `Ctrl+D` (o `Cmd+D` en Mac) para seleccionar la siguiente ocurrencia, repetible a voluntad. Es posible saltar la siguiente ocurrencia con `Ctrl+K, Ctrl+D` (o `Cmd+K, Cmd+D` en Mac). Finalmente, el atajo `Shift+Ctrl+L` (o `Shift+Cmd+L` en Mac) permite seleccionar todas las ocurrencias de una vez.

Una vez que tus cursores están en su lugar, puedes moverlos con las flechas del teclado y editar el texto normalmente. ¡Pero esta vez, los cambios se aplicarán a todos los cursores al mismo tiempo! Esta funcionalidad es muy práctica para evitar modificaciones manuales repetitivas, como agregar comillas alrededor de cada elemento de un array. Sin embargo, requiere un poco de práctica para usarse efectivamente.

![Edición multi-cursor](./images/multi-cursor-edit.png)

**Consejo**: Navegar dentro de varias líneas a veces puede ser tedioso. Usando `Alt+Izquierda/Derecha`, los cursores se moverán por palabras y no por caracteres, lo cual puede ser muy útil al editar propiedades JSON, por ejemplo.

### Snippets

Otra forma de evitar tareas repetitivas es usar _snippets_. Estas son plantillas de código que puedes insertar escribiendo una palabra clave y luego confirmando con `Tab`. VS Code ya ofrece algunos, pero es posible crear nuevos o instalarlos a través de extensiones.

Los snippets aparecen en la lista de autocompletado con `Ctrl+Space`. Es posible ver la lista de snippets disponibles para el lenguaje actual seleccionando `Snippets: Insert Snippet` en la paleta de comandos. VS Code incluye algunos por defecto, particularmente para JavaScript, TypeScript, Markdown, PHP, HTML, y otros.

![Ejemplo de sugerencia de snippet](./images/snippet-suggestion.png)

Para crear un snippet, selecciona `Snippets: Configure User Snippets` en la paleta de comandos. Tendrás entonces la opción de crear snippets para un lenguaje específico, en un archivo global, o solo para el proyecto actual. Los snippets están en formato JSON y siguen la sintaxis **TextMate**, aquí un ejemplo:

```json
{
  "Arrow function": {
    "prefix": "arrow",
    "body": ["const ${1:name} = ($2) => {", "\t$0", "};"],
    "description": "Crear una función flecha"
  }
}
```

El campo `prefix` corresponde a la palabra clave que insertará el snippet. El campo `body` contiene el contenido del snippet, y el campo opcional `description` describe el snippet cuando aparece en el autocompletado. Los `$` se usan para definir puntos de inserción, y puedes moverte rápidamente de un punto a otro con `Tab`. Finalmente, los `:` de un punto de inserción como en `${1:name}` permiten definir un valor predeterminado, aquí `name`.

VS Code también tiene soporte integrado para abreviaciones **Emmet**. Este es un lenguaje que permite generar código HTML y CSS a partir de abreviaciones. Por ejemplo, al escribir `div>ul>li*3>span.line$` en un archivo HTML, VS Code ofrecerá expandir la abreviación a través de la lista de autocompletado. Valida con `Tab` para obtener el siguiente código:

```html
<div>
  <ul>
    <li><span class="line1"></span></li>
    <li><span class="line2"></span></li>
    <li><span class="line3"></span></li>
  </ul>
</div>
```

Esta sintaxis es particularmente útil para escribir rápidamente código HTML y CSS. Para más información sobre la sintaxis Emmet, puedes consultar la documentación oficial en https://docs.emmet.io.

### Edición colaborativa

¡Solo porque trabajamos en remoto no significa que tengamos que trabajar solos! Gracias a extensiones como **Live Share**, es posible colaborar en tiempo real con tus colegas en el mismo proyecto, para programación en pares o revisión de código, por ejemplo. Después de instalar la extensión, simplemente selecciona el nuevo ícono de Live Share que se ha agregado a la barra lateral y haz clic en `Share` para iniciar una sesión colaborativa. Luego puedes invitar a tus colegas a unirse a la sesión enviándoles el enlace generado.

![Sesión de Live Share](./images/live-share.png)

Una vez iniciada la sesión, puedes ver los cambios realizados por tus colegas en tiempo real y chatear con ellos a través del chat integrado. También puedes compartir tu terminal e incluso redirigir puertos para compartir un servidor local. También tienes la opción de restringir los derechos de modificación y el acceso a la terminal para evitar sorpresas desagradables. ¡Esto es muy práctico, por ejemplo, para hacer demostraciones o clases remotas!
