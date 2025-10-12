Install [Lua](https://www.lua.org/download.html)

[Luarocks](https://luarocks.org/#quick-start)



# Comment.nvim


file

Normal Mode

| Keymap               | Description                                                                |
|:---------------------|:---------------------------------------------------------------------------|
| `gco`                | Insert comment on the next line and enter INSERT mode                      |
| `gcO`                | Insert comment on the previous line and enter INSERT mode                  |
| `gcA`                | Insert comment at the end of the current line and enter INSERT mode        |
| `gcc`                | Toggle comment on the current line using linewise comment                  |
| `gbc`                | Toggle comment on the current line using blockwise comment                 |
| `[count]gcc`         | Toggle linewise comments for the specified number of lines                 |
| `[count]gbc`         | Toggle blockwise comments for the specified number of lines                |
| `gc[count]{motion}`  | (Operator-pending) Toggle comments for a motion region using linewise      |
| `gb[count]{motion}`  | (Operator-pending) Toggle comments for a motion region using blockwise     |
| `gc`                 | Toggles the region using linewise comment. (mode Visual)                   |
| `gb`                 | Toggles the region using blockwise comment (mode Visual)                   |



# Harpoon


| Keymaps     | Description                                        |
|:------------|:---------------------------------------------------|
| `<leader>a` | Add current file to Harpoon list                   |
| `<C-h>`     | Navigate to Harpoon file 1                         |
| `<C-t>`     | Navigate to Harpoon file 2                         |
| `<C-n>`     | Navigate to Harpoon file 3                         |
| `<C-s>`     | Navigate to Harpoon file 4                         |
| `<C-S-P>`   | Go to previous file in Harpoon list                |
| `<C-S-N>`   | Go to next file in Harpoon list                    |
| `<C-e>`     | Open Telescope UI to view and select Harpoon files |

# Mason


| Keymaps     | Description                                                                |
|:------------|:---------------------------------------------------------------------------|
| `<C-b>`     | Scroll completion documentation up by 4 lines                              |
| `<C-f>`     | Scroll completion documentation down by 4 lines                            |
| `<C-Space>` | Trigger completion menu manually                                           |
| `<C-e>`     | Abort the completion session                                               |
| `<CR>`      | Confirm selected completion item (selects first if none explicitly chosen) |

# Telescope

Telescope Keymaps Overview

| Keymap        | Mode / Context | Description                                                   |
|:--------------|:---------------|:--------------------------------------------------------------|
| `<leader>ff`  | Normal         | Find files in the project                                     |
| `<leader>fg`  | Normal         | Live grep — search text across files                          |
| `<leader>fb`  | Normal         | Show open buffers                                             |
| `<leader>fh`  | Normal         | Search help tags                                              |
| `<leader>;`   | Normal         | Resume last Telescope picker                                  |
| `;d`          | Normal         | Show diagnostics (LSP)                                        |
| `sf`          | Normal         | Open Telescope File Browser in current buffer’s directory     |

Telescope Prompt (Inside Telescope)

| Keymap   | Mode    | Description              |
|:---------|:--------|:-------------------------|
| `<C-c>`  | Normal  | Close Telescope window   |


Telescope File Browser Extension

Insert Mode

| Keymap  | Description                        |
|:--------|:-----------------------------------|
| `<C-w>` | Delete previous word (`normal vbd`)|

Normal Mode

| Keymap   | Description                                |
|:---------|:-------------------------------------------|
| `%`      | Create new file or directory               |
| `c`      | Copy file or directory                     |
| `r`      | Rename file or directory                   |
| `m`      | Move file or directory                     |
| `d`      | Delete file or directory                   |
| `t`      | Change working directory to selection      |
| `o`      | Go to current working directory            |
| `h`      | Go to home directory                       |
| `g`      | Go to parent directory                     |


# Install another Python

Download Python version from site.

```sh
cd Python-3.12.*/
./configure --enable-optimizations
```

> cores

```sh
nproc
```

> -j corresponds to the number of cores in your system to speed up the build time.

```sh
make -j 4
make altinstall
python3.12 --version # pip3.12 --version
```

> Use update-alternatives to create symbolic links to Python3:

```sh
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.12 2
```

> choose which one to use as Python3 via command:

```sh
sudo update-alternatives --config python3
```
