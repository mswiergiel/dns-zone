#!/bin/bash

# Bash script to create BIND zone file

sourcefile="int.example.com"

# Load vars from int.example.com
source "$sourcefile"


echo "\$ORIGIN ."
echo "$domain       IN SOA $nameserver. hostmaster.int.example.com. ("
echo "              $serial     ;serial"
echo "              $refresh    ;refresh (1 day)"
echo "              $retry      ;retry"
echo "              $expire     ;expire"
echo "              $minimum    ;minimum"
echo "              )"
echo "              NS  $domain."
echo "\$ORIGIN $domain."
echo "\$INCLUDE $static"
echo ""


