# LaiYongqiang/homebrew-tap/Casks/sleepskip.rb, substituting version and sha256.
cask "sleepskip" do
  version "1.3.1"
  sha256 "2947f6470867b8a64ee8a376825925a1ede13833bff9bdc2885b28fa6796a691"

  url "https://github.com/LaiYongqiang/SleepSkip/releases/download/v#{version}/SleepSkip-#{version}-macOS-universal.dmg"
  name "SleepSkip"
  desc "Ultra-lightweight macOS menu bar & CLI keep-awake utility for Vibe Coding and AI Agents"
  homepage "https://github.com/LaiYongqiang/SleepSkip"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "SleepSkip.app"
  binary "#{appdir}/SleepSkip.app/Contents/MacOS/SleepSkip", target: "sleepskip"

  zap trash: [
    "~/Library/Preferences/io.github.laiyongqiang.SleepSkip.plist",
  ]

  caveats <<~EOS
    SleepSkip is currently ad-hoc signed without an Apple Developer ID certificate.
    If macOS Gatekeeper blocks first launch, run:
      xattr -cr /Applications/SleepSkip.app
  EOS
end