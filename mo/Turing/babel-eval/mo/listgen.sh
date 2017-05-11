grep -e ':- *$' $1 | sed 's:\([^(]*\)(.*:\1:g' | grep -v '_cil_lr_'
