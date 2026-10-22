## Primeros pasos con VS Code

Visual Studio Code, disponible en macOS, Linux y Windows, es tu nuevo compañero de viaje. Ya sea que estés editando texto, escribiendo código o manipulando datos, estará ahí para ti en cada paso. En pocos minutos - o incluso menos - estarás listo para programar. Exploremos las diferentes opciones disponibles.

### Instalar VS Code en unos pocos clics

La mayoría de las veces, instalarás VS Code en tu estación de trabajo principal. La forma más sencilla es usar el gestor de paquetes de tu sistema operativo, o incluso la tienda de aplicaciones.

**Windows**, puedes instalar VS Code directamente desde la Microsoft Store [aka.ms/vscode-msstore](https://aka.ms/vscode-msstore) con un solo clic. ¿Eres más de línea de comandos? Puedes usar **WinGet**, el gestor de paquetes de Windows. Solo ejecuta el siguiente comando en la terminal:

```powershell
winget install Microsoft.VisualStudioCode
```

> **Consejo**: WinGet está disponible por defecto en algunas versiones de Windows 11. Puedes aprender más sobre WinGet en la documentación oficial: https://learn.microsoft.com/windows/package-manager/winget/

**Linux**, puedes instalar VS Code usando un paquete. Encontrarás todos los formatos de paquetes (Debian, RPM, etc.) en la página de descargas [code.visualstudio.com](https://code.visualstudio.com). El ejemplo a continuación muestra cómo instalar la versión x64 en un sistema Debian o Ubuntu.

```bash
wget -O vscode.deb https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install ./vscode.deb
```

> **Más información**: VS Code también está disponible en **Snaps**, la tienda de aplicaciones para Linux. Si no estás familiarizado con Snaps, puedes aprender más en el sitio oficial: https://snapcraft.io/docs/installing-snapd.

**Mac**: Puedes descargar la aplicación desde el sitio web oficial. Luego, simplemente arrastra y suelta la aplicación en la carpeta **Aplicaciones** de tu Mac. Si eres usuario de HomeBrew (https://brew.sh), puedes instalar VS Code con el comando:

```bash
brew install --cask visual-studio-code
```

### Uso portátil

¿Recuerdas las "aplicaciones portátiles"? Esas aplicaciones que se ejecutan desde una unidad USB, ¿sin instalación? Aunque esta tendencia ha disminuido, aún puedes ser el superhéroe del código sin ser administrador de tu estación de trabajo. Solo descarga la versión "zip" (o "tar.gz") de VS Code. Luego puedes simplemente ejecutar `code.exe` (o su equivalente según tu sistema operativo) para trabajar con VS Code.

Si usas esta versión regularmente, es posible que quieras mantener tu configuración entre diferentes sesiones. En ese caso, necesitarás crear una carpeta `data` (o `code-portable-data`) al mismo nivel que el ejecutable de VS Code.

> **Más información**: Puedes encontrar más información sobre la versión portátil de VS Code en el sitio web oficial: https://code.visualstudio.com/docs/editor/portable

### Usar VS Code sin instalar

¿Estás en casa de un amigo y necesitas programar rápidamente? ¡El horror, solo hay Notepad en su computadora! Afortunadamente, VS Code viene a tu rescate.

Simplemente visita el sitio [vscode.dev](https://vscode.dev) y estarás listo para programar, ¡sin instalar nada!

![vscode.dev](./images/01-vscodedev.png)

Esta versión de VS Code, ejecutándose directamente en tu navegador, puede hacer maravillas. Puede abrir un archivo de tu computadora, con tu permiso por supuesto, o acceder a un repositorio Git.

> **¿Sabías que?** Si usas GitHub, puedes usar el editor "github.dev". Todo lo que tienes que hacer es presionar la tecla `.` en cualquier repositorio de GitHub para lanzar el editor. También puedes visitar [github.dev](https://github.dev)

Algunas limitaciones existen en esta versión web. Por ejemplo, la terminal integrada o la compilación de código no están disponibles. Algunas extensiones - como Live Share - son funcionales, otras no.

### VS Code en tus servidores

¿Necesitas acceso a un servidor remoto? ¿Sin acceso a "Escritorio Remoto"? No hay problema, VS Code tiene dos súper soluciones para ti: SSH y VS Code Server.

La extensión "Remote - SSH" te permite conectarte a un servidor remoto vía SSH y usar VS Code como si estuvieras conectado directamente. Tendrás acceso a la terminal y al sistema de archivos remoto. Veremos más de cerca cómo instalar extensiones en una sección posterior.

![Remote - SSH](./images/01-remotessh.png)

Sin embargo, hay escenarios donde no tienes acceso SSH directo: estación de trabajo detrás de un firewall, estación de trabajo Windows, etc. En este caso, puedes usar **VS Code Server**. Este modo de VS Code te permite crear un túnel seguro entre tu estación de trabajo y la estación de trabajo remota. La conexión entre las dos máquinas está asegurada mediante tu cuenta de GitHub. Por lo tanto, no puedes usar esta herramienta para compartir tu máquina con otra persona.

> **Importante**: Aunque VS Code Server no expone directamente tu servidor a Internet, crea un punto de entrada en tus máquinas. Antes de usarlo en estaciones de trabajo como servidores de producción, asegúrate de entender completamente las implicaciones para tu _Modelo de Amenazas_.

Para empezar, instala **VS Code CLI** en la estación de trabajo objetivo, lanza el comando mágico `code tunnel` y autentícate con GitHub. Si estás en una estación de trabajo con interfaz visual (como tu PC de escritorio), activa el túnel a través del menú de **cuentas**.

![](./images/01-tunnel.png)

Una vez activado el túnel, puedes acceder a tu estación de trabajo objetivo simplemente desde vscode.dev. También puedes acceder desde otra estación de trabajo usando la extensión **Remote - Tunnels**.

### Actualizar VS Code

Por defecto, Visual Studio Code sugiere automáticamente instalar actualizaciones cuando están disponibles. Puedes elegir instalarla inmediatamente o en el próximo cierre del editor. A menos que estés trabajando con una versión portátil o hayas optado por desactivar esta función, actualizar VS Code es muy sencillo.

Ahora, ¡hablemos de cadencia! Los equipos dedicados a VS Code presentan una versión menor cada mes. Para disfrutar plenamente de lo que VS Code tiene para ofrecer, considera seguir este ritmo mensual. Algunos meses pueden tener más de una versión menor, especialmente si hay una vulnerabilidad de seguridad o una regresión. Por eso se recomienda encarecidamente habilitar las actualizaciones automáticas.

### Mantenerse al día con la edición Insider

Para los más atrevidos, ávidos de nuevas funcionalidades, puedes usar la edición "Insider" de VS Code. Esta versión se actualiza diariamente y te da acceso a las últimas funcionalidades antes que todos los demás. Por supuesto, es como jugar con un prototipo - puede ser un poco arriesgado para uso en producción. Pero no te preocupes, puedes tener esta versión y la versión estable lado a lado en tu computadora.

Puedes descargar la versión insiders en https://code.visualstudio.com/insiders/, e incluso acceder a la versión web en https://insiders.vscode.dev/.
