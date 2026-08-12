cask "pi-desktop" do
  version "0.2.0"

  on_arm do
    sha256 "dd1fe6d97c27faeeb4a32a70e7895404eed69c323148b447593a9b793180558c"
    url "https://github.com/Jaxton07/pi-desktop/releases/download/v#{version}/pi-desktop-mac-arm64.zip"
  end
  on_intel do
    sha256 "2322cbcee292597a26a8741dde22654b94b749ec6f4ed52884c7b82ce0cdadad"
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
