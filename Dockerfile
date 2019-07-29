FROM ubuntu
RUN apt-get update && apt-get upgrade
RUN apt-get install -y git
RUN git clone https://github.com/Exiv2/exiv2.git
RUN apt-get install -y build-essential git clang ccache python3 libxml2-utils cmake python3 libexpat1-dev libz-dev zlib1g-dev libssh-dev libcurl4-openssl-dev libgtest-dev google-mock
RUN cd exiv2 && \
    mkdir build && \
    cd build && \
    cmake .. -G "Unix Makefiles" -DBUILD_WITH_CCACHE=On && \
    make

