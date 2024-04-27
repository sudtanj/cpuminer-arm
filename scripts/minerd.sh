#!/bin/bash

ALGO="Scrypt"
URL="stratum+tcp://scrypt.auto.nicehash.com:9200"
EMAIL="31up6QwFj8JA5dtQyTB1MtGx3yDoQQ2wE4"
THREADS="4"

./cpuminer -a $ALGO --url=$URL --user=$EMAIL -p x -t $THREADS
