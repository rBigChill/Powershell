# Weather
Function weather {python $HOME\OneDrive\Work\Weather\printWeather.py}
Function reddit {python $HOME\OneDrive\Work\Reddit\Reddit.py}
Function hacker {python $HOME\OneDrive\Work\HackerNews\hackerNews.py}
Function newsapi {python $HOME\OneDrive\Work\NewsAPI\NewsAPI.py}
Function news {
    reddit
    hacker
    newsapi
}

Function wifi {start($ROUTER)}

# start Fav websites
Function fav {
    <#
    .Description
    -choices are s = social, e = entertainment, o = other. Default is all 
    #>
    param(
        [switch]$s,
        [switch]$e,
        [switch]$o
    )
    $social = @($REDDIT, $DEVTO, $LINKED, $FACE, $INSTA)
    $entertainment = @($YMUSIC, $YOUTUBE)
    $other = @($FANATICS, $STACKFLOW, $GITHUB)

    Function go ($a) {foreach ($s in $a) {start $s; sleep 1}}
    
    switch ($true) {
        $s {go $social} 
        $e {go $entertainment}
        Default {
            go $listen
            go $other
            go $social
        }
    }
}

# Google search
Function google {
    <#
    .Description
    -a to search all sites
    #>
    param(
        [string]$s,
        [switch]$a
    )

    $sites = @($GOOGLE, $BING, $YOU, $YAHOO, $DUCK)

    switch ($true) {
        $a {
            foreach ($site in $sites) {
                start "$site$s"; sleep 1
            }
        } 
        Default {
            start "$GOOGLE$s"; sleep 1
        }
    }
}

# start youtube
Function youtube {
    param(
        [string]$esto
    )
    if ([string]::IsNullOrEmpty($esto)) {
        start $YOUTUBE
    }else{
        start "$YTSEARCH$esto"
    }
}
