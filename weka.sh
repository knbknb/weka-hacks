#! /bin/bash
# Path to weka
WEKA_PATH=/home/knut/Documents/moocs/weka/weka-3-6-11
#WEKA_PATH=/usr/share/java
# add -connector (manually copied to weka path) and weka to classpath
CLASSPATH=/home/knut/Documents/moocs/weka/weka-3-6-11/lib/libsvm.jar:$CLASSPATH
CP="$CLASSPATH:/usr/share/java/:/home/knut/Documents/moocs/weka/db/sqlite-jdbc-3.7.2.jar:$WEKA_PATH/weka.jar"
# use the connector of debian package libmysql-java
# CP="$CLASSPATH:/usr/share/java/:$WEKA_PATH/weka.jar"
echo "used CLASSPATH: $CP"
# start Explorer
DIR=/home/knut/Documents/moocs/weka/data
echo "changing to '$DIR'"
cd $DIR
java -cp $CP -Xmx500m weka.gui.GUIChooser &
java -cp $CP -Xmx500m weka.gui.explorer.Explorer &
