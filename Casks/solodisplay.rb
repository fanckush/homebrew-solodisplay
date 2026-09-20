# Homebrew Cask for SoloDisplay.
#
# This file belongs in your tap repo (fanckush/homebrew-solodisplay) at
# Casks/solodisplay.rb, not in the main app repo. It is kept here as the source of
# truth. The Release workflow bumps the copy in the tap.
cask "solodisplay" do
  version "0.6.0"
  sha256 "f16071b1bb22dd2b79f75f6b579ca2c1905444f0c3f5bcb8c46df7dd37e039a6"

  url "https://github.com/fanckush/SoloDisplay/releases/download/v#{version}/SoloDisplay-#{version}.zip"
  name "SoloDisplay"
  desc "Turns off the MacBook internal display when docked to an external monitor"
  homepage "https://github.com/fanckush/SoloDisplay"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "SoloDisplay.app"

  zap trash: [
    "~/Library/Preferences/dev.solodisplay.SoloDisplay.plist",
    "~/Library/Application Support/SoloDisplay",
  ]
end
