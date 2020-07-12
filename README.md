# copy_esp8266_ssl
Looking for a handy tool to copy an SSL cert stored on the flash memory of an ESP8266?  Well, look no further!
Simply plug the ESP8266 into your (linux) computer via USB cable and run this bash script, like so:

./copy_esp8266_ssl.sh

If there was an SSL cert on the device, it will be stored in "ssl_cert_output.txt".

## Dependencies
This script requires Python uses a python tool called [esptool](https://pypi.org/project/esptool/).  To install esptool, run the following command:

`pip install -r requirements.txt`
