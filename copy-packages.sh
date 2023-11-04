#!/bin/bash -e
#export PATH="${HOME}/firefox-ppa/:$PATH"
export BROWSER=echo
export LP_CREDENTIALS_FILE="${HOME}/launchpad.auth"

cd $(dirname "$0")

. config

echo '[jammy 22.04]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=jammy   firefox 2>&1 || true

echo '[kinetic 22.10]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=kinetic firefox 2>&1 || true

echo '[lunar 23.04]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=lunar   firefox 2>&1 || true

echo '[mantic 23.10]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=mantic  firefox 2>&1 || true

echo '[noble 24.04]'
./ubuntu-archive-tools/copy-package -y -b --from=ubuntu --from-suite=focal-security --to=~${USER}/ubuntu/firefox --to-suite=noble   firefox 2>&1 || true
