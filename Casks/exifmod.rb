# frozen_string_literal: true

cask "exifmod" do
  version "1.0.1"
  sha256 "963ad753dae57db3d946f4ca71090575c64e5f22334abfdcd498a7e1f8c3f088"

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
