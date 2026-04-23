# frozen_string_literal: true

cask "exifmod" do
  version "1.7.3"
  sha256 "143bc2554732d88cae2cb7e6d35097e4da5a5ad8b94de18c626942cbe0d6bfab"
  auto_updates true
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
