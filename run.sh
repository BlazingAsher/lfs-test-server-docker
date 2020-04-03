#!/bin/bash

set -eu
set -o pipefail

LFS_LISTEN="tcp://:9999"
LFS_HOST="HOST:9999"
LFS_CONTENTPATH="/lfs"
LFS_ADMINUSER=$LFS_ADMIN
LFS_ADMINPASS=$LFS_ADMIN_PASS
LFS_SCHEME="http"

export LFS_LISTEN LFS_HOST LFS_CONTENTPATH LFS_ADMINUSER LFS_ADMINPASS LFS_SCHEME

cd /home/$SERVER_USER/go/src/github.com/github/lfs-test-server

./lfs-test-server
