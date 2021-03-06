export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=/src
export VIRTUALENVWRAPPER_HOOK_DIR=/src/vagrant/home/virtualenvhooks
source /usr/local/bin/virtualenvwrapper.sh

# Project Work
alias cds="cd /src/"
alias wba="cd /src/banana && workon banana"
alias wdr="cd /src/django-rest-framework && workon drf"
alias wdr34="cd /src/django-rest-framework && workon drf34"
alias wdt="cd /src/django-transifex && workon dtf"
alias wpt="cd /src/python-transifex && workon ptr"
alias wfo="cd /src/forecaster && workon forecaster"

# Restart networking (useful when changing wifi with vagrant turned on)
alias renet="sudo ifdown eth0 && sudo ifup eth0"

# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Commands
alias ipy="ipython"
