#!/bin/bash

concat_two_strings() {
  string1=$1" "$2
  echo $string1
}

first_name="Roger"
last_name="Huba"

newFirst="Joe"
newLast="Shmoe"

concat_two_strings $first_name $last_name
concat_two_strings $newFirst $newLast
