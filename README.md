# Dotfiles 
To sync just dotfiles run
`./dotfiles/sync_dotfiles.sh -f`
on mac some apps may need to be reinitialized with `./mac/init_apps.sh`

# Mac Setup
1. Ensure Xcode tools are installed. `./mac/install_xcode_tools.sh`
2. Install and initialize apps. Sync dotfiles. `./bootstrap_mac.sh`

# Docker Dev Container Setup
In settings.json or "Dev Containers" extension settings set
```
"dotfiles.repository": "https://github.com/mpearce25/setup.git",
"dotfiles.installCommand": "~/dotfiles/dotfiles/sync_dotfiles.sh -f"
"dotfiles.targetPath": "~/dotfiles"
```
the extension settings will only be visible when the project is open locally. 

# Additional steps

## Cloud
* `gcloud init`
## iTerm2
* Set (Profiles -> Default -> Texxt) font to: `Hack Nerd Font Mono`
## Git
* Set git user info with `./set_git_user.sh`

# Thanks to
* https://github.com/mathiasbynens/dotfiles
* https://missing.csail.mit.edu/2020/editors/
* https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/
* https://dev.to/iggredible/useful-tmux-configuration-examples-k3g