# Copyright 2017 Luiz Hermes Svoboda Junior
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM openjdk:8u141-jdk

MAINTAINER Luiz Hermes Svoboda Junior

RUN set -xe \
    && mkdir -p /opt/wiremock \
    && wget http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.8.0/wiremock-standalone-2.8.0.jar -P /opt/wiremock

WORKDIR /opt/wiremock

CMD ["/bin/bash"]