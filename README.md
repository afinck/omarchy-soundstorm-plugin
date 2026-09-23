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

## License

MIT — see [LICENSE](LICENSE).
