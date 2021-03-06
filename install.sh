#!/usr/bin/env sh

pip3 install -r requirements.txt --user

if [ ! -f cfg/config.yaml ]; then
    cp cfg/config_sample.yaml cfg/config.yaml
fi
./polyprofile.py --config cfg/server_config.yaml --destination .
