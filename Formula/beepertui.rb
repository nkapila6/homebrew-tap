class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_darwin_arm64.tar.gz"
      sha256 "e4dabdd4631278b105f6a91baad09c4d1befe0769bf50fad4c2dea6c532ea6b6"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_darwin_amd64.tar.gz"
      sha256 "d10ac81c28b14749c8988bcacb95a1aa747d3cd186f307cbc3d583987c6b4c88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_linux_arm64.tar.gz"
      sha256 "6e696297fdc657a1ca550134865f8c0b3ea743d9ee67a66d2ad3ee8d2d1ad631"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_linux_amd64.tar.gz"
      sha256 "215f597bcc88c2af5a86186d848ec3083e3e267aab61a99c6a4af83f8bb9b4cf"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
