ARG PERL_V=5-slim-bookworm
FROM perl:${PERL_V} as Final
WORKDIR /Proxmox-KOREAN
RUN apt-get update -y \
    && apt-get install -y liblocale-po-perl libjson-perl git \
    && git clone git://git.proxmox.com/git/proxmox-i18n.git . \
    && rm -rf ./ko.po \
    && mkdir -p /output \
    && apt-get purge -y --auto-remove git \
    && rm -rf /var/lib/apt/lists/*

COPY script/build.sh /Proxmox-KOREAN
CMD ["/Proxmox-KOREAN/build.sh"]
