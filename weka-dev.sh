#!/bin/bash
WEKA_HOME=/opt/smallapps/weka-dev/weka
export WEKA_JAR=$WEKA_HOME/weka.jar
export PATH=$WEKA_HOME:$PATH
CP="/usr/share/java/:/opt/dbvis9/jdbc/jtds/jtds.jar:/opt/database/sqlite/sqlite-jdbc.jar:$WEKA_JAR"
echo "used CLASSPATH: $CP"
DIR=/opt/smallapps/weka-dev/data/
echo "changing to '$DIR'"
cd "$DIR"
export WEKA_HOME=$DIR
# start small GUI Chooser
java -cp $CP -Xmx500m weka.gui.GUIChooser &

