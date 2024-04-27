# Usage: docker build .
# Usage: docker run tpruvot/cpuminer-multi -a xevan --url=stratum+tcp://yiimp.ccminer.org:3739 --user=iGadPnKrdpW3pcdVC3aA77Ku4anrzJyaLG --pass=x

FROM            ubuntu:14.04
MAINTAINER      Tanguy Pruvot <tanguy.pruvot@gmail.com>

RUN             apt-get update -qq

RUN             apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git

RUN             git clone https://github.com/tpruvot/cpuminer-multi -b linux

RUN             cd cpuminer-multi && ./autogen.sh
RUN             cd cpuminer-multi && ./configure CFLAGS="-Ofast" --disable-assembly --with-crypto --with-curl
RUN             cd cpuminer-multi &&  make

ADD https://raw.githubusercontent.com/sudtanj/cpuminer-arm/master/scripts/minerd.sh /cpuminer-multi/minerd.sh

RUN chmod +x /cpuminer-multi/minerd.sh

WORKDIR         /cpuminer-multi
CMD ["./minerd.sh"]
