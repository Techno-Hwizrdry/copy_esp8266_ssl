#!/bin/bash

SSL_OUT=$1
COPIED_IMG=$2
REMOVE_IMG=false
PORT=$3

if [ -z "$SSL_OUT" ]
  then
    echo ""
    echo "Basic usage: $0 OUTPUT-FILE-NAME"
    echo ""
    exit 0
fi

if [ -z "$COPIED_IMG" ]
  then
    COPIED_IMG="backup.img"
    REMOVE_IMG=true
fi

if [ -z "$PORT" ]
  then
    PORT=/dev/ttyUSB0
fi

{ time esptool.py --port $PORT --baud 115200 read_flash 0x00000 0x400000 $COPIED_IMG > /dev/null; } 2>&1 | grep real
awk '/-----BEGIN CERTIFICATE-----/,/-----END CERTIFICATE-----/' $COPIED_IMG > $SSL_OUT

if [ "$REMOVE_IMG" == true ]
  then
    rm $COPIED_IMG
fi
