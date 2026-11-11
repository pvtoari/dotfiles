hl.window_rule({
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    match = {
        class = ".*",
    },
    opacity = "0.95 override 0.89 override",
})

-- Floating
hl.window_rule({
    match = {
        title = "^(Open File)(.*)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        title = "^(Select a File)(.*)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        title = "^(Choose wallpaper)(.*)$",
    },
    center = true,
    float = true,
    size = { 0.6, 0.65 },
})

hl.window_rule({
    match = {
        title = "^(Open Folder)(.*)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        title = "^(Save As)(.*)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        title = "^(Library)(.*)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        title = "^(File Upload)(.*)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        title = "^(.*)(wants to save)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        title = "^(.*)(wants to open)$",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        class = "^(pavucontrol)$",
    },
    float = true,
    size = { 0.45, 0.45 },
    center = true,
})

hl.window_rule({
    match = {
        class = "^(org.pulseaudio.pavucontrol)$",
    },
    float = true,
    size = { 0.45, 0.45 },
    center = true,
})

hl.window_rule({
    match = {
        class = "^(nm-connection-editor)$",
    },
    float = true,
    size = { 0.45, 0.45 },
    center = true,
})

hl.window_rule({
    match = {
        class = ".*plasmawindowed.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "kcm_.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*bluedevilwizard",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = ".*Welcome",
    },
    float = true,
})

hl.window_rule({
    match = {
        title = ".*Shell conflicts.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "org.freedesktop.impl.portal.desktop.kde",
    },
    float = true,
    size = { 0.6, 0.65 },
})

hl.window_rule({
    match = {
        title = ".*SSH Passphrase*",
    },
    float = true,
})

-- Picture-in-Picture
hl.window_rule({
    match = {
        title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
    },
    float = true,
    keep_aspect_ratio = true,
    move = { 0.73, 0.72 },
    size = { 0.25, 0.25 },
    pin = true,
})

-- Tearing
hl.window_rule({
    match = {
        title = ".*\\.exe",
    },
    immediate = true,
})

hl.window_rule({
    match = {
        title = ".*minecraft.*",
    },
    immediate = true,
})

hl.window_rule({
    match = {
        class = "^(steam_app).*",
    },
    immediate = true,
})

hl.window_rule({
    match = {
        float = 0,
    },
    no_shadow = true,
})

-- Layer rules
hl.layer_rule({
    match = { namespace = ".*" },
    xray = true,
})

hl.layer_rule({
    match = { namespace = "walker" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "selection" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "overview" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "anyrun" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "indicator.*" },
    no_anim = true,
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "osk" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "hyprpicker" },
    no_anim = true,
})

-- ags
hl.layer_rule({
    match = { namespace = "sideleft.*" },
    animation = "slide left",
})

hl.layer_rule({
    match = { namespace = "sideright.*" },
    animation = "slide right",
})

hl.layer_rule({
    match = { namespace = "session[0-9]*" },
    blur = true,
})

hl.layer_rule({
    match = { namespace = "bar[0-9]*" },
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "barcorner.*" },
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "dock[0-9]*" },
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "overview[0-9]*" },
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "cheatsheet[0-9]*" },
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "sideright[0-9]*" },
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "sideleft[0-9]*" },
    blur = true,
    ignore_alpha = 0.6,
})

hl.layer_rule({
    match = { namespace = "osk[0-9]*" },
    blur = true,
    ignore_alpha = 0.6,
})

-- Launchers need to be FAST
hl.layer_rule({
    match = { namespace = "quickshell:overview" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "gtk4-layer-shell" },
    no_anim = true,
})

-- outfoxxed's stuff
hl.layer_rule({
    match = { namespace = "shell:bar" },
    blur = true,
    ignore_alpha = 0,
})

hl.layer_rule({
    match = { namespace = "shell:notifications" },
    blur = true,
    ignore_alpha = 0.1,
})
