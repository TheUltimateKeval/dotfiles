echo '{ "command": ["get_property", "media-title"] }' | socat - ~/.config/mpv/socket | jq '.data' | cut -d'"' -f 2