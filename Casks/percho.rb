cask "percho" do
  version "0.4.1"

  on_arm do
    sha256 "9377f0ef441d20247e9eb483bde2044d28f4809e6a2ef2824fb6e137b3f22c02"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "063d9d0a99cd8259a4fce5a7c4099266b7d0c6d3d13aa545baf2fdcaee98ddc2"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-x64.zip"
  end

  name "Percho"
  desc "Desktop GUI for the Pi coding agent"
  homepage "https://github.com/Jaxton07/percho"

  app "Percho.app"

  zap trash: [
    "~/Library/Application Support/@percho",
    "~/Library/Caches/io.github.jaxton07.percho",
    "~/Library/Caches/@perchodesktop-updater",
  ]
end
