#!/bin/bash

GO_VERSION="1.24.3"
GO_FILE="/home/${USER}/Downloads/go${GO_VERSION}.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf ${GO_FILE}
sudo chown -R $USER:$USER /usr/local/go
sudo mkdir -p /usr/local/src/go
sudo chown -R $USER:$USER /usr/local/src/go
