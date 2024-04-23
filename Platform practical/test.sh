#!/bin/bash

# shellcheck disable=SC2034
# ar=("mama" "nanda" "bappa" "punchiamma")
# ar[0]="yaka"
# ar[4]="boka"
# echo "${ar[0]}"
# echo "${ar[@]}"
# echo "${#ar[@]}"

ar=()
count=0
while true; do
    echo "${count}"
    ((count ++))
    if (( "$count" == 10 )); then
        break
    fi
done