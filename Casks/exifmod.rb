# frozen_string_literal: true

cask "exifmod" do
  version "1.8.9"
  sha256 "7ad3b23a77b72ea0a91e5577ed13a9978b37711e458aaa04a633b9ce69018874"
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
