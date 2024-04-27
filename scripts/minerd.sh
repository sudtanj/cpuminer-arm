#!/bin/bash

ALGO="Scrypt"
URL="stratum+ssl://scrypt.auto.nicehash.com:443"
EMAIL="31up6QwFj8JA5dtQyTB1MtGx3yDoQQ2wE4"
THREADS="4"

minerd -a $ALGO --url=$URL --user=$EMAIL -p x -t $THREADS
