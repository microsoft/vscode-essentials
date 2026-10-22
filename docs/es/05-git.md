## Usa Git en VS Code

Si trabajas en equipo o en tu propio proyecto, es probable que uses _git_ para gestionar tu código fuente. Git es el estándar de facto para la gestión del control de código fuente. VS Code facilita el trabajo con Git. En esta parte, veremos las funcionalidades principales que necesitarás a diario.

> Para esta sección, asumimos que ya conoces los conceptos básicos de Git (qué es un repositorio, un clon, un commit). Si eres nuevo en Git, te recomendamos seguir estos módulos en línea gratuitos https://learn.microsoft.com/training/paths/intro-to-vc-git/.

### Inicializar o clonar un repositorio

Para trabajar con Git, necesitas estar en un directorio que ya sea un repositorio git. Si ya tienes un directorio así en tu máquina - por ejemplo, porque lo clonaste a través de la línea de comandos u otra herramienta - solo necesitas abrir el directorio con VS Code.

¿Tienes una carpeta con tu código, pero aún no es un repositorio git? Puedes simplemente crear un repositorio abriendo este directorio y luego haciendo clic en el botón **Initialize Repository** en la barra lateral de _Source Control_.

![](./images/global-git.png)

Si ya tienes un repositorio remoto, por ejemplo en GitHub, puedes simplemente clonarlo usando el comando `Git: Clone`.

### Commit, push y pull

Ya has abierto un repositorio git en VS Code. Una vez que tu trabajo está hecho, es hora de hacer commit. La barra lateral de _Source Control_ te permite ver los archivos que se están editando y su estado relativo a git: ¿están siendo rastreados? ¿Están preparados para el próximo commit?

El estado de seguimiento aparece a la derecha del nombre del archivo: M para _modified_ (modificado), D para _deleted_ (eliminado), U para _untracked_ (sin seguimiento), A para _added_ (agregado). Los archivos se agrupan en dos secciones: _Changes_ para archivos modificados pero no preparados, y _Staged Changes_ para archivos que se incluirán en el commit.

Hacer commit de cambios en Git requiere agregar un mensaje descriptivo que explique la naturaleza de cada cambio. Puedes agregarlo en el campo _Message_ en la parte superior de la barra lateral. Una vez que tu mensaje está agregado, haz clic en **Commit**, ¡y listo! Tus cambios ahora están almacenados en un commit.

Para compartir este commit con tus colegas, necesitas hacer push a tu repositorio remoto. El comando _push_ es accesible desde varios lugares: en la barra de estado, a la derecha del nombre de la rama actual, en la paleta de comandos `Git: push`, o en el menú contextual de la barra lateral, accesible con el ícono **...** en la esquina superior derecha.

Recuperar commits remotos también es simple usando el comando `Pull (pull)`, accesible en los mismos lugares que el comando push.

VS Code también te ofrecerá un comando `Synchronize changes` que realizará estos dos comandos secuencialmente.

### Ramas y etiquetas

Puedes gestionar fácilmente ramas y etiquetas desde VS Code. Primero a través de la barra de estado, la rama actual se muestra en todo momento. Simplemente haz clic en ella para explorar la lista de ramas, remotas y locales, y cambiar a otra rama.

Cuando estás a punto de hacer un release de tu proyecto, es común usar etiquetas para "marcar" este momento en el tiempo, o más precisamente el commit correspondiente a esta entrega. La forma más sencilla de crear una _etiqueta_ es ejecutar el comando `Git: Create tag` en la paleta. No olvides hacer push de tus cambios al repositorio remoto para que las etiquetas sean accesibles para todo el equipo.

### Gestión de conflictos

Hacer un _push_ o un _pull_ es típicamente fácil... ¡Hasta que aparece un conflicto! En estos casos, siempre tendrás trabajo que hacer, ¡pero VS Code estará ahí para ayudarte!

Cuando una operación resulta en un conflicto, VS Code agrupará los archivos en conflicto en la sección **Merge Changes**. Tendrás entonces una vista general de los conflictos. Al abrir el editor de fusión (a través del botón **Resolve in Merge Editor** en la esquina inferior derecha del editor).

![](./images/merge.png)

Una vez que el conflicto está resuelto, puedes simplemente hacer commit.

### Entender el historial

Acabamos de ver los pasos principales del uso de Git en VS Code. Queda una herramienta esencial: explorar el historial de Git.

Puedes explorar el historial de cualquier archivo con la opción **Open Timeline** en el menú contextual del explorador de archivos. La línea de tiempo se abre entonces en la parte inferior del panel del explorador de archivos. Un doble clic en un commit abrirá el diff correspondiente al archivo seleccionado.

Si quieres ir más allá, te recomiendo la extensión **Git Graph**. Una vez instalada, puedes mostrar el gráfico de commits y ramas a través del comando `Git Graph: View git graph`. Tendrás entonces acceso a una representación visual de tu historial de commits, así como la lista de etiquetas.

![](./images/git-graph.png)

Para usos más avanzados, esta extensión también te permite hacer un _checkout_ o un _cherry-pick_ de commits particulares.

> **Consejo**: Puedes acceder a la línea de comandos de git desde el editor integrado. Además, el panel de salida _git_ te permite ver los comandos git ejecutados por VS Code.
