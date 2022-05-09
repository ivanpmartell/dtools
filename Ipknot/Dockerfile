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

RUN echo "Installing ViennaRNA Development Files" \
         && wget https://www.tbi.univie.ac.at/RNA/download/ubuntu/ubuntu_20_04/viennarna-dev_2.5.0-1_amd64.deb \
         && apt-get update \
         && apt-get install -y \
            cppcheck \
            valgrind \
            libglpk-dev \
            libgsl-dev \
            libgmp-dev \
            libltdl-dev \
            libmpfr-dev \
            pkg-config \
         && apt install -y ./viennarna-dev_2.5.0-1_amd64.deb

ENV PKG_CONFIG_PATH /usr/lib/x86_64-linux-gnu/pkgconfig:$PKG_CONFIG_PATH

RUN echo "Installing GLPK" \
         && wget https://ftp.gnu.org/gnu/glpk/glpk-5.0.tar.gz \
         && tar xzf glpk-5.0.tar.gz \
         && cd glpk-5.0 && ./configure \
         && make && make install

RUN echo "Installing ipknot" \
         && git clone https://github.com/satoken/ipknot \
         && cd ipknot \
         && mkdir build && cd build \
         && cmake -DCMAKE_BUILD_TYPE=Release .. && make \
         && make install
         
ENTRYPOINT [ "/project/ipknot/build/ipknot" ]