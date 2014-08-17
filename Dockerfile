FROM centos
MAINTAINER Jimmy Au

ENV JDK_VERSION 8u11
ENV JDK_BUILD_VERSION b12

RUN \
  curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && \
  rpm -i jdk-$JDK_VERSION-linux-x64.rpm && \
  rm -f jdk-$JDK_VERSION-linux-x64.rpm && \
  yum clean all