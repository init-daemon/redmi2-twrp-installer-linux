# redmi2-twrp-installer-linux

> Allows to install twrp recovery for redmi 2 using linux

To start, make sure you have adb and fastboot installed.

1. Install adb 
```console
sudo apt-get install android-tools-adb
``` 
Or if that didn't work, try
```console
sudo apt-get install adb
```

2. Install fastboot
```console
sudo apt-get install android-tools-fastboot
```
5. Enable debug mode
    * Go to Developer options and enable it.

4. Execute install-twrp.sh
```console
sh install-twrp.sh
```