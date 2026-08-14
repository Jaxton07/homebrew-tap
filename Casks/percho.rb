cask "percho" do
  version "0.3.3"

  on_arm do
    sha256 "9a7c0f71686784c95302189d17553018f3804f6f1f98837ae99ec0322b3b1eba"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "b41be5b6e2e57ec57e665e85c648598536ace568675b7dfbbb4e056cb99dd585"
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
