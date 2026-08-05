cask "skritch" do
  version "0.1.0"
  sha256 "4530987bc511ccee0bb591abc934a52ee5c9469d3812154df4f5431d0329f91d"

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
