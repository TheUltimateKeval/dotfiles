json="{\"dummy\":false"

for process in "xfce4-terminal" "code" "firefox" "Discord" "nautilus" "gnome-calculato"
do
    count=$(pgrep -c $process)

    if [[ count -eq 0 ]]
    then
        json+=",\"${process}\":false"
    else
        json+=",\"${process}\":true"
    fi
done

json+="}"

echo $json