#!/bin/bash

COPIED_IMG="backup.img"
SSL_OUT="ssl_cert_output.txt"

{ time esptool.py --port /dev/ttyUSB0 --baud 115200 read_flash 0x00000 0x400000 $COPIED_IMG > /dev/null; } 2>&1 | grep real
awk '/-----BEGIN CERTIFICATE-----/,/-----END CERTIFICATE-----/' $COPIED_IMG > $SSL_OUT
