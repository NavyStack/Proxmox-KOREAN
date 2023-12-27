FROM perl:5-slim-bookworm as Final

WORKDIR /Proxmox-KOREAN
ARG USER=Proxmox-KOREAN

RUN set -eux; \
    apt-get update -y \
    && DEBIAN_FRONTEND=noninteractive \
        apt-get install -y --no-install-recommends \
            build-essential \
            debhelper-compat \
            dpkg-dev \
            git \
            liblocale-po-perl \
            libjson-perl \
            lintian \
            rsync \
            fakeroot \
    && git clone --depth 1 git://git.proxmox.com/git/proxmox-i18n.git . \
    && rm -rf ./kr.po \
    && mkdir -p /output \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && useradd --no-create-home --shell /bin/bash $USER \
    && chown -R $USER:$USER /Proxmox-KOREAN \
    && chown -R $USER:$USER /output \
    && git config --global --add safe.directory /Proxmox-KOREAN
USER $USER
COPY script/build.sh /Proxmox-KOREAN
CMD ["/Proxmox-KOREAN/build.sh"]
