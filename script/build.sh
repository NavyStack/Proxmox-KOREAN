#!/bin/bash
./po2js.pl -t pve ko.po >pve-lang-ko.js \
    && mv ./pve-lang-ko.js /output \
    && chown -R 1000:1000 /output/pve-lang-ko.js \
    && exit 0