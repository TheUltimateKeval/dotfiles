WINDOW=$1

eww windows | grep "*$WINDOW" -wq
STATUS=$?

if [[ $STATUS == 0 ]];
then
    eww close $WINDOW
else
    eww open $WINDOW
fi
