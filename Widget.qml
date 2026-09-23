import QtQuick
import QtMultimedia
import Quickshell.Io
import qs.Ui

BarWidget {
  id: root
  moduleName: "heavycross.soundstorm-radio"

  readonly property bool playing: player.playbackState === MediaPlayer.PlayingState

  implicitWidth: button.implicitWidth
  implicitHeight: button.implicitHeight

  function toggle() {
    if (root.playing) player.stop()
    else player.play()
  }

  MediaPlayer {
    id: player
    source: "https://stream.soundstorm-radio.com:8000"
    audioOutput: AudioOutput {}
    onErrorOccurred: function(error, errorString) {
      player.stop()
      notifyError.command = ["notify-send", "Soundstorm Radio", errorString]
      notifyError.running = true
    }
  }

  Process {
    id: notifyError
    command: ["notify-send", "Soundstorm Radio", ""]
  }

  // Best-effort parity with the GNOME extension, which stops playback when
  // the session locks. There's no first-party lock-state API exposed to
  // third-party widgets, so poll for the lock-screen process instead.
  Timer {
    interval: 3000
    running: root.playing
    repeat: true
    onTriggered: lockCheck.running = true
  }

  Process {
    id: lockCheck
    command: ["pgrep", "-x", "hyprlock"]
    onExited: function(exitCode) {
      if (exitCode === 0 && root.playing) player.stop()
    }
  }

  BarIconButton {
    id: button
    anchors.fill: parent
    bar: root.bar
    text: root.playing ? "󰐊" : "󰎇"
    active: root.playing
    tooltipText: root.playing ? "Playing Soundstorm Radio — click to stop" : "Click to play Soundstorm Radio"
    onPressed: root.toggle()
  }
}
