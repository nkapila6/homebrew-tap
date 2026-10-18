class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_darwin_arm64.tar.gz"
      sha256 "6e7c744f3e9c9fa201e4ecd8ebdb65653b076b9a56415bc262048b03ffdcea99"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_darwin_amd64.tar.gz"
      sha256 "8282403981656eb25f98a5848e5b463a48ac02967bfd5507b8239d0ec6236aca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_linux_arm64.tar.gz"
      sha256 "636a7a6b984da24ba56bdaf9053f6a296af2c1040dab201d1f4e33c2736eecd0"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.8/beepertui_linux_amd64.tar.gz"
      sha256 "f99cc727e0e90c7848be6ce75afa5ee1ac4e172b6eabfb9f957f6ead79435e4c"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
