seconds=$(echo '{ "command": ["get_property", "duration"] }' | socat - ~/.config/mpv/socket | jq '.data' | cut -d"." -f 1)
date -u --date="@${seconds}" "+%M:%S"