function fish_prompt
    if test "$status" -ne 0
        set_color ff0000
    end
    echo -n '$ '
end
