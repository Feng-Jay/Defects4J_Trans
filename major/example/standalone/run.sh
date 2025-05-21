#!/bin/sh

MAJOR_HOME="../../"

echo "- Running Major without mutation"
echo "  (javac triangle/Triangle.java)"
$MAJOR_HOME/bin/javac triangle/Triangle.java

echo
echo "- Running Major with mutation"
echo "  (javac -XMutator=\"\$MAJOR_HOME/mml/tutorial.mml.bin\" triangle/Triangle.java)"
$MAJOR_HOME/bin/javac -XMutator="$MAJOR_HOME/mml/tutorial.mml.bin" triangle/Triangle.java

echo
echo "- Compiling test case (config.jar has to be on the classpath!)"
echo "  (javac -cp .:\$MAJOR_HOME/config/config.jar TriangleTest.java)"
$MAJOR_HOME/bin/javac -Xlint:unchecked -cp .:$MAJOR_HOME/config/config.jar TriangleTest.java

echo
echo "- Executing test case (config.jar has to be on the classpath!)"
echo "  (java -cp .:\$MAJOR_HOME/config/config.jar TriangleTest)"
echo
java -cp .:$MAJOR_HOME/config/config.jar TriangleTest
