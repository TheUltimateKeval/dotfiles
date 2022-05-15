eww windows | grep "*$1" -wq
STATUS=$?

WINDOWS=""

for WINDOW in "$@"
do
    WINDOWS+="$WINDOW "
done

if [[ $STATUS == 0 ]];
then
    eww close $WINDOWS
else
    eww open-many $WINDOWS
fi