## Crea tu primera extensión

Ahora que has dominado VS Code, para personalizarlo aún más puedes programar tu propia extensión. Si sientes que falta una funcionalidad, o si simplemente quieres aprender más sobre el funcionamiento interno de VS Code, es posible crear tu propia extensión y publicarla en el marketplace para que todos se beneficien.

VS Code en sí está escrito en _TypeScript_ y usa el framework Electron que está basado en _Node.js_ y Chromium. Por lo tanto, necesitas Node.js para desarrollar tu extensión. Después de instalar Node.js en tu máquina, necesitas instalar el generador de extensiones de VS Code:

```bash
npm install -g yo generator-code
```

Crea un nuevo proyecto de extensión escribiendo `yo code` en una terminal. Entonces tienes la opción de crear diferentes tipos de extensiones:

![Elección del tipo de extensión](./images/extension-types.png)

Para este ejemplo, crearemos una extensión que agrega un comando a la paleta de comandos. Elige la primera opción, luego completa los campos solicitados de la siguiente manera:

![Creando una extensión](./images/extension-create.png)

Luego abre el proyecto generado en VS Code y abre el archivo `package.json`. Este archivo contiene información sobre tu extensión, como su nombre, versión, descripción, etc. También es aquí donde definimos lo que nuestra extensión agregará a VS Code, a través de la propiedad `contributes`. En nuestro caso, agregaremos un comando para realizar una búsqueda directamente en el sitio Stack Overflow. Modifica la propiedad `contributes` existente de la siguiente manera:

```
"contributes": {
  "commands": [
    {
      "command": "vscode-overflow.search",
      "title": "Search on Stack Overflow"
    }
  ]
},
```

Hemos definido un nuevo comando aquí, que será accesible a través de la paleta de comandos. Ahora definiremos qué hará este comando. Para ello, abre el archivo `src/extension.ts`. Este archivo contiene el código de tu extensión. Puedes ver que el código generado por el generador de extensiones ya es funcional y contiene comentarios para ayudar a entender lo que está pasando. Ahora agregaremos nuestro código para realizar una búsqueda en Stack Overflow. Reemplaza estas líneas:

```typescript
let disposable = vscode.commands.registerCommand('vscode-overflow.helloWorld', () => {
  // El código que coloques aquí se ejecutará cada vez que tu comando se ejecute
  // Muestra un cuadro de mensaje al usuario
  vscode.window.showInformationMessage('Hello World from vscode-overflow!');
});
```

Con el siguiente código:

```typescript
let disposable = vscode.commands.registerCommand('vscode-overflow.search', async () => {
  // Recuperar el texto seleccionado
  let query = vscode.window.activeTextEditor?.document.getText(vscode.window.activeTextEditor.selection);

  if (!query) {
    // Pedir al usuario que ingrese una pregunta
    query = await vscode.window.showInputBox({
      placeHolder: 'pregunta',
      prompt: 'Buscar en StackOverflow'
    });
  }

  const uri = vscode.Uri.parse(`https://stackoverflow.com/search?q=${query}`);

  // Abrir el navegador con la búsqueda
  await vscode.commands.executeCommand('vscode.open', uri);
});
```

Ahora, presiona `F5` para probar tu extensión. Se abrirá una nueva ventana de VS Code con tu extensión instalada. Puedes probarla abriendo la paleta de comandos y seleccionando `Search on Stack Overflow`, ingresa una pregunta y presiona `Enter`. Se abrirá una nueva ventana del navegador con los resultados de búsqueda. También puedes seleccionar texto en el editor y lanzar el comando, el texto seleccionado se usará como la pregunta.

![Nuestra extensión en acción](./images/extension-run.png)

> **Nota**: Por razones de seguridad, VS Code te pide confirmar la apertura cuando no reconoce el dominio de un sitio web, como es el caso aquí. Puedes desactivar esta solicitud de confirmación agregando el dominio a la lista de sitios de confianza eligiendo la opción `Configure Trusted Domains` en la ventana de confirmación.

¡Felicidades, has creado tu primera extensión para VS Code! Por supuesto, es posible hacer mucho más con extensiones, como agregar menús, barras de herramientas, snippets, etc. Puedes encontrar documentación completa así como guías y ejemplos en https://code.visualstudio.com/api.
