#!/bin/sh

if [ -z "$PIPE_PATH" ]; then
  >&2 echo "ERROR: PIPE_PATH is not set"
  exit 1
fi

envsubst < /etc/pulse/system.pa.template > /etc/pulse/system.pa

pulseaudio --system --disallow-exit

