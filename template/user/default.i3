# This file has been auto-generated by i2-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

exec --no-startup-id ~/bin/reloadConfig
exec --no-startup-id setWallpaperRandom

set $mod Mod4
set $emacs "emacsclient -c -a emacs"


# Font for window es. Will also be used by the bar unless a different font
# is used in the bar {} block below.
#font pango:DejaVu Sans 12

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango: CozetteVector Regular 9 

# The combination of xss-lock, nm-applet and pactl is a popular choice, so
# they are included here as an example. Modify as you see fit.

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork

# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a deskbottom environment-independent system tray GUI for it.
exec --no-startup-id nm-applet

# Use pactl to adjust volume in PulseAudio.
set $refresh_i3status killall -SIGUSR1 i3status
bindsym $mod+Control+o exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +2% && $refresh_i3status
bindsym $mod+Control+i exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -2% && $refresh_i3status
bindsym $mod+Control+y exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym $mod+Control+u exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

#using sudo brightnessctl

bindsym $mod+Control+a exec --no-startup-id sudo brightnessctl set 1%-
bindsym $mod+Control+d exec --no-startup-id sudo brightnessctl set 1%+


# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec terminator
bindsym $mod+Shift+Return exec $emacs

# open file-manager
bindsym $mod+Shift+f exec caja
# kill focused window
bindsym $mod+Shift+q kill

# rofi 
# bindsym $mod+d exec "rofi -show run"

# dmenu
bindsym $mod+d exec dmenu_run -fn 'Sans' -sb '#a37774' -sf '#eeede7' -nb '#f0a694' -nf '#624341' -l 5







# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right


# split in horizontal orientation
bindsym $mod+b split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1:f"
set $ws2 "2:e+t+p"
set $ws3 "3:c"
set $ws4 "4:e"
set $ws5 "5:e+t"
set $ws6 "6:e+f"
set $ws7 "7:t+f"
set $ws8 "8:reserved"
set $ws9 "9:reserved"
set $ws10 "10:reserved"

# switch to workspace
bindsym $mod+1 workspace number $ws1
bindsym $mod+2 workspace number $ws2
bindsym $mod+3 workspace number $ws3
bindsym $mod+4 workspace number $ws4
bindsym $mod+5 workspace number $ws5
bindsym $mod+6 workspace number $ws6
bindsym $mod+7 workspace number $ws7
bindsym $mod+8 workspace number $ws8
bindsym $mod+9 workspace number $ws9
bindsym $mod+0 workspace number $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9
bindsym $mod+Shift+0 move container to workspace number $ws10

# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# reload config
bindsym $mod+Shift+c exec --no-startup-id bash ~/.config/i3/reloadConfig

