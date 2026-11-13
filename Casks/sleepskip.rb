# LaiYongqiang/homebrew-tap/Casks/sleepskip.rb, substituting version and sha256.
cask "sleepskip" do
  version "1.4.0"
  sha256 "7eaa20ba803438e5d4d47f1786c7a9c62c630a261e1697ba0452e69efa798245"

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