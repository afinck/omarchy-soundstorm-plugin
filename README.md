# Soundstorm Radio

An [Omarchy](https://omarchy.org/) bar widget that plays the Soundstorm
Radio stream directly from the top bar — no browser tab, no separate
player.

## Features

- One click to play/stop the stream from the bar
- Toggles between play and stop icons, both in the bar's normal
  monochrome style
- Shows a desktop notification if the stream fails
- Stops playback automatically when the session locks

## Install

```bash
omarchy plugin add https://github.com/afinck/omarchy-soundstorm-plugin.git --enable
```

Or clone manually into `~/.config/omarchy/plugins/afinck.soundstorm-radio/`
and enable it with `omarchy plugin enable afinck.soundstorm-radio`.

## Troubleshooting

If clicking the icon doesn't start playback:

1. Update the installed plugin and reload it:

   ```bash
   git -C ~/.config/omarchy/plugins/afinck.soundstorm-radio pull
   omarchy plugin disable afinck.soundstorm-radio
   omarchy plugin enable afinck.soundstorm-radio
   ```

2. Check that the stream is reachable:
   `curl -sI https://stream.soundstorm-radio.com:8000 | head -n 1`
   should print `HTTP/1.0 200 OK`.
3. Check that audio works in general, e.g. with `wpctl status`.

## License

MIT — see [LICENSE](LICENSE).
