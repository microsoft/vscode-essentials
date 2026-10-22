## ¡Domina lo básico!

<!--
ref: https://code.visualstudio.com/docs/getstarted/userinterface
-->

Ahora veremos los conceptos básicos de funcionamiento y la interfaz de Visual Studio Code.

![](./images/02-vscode-ui.png)

### Una vista general de la interfaz

Cuando abres VS Code por primera vez, estos son los elementos clave de la interfaz que verás:

1. **Barra de Actividades**: Ubicada en el extremo izquierdo, contiene íconos para las diferentes vistas principales, como el explorador de archivos, búsqueda, gestión de extensiones y la vista de depuración. Los íconos en tu instalación pueden cambiar dependiendo de las extensiones que instales.

2. **Barra lateral**: Justo a la derecha de la barra de actividades, muestra las vistas del ícono de actividad seleccionado, por ejemplo, el explorador de archivos. Esta barra lateral puede contener información interesante dependiendo de las extensiones usadas - veremos un ejemplo más adelante con Git. En la imagen anterior, también verás una barra lateral en el lado derecho de la ventana. Esta no es la ubicación predeterminada, pero tienes la opción de arrastrar una actividad de la barra izquierda a la derecha. En mi caso, coloco la ventana de Git a la derecha. Así, VS Code sigue mi proceso de desarrollo: selecciono un archivo a la izquierda, lo edito en el centro, y luego hago _commit_ a la derecha.

3. **Área de Edición**: Este es el corazón de VS Code. Aquí es donde los archivos se abrirán para editar. Detallaremos esta área un poco más adelante.

4. **Barra de Estado**: Ubicada en la parte inferior, muestra información sobre el archivo abierto y el estado actual del editor: qué lenguaje se está usando, dónde está el cursor, en qué rama te encuentras, si estás trabajando en un contenedor o no, etc.

5. **Paneles**: Ubicados en la parte inferior del editor, contienen diferentes herramientas para ayudarte en tus tareas. Por ejemplo, hay una terminal integrada, una consola de depuración, o la salida de herramientas - como el compilador. Algunas extensiones también pueden agregar paneles para facilitar tu vida.

### ¿Qué abrir?

Puedes lanzar VS Code sin abrir nada, pero necesitarás abrir algo para empezar a trabajar.

El uso más común es ciertamente **abrir una carpeta**. Así puedes acceder al árbol de archivos desde la barra lateral. También puedes abrir o crear un nuevo archivo.

> **Consejo**: Puedes abrir un archivo o una carpeta en VS Code desde una terminal simplemente usando el comando `code miarchivo.txt`.

VS Code también te permite abrir directamente un repositorio Git - clonándolo localmente - conectarte a un servidor remoto ya sea vía SSH o a través de los "Túneles" de VS Code.

Si estás trabajando en un proyecto cuyo código está en múltiples carpetas, puedes crear un _workspace_. Esto te permite crear un árbol de archivos "virtual" que puedes simplemente abrir con VS Code.

### La Paleta de Comandos

La paleta de comandos es una herramienta poderosa en VS Code. Te permite acceder a numerosas funcionalidades y comandos directamente con el teclado.

Para abrir la paleta de comandos, puedes usar el atajo de teclado `Ctrl+Shift+P` (o `Cmd+Shift+P` en Mac). Una vez abierta, puedes simplemente empezar a escribir para buscar un comando por su nombre. Los comandos más usados aparecerán arriba.

Es una forma eficiente de navegar en VS Code sin tener que usar el ratón, y probablemente descubrirás funcionalidades que no habías notado antes.

> **Consejo**: ¿Necesitas concentrarte? Usa el comando `View: Toggle Zen Mode` para ocultar todo lo superfluo y enfocarte en tu código. Solo te falta algo de música de fondo para entrar en la zona.

### Atajos de teclado

Los atajos de teclado son esenciales para un uso eficiente de VS Code. Te permiten navegar y editar tu código mucho más rápido que si usaras el ratón. Aquí tienes algunos atajos de teclado útiles para empezar:

- `Ctrl+P` (o `Cmd+P` en Mac): Abre un archivo rápidamente por su nombre.
- `Ctrl+B`: Mostrar/Ocultar la barra lateral.
- `Ctrl+/`: Comentar/Descomentar una línea.
- `Ctrl+D`: Seleccionar la siguiente ocurrencia de la palabra bajo el cursor.
- `Ctrl+Shift+K`: Eliminar la línea actual.
- `Alt+↑` o `Alt+↓`: Mover la línea actual arriba o abajo.
- `Ctrl+Space`: Activar el autocompletado.

Hay muchos otros atajos de teclado disponibles, y realmente pueden acelerar tu flujo de trabajo.

> **Consejo**: Es posible obtener un PDF de una página que resume todos los atajos de teclado seleccionando `Help: Keyboard Shortcut Reference` en la paleta de comandos.

### Enfoque en la ventana de edición

La ventana de edición está llena de herramientas para ayudarte a diario. El editor en sí integra muchas funcionalidades por defecto:

- **Resaltado de sintaxis** con la mayoría de lenguajes soportados. Puede que necesites instalar una extensión para algunos lenguajes o elegir el lenguaje correcto (a la derecha en la barra de estado, o con el comando `Change Language Mode` en la paleta de comandos).
- **Líneas de indentación verticales** y **coloración de llaves** para ayudarte a entender los niveles de jerarquía de tu código.
- **Autocompletado de código**.

Además de estas funciones, tendrás elementos útiles alrededor de tu editor.

![](./images/02-editeur.png)

Al extremo derecho, encontrarás el **minimapa**: una representación visual de tu código. Este mapa será especialmente útil cuando tus archivos tengan muchas líneas. Justo arriba, encontrarás un área de **acciones rápidas**. El ícono en la imagen anterior te permite dividir tu editor en dos, permitiéndote trabajar en dos archivos en paralelo. Dependiendo de los lenguajes y extensiones, puedes tener otras acciones. Por ejemplo, con archivos Markdown, es posible tener una vista previa del archivo.

El área del editor también tiene otros elementos para ayudarte a navegar por tu código. Justo en la parte superior del editor, encontrarás un navegador que te permite entender dónde está el archivo actual en el árbol de archivos de tu proyecto. Además de los números de línea, encontrarás en el lado izquierdo **indicadores de Git** que te permiten ver de un vistazo las líneas de código que has cambiado desde que abriste el archivo. Estos indicadores también están presentes en el minimapa y en la barra de desplazamiento que se encuentra a la derecha.
