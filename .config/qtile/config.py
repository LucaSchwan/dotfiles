# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
import os 
import re
import socket
import subprocess
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from typing import List  # noqa: F401
from libqtile import hook 

mod = "mod4"
mods = [mod, "shift"]
modc = [mod, "control"]
terminal = "alacritty"
browser = "brave"

keys = [
    # Switch between windows in current stack pane
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "k", lazy.layout.up()),

    # resize windows
    Key([mod], "m", lazy.layout.grow()),
    Key([mod], "i", lazy.layout.shrink()),
    Key([mod], "n", lazy.layout.normalize(),
        desc="normalize secondary clients"),
    Key([mod, "shift"], "n", lazy.layout.reset(),
        desc="reset client"),

    # shuffle windows
    Key(mods, "h", lazy.layout.swap_left()),
    Key(mods, "l", lazy.layout.swap_right()),
    Key(mods, "j", lazy.layout.shuffle_down()),
    Key(mods, "k", lazy.layout.shuffle_up()),

    # flip layout
    Key([mod, "shift"], "space", lazy.layout.flip()),

    # screen keybinds
    Key([mod], "z", lazy.prev_screen(),
        desc='Move focus to prev monitor'),

    # terminal and editor keybinds 
    Key([mod], "Return", lazy.spawn(terminal),
        desc="launch terminal"),
    Key([mod, "shift"], "Return", lazy.spawn("emacsclient -c -a 'emacs'"),
        desc="launch emacs"),
    Key([mod], "d", lazy.spawn("emacsclient -c -a 'emacs' --eval '(dired nil)'"),
        desc="launch dired"),

    # browser shortcut
    Key([mod], "b", lazy.spawn(browser),
        desc="launch browser"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.spawn("rofi -show window"),
        desc="toggle between layouts"),
    Key([mod], "w", lazy.window.kill(),
        desc="kill focused window"),

    # restart and shutdown
    Key(modc, "r", lazy.restart(),
        desc="restart qtile"),
    Key(modc, "q", lazy.shutdown(),
        desc="shutdown qtile"),

    # prompt
    Key([mod], "space", lazy.spawn("rofi -show run"),
        desc="spawn a command using a prompt widget"),

    # rofi scripts
    Key([mod], "r", lazy.spawn("/home/ehrenschwan/.config/rofi/scripts.sh"),
        desc="spawn a command using a prompt widget"),
    
]

group_names = [("home", {'layout': 'monadtall'}),
               ("dev", {'layout': 'monadtall'}),
               ("www", {'layout': 'monadtall'}),
               ("mus", {'layout': 'monadtall'}),
               ("sys", {'layout': 'monadtall'}),
               ("etc", {'layout': 'monadtall'}),
               ]

groups = [Group(name, **kwargs) for name, kwargs in group_names]

for i, (name, kwargs) in enumerate(group_names, 1):
    keys.append(Key([mod], str(i), lazy.group[name].toscreen()))        # Switch to another group
    keys.append(Key([mod, "shift"], str(i), lazy.window.togroup(name))) # Send current window to another group

layout_theme = {"border_width": 2,
                "margin": 8,
                "border_focus": "98C379",
                "border_normal": "282c34"
                }


layouts = [
    layout.MonadTall(**layout_theme),
    layout.Max(**layout_theme),
    layout.MonadWide(**layout_theme),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(),
    # layout.Bsp(),
    # layout.Columns(),
    # layout.Matrix(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

colors = [["#282c34", "#282c34"], # panel background
          ["#282c34", "#282c34"], # background for current screen tab
          ["#98C379", "#98C379"], # font color for group names
          ["#E06C75", "#E06C75"], # border line color for current tab
          ["#8d62a9", "#8d62a9"], # border line color for other tab and odd widgets
          ["#668bd7", "#668bd7"], # color for the even widgets
          ["#e1acff", "#e1acff"]] # window name


widget_defaults = dict(
    font='Fira Code',
    fontsize=12,
    padding=2,
    background=colors[2]
)

def init_widgets_list():
    widgets_list = [
        widget.GroupBox(
            margin_y = 4,
            margin_x = 0,
            padding_y = 4,
            padding_x = 3,
            borderwidth = 2,
            active = colors[2],
            inactive = colors[2],
            rounded = False,
            highlight_color = colors[1],
            highlight_method = "line",
            this_current_screen_border = colors[3],
            this_screen_border = colors [4],
            other_current_screen_border = colors[0],
            other_screen_border = colors[0],
            foreground = colors[2],
            background = colors[0]
            
                ),
        widget.Sep(
            linewidth = 0,
            padding = 40,
            foreground = colors[2],
            background = colors[0]
        ),
        widget.WindowName(
            foreground = colors[2],
            background = colors[0]
        ),
        widget.Sep(
            linewidth = 0,
            padding = 40,
            foreground = colors[2],
            background = colors[0]
        ),
        widget.CurrentLayout(
            foreground = colors[2],
            background = colors[0]
        ),
        widget.CurrentLayoutIcon(
            foreground = colors[2],
            background = colors[0],
            scale = 0.5
        ),
        widget.Systray(
            foreground = colors[2],
            background = colors[0]
        ),
        widget.KeyboardLayout(
            configured_keyboards = ['us colemak'],
            display_map = {'us colemak': ''},
            foreground = colors[2],
            background = colors[0]
        ),
        widget.Sep(
            linewidth = 0,
            padding = 20,
            foreground = colors[2],
            background = colors[0]
        ),
        widget.Clock(
            margin_y = 3,
            margin_x = 0,
            padding_y = 5,
            padding_x = 3,
            format = '%a %d/%m/%y  %H:%M:%S',
            foreground = colors[2],
            background = colors[0]
        ),
        widget.Sep(
            linewidth = 0,
            padding = 20,
            foreground = colors[2],
            background = colors[0]
        ), 
        widget.QuickExit(
            foreground = colors[2],
            background = colors[0],
            default_text = 'kill 💀',
            countdown_format = '[{}s]   '
        ),
    ]
    return widgets_list

def init_widgets_screen1():
    widgets_screen1 = init_widgets_list()
    del widgets_screen1[7]               # Slicing removes unwanted widgets (systray) on Monitors 1,3
    return widgets_screen1

def init_widgets_screen2():
    widgets_screen2 = init_widgets_list()
    return widgets_screen2                 # Monitor 2 will display all widgets in widgets_list

def init_screens():
    return [Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20)),
            Screen(top=bar.Bar(widgets=init_widgets_screen2(), opacity=1.0, size=20))]

if __name__ in ["config", "__main__"]:
    screens = init_screens()
    widgets_list = init_widgets_list()
    widgets_screen1 = init_widgets_screen1()
    widgets_screen2 = init_widgets_screen2()



# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    {'wmclass': 'confirm'},
    {'wmclass': 'dialog'},
    {'wmclass': 'download'},
    {'wmclass': 'error'},
    {'wmclass': 'file_progress'},
    {'wmclass': 'notification'},
    {'wmclass': 'splash'},
    {'wmclass': 'toolbar'},
    {'wmclass': 'confirmreset'},  # gitk
    {'wmclass': 'makebranch'},  # gitk
    {'wmclass': 'maketag'},  # gitk
    {'wname': 'branchdialog'},  # gitk
    {'wname': 'pinentry'},  # GPG key password entry
    {'wmclass': 'ssh-askpass'},  # ssh-askpass
])
auto_fullscreen = True
focus_on_window_activation = "smart"

@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser('~')
    subprocess.call([home + '/.config/qtile/autostart.sh']) 


# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
