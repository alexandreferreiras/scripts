#!/bin/bash
du -sk * 2>/dev/null | sort -n -k1 | awk '{ if ($1 < 1024) print "\033[1;32m"$1"K " $2 "\033[0m" ; else if ( $1 >= 1024 && $1 <= 1048576 ) print "\033[1;34m"$1/1024"M " $2"\033[0m"; else if ($1 > 1048576 ) print "\033[1;31m"$1/1048576"G " $2"\033[0m"}'
