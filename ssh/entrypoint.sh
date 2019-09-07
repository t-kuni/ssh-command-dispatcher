#!/bin/sh
echo -e "${PRIVATE_KEY}" > tmp
chmod 600 tmp
ssh -o StrictHostKeyChecking=no -i tmp ${USER}@${HOST} $@