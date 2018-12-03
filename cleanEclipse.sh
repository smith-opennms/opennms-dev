#!/bin/bash

find . -name .project -exec rm {} \;
find . -name .classpath -exec rm {} \;
find . -name .settings -exec rm \-rf {} \;

