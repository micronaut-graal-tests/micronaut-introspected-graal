# Micronaut Introspection with Library app #

Test application for Micronaut GraalVM that test bean introspection:

- It has a `core` subproject with a POJO annotated with `@Introspected` and `@JsonInclude(JsonInclude.Include.NON_NULL)`
- An application `app` that uses the POJO.


```
curl localhost:8080/books
```
