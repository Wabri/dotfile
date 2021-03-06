# Dotfiles

## Some details

* OS: Debian 9 (stretch)
* WM: I3wm version [i3-gaps](https://github.com/Airblader/i3)
* Bar: [Polybar](https://github.com/polybar/polybar)
* Terminal: rxvt-unicode-256color (URxvt)
* Shell: bash, zsh with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* File Manager: [vifm](https://vifm.info/) (terminal), thunar (graphical)
* Application launcher: [Albert](https://github.com/albertlauncher/albert)
* Editor: [Vim](https://www.vim.org/) (terminal), [VSCode](https://code.visualstudio.com/) (graphical)
* Browser: Firefox
* Battery warning: [i3battery](https://github.com/wabri/i3battery)
* Control backlights: [light](https://github.com/haikarainen/light)
* Mail client: [Mailspring](https://getmailspring.com/)
* Chat application: Telegram, [Rambox](https://getmailspring.com/)
* Music player: Spotify
* External package installer: [YAPI](https://github.com/YetAnotherPackageInstaller/YAPI)

This configuration with all application need a **700~800MB** of memory, principally cause by dropbox (with more than 150MB upkeep) and mailspring (with more than 350MB upkeep). Without these application the configuration drop to **250~300MB** upkeep usage of memory.

---------------------------------

## Index

0. [Makefile](#makefile)
1. [I3wm](#i3)
2. [Polybar](#polybar)
3. [Urxvt](#urxvt)
4. [Zsh](#zsh---oh---my---zsh)
5. [Vim](#vim)
6. [Vifm](#vifm)
7. [Albert](#albert)
8. [Visual Studio Code](#vscode)
9. [Install](#install)
10. [WallPaper](#wallpaper)
11. [Deprecations](#deprecated)

	1. [i3blocks](#i3blocks)
	2. [Rofi](#rofi)

---------------------------------

## Makefile

## I3

This configuration is Vim oriented (move keys with h-j-k-l).
You can find the config here -> [file](home/.config/i3/config)

### Preview

Full:

![i3preview](resources/i3full.png)

* up left -> [gtop](https://github.com/aksakalli/gtop)
* up right up -> tty-clock
* up right middle -> cmatrix
* down left -> neofetch
* down middle -> [vifm](#vifm)
* down right -> [urxvt](#urxvt)

Clean:

![i3preview](resources/i3Clear.png)

### Keyboard

I use the windows key as my main mod key.

* `super + enter` -> new terminal
* `super + d` -> launch rofi
* `super + shift + q` -> close container
* `super + [1-0]` -> change workspace
* `super + Tab` -> move to next workspace
* `super + Shift + Tab` -> move to previous workspace
* `super + shift + [1-0]` -> move container to workspace
* `super + g` -> toggle split mode
* `super + f` -> toggle fullscreen
* `super + t` -> layout tabbed
* `super + e` -> toggle layout split
* `super + r` -> resize mode
* `super + o` -> focus floating
* `super + Shift + o` -> toggle floating
* `super + MouseButton1` -> Move floating window
* `super + h/l` -> move right/left container view
* `super + j/k` -> move down/up container view
* `super + Shift + h/j/k/l` -> move container left/down/up/right
* `super + p` -> system control mode (logout, suspend, hibernate, reboot, poweroff)
* `super + s` -> spotify control mode (play, pause, next, previous, toggle play/pause)
* `super + w` -> window and container move trought output mode (up, down, right, left)
* `super + m` -> change output layout (horizontal|vertical left|right)
* `super + Shift + agrave` -> Mode start and stop dropbox (start, stop)
* `super + Shift + x` -> lock screen
* `print` -> grab a screenshoot of the active window
* `super + print` -> select area to grab to screenshot
* `super + Shift + print` -> grab a screenshoot of the entire screen
* `XF86Tools` -> open with vim the config file
* `XF86Display` -> open arandr for graphical management of monitor view
* `super + XF86Display` -> load the second monitor inplace
* `super + backslash` -> open vifm in the home directory
* `super + Shift + comma` -> create a new file and edit with vim
* `super + Shift + ograve` -> open mailspring mail client
* `super + v` -> open empty vim in home directory
* `super + -` -> open gtop
* `super + comma` -> open .Xresources with vim
* `super + period` -> open .vimrc with vim
* `super + backslash` -> open vifm

### Modes

For this configuration I use this modes:

1. Resize -> default resize modality of i3, use:

    * l -> resize shrink width
    * j -> resize grow height
    * k -> resize shrink height
    * h -> resize grow width
    * q or Escape -> return to default mode

2. [System](home/.config/i3/i3exit) -> use to exit from i3, use:

    * l -> logout
    * s -> suspend
    * h -> hibernate
    * r -> reboot
    * p -> shutdown
    * q or Escape -> return to default mode

3. [Spotify](home/.config/i3/i3spotify) -> use to control spotify desktop app, use:

    * h -> previous song
    * j -> pause
    * k -> play
    * l -> next song
    * s -> toggle pause and play
    * q or Escape -> return to default mode

4. ContentMove -> move workspace or containers from output to another:

    * Shift+l -> move workspace to right
    * Shift+h -> move workspace to left
    * Shift+j -> move workspace to down
    * Shift+k -> move workspace to up
    * q or Escape -> return to default mode

5. [Output layout](home/.config/i3/i3monitor) -> use to change layout of output:

    * h -> [Vertical left](home/.screenlayout/VL.sh)
    * h -> [Horizontal left](home/.screenlayout/HL.sh)
    * h -> [Horizontal right](home/.screenlayout/HR.sh)
    * h -> [Vertical right](home/.screenlayout/VR.sh)
    * q or Escape -> return to default mode

6. [Dropbox](home/.config/i3/i3dropbox) -> Start and Stop for dropbox, added after known about the memory usage of dropbox (see the introduction of dorfiles)

    * s -> dropbox start
    * d -> dropbox stop
    * q or Escape -> return to default mode

### Install

***Not yet tested***

Make argument:

* Basic dependencies:

    ```Bash
    make i3
    ```

* All dependencies:

    ```Bash
    make i3_all
    ```

---------------------------------

## Polybar

You can find the config here -> [file](home/.config/polybar/config)

### Preview

Top:

* On the corner top left: spotify view of song
* On the middle top: wireless connection, wired connection (it's red because is not connected)
* On the corner top right: tray icons

![polybartop](resources/polybartop.png)

Bottom:

* On the corner bottom left: cpu status with animated bar that represents the 4 cores, rap status with the animated status bar, filesystem status with free and percentage of usage, temperature of core.
* On the middle bottom: i3wm workspaces
* On the corner bottom right: volume percentage, brightness percentage, battery status with animated charging and color change if the adapter is disconnected, date and time

![polybarbottom](resources/polybarbottom.png)

### Modules

Upper bar:

* left -> spotify
* center -> wireless-network wired-network
* right -> tray

Bottom bar:

* left -> cpu memory filesystem temperature
* center -> i3
* right -> pulseaudio backlight battery date

### Install

***Not yet tested***

Make argument:

```Bash
make polybar
```

---------------------------------

## Urxvt

You can find the Xresources here -> [file](home/.Xresources)

## Preview

![urxvt](resources/urxvt.png)

### Keyboard

* `Ctrl++` -> increase the font size
* `Ctrl+-` -> decrease the font size
* `Ctrl+Shift+c` -> copy to the clipboard
* `Ctrl+Shift+v` -> paste from the clipboard

### Plugin

* [font-size](https://github.com/johntyree/urxvt-perls)
* [url-select](https://github.com/johntyree/urxvt-perls)

### Install

***Not yet tested***

Make argument:

```Bash
make urxvt
```

---------------------------------

## Zsh - Oh-My-Zsh

You can find the zshrc here -> [file](home/.zshrc)

Theme in use: agnoster with powerline

## Preview

![zsh](resources/zsh.png)

### Keyboard

Vim bindkey is active.

### Plugin

* debian
* git
* colorize
* zsh-completions
* zsh-autosuggestions
* zsh-syntax-highlighting
* copydir
* copyfile
* sudo
* themes
* vscode
* web-search

### Install

***Not yet tested***

Make argument:

```Bash
make zsh
```

---------------------------------

## Vim

You can find the config here -> [file](home/.vimrc)

### Preview

![vim](resources/vim.png)

### Keyboard

#### To abilitate the copy and paste to clipboard you need to install vim-gnome

* `Ctrl+\` -> open the nerd tree
* `<F2>` -> copy to the clipboard
* `<F3>` -> paste from the clipboard
* `Ctrl+<motion>` -> move line/s
* `Ctrl+w <motion>` -> switch between splitted editor
* `Ctrl+d` -> switch to bash terminal
* `Space+f` -> folding
* `Space+>` -> switch to next tab
* `Space+<` -> switch to previous tab
* `Tab` -> move specified vim window in the visual

### Plugin

#### I'm using [plugged](https://github.com/junegunn/vim-plug)

* [i3-vim-syntax](https://github.com/potatoesMaster/i3-vim-syntax)
* [vim-sensible](https://github.com/tpope/vim-sensible)
* [jedi-vim](https://github.com/davidhalter/jedi-vim)
* [gojo.vim](https://github.com/junegunn/goyo.vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-get-plugin)
* [vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-airline-themes](https://vim-airline/vim-airline-themes)
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-signify](https://github.com/mhinz/vim-signify)
* [vim-polyglot](https://github.com/sheerun/vim-polyglot)
* [jellybeans.vim](https://github.com/nanotech/jellybeans.vim)
* [luochen1990/rainbow](https://github.com/nanotech/luochen1990/rainbow)
* [matze/vim-move](https://github.com/nanotech/matze/vim-move)
* [vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace)

### Install

***Not yet tested***

Make argument:

```Bash
make vim
```

---------------------------------

## Vifm

You can find the config here -> [file](home/.config/vifm/vifmrc)

### Preview

![vifm](resources/vifm.png)

### Keyboard
To see all of the keyboard shortcut go to cheatsheets: [vifm.info/cheatsheets.shtml](https://vifm.info/cheatsheets.shtml):

![vifm](https://vifm.info/cheatsheets/v0.10/vifm-v0.10-builtin-normal.png)

### Install

Make argument:

```Bash
make vifm
```

---------------------------------

## Albert

You can find the config here -> [file](home/.config/albert/albert.conf)

### Preview

![albert](resources/albert.png)

![albert](resources/albertCalc.png)

![albert](resources/albertGithub.png)

### Install

Make argument:

```Bash
make albert
```

---------------------------------

## VSCode

### Preview

![code](resources/code.png)

### Keyboard

#### To see the keyboard setup you can read the [keybinding.json](.config/Code/User/keybindings.json)

* All the Vim keybinding are set up with the VSCodeVim plugin

### Plugin

* [Vim](https://github.com/VSCodeVim/Vim)
* [IntelliCode](https://github.com/MicrosoftDocs/intellicode)
* [markdownlint](https://github.com/DavidAnson/vscode-markdownlint)
* [Python](https://github.com/Microsoft/vscode-python)
* [Icons](https://github.com/vscode-icons/vscode-icons)

To install this plugins you can use the script [install_extension.sh](.config/Code/install_extension.sh)

### Install

***Not yet tested***

Make argument:

```Bash
make code
```

---------------------------------

## Install

***Not yet tested***

### This install is tested only for Debian 9

### I do not ensure the result of the installation for computers other than mine

First of all, you need to be in the sudoers:

```Bash
$ usermod -aG sudo <username>
```

Download or clone one of the release and run:

```Bash
git clone https://github.com/wabri/dotfiles
cd dotfiles
make all
```

Now reboot and prey.

Or you can follow the commands you find on the makefile step by step -> [makefile](Makefile)

---------------------------------

## WallPaper

![Wallpaper](home/.config/i3/desktop.jpg)
![Wallpaper2](home/.config/i3/desktop2.jpg)

---------------------------------

## Deprecated

## I3Blocks

You can find the config here -> [file](home/.config/i3blocks/i3blocks.conf)

### Preview

![i3blocks](resources/i3blocks.png)

### Modules


### Install

***Not yet tested***

Make argument:

```Bash
make i3blocks
```

After this installation you need to update the i3config with this value:

```i3config
bar {
	font pango:FontAwesome Mono 13
	separator_symbol "|"
	status_command i3blocks -c .config/i3blocks/i3blocks.conf
}
```

For more blocks you can use this repository [i3blocks-contrib](https://github.com/vivien/i3blocks-contrib)

---------------------------------

## Rofi

### Preview

![rofi](resources/rofi.png)

### Keyboard

#### ***You can see all the configuration [here](home/.config/rofi/config)***

#### ***This configuration is vim oriented***

* `Alt + Shift + d` -> Clear input line
* `Alt + Shift + i` -> Beginning of the line
* `Alt + Shift + a` -> End of line
* `Alt + b` -> Move back one word
* `Alt + w` -> Move forward one word
* `Alt + h` -> Move back one char
* `Alt + l` -> Move forward one char
* `Alt + Shift + c` -> Delete till the end of the line
* `Alt + Shift + s` -> Delete till the start of the line
* `Control + Tab` -> Switch to the next mode
* `Alt + Shift + h` -> Go to the previous column
* `Alt + Shift + l` -> Go to the next column
* `Control + Space` -> Set selected item as input text
* `Alt + s` -> Take a screenshot of the rofi window
* `Escape` -> Quit rofi

### Install

***Not yet tested***

Make argument:

```Bash
make rofi
```
---------------------------------

