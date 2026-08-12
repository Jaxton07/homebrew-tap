cask "pi-desktop" do
  version "0.2.3"

  on_arm do
    sha256 "eb02916bc1106e51f13b7feb92704b840495d5e4ef0b399d319e73ec79c177cb"
    url "https://github.com/Jaxton07/pi-desktop/releases/download/v#{version}/pi-desktop-mac-arm64.zip"
  end
  on_intel do
    sha256 "4052098ef8ee7ec556711d8705569cb771100a9839d58d59d1001e8406e306c0"
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
