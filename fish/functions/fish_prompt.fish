function fish_prompt
    tput cup $COLUMNS 0
    echo -n '$ '
end
