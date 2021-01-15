#!/bin/bash

./gradlew app:nativeImage
cp app/build/native-image/introspected .
