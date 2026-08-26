function fish_prompt
    set_color green
    echo -n (whoami)

    set_color normal
    echo -n "@"(prompt_hostname)

    set_color green
    echo -n " "(prompt_pwd)

    # Git branch
    set git_branch (git branch --show-current 2>/dev/null)

    if test -n "$git_branch"
        set_color yellow
        echo -n " ("$git_branch")"
    end

    set_color normal
    echo
    echo -n "> "
end
