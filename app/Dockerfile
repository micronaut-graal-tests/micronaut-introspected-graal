FROM oracle/graalvm-ce:20.0.0-java8 as graalvm
# For JDK 11
#FROM oracle/graalvm-ce:20.0.0-java11 as graalvm
RUN gu install native-image

COPY . /home/app/micronaut-introspection-library
WORKDIR /home/app/micronaut-introspection-library

RUN native-image --no-server -cp build/libs/micronaut-introspection-library-*-all.jar

FROM frolvlad/alpine-glibc
RUN apk update && apk add libstdc++
EXPOSE 8080
COPY --from=graalvm /home/app/micronaut-introspection-library/micronaut-introspection-library /app/micronaut-introspection-library
ENTRYPOINT ["/app/micronaut-introspection-library"]
