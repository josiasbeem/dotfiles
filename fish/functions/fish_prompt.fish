function fish_prompt
    if test "$status" -ne 0
        set_color --bold
    end
    echo -n '$ '
end
