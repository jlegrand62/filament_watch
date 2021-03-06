# filament_watch
Personal fork of the filament_watch project from: https://github.com/rllynch/filament_watch

## Install:
Clone the git repo:
```bash
git clone https://github.com/jlegrand62/filament_watch.git
```
Run the script creating the virtualenv and installing filament_watch:
```bash
cd filament_watch
bash pi_setup.sh
```

## Usage:
Using the `nano` editor as sudo:
```bash
sudo nano /etc/rc.local
```
add the following lines to `/etc/rc.local` before `exit 0`:
```bash
## Start filament_watch:
bash /home/pi/filament_watch/run_filament_watch.sh &
```
This will start filament_watch as root at boot.

Don't forget to change the API key with the right one!

## Debug:
To see what is returned as JSON, look under this address in a browser:
```bash
http://HOSTNAME/api/printer?apikey=APIKEY
```
with the right `HOSTNAME` (ip) & `APIKEY` of course.

Or enable the added (ugly) status report by uncommenting line 182 in `filament_watch.py`:
```python
octoprint.print_status()
```