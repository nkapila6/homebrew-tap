class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.7/beepertui_darwin_arm64.tar.gz"
      sha256 "98927e7f4261b409e4d0252e66b96c540dd92051bb5653fe81832e420376d97a"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.7/beepertui_darwin_amd64.tar.gz"
      sha256 "271a7e9135192075ccf391c3b96820b7b0f73fcbf26c97c268d2faacf2efd03b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.7/beepertui_linux_arm64.tar.gz"
      sha256 "54ed2da7472c751c1e6af1daf47c1698c64d6786a3692c8828d3b8cea45680a9"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.7/beepertui_linux_amd64.tar.gz"
      sha256 "5717eefe575dc7aae1caa414b30a3c4e0fcbe9ec73538c83dbb37300da34b7cf"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
