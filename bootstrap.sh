## Setup My User area

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"

set -e
cd ~

sh functions/install--user__setup.sh
sh functions/install--brew.sh
sh functions/install--tools__dev.sh
sh functions/install--tools__other.sh
