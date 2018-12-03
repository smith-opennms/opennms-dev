#!/bin/sh
$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/alarms/trigger \
  -p 'node localhost' \
  -p 'ip 0.0.0.0' \
  -p 'service HTTPS_QPOOLs' \
  -p 'type ENV' \
  -p 'cat1 ENVIRONMENTAL' \
  -p 'cat2 HUMIDITY' \
  -p 'hexcode 0xfff06131' \
  -p 'related-reductionKey uei.opennms.org/alarms/trigger:localhost:0.0.0.0:HTTPS_APOOLs' \
  -p 'related-reductionKey uei.opennms.org/alarms/trigger:localhost:0.0.0.0:HTTPS_BPOOLs' \
  -p 'related-reductionKey uei.opennms.org/alarms/trigger:localhost:0.0.0.0:HTTPS_CPOOLs' \
   -x 7 \
   -n 1
