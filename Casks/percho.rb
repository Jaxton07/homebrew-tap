cask "percho" do
  version "0.3.1"

  on_arm do
    sha256 "429ecbbfc2b56ad34f170bb1f4741ed58046d58f3826de2b7da7cf6bdd48b339"
    url "https://github.com/Jaxton07/percho/releases/download/v#{version}/percho-mac-arm64.zip"
  end
  on_intel do
    sha256 "3b6c26a499d8507307cef9efec243d8ea86594aa2bfbccb11a7ca786f5eacbe7"
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
