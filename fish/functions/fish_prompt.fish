function fish_prompt
    if test "$status" -ne 0
        set_color red
    end
    echo -n '$ '
end
