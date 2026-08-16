cask "percho" do
  version "0.3.6"

  on_arm do
    sha256 "685a4ffd6b99eebde6ad9d9ab6208705b95008c09aadb476079cc257d95ce17f"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "73e4ef2d80c0dc75699271a6008b6a3d8acf300f3619e5d9d093936285543226"
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
