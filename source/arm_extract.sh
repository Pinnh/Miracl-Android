#!/bin/bash

if [ ! -d "MIRACL/" ]; then
  mv MIRACL*/ MIRACL/
else
  echo "find MIRACL folder"
fi

if [ ! -d "../jni/" ]; then
  echo "jni folder not exist,create it"
  mkdir ../jni/
fi

cp MIRACL/source/mr*.c ../jni/
rm ../jni/mrmuldv.c
rm ../jni/mr87f.c
rm ../jni/mr87v.c
cp MIRACL/include/*.h ../jni/
cp MIRACL/include/mirdef.arm ../jni/mirdef.h

echo "sucess"


