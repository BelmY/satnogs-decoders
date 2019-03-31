#!/bin/sh
#
# SatNOGS decoders Kaitai Struct compiling script
#
# Copyright (C) 2018-2019 Libre Space Foundation <https://libre.space/>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

IMAGE="librespace/kaitai"
USER="$(id -u):$(id -g)"
VOLUME="$(pwd):/workdir"
DEFAULT_TARGET="python"
DEFAULT_OUTDIR="satnogsdecoders/decoder"
DEFAULT_FILE="ksy/*.ksy"

if ! docker pull "$IMAGE"; then
	echo "WARNING: Docker image was not updated!" >&2
fi

# shellcheck disable=SC2068
if docker run \
	-u "$USER" \
	-v "$VOLUME" \
	"$IMAGE" \
	${@:---target "$DEFAULT_TARGET" --outdir "$DEFAULT_OUTDIR" $DEFAULT_FILE}; then
	echo "KSYs compiled successfully!"
fi
