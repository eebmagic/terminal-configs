# Overwrite mv and cp to always prompt before overwriting files
alias mv='mv -iv'
alias cp='cp -iv'

# Overwrite rm command to move to trash instead of hard deleting
rm(){
	mv "$@" $HOME/.Trash/
}

# Reads out a .csv file but with slightly nicer formatting
csvcat(){
    cat "$@" | column -t -s ,
}

# For typos
alias oepn='open '

# Shortcuts and abbreviations
alias l='ls -1'
alias ls='ls -GF'
alias count='ls . | wc -l'	# Return number of files/dirs in current dir
alias brewfast='HOMEBREW_NO_AUTO_UPDATE=1 brew '
alias tre='tree -L 2'	# Shallow tree of directory
alias r='ranger'
alias sublime='open -a /Applications/Sublime\ Text.app/' # Assumes that you have sublime text installed
alias subl='sublime'

# Links to scripts
alias counttypes='python3 ~/pythonTools/type_counts/counttypes'
alias typecounts='counttypes '
alias typecount='counttypes '
alias opengit='python3 ~/pythonTools/openers/opengit.py '	# Open url for current git repo
alias openlink='python3 ~/pythonTools/openers/openlink.py ' # Open link contained in a .txt file (with no other contents)
