# Copyright (c) 2010 Aldo Cortescolorsi
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
import subprocess
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile import hook
from colors import gruvbox
fg = gruvbox["fg"]
bg = gruvbox["bg"]

mod = "mod4"
terminal = "alacritty"
browser = "brave"

keys = [
    # window movement
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "n", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "e", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "i", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),

    # window moving
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "n", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "e", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([mod, "shift"], "i", lazy.layout.shuffle_right(), desc="Move window to the right"),

    # window resizing
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "n", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "e", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod, "control"], "i", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod], "c", lazy.layout.normalize(), desc="Reset all window sizes"),

    # toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),

    # move to the next monitor
    Key([mod], "backspace", lazy.next_screen(), desc='Move focus to next monitor'),

    # programs
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "b", lazy.spawn(browser), desc="launch browser"),

    # prompt
    Key([mod], "space", lazy.spawn("rofi -show run"),
        desc="spawn a command using a prompt widget"),

    # qtile
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )

layouts = [
    layout.MonadTall(border_focus=gruvbox["green"], border_normal=gruvbox["dark-magenta"], border_width=2),
    layout.Max(),
]

widget_defaults = dict(
    font="JetBrains Mono",
    fontsize=14,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.Sep(
                    linewidth=0,
                    padding=5,
                    foreground=fg,
                    background=bg
                ),
                widget.GroupBox(
                    margin_y=4,
                    margin_x=0,
                    padding_y=4,
                    padding_x=3,
                    borderwidth=2,
                    active=gruvbox["red"],
                    inactive=gruvbox["blue"],
                    rounded=False,
                    highlight_color=gruvbox["dark-gray"],
                    highlight_method="line",
                    this_current_screen_border=gruvbox["red"],
                    this_screen_border=gruvbox["red"],
                    other_current_screen_border=gruvbox["red"],
                    other_screen_border=gruvbox["blue"],
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=40,
                    foreground=fg,
                    background=bg
                ),
                widget.WindowName(
                    foreground=fg,
                    background=bg
                ),
                widget.Clock(
                    margin_y=3,
                    margin_x=0,
                    padding_y=5,
                    padding_x=3,
                    format='%d/%m/%y  %H:%M:%S',
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=20,
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=20,
                    foreground=fg,
                    background=bg
                ),
            ], 25
        ),
    ),
    Screen(
        top=bar.Bar(
            [
                widget.Sep(
                    linewidth=0,
                    padding=5,
                    foreground=fg,
                    background=bg
                ),
                widget.GroupBox(
                    margin_y=4,
                    margin_x=0,
                    padding_y=4,
                    padding_x=3,
                    borderwidth=2,
                    active=gruvbox["green"],
                    inactive=gruvbox["gray"],
                    rounded=False,
                    highlight_color=gruvbox["dark-gray"],
                    highlight_method="line",
                    this_current_screen_border=gruvbox["green"],
                    this_screen_border=gruvbox["green"],
                    other_current_screen_border=gruvbox["dark-magenta"],
                    other_screen_border=gruvbox["dark-magenta"],
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=40,
                    foreground=fg,
                    background=bg
                ),
                widget.WindowName(
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=40,
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=10,
                    foreground=fg,
                    background=bg
                ),
                widget.Systray(
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=20,
                    foreground=fg,
                    background=bg
                ),
                widget.Clock(
                    margin_y=3,
                    margin_x=0,
                    padding_y=5,
                    padding_x=3,
                    format='%d/%m/%y  %H:%M:%S',
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=20,
                    foreground=fg,
                    background=bg
                ),
                widget.Sep(
                    linewidth=0,
                    padding=20,
                    foreground=fg,
                    background=bg
                ),
            ], 25
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None


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
