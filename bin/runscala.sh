#!/bin/sh

SCRIPT="$0"

while [ -h "$SCRIPT" ] ; do
  ls=`ls -ld "$SCRIPT"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    SCRIPT="$link"
  else
    SCRIPT=`dirname "$SCRIPT"`/"$link"
  fi
done

if [ ! -d "${APP_DIR}" ]; then
  APP_DIR=`dirname "$SCRIPT"`/..
  APP_DIR=`cd "${APP_DIR}"; pwd`
fi

<<<<<<< HEAD:bin/runscala.sh
cd $APP_DIR
SCALA_RUNNER_VERSION=$(scala ./bin/Version.scala)
=======
executable="./modules/swagger-codegen-cli/target/swagger-codegen-cli.jar"
>>>>>>> upstream/develop_2.0:bin/android-java-wordnik-api.sh

if [ ! -f "$executable" ]
then
  mvn clean package
fi

# if you've executed sbt assembly previously it will use that instead.
export JAVA_OPTS="${JAVA_OPTS} -XX:MaxPermSize=256M -Xmx1024M -DloggerPath=conf/log4j.properties"
<<<<<<< HEAD:bin/runscala.sh
ags="$@"

if [ -f $APP_DIR/target/scala-$SCALA_RUNNER_VERSION/*assembly*.jar ]; then
  scala -cp $APP_DIR/target/scala-$SCALA_RUNNER_VERSION/*assembly*.jar $ags
else
  echo "Please set scalaVersion := \"$SCALA_RUNNER_VERSION\" in build.sbt and run ./sbt assembly"
fi
=======
ags="$@ generate -i modules/swagger-codegen/src/test/resources/2_0/wordnik.json -l android -o samples/client/wordnik/android-java"

java $JAVA_OPTS -jar $executable $ags
>>>>>>> upstream/develop_2.0:bin/android-java-wordnik-api.sh
