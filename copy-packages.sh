#!/bin/bash -e
#export PATH="${HOME}/firefox-ppa/:$PATH"
export BROWSER=echo
export LP_CREDENTIALS_FILE="${HOME}/launchpad.auth"

cd $(dirname "$0")

. config

echo '[jammy 22.04]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=jammy    firefox 2>&1 || true

echo '[noble 24.04]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=noble    firefox 2>&1 || true

echo '[oracular 24.10]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=oracular firefox 2>&1 || true

echo '[plucky 25.04]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=plucky   firefox 2>&1 || true
