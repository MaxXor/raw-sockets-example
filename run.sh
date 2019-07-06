#!/bin/sh

cd "$(dirname "$0")" || exit

# The kernel does send a RST packet when it receives something to an
# unknown socket destination which is the case with raw sockets. To
# prevent this we simply block all outgoing RST packets.
if ! iptables -C OUTPUT -p tcp --tcp-flags RST RST -j DROP; then
    iptables -A OUTPUT -p tcp --tcp-flags RST RST -j DROP
fi

./rawsockets "$@" # 127.0.0.1 127.0.0.1 80
