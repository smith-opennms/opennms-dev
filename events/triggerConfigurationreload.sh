#!/bin/sh

# Trigger OpenNMS to reload Configuration

$OPENNMS_HOME/bin/send-event.pl uei.opennms.org/internal/reloadDaemonConfig \
  -p 'daemonName Eventd'

