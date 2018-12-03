#!/bin/sh
$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/alarms/trigger \
  -p 'node localhost' \
  -p 'ip 0.0.0.0' \
  -p 'service HTTPS_CPOOLs' \
  -p 'type ENV' \
  -p 'cat1 ENVIRONMENTAL' \
  -p 'cat2 HUMIDITY' \
  -p 'hexcode 0xfff06131' \
   -x 7 \
   -n 1
