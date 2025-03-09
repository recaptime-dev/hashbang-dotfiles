# Hashbang dotfiles for RecapTime.dev projects

Forked from <https://github.com/hashbang/dotfiles> with customizations for the
Recap Time Squad Crew on its Hashbang shell accounts for projects (e.g. proxyparty,
Ghost, etc.).

As a friendly reminder for the team, do not leak any keys or passwords in this repo.

## Usage

Once provisioned a Hashbang account for a RecapTime.dev project, just login and run the following
script to do the work for you:

```bash
curl -fsSL https://gitlab.com/recaptime-dev/infra/hasbang-dotfiles/raw/master/utils/.local/bin/rtdev-update-remotes | bash -
```

You can also use them on your local Linux system or even insde the Dockerized version
of [#!'s base server images](https://github.com/hashbang/shell-server), but you need
GNU stow in order to automatically symlink things for you.

See <https://github.com/hashbang/shell-server/blob/master/ansible/tasks/profile/main.yml#L126-L147>
for the full script, but in a nutshell on Alpine Linux:

```bash
# Install git and stow first
apk add git stow

# then clone to hell and back
git clone https://gitlab.com/recaptime-dev/infra/hashbang-dotfiles ~/.dotfiles
cd .dotfiles
stow bash git gnupg hashbang ssh tmux weechat zsh
```

## License

MIT, per upstream's license
