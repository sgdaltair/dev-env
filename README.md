 # ENVIROMENT

Environment  development.
main directory: ~/dev
vim_motions = left `h` | down `j` | up `k` | right `l`

# TABLE OF CONTENTS

- [VM](#vm)
- [Prerequisites](#prerequisites)
- [Brave](#brave)
- [Git](#git)

# VM MACHINE CONF

Config for Ubuntu Virtual Box. Requirements for Guest Additions.  

``` sh
sudo apt install build-essential dkms linux-headers-$(uname -r) -y
```

Menu>Devices - Insert Guest Additions CD. 

``` sh
./autorun.sh
```

# PREREQUISITES

```sh
sudo apt install ninja-build gettext cmake curl build-essential
```

# Brave

Official site [brave browser](https://brave.com/download/).
The new brave browser blocks ads and trackers that slow you down and invade your privacy. Discover a new way of thinking about how the web can work. 

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



