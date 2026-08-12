cask "pi-desktop" do
  version "0.2.2"

  on_arm do
    sha256 "5d1186c40e42f6e53f9faec674adca84be020e54853e2da084e40dae743f0cc2"
    url "https://github.com/Jaxton07/pi-desktop/releases/download/v#{version}/pi-desktop-mac-arm64.zip"
  end
  on_intel do
    sha256 "2044d77dc9896045524f9895f153bb06ff90ce2d7f7367c088d6a8ed2eb2c7ae"
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
