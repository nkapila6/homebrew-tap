cask "vimitall" do
  version "0.1.1"
  sha256 "46f7c173d1ad4aa555caf452bf3838bdc602ee6aeed439b76841858921cc4ee9"

  url "https://github.com/nkapila6/vimitall/releases/download/v#{version}/vimitall-#{version}.dmg"
  name "VimItAll"
  desc "System-wide Vim mode for macOS via Accessibility API and keyboard fallback"
  homepage "https://github.com/nkapila6/vimitall"

  app "vimitall.app"

  zap trash: [
    "~/Library/Preferences/app.vimitall.vimitall.plist",
  ]
end