function fish_prompt
    set -l raw_prompt (fish_prompt_raw | string split0)
    echo $raw_prompt
end
