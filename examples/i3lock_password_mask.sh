#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#ff00ffcc'
TEXT='#ee00eeee'
WRONG='#880000bb'
VERIFYING='#bb00bbbb'

i3lock \
--insidever-color=$CLEAR     \
--inside-color=$BLANK        \
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
--greeter-color=$TEXT        \
\
--password-mask              \
--greeter-text="Input password..." \
--greeter-pos="ix:iy+100"    \
\
--screen 2                   \
--blur 5                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %Y-%m-%d"    \
--keylayout 1                \
