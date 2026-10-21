class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.14/beepertui_darwin_arm64.tar.gz"
      sha256 "212d7da94417810edd4c6d8f92f2ef08198a7cfd96c5b19cf2a781701405fc89"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.14/beepertui_darwin_amd64.tar.gz"
      sha256 "6b8d2628f73b57589e3d45f86fb8e9c1f2734fdf84d217297d88c3e08b3d72d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.14/beepertui_linux_arm64.tar.gz"
      sha256 "3aabfe0bc2f33e828777863c884cdf7c6d8a173c3e37a4104516d732f5c0cd72"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.14/beepertui_linux_amd64.tar.gz"
      sha256 "282defdc4362962cece7a9980def19f5339f98c1d269683262b28302e73698c1"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
