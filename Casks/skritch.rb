cask "skritch" do
  version "0.3.0"
  sha256 "172c6a878b9f1db34b26d9291e1a67f8a2292e4c00abe403753ba599489a49f3"

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
