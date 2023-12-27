#!/bin/bash

echo "Converting kr.po to pve-lang-ko.js..."
./po2js.pl -t pve kr.po >pve-lang-ko.js \
    && echo "Conversion to pve-lang-ko.js completed." \
    || { echo "Error converting to pve-lang-ko.js"; exit 1; }

echo "Converting kr.po to pmg-lang-ko.js..."
./po2js.pl -t pmg kr.po >pmg-lang-ko.js \
    && echo "Conversion to pmg-lang-ko.js completed." \
    || { echo "Error converting to pmg-lang-ko.js"; exit 1; }

echo "Converting kr.po to pbs-lang-ko.js..."
./po2js.pl -t pbs kr.po >pbs-lang-ko.js \
    && echo "Conversion to pbs-lang-ko.js completed." \
    || { echo "Error converting to pbs-lang-ko.js"; exit 1; }

echo "Start build deb packages..."
make deb \
    && echo "build completed." \
    || { echo "Error build to deb packages"; exit 1; }

echo "Moving files to /output directory..."
cp ./*-*-ko.js /output \
    && echo "pbs-lang-ko.js moved to /output." \
    || { echo "Error moving pbs-lang-ko.js to /output"; exit 1; }

cp ./*.deb /output \
    && echo "All deb package moved to /output." \
    || { echo "Error moving deb packages to /output"; exit 1; }

echo "Changing ownership of files..."

chown -R Proxmox-KOREAN:Proxmox-KOREAN /output/*-*-ko.js \
    && echo "Ownership changed for *-*-ko.js." \
    || { echo "Error changing ownership for *-*-ko.js"; exit 1; }

chown -R Proxmox-KOREAN:Proxmox-KOREAN /output/*.deb \
    && echo "Ownership changed for deb packages." \
    || { echo "Error changing ownership for deb packages.js"; exit 1; }

echo "All steps completed successfully."
exit 0
