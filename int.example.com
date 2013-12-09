#!/bin/bash

# default settings for int.example.com zone file

serial=$(date +%Y%m%d)1           
domain="int.example.com"
nameserver="ns.int.example.com"
ttl="3h"
refresh="1d"
retry="1h"
expire="7d"
minimum="3h"
static="static.int.example.com"


