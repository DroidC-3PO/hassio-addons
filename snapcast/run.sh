#!/bin/bash
set -e


# start server
exec snapserver -s "spotify:///usr/local/bin/librespot?name=Spotify"  < /dev/null