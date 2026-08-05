cask "skritch" do
  version "0.1.0"
  sha256 "7c2745264752e745920c7044cfbe50db987daa18af8b2c68531f0d277d303471"

  url "https://github.com/archcorsair/skritch/releases/download/v#{version}/Skritch-#{version}.zip"
  name "Skritch"
  desc "Fast, local-only screenshot annotation in the spirit of Skitch"
  homepage "https://github.com/archcorsair/skritch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Skritch.app"

  zap trash: [
    "~/Library/Preferences/com.archcorsair.skritch.plist",
    "~/Library/Caches/com.archcorsair.skritch",
    "~/Library/Application Support/Skritch",
  ]
end
