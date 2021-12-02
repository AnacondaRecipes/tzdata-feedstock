#!/usr/bin/env bash
# Run the tests for tzdata

set -ex

exists() {
	FULL_PATH="${PREFIX}/${1}"
	if [ -f "${FULL_PATH}" ]; then
		echo "Found ${1}"
	else
		echo "Could not find ${FULL_PATH}"
		exit 1
	fi
}

for i in Users/aparnabolla/anaconda3/pkgs/tzdata-2021e-hda174b7_0/share/zoneinfo/{zone,iso3166,zone1970}.tab Users/aparnabolla/anaconda3/pkgs/tzdata-2021e-hda174b7_0/share/zoneinfo/leapseconds Users/aparnabolla/anaconda3/pkgs/tzdata-2021e-hda174b7_0/share/zoneinfo/tzdata.zi; do
	exists $i
done
