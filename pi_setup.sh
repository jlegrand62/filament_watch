#!/usr/bin/env bash
# - Create VirtualEnv:
virtualenv filament_watch_env

# - Load it:
. ~/filament_watch/filament_watch_env/bin/activate

# - Make sure the venv is loaded:
if [[ -n $VIRTUAL_ENV ]]; then
    exit 1
fi

# - Install filament_watch:
python setup.py install
exit 0