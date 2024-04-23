## Getting Started with VS Code

Visual Studio Code, available on macOS, Linux, and Windows, is your new traveling companion. Whether you're editing text, writing code, or manipulating data, it'll be there for you at every step. In a few minutes - or even less - you'll be ready to code. Let's explore the different options available to you.

### Installing VS Code in a Few Clicks

Most of the time, you'll install VS Code on your main workstation. The simplest way is to use the package manager that comes with your operating system, or even the app store.

**Windows**, you can install VS Code directly from the Microsoft Store [aka.ms/vscode-msstore](https://aka.ms/vscode-msstore) in one click. Are you more of a command-line person? You can use **WinGet**, Windows' package manager. Just execute the following command in the terminal:

```powershell
winget install Microsoft.VisualStudioCode
```

> **Tip**: WinGet is available by default in some versions of Windows 11. You can learn more about WinGet in the official documentation: https://learn.microsoft.com/windows/package-manager/winget/

**Linux**, you can install VS Code using a package. You'll find all package formats (Debian, RPM, etc.) for your needs on the downloads page [code.visualstudio.com](https://code.visualstudio.com). The example below shows how to install the x64 version on a Debian or Ubuntu OS.

```bash
wget -O vscode.deb https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
sudo apt install ./vscode.deb
```

> **Learn More**: VS Code is also available on **Snaps**, the app store for Linux. If you're not familiar with Snaps, you can learn more on the official site: https://snapcraft.io/docs/installing-snapd.

**Mac**: You can download the app from the official website. Then, simply drag and drop the application into your Mac's **Applications** folder. If you're a HomeBrew user (https://brew.sh), you can install VS Code with the command:

```bash
brew install --cask visual-studio-code
```

### Portable Usage

Do you remember "portable apps"? Those applications run from a USB drive, without installation? Even though this trend has declined, you can still be the coding superhero without being the administrator of your workstation. Just download the "zip" (or "tar.gz") version of VS Code. You can then simply execute `code.exe` (or its equivalent depending on your operating system) to work with VS Code.

If you use this version regularly, you may want to keep your settings between different sessions. In that case, you will need to create a `data` (or `code-portable-data`) folder at the same level as the VS Code executable.

> **Learn More**: You can find more information on the portable version of VS Code on the official website: https://code.visualstudio.com/docs/editor/portable

### Using VS Code Without Installing

Are you at a friend's house and need to code quickly? The horror, there's only Notepad on their computer! Fortunately, VS Code comes to your rescue.

Simply visit the site [vscode.dev](https://vscode.dev) and you're ready to code, without installing anything!

![vscode.dev](./images/01-vscodedev.png)

This version of VS Code, running directly in your browser, can do wonders. It can open a file from your computer, after your permission of course, or access a Git repository.

> **Did You Know?** If you use GitHub, you can use the "github.dev" editor. All you have to do is press the `.` key on any GitHub repository to launch the editor. You can also visit [github.dev](https://github.dev)

Some limitations exist on this web version. For instance, the integrated terminal or code compilation are unavailable. Some extensions - such as Live Share - are functional, others are not.

### VS Code on Your Servers

Need access to a remote server? No "Remote Desktop" access? No problem, VS Code has two super solutions for you: SSH and VS Code Server.

The "Remote - SSH" extension allows you to connect to a remote server via SSH and use VS Code as if you were connected directly. You'll have access to the terminal and remote file system. We'll look more closely at how to install extensions in a later section.

![Remote - SSH](./images/01-remotessh.png)

However, there are scenarios where you don't have direct SSH access: workstation behind a firewall, Windows workstation, etc... In this case, you can use **VS Code Server**. This mode of VS Code allows you to create a secure tunnel between your workstation and the remote workstation. The connection between the two machines is secured via your GitHub account. Therefore, you cannot use this tool to share your machine with someone else.

> **Important**: Although VS Code Server does not directly expose your server to the Internet, it creates an entry point on your machines. Before using it on such workstations as production servers, ensure you fully understand the implications for your _Threat Model_.

To start, install **VS Code CLI** on the target workstation, launch the magic command `code tunnel`, and authenticate with GitHub. If you're on a workstation with a visual interface (like your desktop PC), activate the tunnel via the **accounts** menu.

![](./images/01-tunnel.png)

Once the tunnel is activated, you can access your target workstation simply from vscode.dev. You can also access it from another workstation using the **Remote - Tunnels** extension.

### Updating VS Code

By default, Visual Studio Code automatically suggests installing updates as they become available. You can then choose to install it immediately or on the next editor shutdown. Unless you're working with a portable version or have opted to disable this function, updating VS Code is a breeze.

Now, let's talk cadence! The teams dedicated to VS Code unveil a minor version every month. To fully enjoy what VS Code has to offer, consider following this monthly rhythm. Some months may have more than one minor version, especially if there's security vulnerability or a regression. That's why it's strongly recommended to enable automatic updates.

### Staying Ahead with the Insider Edition

For the more daring, eagerness for new features, you can use the "Insider" edition of VS Code. This version is updated daily and gives you access to the latest features before everyone else. Of course, it's like playing with a prototype - it can be a bit risky for production use. But don't worry, you can have this version and the stable version side-by-side on your computer.

You can download the insiders version at https://code.visualstudio.com/insiders/, and even access the web version at https://insiders.vscode.dev/.
