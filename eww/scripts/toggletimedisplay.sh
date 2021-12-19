TOGGLED=$(echo $(eww get time_display) | awk '{print !$1}')
eww update time_display="$TOGGLED"
