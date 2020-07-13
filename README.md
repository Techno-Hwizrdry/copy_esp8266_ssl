# copy_esp8266_ssl
Looking for a handy tool to copy an SSL cert stored on the flash memory of an ESP8266?  Well, look no further!
Simply plug the ESP8266 into your (linux) computer via USB cable and run this bash script, like so:

`./copy_esp8266_ssl.sh output-file-name`

If there was an SSL cert on the device, it will be stored in the output filename you provided.

If you would like to keep a copy of the firmware image you parsed, provide a distinct second output filename, like so:

`./copy_esp8266_ssl.sh output-ssl-filename firmware-backup.img`

Otherwise, copy_esp8266_ssl.sh will delete it before it terminates execution.

## Dependencies
This script requires Python uses a python tool called [esptool](https://pypi.org/project/esptool/).  To install esptool, run the following command:

`pip install -r requirements.txt`
