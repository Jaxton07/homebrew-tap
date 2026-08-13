cask "percho" do
  version "0.3.0"

  on_arm do
    sha256 "9469db1b47e14c9f8d400575c6539506e34eeca5a19c69cda8bb8d2928ab8572"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "31d6335dcc833c74d87447f5531c604260460429f90510a6e0bbe57407f66a52"
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
