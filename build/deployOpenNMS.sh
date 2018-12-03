#!/bin/sh
RELEASE=`python -c "import xml.etree.ElementTree as ET; print(ET.parse(open('pom.xml')).getroot().find( '{http://maven.apache.org/POM/4.0.0}version').text)";`
ROOT=`pwd`
if [ ! -e $ROOT/deployOpenNMS.sh ]; then
  echo "Invalid root" && exit 1
fi

mkdir ./target/opennms-$RELEASE

ln -s /mnt/c/git/opennms/target/opennms-$RELEASE /mnt/c/git/opennms/target/opennms
tar zxf ./target/opennms-$RELEASE.tar.gz -C /mnt/c/git/opennms/target/opennms

cp -r ../dev/overlay/* target/opennms/

sudo ./target/opennms/bin/runjava -s
sudo ./target/opennms/bin/install -dis
sudo ./target/opennms/bin/opennms -t start


