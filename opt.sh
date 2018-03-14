#!/bin/bash

# Execute getopt
ARGS=`getopt -o "123:" -l "one,two,three:" \
             -n "getopt.sh" -- "$@"`

#Bad arguments
if [ $? -ne 0 ]; then
    exit 1
fi

# A little magic
eval set -- "$ARGS"

# Now go through all the options
while true; do
    case "$1" in
        -1|--one) echo "Uno"; shift
			;;
        -2|--two) echo "Dos"; shift
			;;
        -3|--three)
            echo "Tres" # We need to take the option argument
            if [ -n "$2" ]; then
                echo "Argument: $2"
            fi
            shift 2
			;;
        --) shift; break
			;;
        *)
            echo "Usage:"
            exit 2
    esac
done
exit 0
