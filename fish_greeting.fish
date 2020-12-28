function fish_greeting
    starship init fish | source
    type -q neofetch
    and neofetch
    or echo (set_color green)(uname -npsr)(set_color normal)
end