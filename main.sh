curl --silent "https://api.github.com/repos/USER/REPO/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                                 # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/' |
    xargs -I {} curl -sOL "https://github.com/USER/REPO/archive/"{}'.tar.gz'