# Inspired by https://github.com/INTI-CMNB/kicad_auto

FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install \
    python3-colorama \
    python3-psutil \
    python3-xlsxwriter \
    python3-xvfbwrapper \
    python3-yaml \
    recordmydesktop \
    software-properties-common \
    wget \
    xclip \
    xdotool

# Specify kicad version, in case it breaks in the future
ARG KICAD_VERSION=5.1.9-202012230804+73d0e3b20d~88~ubuntu20.04.1
RUN add-apt-repository --yes ppa:kicad/kicad-5.1-releases && \
 apt-get update && apt-get install -y --install-recommends kicad=${KICAD_VERSION}

# KiAuto tools
ARG KIAUTO_URLS="\
    https://github.com/INTI-CMNB/InteractiveHtmlBom/releases/download/v2.3.3/interactivehtmlbom.inti-cmnb_2.3.3-1_all.deb \
    https://github.com/INTI-CMNB/KiAuto/releases/download/v1.5.3/kiauto_1.5.3-1_all.deb \
    https://github.com/INTI-CMNB/KiBoM/releases/download/v1.8.0-2/kibom.inti-cmnb_1.8.0-2_all.deb \
    https://github.com/INTI-CMNB/KiBot/releases/download/v0.8.1/kibot_0.8.1-1_all.deb"

# These are used for plotting gerbers. Unused at the moment
# https://github.com/INTI-CMNB/PcbDraw/releases/download/v0.6.0-3/pcbdraw_0.6.0-3_all.deb
# https://github.com/INTI-CMNB/PcbDraw/releases/download/v0.6.0-3/python3-pybars_0.9.7-1_all.deb
# https://github.com/INTI-CMNB/PcbDraw/releases/download/v0.6.0-3/python3-pymeta_0.5.1-1_all.deb

# Download and install all the packages from above
RUN cd /tmp && wget ${KIAUTO_URLS} && \
echo -e "\
b540735238edb845bcb9dfe9bf53d5c4bdf12cc04cd4ef7a81852910c77b34f4  interactivehtmlbom.inti-cmnb_2.3.3-1_all.deb\n\
5b51155493a8b98e5e80be9db68dbd5636dfb8bc77f3bf6ec8ae4b356a355b0f  kiauto_1.5.3-1_all.deb\n\
681e98f8d59259d0ba1f5f467a6508b4ca3f81b3630b054fcf5e7fcbced11b95  kibom.inti-cmnb_1.8.0-2_all.deb\n\
4424c4fb59ef69a79a65e8bb085b124163394b769c4dd3eca5d31bb8e4d4a039  kibot_0.8.1-1_all.deb" | sha256sum -c && \
    apt-get -y install ./*.deb && rm *.deb

# get user id from build arg, so we can have read/write access to directories
# mounted inside the container. only the UID is necessary, UNAME just for
# cosmetics
ARG UID=1010
ARG UNAME=builder

RUN useradd --uid $UID --create-home --user-group ${UNAME} && \
    echo "${UNAME}:${UNAME}" | chpasswd && adduser ${UNAME} sudo

USER ${UNAME}

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /home/${UNAME}/.local/bin:$PATH

WORKDIR /mnt/workspace
