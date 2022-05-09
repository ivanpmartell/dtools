FROM ubuntu:20.04

LABEL maintainer="Ivan Perez <ivanpmartell@uvic.ca>" \
      license="MIT"

WORKDIR /project

ADD packages_script.sh /packages_script.sh

RUN echo "Installing required packages" \
         && chmod +x /packages_script.sh \
         && bash /packages_script.sh

RUN echo "Installing cmake" \
         && wget http://www.cmake.org/files/v3.8/cmake-3.8.2.tar.gz \
         && tar xzf cmake-3.8.2.tar.gz \
         && cd cmake-3.8.2 \
         && ./configure \
         && /usr/bin/make \
         && /usr/bin/make install

RUN echo "Installing Development Libraries" \
         && apt-get update \
         && apt-get install -y libx11-dev

RUN echo "Installing HotKnots 2.0" \
         && wget https://www.cs.ubc.ca/labs/algorithms/Software/HotKnots/HotKnots_v2.0.tar.gz \
         && tar xzf HotKnots_v2.0.tar.gz \
         && cd HotKnots_v2.0 \
         && mv bin/params . \
         && rm -rf bin \
         && mkdir bin \
         && mkdir bin/output \
         && mv params bin/ \
         && cd graphics \
         && rm -f *.o \
         && make && cd .. \
         && make

WORKDIR /project/HotKnots_v2.0/bin
ENTRYPOINT [ "/project/HotKnots_v2.0/bin/HotKnots" ]