from i3pystatus import Status

## solarized color palette
base03  = "#002b36"
base02  = "#073642"
base01  = "#586e75"
base00  = "#657b83"
base0   = "#839496"
base1   = "#93a1a1"
base2   = "#eee8d5"
base3   = "#fdf6e3"
yellow  = "#b58900"
orange  = "#cb4b16"
red     = "#dc322f"
magenta = "#d33682"
violet  = "#6c71c4"
blue    = "#268bd2"
cyan    = "#2aa198"
green   = "#859900"

status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %-d %b %X",)

# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
# status.register("load",
#     format="f0ae"
# )
status.register("cpu_usage",
    format="\uf0ae {usage:0>3}%"
)

status.register("swap",
format="\uf16c {used}",
    hide_if_empty=True,
    color=green
)

status.register("mem",
    format="\uf0c7 {used_mem}/{total_mem}",
    color=green,
    warn_color=yellow,
    alert_color=red
)


status.register("alsa",
    format="\uf028 {volume}",
    format_muted="\uf026 {volume}",
    on_leftclick = ["switch_mute"],
    # or as a strings without the list
    on_upscroll = "decrease_volume",
    on_downscroll = "increase_volume",
    # this will refresh any module by clicking on it
    on_rightclick = "run",
    )

# Displays whether a DHCP client is running
status.register("runwatch",
    name="DHCP",
    path="/var/run/dhclient*.pid",
    color_up=green,
    color_down=red
)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces

# Note: requires both netifaces and basiciw (for essid and quality)
status.register("network",
    interface="eth0",
    format_up="\uf1eb {v4cidr}",
    color_up=green,
    color_down=red
)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/",
    format="S:{used}/{total}G [{avail}G]",)
status.register("disk",
    path="/home/",
    format="H:{used}/{total}G [{avail}G]",)

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI


# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
    format="{title}{status}{album}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)

status.run()
