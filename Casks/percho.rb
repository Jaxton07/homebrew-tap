cask "percho" do
  version "0.4.2"

  on_arm do
    sha256 "36d6446b4bf6c99f019136cf571563f7e1219a277db83f75d67cbfd880c61e49"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "98080495d74ca681ea0bb96e16c1859cee38aefce52ac1569db06dacafbf9385"
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
