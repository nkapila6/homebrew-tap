class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.4/beepertui_darwin_arm64.tar.gz"
      sha256 "efa4db8c441c7beda4667fa5a9d066211266d472ba2c8ed669e113586e7862cd"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.4/beepertui_darwin_amd64.tar.gz"
      sha256 "6e15a23bca86c534433522601845dda11c995820fd31a10d3e16254c0b6a9cd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.4/beepertui_linux_arm64.tar.gz"
      sha256 "474e87d2e8eac25306fb0691da054da1c832e516a6003e9f1d4df579e176dfad"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.4/beepertui_linux_amd64.tar.gz"
      sha256 "cf6ebd761d9975f2a00133762ed91052c00930202ffe0bb4312bfd9efbc0e003"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
