./gradlew :app:assemble
native-image --no-fallback --class-path app/build/libs/app-0.1-all.jar
