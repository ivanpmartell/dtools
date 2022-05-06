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

RUN echo "Installing Dinoknot" \
         && git clone https://github.com/HosnaJabbari/DinoKnot.git \
         && cd DinoKnot \
         && cmake -H. -Bbuild -DCMAKE_CXX_COMPILER=g++ \
         && cmake --build build
         
ENTRYPOINT [ "/project/DinoKnot/DinoKnot_multimodel" ]