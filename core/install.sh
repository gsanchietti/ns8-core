#!/bin/bash

#
# Copyright (C) 2021 Nethesis S.r.l.
# http://www.nethesis.it - nethserver@nethesis.it
#
# This script is part of NethServer.
#
# NethServer is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License,
# or any later version.
#
# NethServer is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with NethServer.  If not, see COPYING.
#

set -e

source /etc/os-release

echo "Install dependencies:"
if [[ ${ID} == "centos" && "${PLATFORM_ID}" == "platform:el9" ]]; then
    dnf install -y wireguard-tools podman jq openssl
    systemctl disable --now firewalld || :
elif [[ "${ID}" == "debian" && "${VERSION_ID}" == "11" ]]; then
    apt-get update
    apt-get -y install gnupg2 python3-venv podman wireguard uuid-runtime jq openssl psmisc
elif [[ "${ID}" == "ubuntu" && "${VERSION_ID}" == "20.04" && "${CI}" == "true" && "${GITHUB_ACTIONS}" == "true" ]]; then
    apt-get update
    apt-get -y install wireguard
else
    echo "System not supported"
    exit 1
fi

core_url=${1:-ghcr.io/nethserver/core:latest}
echo "Extracting core sources from ${core_url}:"
mkdir -pv /var/lib/nethserver/node/state
cid=$(podman create "${core_url}")
podman export ${cid} | tar --totals -C / --no-overwrite-dir --no-same-owner -x -v -f - | LC_ALL=C sort | tee /var/lib/nethserver/node/state/coreimage.lst
podman rm -f ${cid}

/var/lib/nethserver/node/install-core.sh
