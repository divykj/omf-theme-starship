function fish_prompt
    set -l raw_prompt (fish_prompt_raw | string split0)
    set -l prompt_width (echo $raw_prompt | string replace -ra '\e\[[^m]*m|[^[:print:]]' '' | string length | sort -nr | head -1)
    if test "$prompt_width" -ge "$COLUMNS"
        echo $raw_prompt | string replace -ra '[[:space:]](?<!^)(?!$)' '\n'
    else
        echo $raw_prompt
    end
end
