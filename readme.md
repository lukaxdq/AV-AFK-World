# AFK Macro for Roblox

This project is an AutoHotkey script designed to automate certain tasks in the Roblox game "Anime Vanguards". The script includes features such as automatic reconnection, webhook notifications, and more.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. **Download and Install AutoHotkey v2**: Make sure you have [AutoHotkey v2](https://www.autohotkey.com/download/) installed on your system.

2. **Clone the Repository**:
    ```sh
    git clone https://github.com/yourusername/afk-macro-roblox.git
    cd afk-macro-roblox
    ```

3. **Install Dependencies**:
    - Ensure you have the required libraries in the [scr](http://_vscodecontentref_/1) directory:
        - `Gdip_All.ahk` from [AHKv2-Gdip](https://github.com/buliasz/AHKv2-Gdip)
        - `OCR.ahk` for text recognition
        - `FindText.ahk` for finding text on the screen
        - `IsProcessElevated.ahk` for checking admin rights
        - `Discord-Webhook` library for sending webhook notifications

## Usage

1. **Configure the Script**:
    - Open [main.ahk](http://_vscodecontentref_/2) and set the necessary global variables such as `WebhookURL`, `RobloxWindow`, and keybinds.

2. **Run the Script**:
    - Double-click [main.ahk](http://_vscodecontentref_/3) to start the script.
    - Use the defined keybinds to control the script:
        - `F1`: Start Macro
        - `T`: (Test Function only on test version)
        - `R`: Reconnect try 
        - `F2`: Close
        - `P`: Send Webhook force 

## Features

- **Automatic Reconnection**: The script will automatically reconnect to the game if it detects a disconnection.
- **Webhook Notifications**: Sends notifications to a Discord webhook with screenshots and elapsed time.
- **OCR Integration**: Uses OCR to detect specific text on the screen.
- **Customizable Keybinds**: Easily configure keybinds for various actions.

## Configuration

- **Webhook URL**: Set your Discord webhook URL in the `WebhookURL` variable in [main.ahk](http://_vscodecontentref_/4).
- **Keybinds**: Customize keybinds by modifying the `hotkeyKeybind1`, `hotkeyKeybind2`, and other keybind variables in [main.ahk](http://_vscodecontentref_/5).
- **Roblox Window**: Ensure the `RobloxWindow` variable is set to the correct window title for the Roblox game.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.