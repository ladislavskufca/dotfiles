#!/bin/bash

# List all
alias ll='ls -lGaf'

# Full Recursive Directory Listing (thanks https://gist.github.com/natelandau/10654137)
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# Open Finder with current directory
alias f='open -a Finder ./'

# cdf:  'Cd's to frontmost window of MacOS Finder
    cdf () {
        currFolderPath=$( /usr/bin/osascript <<EOT
            tell application "Finder"
                try
            set currFolder to (folder of the front window as alias)
                on error
            set currFolder to (path to desktop folder as alias)
                end try
                POSIX path of currFolder
            end tell
EOT
        )
        echo "cd to \"$currFolderPath\""
        cd "$currFolderPath"
    }

# Clear
alias c='clear'

# Open Chrome
alias chrome="open -a \"Google Chrome\""

# Open Safari
alias safari="open -a \"Safari\""

# Open Opera
alias opera="open -a \"Opera\""

# top - cpu and memory
alias cpu='top -o cpu'
alias mem='top -o rsize'

# Get your current public IP
alias ip="curl ipecho.net/plain; echo"

# Get your current local IP
alias lip="ipconfig getifaddr en0"

# Flush DNS
alias flushdns="sudo killall -HUP mDNSResponder"

# Remaining Battery Time
alias bt="pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f3 -d';'"

# Kwm start and stop
alias kwmstart="brew services start kwm"
alias kwmstop="brew services stop kwm"
alias kwmrestart="brew services restart kwm"