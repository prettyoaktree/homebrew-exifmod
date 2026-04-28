# frozen_string_literal: true

cask "exifmod" do
  version "1.8.5"
  sha256 "71be577b636895ba38ef74961a0c75a790053f996773230ad2e601d062324ef8"
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
