#!/bin/sh
echo "${PRIVATE_KEY}" > tmp
chmod 600 tmp
ssh -o StrictHostKeyChecking=no -i tmp ${USER}@${HOST} $@