## Notebooks en VS Code

Hemos visto cómo VS Code puede usarse para muchos propósitos más allá de la programación. Veamos ahora cómo usar VS Code para crear notebooks. Los notebooks son una forma de escribir código en celdas que pueden ejecutarse independientemente unas de otras, o obviamente juntas. También es posible mezclar celdas de código y celdas de documentación con markdown. Es una herramienta que se ha generalizado en los últimos años entre científicos de datos e ingenieros de datos. Veremos que también puede ser útil en muchos otros campos.

### Jupyter notebooks

Los notebooks más extendidos son sin duda los **Jupyter notebooks**. Están destinados a ejecutar principalmente código Python, aunque es posible ejecutar otros lenguajes a través de [_kernels_](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels).

Para empezar, primero necesitas instalar la extensión [**Jupyter**](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter). Esto te permitirá crear, ver y ejecutar Jupyter notebooks. La visualización funciona incluso en la versión web de VS Code, y la ejecución en GitHub Codespaces.

Los Jupyter notebooks necesitan estar conectados a un _kernel_, un motor de ejecución, para ejecutar el código contenido en las celdas. Por lo tanto, será necesario instalar Python y el kernel de Python. Este kernel se instala simplemente usando [**pip**](https://pypi.org/project/jupyter/), el gestor de paquetes de Python, a través del comando `pip install jupyter`. Python puede instalarse directamente a través de la Microsoft Store si estás en Windows, o a través de varios medios en otros sistemas operativos. [**Anaconda**](https://www.anaconda.com/products/individual) es una distribución que se usa frecuentemente por su simplicidad.

Para crear un notebook, simplemente usa la acción de la paleta de comandos `Jupyter: New Jupyter notebook`. Puedes entonces agregar fácilmente nuevas celdas de tipo código o documentación (llamadas _Markdown_), y por supuesto ejecutar las celdas ya sea a través del atajo de teclado `Ctrl+Enter`, o a través del ícono **Run cell** ![Run cell](./images/08-execute-cell.png) ubicado en la esquina superior izquierda de la celda.

![Un Jupyter notebook](./images/08-jupyter.png)

Hablar de "ejecución de código" significa "depuración". Los Jupyter notebooks te ayudan de varias maneras a depurar tu código. Primero, la ventana _Variables_ de la pestaña _Jupyter_ te permite ver todas las variables declaradas en tus diferentes celdas. También puedes ejecutar el código de una celda línea por línea con el comando `Jupyter: Run Line by Line` (`F10`). Finalmente, puedes depurar tu código agregando breakpoints en tus celdas y ejecutar el código en modo depuración con el comando `Jupyter: Debug Cell` (`Ctrl+Shift+Alt+Enter`). Encontrarás entonces todo lo que puedes esperar de un modo de depuración clásico: visualización de variables, ejecución paso a paso, breakpoints, etc.

![Un Jupyter notebook en depuración](./images/08-debug.png)

Si VS Code puede usar kernels instalados localmente, para algunos escenarios - especialmente en ciencia de datos - puede que necesites compartir un servidor más potente entre múltiples usuarios. Esto es posible con **JupyterHub** (https://jupyter.org/hub). Puedes instalar [JupyterHub](https://tljh.jupyter.org/en/latest/index.html) simplemente en un servidor Linux, y la extensión [**JupyterHub**](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter-hub) para ejecutar tus notebooks en este servidor.

### Polyglot notebooks

Los Jupyter notebooks son una herramienta fantástica para muchos escenarios. Sin embargo, tienen un defecto: todo el código de un notebook debe estar escrito en el mismo lenguaje de programación.

Aquí es donde entran en juego los [**Polyglot notebooks**](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.dotnet-interactive-vscode). Este tipo de notebook permite que código en diferentes lenguajes de programación se ejecute dentro del mismo notebook. Los polyglot notebooks soportan los siguientes lenguajes: C#, F#, Javascript, PowerShell, SQL, KQL, HTML, Mermaid, R, y obviamente Python.

Su uso es muy simple: solo instala la extensión [**Polyglot notebooks**](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.dotnet-interactive-vscode), junto con el **.NET SDK**. Una vez instalados, encontrarás las funcionalidades de los Jupyter notebooks con dos diferencias importantes.

Primero, puedes cambiar el lenguaje de cada una de las celdas a través del selector de lenguaje que se encuentra en la esquina inferior derecha de cada celda. Este es el propósito de los Polyglot notebooks. Pero su secreto mejor guardado no está ahí: ¡puedes **compartir datos entre diferentes lenguajes**! Por ejemplo, puedes usar C# para consultar una API web, usar el resultado para construir una consulta SQL, y pasar la tabla de resultados de la consulta a JavaScript para visualizar el resultado.

Los Polyglot notebooks pueden parecer un poco "gadget" a primera vista. Sin embargo, hay muchos escenarios en los que pueden ser útiles. Por ejemplo, los uso muy frecuentemente para probar una nueva biblioteca o experimentar con un fragmento de código. Con soporte SQL, se han convertido en mi herramienta principal para crear scripts de generación de datos para mis bases de datos de desarrollo. Y con el soporte para KQL (un lenguaje de consulta de datos usado especialmente por Azure Monitor) y PowerShell, los uso cada vez más para escribir notebooks que sirvan como procedimientos operativos para sistemas de producción, o para pequeñas tareas administrativas que aún no están integradas en un proceso.

Si eres desarrollador .NET, hay muchos otros secretos por descubrir, como la generación automática de un contexto Entity Framework a partir de una cadena de conexión de base de datos o la [importación de archivos C# existentes](https://github.com/dotnet/interactive/blob/main/docs/import-magic-command.md) en tu notebook.

### GitHub Issues Notebooks

Porque hay más en la vida que código, existe la extensión [**GitHub Issues Notebooks**](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-github-issue-notebooks). Como su nombre indica, esta extensión te permite escribir consultas de GitHub Issues (y _pull requests_) como notebooks. Solo necesitas instalar la extensión homónima en VS Code o en `vscode.dev` para empezar a escribir tus consultas. La sintaxis es idéntica a la usada en el sitio web de GitHub con una excepción: puedes crear variables. En el ejemplo a continuación, es el nombre del repositorio el que se convierte en variable, pero podría ser una etiqueta o un milestone.

```
$repo=repo:jhipster/generator-jhipster
$repo label:"$$ bug-bounty $$" is:open label:"theme: reactive ⚛️"
```

Los GitHub Issues notebooks pueden ser útiles para compartir consultas entre miembros del equipo, o para crear un conjunto de consultas entre diferentes repositorios si trabajas en una configuración multi-repo, por ejemplo.

![Un GitHub Issues notebook](./images/08-ghissues.png)
