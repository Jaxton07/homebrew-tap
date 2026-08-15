cask "percho" do
  version "0.3.4"

  on_arm do
    sha256 "de0d02baf28448f499dbeea20761ac269360d2f939ba59f17fe1896215bac476"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "57b7905d8c3dcac4ba5d640757546dd61f95eac409b58e00ab3dc8ef337524ac"
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
