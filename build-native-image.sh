#!/bin/bash

./gradlew app:nativeCompile
cp app/build/native/nativeCompile/introspected .
