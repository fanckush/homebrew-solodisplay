# Homebrew Cask for SoloDisplay.
#
# This file belongs in your tap repo (fanckush/homebrew-solodisplay) at
# Casks/solodisplay.rb, not in the main app repo. It is kept here as the source of
# truth. The Release workflow bumps the copy in the tap.
cask "solodisplay" do
  version "0.10.5"
  sha256 "ad5220855f9a1bcf5f5fba4f42a551597fe989c9aaf651d6d415bf05f9214ea4"

  url "https://github.com/fanckush/SoloDisplay/releases/download/v#{version}/SoloDisplay-#{version}.zip"
  name "SoloDisplay"
  desc "Turns off the MacBook internal display when docked to an external monitor"
  homepage "https://github.com/fanckush/SoloDisplay"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself through Sparkle, so brew leaves upgrades to it.
  auto_updates true
  depends_on macos: :sequoia

  app "SoloDisplay.app"

  zap trash: [
    "~/Library/Application Support/SoloDisplay",
    "~/Library/Preferences/dev.solodisplay.SoloDisplay.plist",
  ]
end
