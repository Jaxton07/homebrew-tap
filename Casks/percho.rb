cask "percho" do
  version "0.4.0"

  on_arm do
    sha256 "04fbf9386cb8dfcda96a3d4cd68238c993130c1650b97c2f88b6c599e4dc9850"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "98efa942044ffdaef92066256b6d6bc9176e688a2744035c2ee9af5d2dde3eb7"
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
