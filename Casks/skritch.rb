cask "skritch" do
  version "0.1.2"
  sha256 "2c3ea7992f8f46ad55459d9a69dd8783ff72552e93bbb89913bf98d870ff5274"

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
