function envsource
    for line in (cat $argv | grep -Ev '^#|^$')
        set item (string split -m 1 '=' $line)
        set -gx $item[1] $item[2]
        echo "set -gx $item[1] $item[2]"
    end
end
