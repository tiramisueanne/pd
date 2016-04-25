#!/usr/bin/env bash
# Usage: ./ppc64-debug.sh t0
PORT=$((10000+($RANDOM % 5000)))
qemu-ppc64 -g "$PORT" $1 &
/u/gheith/public/bin/ppc64-linux-gdb -iex "target extended-remote localhost:$PORT" -s $1
kill $! 2>/dev/null