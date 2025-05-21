#!/bin/sh

echo "Using Major standalone"
cd standalone
./run.sh
cd ..

echo
echo "Using Major with Ant"
cd ant
./run.sh
cd ..
