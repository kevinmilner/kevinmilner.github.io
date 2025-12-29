#!/usr/bin/env bash

set -euo pipefail

for img in *.png; do
	# Skip originals and existing thumbnails
	if [[ "$img" == *orig.png || "$img" == *thumb.png ]]; then
		continue
	fi

	out="${img%.png}_thumb.png"

	ffmpeg -y -i "$img" -vf "scale=280:158:flags=lanczos" "$out"
done

