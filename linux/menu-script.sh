title="Select example"
prompt="Pick an option:"
options=("CURR_SCB_INSTANCE='scb.ut1.adobe.com'" "CURR_SCB_INSTANCE='scb.dmz.ut1.adobe.net'" "CURR_SCB_INSTANCE='scb.dmz.or1.adobe.net'" "CURR_SCB_INSTANCE='scb.dmz.mai1.adobe.net'")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do

    case "$REPLY" in

    1 ) echo "You picked $opt which is option $REPLY" && ls;;
    2 ) echo "You picked $opt which is option $REPLY";;
    3 ) echo "You picked $opt which is option $REPLY";;
    4 ) echo "You picked $opt which is option $REPLY";;

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done
