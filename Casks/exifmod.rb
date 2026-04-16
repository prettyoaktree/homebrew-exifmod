# frozen_string_literal: true

cask "exifmod" do
  version "1.4.0"
  sha256 "2c4ad37008c6eb4ee8486e270ad51b959b79a7bc2960c44858980e20d58246d2"
  url "https://github.com/prettyoaktree/exifmod-electron/releases/download/v#{version}/EXIFmod-#{version}.dmg"
  name "EXIFmod"
  desc "EXIF metadata editor with presets"
  homepage "https://github.com/prettyoaktree/exifmod-electron"

  depends_on formula: "exiftool"

  app "EXIFmod.app"

  caveats <<~EOS
    EXIFmod requires ExifTool (the exiftool CLI) for metadata read/write; it is not bundled.
    Installing this cask also installs Homebrew’s exiftool formula. If exiftool is missing from your PATH, reinstall or check `which exiftool`.
  EOS
end
