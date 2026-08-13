cask "pi-desktop" do
  version "0.2.4"

  on_arm do
    sha256 "ed83c74f094b2a3d1baa6209375459b9ad29003e18064bdb1ba29f09f00873b9"
    url "https://github.com/Jaxton07/pi-desktop/releases/download/v#{version}/pi-desktop-mac-arm64.zip"
  end
  on_intel do
    sha256 "e05b002abc950f5e4758eeebd2343aa454bab189b0a2bb01da9562ce9ac4ff52"
    url "https://github.com/Jaxton07/pi-desktop/releases/download/v#{version}/pi-desktop-mac-x64.zip"
  end

  name "Pi Desktop"
  desc "Desktop GUI for the Pi coding agent"
  homepage "https://github.com/Jaxton07/pi-desktop"

  app "Pi Desktop.app"

  zap trash: [
    "~/Library/Application Support/@pi-desktop",
    "~/Library/Caches/io.github.jaxton07.pi-desktop",
    "~/Library/Caches/@pi-desktopdesktop-updater",
  ]
end
