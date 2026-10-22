## Desarrollo en contenedores

Con la extensión **Dev Containers**, es posible tener tu entorno de desarrollo completo en un contenedor Docker. ¿Pero cuál es el beneficio? Este enfoque tiene bastantes ventajas:

- **Configuración rápida**: Para empezar a trabajar en un nuevo proyecto, simplemente clona el repositorio y abre la carpeta en VS Code. La extensión descargará la imagen Docker y lanzará el contenedor, que contiene todo lo que necesitas para trabajar en el proyecto. ¡Se acabaron las largas instalaciones de herramientas y dependencias!
- **Reproducibilidad**: El entorno de desarrollo puede compartirse con tus colegas, para asegurar que todos trabajen bajo las mismas condiciones. También puede versionarse con tu código, lo que facilita las actualizaciones.
- **Aislamiento de proyectos**: Cada proyecto tiene su propio entorno aislado, previniendo conflictos de versiones y evitando contaminar tu sistema con dependencias de desarrollo.

Para usarlo, primero debes instalar Docker en tu máquina. Después de instalar la extensión, puedes configurar un nuevo entorno para tu proyecto haciendo clic en el ícono en la esquina inferior izquierda y luego seleccionando `Add Development Container Configuration Files...`. Puedes entonces elegir un entorno base de las muchas plantillas ofrecidas, o crear tu propia configuración.

![Ícono de Dev Containers](./images/dev-containers-icon.png)

Una vez que el entorno está creado, selecciona `Reopen in Container` en la ventana de notificación que aparece. Alternativamente, puedes hacer clic en el ícono en la esquina inferior izquierda y seleccionar esta opción del menú. VS Code recargará la ventana de tu proyecto y construirá el contenedor, lo que puede tomar unos minutos en el primer lanzamiento. Posteriormente, la carga será casi instantánea. Una vez terminado, verás que VS Code está conectado a tu dev container a través de la barra de estado.

![VS Code conectado a un dev container de Node.js](./images/dev-container-connected.png)

¡Ahora puedes abrir una terminal y usar tu nuevo entorno de desarrollo! En este ejemplo, elegí un entorno Node.js. Ten en cuenta que mientras todas mis herramientas de desarrollo están ahora perfectamente aisladas en el contenedor, el código fuente del proyecto no está dentro de él: permanece almacenado directamente en mi máquina y conectado al contenedor a través de un volumen. Así que no hay riesgo de perder tus datos, incluso si el contenedor se destruye.

### Personalizar el entorno

El entorno de desarrollo se define en el archivo `.devcontainer/devcontainer.json`. Este archivo se genera cuando se crea el entorno, pero puedes modificarlo para personalizar tu entorno. Por ejemplo, puedes agregar extensiones de VS Code, instalar herramientas adicionales o definir comandos para ejecutar automáticamente cuando el contenedor se inicie.

Por defecto, el contenedor usa una imagen Docker preconstruida, pero también puedes definir tu propia imagen personalizada. Simplemente crea un `Dockerfile` en la carpeta `.devcontainer` y reemplaza la propiedad `image` con:

```
"build": {
    "dockerfile": "Dockerfile"
}
```

Para aplicar los cambios, puedes reconstruir el contenedor abriendo la paleta de comandos y seleccionando `Development Containers: Rebuild Container`.

Una vez que la configuración del contenedor está completa, solo queda hacer push del directorio `.devcontainer` a tu repositorio de código, para que todo tu equipo pueda beneficiarse de él. Si uno de tus colegas actualiza la configuración, verás esta notificación:

![Notificación de actualización de configuración del contenedor](./images/dev-container-update.png)

Luego, simplemente selecciona `Rebuild` para actualizar tu entorno de desarrollo.

> **Bueno saberlo**: es posible usar contenedores de desarrollo incluso con proyectos que usan Docker directamente. En este caso, hay dos opciones de funcionamiento posibles: tener un nuevo entorno Docker aislado del de tu máquina, o por el contrario llamar directamente al Docker de la máquina host desde el contenedor de desarrollo. Te invito a visitar el sitio https://containers.dev/features para la lista de funcionalidades activables.
