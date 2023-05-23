#!/usr/bin/with-contenv bashio
while true; do

    if [ ! -f "/ssl/dehydrated" ]; then
        curl https://raw.githubusercontent.com/dehydrated-io/dehydrated/master/dehydrated -o /ssl/dehydrated
        chmod +x /ssl/dehydrated
    fi

    if [ ! -f "/ssl/config" ]; then
        echo "no config, nothing to do"
        exit
    fi

    if [ ! -f "/ssl/domains.txt" ]; then
        echo "no domains, nothing to do"
        exit
    fi

    /ssl/dehydrated -c
    sleep 86400
done