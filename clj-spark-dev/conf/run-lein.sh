#!/usr/bin/env bash

#Listening everywhere is bad :(
LEIN_REPL_HOST=0.0.0.0 LEIN_REPL_PORT=9999 lein $*
