# docker-wiremock

This is a simple Docker image for [WireMock](http://wiremock.org/).

WireMock is a simulator for HTTP-based APIs. Some might consider it a service virtualization tool or a mock server.

# How to use this image

You should be able to run this image as an executable.

```bash
docker run -d lhsvobodaj/wiremock
```
Once the container is running, it will serve a default response on port 8080 (WireMock default HTTP port).
> This image does not expose any port to the host interfaces

To configure the WireMock container, you can use any of the [command line options](http://wiremock.org/docs/running-standalone/) described in the tool documentation via the `[COMMAND]` part of the `docker run` command.

For example, to change the files and mappings that must be served by the tool, you can use:
```bash
$ docker run -d -v <src>:/opt/wiremock/<dest> lhsvobodaj/wiremock --root-dir /opt/wiremock/<dest>
```
In this example we use the `-v` option to mount a volume at `/opt/wiremock/<dest>` mapping the local volume (volume on the host machine) specified as `<src>`.
> Remember, the WireMock root dir is the one that contains the `mappings` and `__files` directories.
