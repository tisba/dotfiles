# Tisba's Dotfiles

These are my personal dotfiles.

## Motivations

* document my (work) environment
* version control configurations
* hopefully help others to find interesting "tricks"

## Usage

### Setup new Machine

* Install homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` (we need Xcode Command Line Tools to `git clone`)
* run `git clone --recurse-submodules git@github.com:tisba/dotfiles.git ~/.dotfiles`
* copy secrets files to `~/.dotfiles/secrets`
* run `DOTFILES=$HOME/.dotfiles ~/.dotfiles/utils/bootstrap`

Some extras:

* Install Rosetta: `softwareupdate --install-rosetta --agree-to-license`
* brew essentials `~/.dotfiles/utils/install-essentials`
* add the usual stuff to Time Machine's ignore list, run `"$DOTFILES"/utils/tm-ignore`. **NOTE** requires Full Disk Access for the terminal

### Maintenance

Run `housekeeping`.

This will update homebrew, ruby-install, OMZ, some essential global gems (e.g. bundler) and cleanup caches.

### Miscellaneous

* `~/.dotfiles/bin/macos-tweaks` is meant to be used as a reference and should be applied as needed.
