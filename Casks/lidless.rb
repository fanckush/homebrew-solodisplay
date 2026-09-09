cask "lidless" do
  version "0.1.0"
  sha256 "8b50e426c5c7733e30a38d9489a0ddd388d7f0f9e08864852d750cf63379d5ec"

  url "https://github.com/fanckush/Lidless/releases/download/v#{version}/Lidless-#{version}.zip"
  name "Lidless"
  desc "Turns off the MacBook internal display when docked to an external monitor"
  homepage "https://github.com/fanckush/Lidless"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Lidless.app"

  zap trash: [
    "~/Library/Preferences/dev.lidless.Lidless.plist",
    "~/Library/Application Support/Lidless",
  ]
end
