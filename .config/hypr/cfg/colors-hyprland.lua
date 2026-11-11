local colors = {
    wallpaper = "/home/pvtoari/.config/hypr/gojo-bg.png",
    foreground = "rgba(196,195,199,1.0)",
    background = "rgba(19,15,34,1.0)",
    color0 = "rgba(19,15,34,1.0)",
    color1 = "rgba(143,65,120,1.0)",
    color2 = "rgba(74,73,156,1.0)",
    color3 = "rgba(104,82,172,1.0)",
    color4 = "rgba(148,85,162,1.0)",
    color5 = "rgba(198,88,172,1.0)",
    color6 = "rgba(107,173,215,1.0)",
    color7 = "rgba(196,195,199,1.0)",
    color8 = "rgba(97,94,115,1.0)",
    color9 = "rgba(143,65,120,1.0)",
    color10 = "rgba(74,73,156,1.0)",
    color11 = "rgba(104,82,172,1.0)",
    color12 = "rgba(148,85,162,1.0)",
    color13 = "rgba(198,88,172,1.0)",
    color14 = "rgba(107,173,215,1.0)",
    color15 = "rgba(196,195,199,1.0)",
}

-- Export to global scope for compatibility
for k, v in pairs(colors) do
    _G[k] = v
end

return colors
