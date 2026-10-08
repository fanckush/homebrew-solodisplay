# Homebrew Cask for SoloDisplay.
#
# This file belongs in your tap repo (fanckush/homebrew-solodisplay) at
# Casks/solodisplay.rb, not in the main app repo. It is kept here as the source of
# truth. The Release workflow bumps the copy in the tap.
cask "solodisplay" do
  version "0.10.0"
  sha256 "ee7beb0a04e0829c0b661b1bb70455137b7238a9759a1c2f8a72594a2157a3c9"

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
  depends_on macos: :tahoe

  app "SoloDisplay.app"

  zap trash: [
    "~/Library/Preferences/dev.solodisplay.SoloDisplay.plist",
    "~/Library/Application Support/SoloDisplay",
  ]
end
