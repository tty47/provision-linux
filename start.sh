#!/bin/bash
echo "Setting up environment..."
git clone https://github.com/jrmanes/provision-linux.git
cd provision-linux
make all
