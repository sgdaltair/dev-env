# ENVIROMENT

Environment  development.
main directory: `~/dev`
vim_motions = left `h` | down `j` | up `k` | right `l`

# TABLE OF CONTENTS

- [VM](#vm)
- [Prerequisites](#prerequisites)
- [Brave](#brave)
- [i3wm](#i3wm)
- [Git](#git)
- [nvim](#nvim)

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

# I3wm

Official site [i3wm](https://i3wm.org/).
i3 is a tiling window manager, completely written from scratch.

 > Require usrecord script.

```sh
sudo apt install i3
```

- [x] .config/i3/config
- [x] .config/i3status/config

> Require usrecord script.

|keymaps|use|
|:---|:---|
|`$mod+return` | start alacritty terminal. |
|`$mod+d` | start i3-dmenu-desktop a program launcher with `fzf`. |
|`$mod+f` | fullscreen for container. |
|`$mod+r` | resize mode. |
|`$mod+vim_motions` | change focus window. |
|`$mod+shift+vim_motions` | move focused window. |
|`mouse+$mod` | drag floating window. |
|`$mod+shift+space` | toggle tilling/floating. |
|`$mod+print` | take a screenshot. |
|`$mod+shift+f` | record screen. |
|`$mod+n` | go to workspace `n`. |
|`$mod+shift+n` | move container to workspace `n`. |
|`$mod+shift+q` | kill focus window. |
|`$mod+shift+c` | reload i3 config. |
|`$mod+shift+r` | restart i3. |
|`$mod+shift+e` | exit i3. |

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

