state=$(echo '{ "command": ["get_property", "pause"] }' | socat - ~/.config/mpv/socket | jq '.data')

echo $state

if [[ $state == "false" ]]
then
    echo "here"
    echo '{ "command": ["set_property", "pause", true] }' | socat - ~/.config/mpv/socket
else
    echo '{ "command": ["set_property", "pause", false] }' | socat - ~/.config/mpv/socket
fi