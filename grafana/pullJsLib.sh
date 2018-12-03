#!/bin/bash

#
# Script to pull in OpenNMS-JS from git repo when actively using OpenNMS-JS changes in grafana
#

cp /c/git/opennms-js/dist/opennms.js* ./dist/
cp /c/git/opennms-js/dist/opennms.js* ./dist/test/
cp /c/git/opennms-js/dist/opennms.js* ./vendor/
cp /c/git/opennms-js/dist/opennms.js* ./node_modules/opennms/dist/

cp /c/git/opennms-js/dist/opennms.js ./node_modules/opennms/dist/opennms.min.js
cp /c/git/opennms-js/dist/opennms.js.map ./node_modules/opennms/dist/opennms.min.js.map

cp /c/git/opennms-js/dist/cli.node.js ./node_modules/opennms/dist/cli.node.min.js
cp /c/git/opennms-js/dist/cli.node.js.map ./node_modules/opennms/dist/cli.node.min.js.map

