myappsmenu = {
    { "web", browser },
    { "files", "pcmanfm" },
    { "office", "libreoffice" },
    { "sublime text", "subl" }
}

myutilsmenu = {
    { "reset", "xcalib -clear" },
    { "invert", "xcalib -invert -alter" },
    { "darken", "xcalib -contrast 50 -alter" },
    { "brighten", "xcalib -brightness 15 -alter" },
    { "1 red", "xcalib -red 1.0 99.0 1.0 -alter" },
    { "1 green", "xcalib -green 1.0 99.0 1.0 -alter" },
    { "1 blue", "xcalib -blue 1.0 99.0 1.0 -alter" },
    { "0 red", "xcalib -red 1.0 0.0 1.0 -alter" },
    { "0 green", "xcalib -green 1.0 0.0 1.0 -alter" },
    { "0 blue", "xcalib -blue 1.0 0.0 1.0 -alter" },
    { "whiten", "xcalib -brightness 99 -alter" },
}

dangermenu = {
    { "logout", awesome.quit },
    { "hibernate", "systemctl hibernate" },
    { "restart", "systemctl reboot" },
    { "shutdown", "systemctl poweroff" }
}

mymainmenu = awful.menu({ items = {
    { "screen", myutilsmenu },
    { "terminal", terminal },
    { "reload", awesome.restart },
    { "danger", dangermenu },
}})
