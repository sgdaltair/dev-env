# ENVIROMENT

Environment  development.
main directory: `~/dev`
vim_motions = left `h` | down `j` | up `k` | right `l`

# TABLE OF CONTENTS

- [VM](#vm)
- [Prerequisites](#prerequisites)
- [Alacritty](#alacritty)
- [Brave](#brave)
- [Zsh](#zsh)
- [Tmux](#Tmux)
- [i3wm](#i3wm)
- [Git](#git)
- [nvim](#nvim)
- [mpv](#mpv)
- [zathura](#zathura)

# VM MACHINE CONF

Config for Ubuntu Virtual Box. Requirements for Guest Additions.

```sh
sudo apt install build-essential dkms linux-headers-$(uname -r) -y
```

Menu>Devices - Insert Guest Additions CD.

```sh
./autorun.sh
```

# PREREQUISITES


```sh
sudo apt install ninja-build gettext cmake curl build-essential
```

# Brave

Official site [brave browser](https://brave.com/download/).
The new brave browser blocks ads and trackers that slow you down and invade your privacy. Discover a new way of thinking about how the web can work.

# Zsh

Zsh is a shell designed for interactive use, although it is also a powerful scripting language. Official site [zsh](https://www.zsh.org/).

> **Require** [bat](#bat), [feh](#feh), [fzf](#fzf), [fd](#fd), [picom](#picom), [polkit](#polkit), [red](#redshift), [ripgrep](#ripgrep), [xclip](#xclip), [eza](#eza).

Install zsh:

```sh
sudo apt install zsh
```

Make zsh default shell(logout):

```sh
chsh -s $(which zsh)
```

If you prefer .zshenv in the `$ZDOTDIR` as well, you must setting ZDOTDIR in the global configuration file `/etc/zsh/zshenv`.

```sh
export ZDOTDIR=$HOME/.config/zsh
```

- [x] .config/zsh/.zshenv -> contain env variables must be in the home directory.
- [x] .config/zsh/.zshrc
- [x] .config/zsh/aliases.zsh
- [x] .config/zsh/completion.zsh
- [x] .config/zsh/fn.zsh
- [x] .config/zsh/fzf_completion.zsh
- [x] .config/zsh/fzf_key_bindings.zsh

|keymaps|use|
|:---|:---|
|`c-h` | `fzf` history. |

[zsh vi mode](https://github.com/jeffreytse/zsh-vi-mode)

- [x] .config/zsh/vimodes.zsh

# Tmux

Tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. Tmux may be detached from a screen and continue running in the background, then later reattached. Official site [tmux](https://github.com/tmux/tmux).

Install tmux:

```sh
sudo apt install tmux
```

> Require tmsession script.

- [x] .config/tmux/tmux.conf

| Keymaps              | Use                                                   |
|:---------------------|:------------------------------------------------------|
| `c-a`                | Tmux prefix key.                                      |
| `c-a + s`            | Tree mode sessions.                                   |
| `c-a + r`            | Reload `~/.config/tmux/tmux.conf`.                    |
| `c-a + [`            | Start copy-mode.                                      |
| `v`                  | Start selection in copy-mode.                         |
| `y`                  | Yank selection to clipboard in copy-mode.             |
| `c-a + f`            | New session in selected workspace.                    |
| `c-a + d`            | New session in ~/dev/devenv.                          |
| `c-a + n`            | New session in notes.                                 |
| `c-a + l`            | Go to previous session.                               |
| `c-a + t`            | Open new window and run `~/.local/bin/cht.sh`         |
| `c-a + :`            | Command prompt.                                       |
| `c-a + c`            | New window.                                           |
| `c-a + &`            | Close window.                                         |
| `c-a + n`            | Go to window `n`.                                     |
| `c-a + $vim_motions` | Change focus pane.                                    |
| `c-a + %`            | Split pane vertical.                                  |
| `c-a + "`            | Split pane horizontal.                                |
| `c-a + x`            | Kill pane.                                            |



# Alacritty

Official site [alacritty](https://alacritty.org/).
A cross-platform, opengl terminal emulator. 

- [x] .config/alacritty/alacritty.toml

```sh
cargo install alacritty
```

# Bat

Official site [bat](https://github.com/sharkdp/bat)
A cat(1) clone with wings.

```sh
sudo apt install bat
```

# Feh

Install feh:

```sh
sudo apt install feh
```

# Fzf

Official site [fzf](https://github.com/junegunn/fzf)
A command-line fuzzy finder

```sh
sudo apt install fzf
```

# Fd

Official site [fd](https://github.com/sharkdp/fd).
A simple, fast and user-friendly alternative to 'find'. 

Install fd:

```sh
sudo apt install fd-find
```

> `fdfind` as the binary name fd is already used by another package. It is recommended that after installation, you add a link to fd by executing command `ln -s $(which fdfind) ~/.local/bin/fd`, in order to use `fd` in the same way as in this documentation. Make sure that $HOME/.local/bin is in your $PATH.

# Picom

A lightweight compositor for X11. Official site [picom](https://github.com/yshui/picom).

Install picom:

```sh
sudo apt install picom
```

# Polkit

PolicyKit-gnome provides a D-Bus session bus service that is used to bring up authentication dialogs used for obtaining privileges.

Install polkit:

```sh
sudo apt install policykit-1-gnome
```

Added agent on `~/.config/i3/config`.

# Redshift

Redshift adjusts the color temperature of your screen according to your surroundings. This may help your eyes hurt less if you are working in front of the screen at night. Official site [redshift](https://github.com/jonls/redshift).

Install redshift:

```sh
sudo apt install redshift
```

- [x] .config/redshift.conf

# Ripgrep

Official site [ripgrep](https://github.com/burntsushi/ripgrep).
Ripgrep recursively searches directories for a regex pattern while respecting your gitignore. 

Ripgrep can be installed using a binary .deb file provided in each ripgrep ripgrep:

```sh
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
sudo dpkg -i ripgrep_14.1.1-1_amd64.deb
```

# Xclip

```sh
sudo apt install xclip
```

# Eza

Official site [Eza](https://github.com/eza-community/eza)

# I3wm

Official site [i3wm](https://i3wm.org/).
i3 is a tiling window manager, completely written from scratch.

 > Require usrecord script.

```sh
sudo apt install i3 fzf
```

- [x] .config/i3/config
- [x] .config/i3status/config

$MOD = WINDOWS

| Keymap                                | Action                                                                            |
|:--------------------------------------|:----------------------------------------------------------------------------------|
| `$mod+Return`                         | Start Alacritty terminal.                                                         |
| `$mod+Shift+q`                        | Kill focused window.                                                              |
| `$mod+d`                              | Launch i3-dmenu-desktop (program launcher) using `fzf`.                           |
| `$mod+1` - `$mod+0`                   | Switch to workspaces `n`.                                                         |
| `$mod+Shift+n`                        | Move focused container to workspaces n                                            |
| `$mod+Print`                          | Take a screenshot and save it to `/tmp/latest-screenshot.png`.                    |
| `$mod+Shift+f`                        | Start screen recording using `usrecord`.                                          |
| `$mod+h`                              | Focus window to the left.                                                         |
| `$mod+j`                              | Focus window down.                                                                |
| `$mod+k`                              | Focus window up.                                                                  |
| `$mod+l`                              | Focus window to the right.                                                        |
| `$mod+Shift+h`                        | Move focused window to the left.                                                  |
| `$mod+Shift+j`                        | Move focused window down.                                                         |
| `$mod+Shift+k`                        | Move focused window up.                                                           |
| `$mod+Shift+l`                        | Move focused window to the right.                                                 |
| `$mod+u`                              | Split container horizontally.                                                     |
| `$mod+v`                              | Split container vertically.                                                       |
| `$mod+f`                              | Toggle fullscreen for the focused container.                                      |
| `$mod+s`                              | Change layout to stacked (vertical).                                              |
| `$mod+w`                              | Change layout to tabbed.                                                          |
| `$mod+e`                              | Toggle split layout.                                                              |
| `$mod+Shift+space`                    | Toggle between tiling and floating window modes.                                  |
| `$mod+space`                          | Toggle focus between tiling and floating windows.                                 |
| `$mod+a`                              | Focus the parent container.                                                       |
| `$mod+r`                              | Enter resize mode.                                                                |
| `h`                                   | In resize mode, shrink width by 10px or 10%.                                      |
| `j`                                   | In resize mode, grow height by 10px or 10%.                                       |
| `k`                                   | In resize mode, shrink height by 10px or 10%.                                     |
| `l`                                   | In resize mode, grow width by 10px or 10%.                                        |
| `Left`, `Down`, `Up`, `Right`         | Resize window (using arrow keys) by shrinking or growing in respective directions.|
| `Return`  `Esc`                       | Exit resize mode and return to default mode.                                      |
| `$mod+Shift+c`                        | Reload i3 config file.                                                            |
| `$mod+Shift+r`                        | Restart i3 without losing your session.                                           |
| `$mod+Shift+e`                        | Exit i3, prompt confirmation before exiting.                                      |


# Git

Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
Official site [git](https://git-scm.com/download/linux).

For ubuntu, this ppa provides the latest stable upstream git version:

```sh
sudo add-apt-repository ppa:git-core/ppa && sudo apt update; sudo apt install git
```

Generating a new ssh key and adding it to the [ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
Config `~/.gitconfig`

```sh
git config --global user.name "name"
git config --global user.email "me@mail.com"
git config --global init.defaultBranch main
git config --global core.editor "nvim"
```

# Nvim

Hyperextensible vim-based text editor. Official site [nvim](https://neovim.io/).

Install neovim build from [source](https://github.com/neovim/neovim/blob/master/BUILD.md).


# Mpv

Mpv is a free (as in freedom) media player for the command line. Official site [mpv](https://mpv.io/installation/).

Install mpv:

```sh
sudo apt install mpv
```
| Keybind     | Command                 |
|:------------|:------------------------|
| `Alt+h`     | `add video-pan-x 0.1`   |
| `Alt+l`     | `add video-pan-x -0.1`  |
| `Alt+k`     | `add video-pan-y 0.1`   |
| `Alt+j`     | `add video-pan-y -0.1`  |

# Zathura

Zathura is a highly customizable and functional document viewer. It provides a minimalistic and space saving interface as well as an easy usage that mainly focuses on keyboard interaction. Official site [zathura](https://pwmt.org/projects/zathura).

Install zathura:

```sh
sudo apt install zathura
```

- [x] .config/zathura/zathurarc

| Keymaps        | Use                                                         |
|:---------------|:------------------------------------------------------------|
| `vim_motions`  | Moves.                                                      |
| `shift+h`      | Go to the top of the currently selected page.               |
| `shift+l`      | Go to the bottom of the currently selected page.            |
| `m+n`          | New bookmark `n`.                                           |
| `n+'`          | Load bookmark `n`.                                          |
| `shift+f`      | Show links in the page.                                     |
| `f`            | Load links.                                                 |
| `a`            | Fit the height of the current page to the display window.   |
| `s`            | Fit the width of the current page to the display window.    |
| `c-u`          | Move the document display window half a page up.            |
| `c-d`          | Move the document display window half a page down.          |
| `tab`          | Index.                                                      |
| `=`            | Reset zoom.                                                 |
| `$zoom+=`      | Set zoom to $zoom.                                          |
| `d`            | Booklet format.                                             |
| `c-r`          | Recolor.                                                    |
| `shift+r`      | Refresh document.                                           |
| `r`            | Rotate by 90 degrees.                                       |
| `/`            | Search term.                                                |
| `q`            | Close.                                                      |
