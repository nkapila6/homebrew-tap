class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_darwin_arm64.tar.gz"
      sha256 "f84670527419fec153626352a04f8e3098ff28d1cba83be6e7e90a655852a2f4"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_darwin_amd64.tar.gz"
      sha256 "ae3f5220119923f62758a99627fb161534ac47a66d6d1399a00df92e699bc2eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_linux_arm64.tar.gz"
      sha256 "79487b56f2622ad931c7f3a89ca47b1003c2576f213d93bbcdda12e91aa712e3"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_linux_amd64.tar.gz"
      sha256 "3a5451710df49a935106a345918992711634d9a9d6b6fce983a6ce31394ea6cc"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
