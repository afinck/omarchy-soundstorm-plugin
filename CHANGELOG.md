# Changelog

All notable changes to this project are documented in this file.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and the project uses [Semantic Versioning](https://semver.org/).

## [1.0.1] - 2026-09-26

### Fixed

- Playback could stay stuck (e.g. after an unplanned reboot) until the
  plugin was reloaded. Every click on play now opens a fresh stream
  connection.

## [1.0.0] - 2026-09-23

### Added

- Initial release: play and stop Soundstorm Radio from the Omarchy bar,
  error notifications, and automatic stop when the session locks.

[1.0.1]: https://github.com/afinck/omarchy-soundstorm-plugin/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/afinck/omarchy-soundstorm-plugin/releases/tag/v1.0.0
