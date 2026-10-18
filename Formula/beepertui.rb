class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_darwin_arm64.tar.gz"
      sha256 "746e51d8cf3188986e9043d9ea40f414f422b6ee6690bf68891b97a25f9fb95a"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_darwin_amd64.tar.gz"
      sha256 "3df82f60d111bee8966cc43d6c1895f7dbb0145f6fc7f58b6836676e2091b884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_linux_arm64.tar.gz"
      sha256 "b33cc69f07b675061e575a974e9a7e28f5d88dbc152d8c8daca48b144cf23893"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_linux_amd64.tar.gz"
      sha256 "79bc7c2ee7de44d49a673d49a7d5214b2eac3122073c4150bafff292eeea9c00"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
