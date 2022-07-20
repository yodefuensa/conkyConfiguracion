#!/bin/bash

set -ex

cd "$(dirname "$0")"

conky -q -c ./conky/np.lua -d &>/dev/null

