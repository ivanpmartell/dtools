FROM python:3.6-slim

LABEL maintainer="Ivan Perez <ivanpmartell@uvic.ca>" \
      license="MIT"

WORKDIR /project

ADD packages_script.sh /packages_script.sh

RUN echo "Installing required packages" \
         && chmod +x /packages_script.sh \
         && bash /packages_script.sh

RUN echo "Installing python3" \
         && python3 -V \
         && pip3 -V

RUN echo "Installing SPOT-RNA" \
         && git clone https://github.com/jaswindersingh2/SPOT-RNA.git \
         && cd SPOT-RNA \
         && wget 'https://www.dropbox.com/s/dsrcf460nbjqpxa/SPOT-RNA-models.tar.gz' \
         && tar -xzf SPOT-RNA-models.tar.gz && rm SPOT-RNA-models.tar.gz \
         && pip3 install tensorflow==1.14.0 \
         && pip3 install -r requirements.txt

WORKDIR /project/SPOT-RNA
ENTRYPOINT [ "/usr/local/bin/python3", "SPOT-RNA.py"]