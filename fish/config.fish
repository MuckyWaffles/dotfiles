if status is-interactive
    # Commands to run in interactive sessions can go here
    alias nv="nvim"

    # Yazi wrapper that changes cwd on exit
    function yaz
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end
end
