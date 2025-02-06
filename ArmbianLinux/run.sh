#!/bin/bash
clear && sudo apt update && sudo apt upgrade -y && sudo apt install -y curl wget apt-transport-https ca-certificates && curl -fsSL https://get.casaos.io | bash
