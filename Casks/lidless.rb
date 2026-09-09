cask "lidless" do
  version "0.1.0"
  sha256 "a08a6c7ccaca4b5fc0dca47a5930c440255b3147b080bdf64e998f20a1f72b14"

  url "https://github.com/fanckush/Lidless/releases/download/v#{version}/Lidless-#{version}.zip"
  name "Lidless"
  desc "Turns off the MacBook internal display when docked to an external monitor"
  homepage "https://github.com/fanckush/Lidless"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Lidless.app"

  zap trash: [
    "~/Library/Preferences/dev.lidless.Lidless.plist",
    "~/Library/Application Support/Lidless",
  ]
end
