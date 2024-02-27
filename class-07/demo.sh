#!/bin/bash

# Script Name:                  demo.sh
# Author Name:                  Roger Huba
# Date of latest revision:      02/27/2024
# Purpose:                      lshw
# Execution:                    bash demo.sh or ./demo.sh chmod -x demo.sh

# Declaration of variables

# Main

# lshw |more
# lshw

computer_name="$(lshw | grep "" -m1)
# system_info="$(lshw | grep "*-cpu" -A 30)

echo $computer_name | grep "system_info"
