#!/bin/bash

# Redeploy the config modules from dev env to $OPENNMS_HOME
# TODO - parameratize DEV directory - currently requires being in $OPENNMS_HOME
# TODO - maybe pull the artifacts from Maven repo
# TODO - Create other 'bundles' of deployment artifacts

cp -u -v ../../opennms-config-model/target/opennms-config-model-24.0.0-SNAPSHOT.jar $OPENNMS_HOME/jetty-webapps/opennms-remoting/webstart/opennms-config-model-24.0.0-SNAPSHOT.jar
cp -u -v ../../opennms-config-model/target/opennms-config-model-24.0.0-SNAPSHOT.jar $OPENNMS_HOME/lib/opennms-config-model-24.0.0-SNAPSHOT.jar
cp -u -v ../../opennms-config-model/target/opennms-config-model-24.0.0-SNAPSHOT.jar $OPENNMS_HOME/system/org/opennms/opennms-config-model/24.0.0-SNAPSHOT/opennms-config-model-24.0.0-SNAPSHOT.jar
cp -u -v ../../opennms-config/target/opennms-config-24.0.0-SNAPSHOT.jar $OPENNMS_HOME/jetty-webapps/opennms-remoting/webstart/opennms-config-24.0.0-SNAPSHOT.jar
cp -u -v ../../opennms-config/target/opennms-config-24.0.0-SNAPSHOT.jar $OPENNMS_HOME/lib/opennms-config-24.0.0-SNAPSHOT.jar
cp -u -v ../../opennms-config/target/opennms-config-24.0.0-SNAPSHOT.jar $OPENNMS_HOME/system/org/opennms/opennms-config/24.0.0-SNAPSHOT/opennms-config-24.0.0-SNAPSHOT.jar

