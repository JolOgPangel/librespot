FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install build-essential libasound2-dev curl -y
# RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -y

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rustup.sh \
    && sh rustup.sh -y \
    && rm rustup.sh

RUN apt-get install libssl-dev pkg-config -y
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.cargo/bin:${PATH}"
WORKDIR /workspace

CMD ["/bin/bash"]
