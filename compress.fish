 #!/usr/bin/fish
    for distro in *
    if test "$distro" = "raw"
        set -e distro
    end
    
    if test "$distro" = "README.md"
        set -e distro
    end
    if test "$distro" = "compress.fish"
        set -e distro
    end
        tar -zcvf $distro.tar.gz $distro
end


rm raw/latest/*
mv *.tar.gz raw/latest/
date +"%Y-%m-%d_%T" -u > raw/latest/date.txt
