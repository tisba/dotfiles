# Tisba's Dotfiles

These are my personal dotfiles.

## Motivations

* document my (work) environment
* version control configurations
* hopefully help others to find interesting "tricks"

## Usage

### Setup new Machine

* run `git clone --recurse-submodules git@github.com:tisba/dotfiles.git ~/.dotfiles`
* copy secrets files to `~/.dotfiles/secrets`
* run `DOTFILES=$HOME/.dotfiles ~/.dotfiles/utils/bootstrap`
* run `~/.dotfiles/utils/install-essentials`

### Maintenance

Run `housekeeping`.

This will update homebrew, ruby-install, OMZ, some essential global gems (e.g. bundler) and cleanup caches.

### Miscellaneous

* `~/.dotfiles/bin/macos-tweaks` is meant to be used as a reference and should be applied as needed.
