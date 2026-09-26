# Changelog

All notable changes to this project are documented in this file.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and the project uses [Semantic Versioning](https://semver.org/).

## [1.0.1] - 2026-09-26

### Fixed

- Playback no longer hangs when the widget has been loaded for a while
  before the first click (for example after a reboot). The widget used to
  open the stream connection once at startup and reuse it; if that
  connection failed or went stale, clicking play did nothing until the
  plugin was reloaded. Every click on play now opens a fresh connection.

## [1.0.0] - 2026-09-23

### Added

- Initial release: play and stop Soundstorm Radio from the Omarchy bar,
  error notifications, and automatic stop when the session locks.

[1.0.1]: https://github.com/afinck/omarchy-soundstorm-plugin/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/afinck/omarchy-soundstorm-plugin/releases/tag/v1.0.0
