# Wezterm

## Installation

Download wezterm from https://wezfurlong.org/wezterm/installation

## Enable undercurl

Run this script to create a terminfo file.

```sh
tempfile=$(mktemp) \
  && curl -o $tempfile https://raw.githubusercontent.com/wez/wezterm/master/termwiz/data/wezterm.terminfo \
  && tic -x -o ~/.terminfo $tempfile \
  && rm $tempfile
```

Then, run nvim with: `env TERM=wezterm nvim`

Verify by running this: `printf "\x1b[58:2::255:0:0m\x1b[4:1msingle\x1b[4:2mdouble\x1b[4:3mcurly\x1b[4:4mdotted\x1b[4:5mdashed\x1b[0m\n"`
