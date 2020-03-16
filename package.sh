#!/usr/bin/env bash
set -Eeumo pipefail
DIR=$(dirname "$(command -v greadlink >/dev/null 2>&1 && greadlink -f "$0" || readlink -f "$0")")

helm package "$DIR" -d "$DIR/packages"
helm repo index .
