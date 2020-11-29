FROM ubuntu:16.04
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git wget flex bison gperf cmake ninja-build ccache libffi-dev libssl-dev dfu-util python3 python3-pip python3-setuptools && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3 10 && \
    python -m pip install --upgrade virtualenv==16.7.9
WORKDIR /opt
RUN git clone https://github.com/SmingHub/Sming.git
ENV SMING_HOME=/opt/Sming/Sming
RUN git clone -b release/v4.1 --recursive https://github.com/espressif/esp-idf.git
RUN cd esp-idf && ./install.sh && export IDF_PATH=$(pwd) && echo $IDF_PATH
ENV IDF_PATH=/opt/esp-idf
RUN cd $SMING_HOME/../samples/Basic_Blink/ && make -j5 python-requirements all SMING_ARCH=Esp32
