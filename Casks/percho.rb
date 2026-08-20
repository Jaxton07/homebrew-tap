cask "percho" do
  version "0.4.4"

  on_arm do
    sha256 "05b9c96be0fceaf1f56b3367466c64bfab0c10ded9aed74331581c8d59a5108d"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "72be64079ae35bc26319f971bf7d22deb77007ab56d5f42b7caa742e729b8fc1"
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
