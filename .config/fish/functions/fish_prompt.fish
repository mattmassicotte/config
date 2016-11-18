function prompt_git_branch
    set -l branch (git symbolic-ref HEAD 2> /dev/null | cut -d/ -f3-)
    if test -n "$branch"
        printf '%s[%s]%s ' (set_color yellow) $branch (set_color normal)
    end
end

function prompt_hostname
    printf '%s%s%s' (set_color red) (hostname|cut -d . -f 1) (set_color normal)
end

function fish_prompt -d "Write out the prompt"
    printf '%s:%s %s%s$ ' (prompt_hostname) (prompt_pwd) (prompt_git_branch) (whoami)
end
