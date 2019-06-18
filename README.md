# dotfiles

## Assumptions

- You are using bash

## Installation

Use safari and terminal... chrome and iterm get installed by the brewfiles

* Install basic deps: 
    * [homebrew](https://brew.sh)
    * [rcm](https://github.com/thoughtbot/rcm)
    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install thoughtbot/formulae/rcm
    ```
* Clone this repo
    ```
    mkdir workspace
    cd workspace
    git clone https://github.com/cf-platform-eng/isv-ci-workstation-config.git
    ```

* Install the dotfiles
    ```bash
    cd ~/workspace/isv-ci-workstation-config 
    ./install.sh
    ```

* Install a new key for github etc

    ```shell
    ssh-keygen -f ~/.ssh/id_github # this file is in the ssh config so don't use a different name unless you want to mess with dotfiles 
    ssh-add -K ~/.ssh/id_github.pub
    ssh-keygen -y -f ~/.ssh/id_github | pbcopy
    # Public key is in your buffer, paste it into github
    ```
    
* Install brewfiles
    ```bash
    source ~/.bashrc # or restart terminal (ignore command not found messages for now)
    bup # brew update command injected by our bash dotfiles. - if anything failed to install, try running it again
    ```


### Hand install apps
* Install Docker Desktop (no brew for it)
* Goland, Pycharm TODO: add to brewfile
* Zoom (sign in to the site through Okta)

