# docker build -t mdbtest .
# FROM icr.io/appcafe/websphere-liberty:kernel-java8-openj9-ubi
# FROM icr.io/appcafe/websphere-liberty:full-java8-openj9-ubi
FROM icr.io/appcafe/websphere-liberty:full-java11-openj9-ubi
# FROM icr.io/appcafe/websphere-liberty:full-java17-openj9-ubi
COPY --chown=1001:0 src/main/liberty/config /config
COPY --chown=1001:0 src/main/liberty/resources /opt/ibm/wlp/usr/shared/resources
COPY --chown=1001:0 target/*.war /config/dropins/

ENV OPENJ9_SCC=false
RUN configure.sh
