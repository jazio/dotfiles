alias apache2.conf="sudo subl /etc/apache2/apache2.conf"
alias apache2.errors="subl /var/log/apache2/error.log"
alias apache2.access="subl /var/log/apache2/access.log"
alias cdweb="cd ~/www/html"
alias day="subl /home/jazio/Documents/day"
alias kidibul="subl /home/jazio/Documents/Books+Articole/PKFTE"
# Fix to remember the current folder when exit.
alias mc='mc -P "/tmp/mc-$USER/mc.pwd.$$"; cd `cat /tmp/mc-$USER/mc.pwd.$$`; rm /tmp/mc-$USER/*'
alias blog="subl /home/jazio/www/jazio.github.io"
# Added for laravel excutable.
export PATH=$PATH:/home/jazio/.composer/vendor/bin
