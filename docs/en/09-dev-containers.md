## Developing in a Container

With the **Dev Containers** extension, it's possible to have your complete development environment in a Docker container. But what's the benefit? This approach has several advantages:

- **Quick Setup**: to start working on a new project, simply clone the repository and open the folder in VS Code. The extension will then download the Docker image and launch the container, which contains everything you need to work on the project. No more lengthy installations of tools and dependencies!
- **Reproducibility**: the development environment can be shared with your colleagues, to ensure that everybody is working under the same conditions. It can also be versioned with your code, which makes updates easier.
- **Project Isolation**: each project has its own isolated environment, preventing version conflicts and avoiding polluting your system with development dependencies.

To use it, you must first install Docker on your machine. After installing the extension, you can set up a new environment for your project by clicking on the icon in the bottom left and then selecting `Add Development Container Configuration Files...`. You can then choose a base environment from the many templates offered, or create your own configuration.

![Dev Containers Icon](./images/dev-containers-icon.png)

Once the environment is created, select `Reopen in Container` in the notification window that appears. Alternatively, you can click on the icon in the bottom left and select this option from the menu. VS Code will reload your project window and build the container, which may take a few minutes on the first launch. Subsequently, loading will be almost instantaneous. Once finished, you will see that VS Code is connected to your dev container via the status bar.

![VS Code connected to a Node.js dev container](./images/dev-container-connected.png)

You can now open a terminal and use your new dev environment! In this example, I chose a Node.js environment. Note that while all my dev tools are now nicely isolated in the container, the project's source code is not inside it: it remains stored directly on my machine and connected to the container via a volume. So, there is no risk of losing your data, even if the container is destroyed.

### Customizing the Environment

The development environment is defined in the `.devcontainer/devcontainer.json` file. This file is generated when the environment is created, but you can modify it to customize your environment. For example, you can add VS Code extensions, install additional tools, or define commands to automatically run when the container starts.

By default, the container uses a pre-built Docker image, but you can also define your own custom image. Simply create a `Dockerfile` in the `.devcontainer` folder and replace the `image` property with:

```
"build": {
    "dockerfile": "Dockerfile"
}
```

To apply the changes, you can rebuild the container by opening the command palette and selecting `Development Containers: Rebuild Container`.

Once the container configuration is complete, all that's left is to push the `.devcontainer` directory to your code repository, so your entire team can benefit from it. If one of your colleagues updates the configuration, you will then see this notification:

![Notification of container configuration update](./images/dev-container-update.png)

Then, simply select `Rebuild` to update your development environment.

> **Good to know**: it's possible to use development containers even with projects that directly use Docker. In this case, there are two possible operating choices: have a new Docker environment isolated from that of your machine, or on the contrary call directly the Docker of the host machine from the development container. I invite you to visit the site https://containers.dev/features for the list of activatable features.