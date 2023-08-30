#!/bin/bash

# stop the zsaservice
# this will also stop the zstunnel service
# echo "Stopping zsaservice and zstunnel services..."
# sudo systemctl stop zsaservice.service

# kill ZSTray
echo "Killing ZStray..."
kill $(ps aux | grep '/[o]pt/zscaler/bin/ZSTray' | awk '{print $2}')
