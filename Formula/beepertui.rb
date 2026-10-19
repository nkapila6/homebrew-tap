class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.9/beepertui_darwin_arm64.tar.gz"
      sha256 "88ba4c6e549cb5f526c40112f64646676ecb0a224821652bcfc3605e42196d1a"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.9/beepertui_darwin_amd64.tar.gz"
      sha256 "8be1f21a6df2c5527cdd6ab2105d268181d4a082a530e49f6824fea63fdd84c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.9/beepertui_linux_arm64.tar.gz"
      sha256 "5b8de128a2a9ee253d041cbf219a8c4473d85500d9d9cdb752a1cb9e314c394a"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.9/beepertui_linux_amd64.tar.gz"
      sha256 "dc141338f4cf841b9e4e16c9b4347ab03274abfd00891a72f1d720bed9cbba9f"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
