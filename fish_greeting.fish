function fish_greeting
    source (starship init fish --print-full-init | sed 's/function fish_prompt/function fish_prompt_raw/' | psub)
    type -q neofetch
    and neofetch
    or echo (set_color green)(uname -npsr)(set_color normal)
end