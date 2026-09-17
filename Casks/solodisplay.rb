# Homebrew Cask for SoloDisplay.
#
# This file belongs in your tap repo (fanckush/homebrew-solodisplay) at
# Casks/solodisplay.rb, not in the main app repo. It is kept here as the source of
# truth. The Release workflow bumps the copy in the tap.
cask "solodisplay" do
  version "0.5.0"
  sha256 "41ee0bb7b51acbd0d33cb51df1620301829ac109d92b546ee69db8d493270e5f"

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
