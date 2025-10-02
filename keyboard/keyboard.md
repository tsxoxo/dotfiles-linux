# Use a custom keyboard layout

I started with a mac .keyboard file of the layout I had done with ukulele. I gave it to Claude and asked it to translate to xkb. It got most of it right, the second time. (The first time it left out half the keyboard and I had to reboot cuz I couldn't type anymore.) 

I tweaked the rest by hand. To remember the actual layout, I used this website that visualized it: https://www.leskoff.com/s02058-0. 

The xkb file even remaps capslock and tab and escape.

The procedure itself is super simple.

1. Copy the config to `/usr/share/X11/xkb/symbols/realprog`
2. Set it: `setxkbmap realprog`, optionally somewhere in autostart

Arguably, this was easier than doing it on Mac where I used Claude, Ukulele, and Karabiner...

## German keys

It's possible to create a switch to produce more glyphs. 
That way we only need one layout. 

The switch:
`key <TLDE> { [ ISO_Level3_Shift] };`
(on my QWERTZ keyboard this makes the key above TAB the switch)

(I tried Mode_switch but it didn't work out-of-the-box)

The keys:
`key <AD07> { [ u, U, udiaeresis, Udiaeresis ] };`
etc.
