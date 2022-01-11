# README

This repo is a collection of environment files I use to setup new macs.


# Installing
## Terminal Profile

1. Go to `Terminal -> Preferences -> Profiles`.
2. Click on three dot icon in bottom left and import the `BoltonPro.terminal` file.

## oh-my-zsh Setup

1. Install oh-my-zsh: https://ohmyz.sh/#install
2. Move the `ebolton.zsh-theme` file into the oh-my-zsh themes directory (`~/.oh-my-zsh/themes/`)
3. Modify the `~/.zshrc` config file by adding the following changes:
	1. Change theme:
	```
	ZSH_THEME="ebolton"
	```

	2. Modify history size (optional; change to any desired number):
	```
	SAVEHIST=10000
	```

	3. Add the `~/.bash_aliases` file as a source:
	```
	source $HOME/.bash_aliases
	```

## General Aliases and Scripts
1. Move the `.bash_aliases` file into your home directory (`~/.bash_aliases`)
	- **NOTE:** If you already have a `~/.bash_aliases` file, then you may want to just add the contents of the provided file to the end of your existing one.
	- You may want to skim over this file to see what you're getting.

2. Copy the `pythonTools/` directory into your home directory (this is required to match up with the aliased commands)


# Other Suggestions
You may want to also use fzf (https://github.com/junegunn/fzf).

I like this tutorial from YouTube: https://www.youtube.com/watch?v=1a5NiMhqAR0&t=49s