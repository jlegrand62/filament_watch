#!/usr/bin/env bash
# - Wait 3O seconds for the OctoPi to boot up and connect to the printer or filament_watch will raise an error:
sleep 30s
# - Activate the VirtualEnv filament_watch_env:
. /home/pi/filament_watch_env/bin/activate
# - Run filament_watch with the right arguments:
filament_watch --apikey APIKEY --httpport 8081 --dev /dev/serial/by-id/usb-1a86_USB2.0-Serial-if00-port0

# TO ADD TO /etc/rc.local before 'exit 0':
## Start filament_watch:
#sh /home/pi/run_filament_watch.sh &

exit 0