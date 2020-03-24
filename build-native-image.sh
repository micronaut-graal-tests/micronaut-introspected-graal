./gradlew :app:assemble
native-image --no-server --no-fallback --static --class-path app/build/libs/app-0.1-all.jar
