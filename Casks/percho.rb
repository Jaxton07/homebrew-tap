cask "percho" do
  version "0.3.2"

  on_arm do
    sha256 "ff9f02ecc6ace39a58d2984da7390c91b7bb543f431549b21fb1f87bf20dd466"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "e9234cabb1bdeb783bb54103677c38ef2862ef9b5e42344aceb230baaffb36eb"
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
