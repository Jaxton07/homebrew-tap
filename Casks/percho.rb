cask "percho" do
  version "0.4.6"

  on_arm do
    sha256 "fdf94efcb34af70e41bbb676e77afeb7e17ec91cc571b49e65698e93287d5856"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "3f71479ca5242e6c991ebd8c75e15f16958cc326c9f848f64e2cc075bda4d844"
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
