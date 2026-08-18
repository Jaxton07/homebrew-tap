cask "percho" do
  version "0.4.3"

  on_arm do
    sha256 "85ce5320c971b7c4ca0d4ff9f52fecad8067a9851f846b428a9b90c4a165b53b"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "78a1130e654e457076fdd64b911752d7f750f3851384967d7ab79101b93ae21f"
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
