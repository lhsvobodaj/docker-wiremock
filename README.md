# docker-wiremock

This is a simple Docker image that bundles the WireMock tool into the OpenJDK image.

# How to use this image

Map a local volume containing the WireMock `mappings` and `__files` folders.

```bash
$ docker run -it -v host-src:container-dest lhsvobodaj/wiremock:2.8.0
```
