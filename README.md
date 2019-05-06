# dotfiles

## Assumptions

- You are using bash

## Installation

* Install basic deps: 
    * [homebrew](https://brew.sh)
    * [rcm](https://github.com/thoughtbot/rcm)
    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install thoughtbot/formulae/rcm
    ```
* Clone this repo
    ```
    git clone https://github.com/cf-platform-eng/isv-ci-workstation-config.git ~/workastation/isv-ci-workstation-config
    ```

* Install the dotfiles
    ```bash
    cd ~/isv-ci-workstation-config 
    ./install.sh
    ```
    
* Install brewfiles
    ```bash
    source ~/.bashrc # or restart iterm
    bup # brew update command injected by our bash dotfiles.
    ```

### Install a new key for github etc

```shell
ssh-keygen -f ~/.ssh/id_github # this file is in the ssh config so don't use a different name unless you want to mess with dotfiles 
ssh-add -K ~/.ssh/id_github.pub
ssh-keygen -y -f ~/.ssh/id_github | pbcopy
# Public key is in your buffer, paste it into github
```

### Hand install apps
* istat menu or similar (there's a cask but it doesn't install safely)
* Goland, Pycharm
* Zoom (sign in to the site through Okta)

