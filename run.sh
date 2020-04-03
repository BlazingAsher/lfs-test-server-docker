#!/bin/bash

set -eu
set -o pipefail

LFS_LISTEN="tcp://:9999"
LFS_HOST=$LFS_EXT_HOST
LFS_CONTENTPATH="/lfs"
LFS_METADB="/lfsconfig/lfs.db"
LFS_ADMINUSER=$LFS_ADMIN
LFS_ADMINPASS=$LFS_ADMIN_PASS
LFS_SCHEME="https"
LFS_CERT="/ssl/server.crt"
LFS_KEY="/ssl/server.key"

export LFS_LISTEN LFS_HOST LFS_CONTENTPATH LFS_METADB LFS_ADMINUSER LFS_ADMINPASS LFS_SCHEME LFS_CERT LFS_KEY

cd /home/$SERVER_USER/go/src/github.com/github/lfs-test-server

./lfs-test-server
