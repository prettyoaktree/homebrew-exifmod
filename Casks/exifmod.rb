# frozen_string_literal: true

cask "exifmod" do
  version "1.0.0"
  sha256 "3dd89c691289c3ffcacda3543b11163c76d4c132b1794e9f6e927dad5f4aec36"

  url "https://github.com/prettyoaktree/homebrew-exifmod/releases/download/v#{version}/EXIFmod-#{version}.dmg"
  name "EXIFmod"
  desc "EXIF metadata editor with presets"
  homepage "https://github.com/prettyoaktree/homebrew-exifmod"

  depends_on formula: "exiftool"

  app "EXIFmod.app"

  caveats <<~EOS
    EXIFmod requires ExifTool (the exiftool CLI) for metadata read/write; it is not bundled.
    Installing this cask also installs Homebrew’s exiftool formula. If exiftool is missing from your PATH, reinstall or check `which exiftool`.
  EOS
end
