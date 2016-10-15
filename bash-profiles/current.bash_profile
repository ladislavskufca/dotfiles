#!/bin/bash

# Aliases
alias ll='ls -lGaf'

# Open Finder
alias finder="open -a \"Finder\""

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
alias ip="curl icanhazip.com"

# Flush DNS
alias flushdns="sudo killall -HUP mDNSResponder"

# Kwm start and stop
alias kwmstart="brew services start kwm"
alias kwmstop="brew services stop kwm"
alias kwmrestart="brew services restart kwm"