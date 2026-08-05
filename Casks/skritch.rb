cask "skritch" do
  version "0.2.0"
  sha256 "153c9a66b720fc492e1d173d16114a88242c2b59d7175120d1ede9cc6e6c28da"

  url "https://github.com/archcorsair/skritch/releases/download/v#{version}/Skritch-#{version}.zip"
  name "Skritch"
  desc "Fast, local-only screenshot annotation in the spirit of Skitch"
  homepage "https://github.com/archcorsair/skritch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Skritch.app"

  zap trash: [
    "~/Library/Preferences/com.archcorsair.skritch.plist",
    "~/Library/Caches/com.archcorsair.skritch",
    "~/Library/Application Support/Skritch",
  ]
end
