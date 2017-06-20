#!/bin/bash

GAMDIR='/gam'
GAM_CONFDIR='/etc/gam'

export GAMDIR GAM_CONFDIR

python $GAMDIR/src/gam.py "$@"
