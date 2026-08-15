cask "percho" do
  version "0.3.5"

  on_arm do
    sha256 "ef555709928274f68a908da0525e43debed13b89f51d71856604f1d4f566666c"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "905b8520cebcb2c3881f93649afaa48c7d822ec4521bcd6f02445a38c8a17348"
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
