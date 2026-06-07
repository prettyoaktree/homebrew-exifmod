# frozen_string_literal: true

cask "exifmod" do
  version "1.9.1"
  sha256 "efcb2b1a3c452f956011800770c64ea872927651fc999c52fdd52c06efc7717c"
  auto_updates true
  url "https://github.com/prettyoaktree/exifmod/releases/download/v#{version}/EXIFmod-#{version}.dmg"
  name "EXIFmod"
  desc "EXIF metadata editor with presets"
  homepage "https://github.com/prettyoaktree/exifmod"

  depends_on formula: "exiftool"

  app "EXIFmod.app"

  caveats <<~EOS
    EXIFmod requires ExifTool (the exiftool CLI) for metadata read/write; it is not bundled.
    Installing this cask also installs Homebrew’s exiftool formula. If exiftool is missing from your PATH, reinstall or check `which exiftool`.
  EOS
end
