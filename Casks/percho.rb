cask "percho" do
  version "0.4.5"

  on_arm do
    sha256 "d34d554fcdf07797428ba8fd4c929eb3f485782bfc7e32929e191bc6c719355e"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "79a2dfe8de260eed2c720424f31197f0e1ebfd3dc5ecfe9f77199ccded5f3d6c"
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
