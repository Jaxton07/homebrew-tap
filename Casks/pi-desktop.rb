cask "pi-desktop" do
  version "0.2.1"

  on_arm do
    sha256 "275e42647abb1548fa5835ad7262423ae32a3c4ca25eaa6a8af4f8b5a3c39de0"
    url "https://github.com/Jaxton07/pi-desktop/releases/download/v#{version}/pi-desktop-mac-arm64.zip"
  end
  on_intel do
    sha256 "16d8dd1ee4f33cd1bc419498349f2e7c33ea732ea856fd66005bdef3633bbabe"
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
