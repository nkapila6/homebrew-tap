class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.13/beepertui_darwin_arm64.tar.gz"
      sha256 "29e7b38bf6d38755b81252ab5605ee94030564daccbf9396a87fb68d663bb1ab"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.13/beepertui_darwin_amd64.tar.gz"
      sha256 "03a7fe52e972622ce437ce1ecb148c66217b0b07ad3ae794478bbd620456a1bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.13/beepertui_linux_arm64.tar.gz"
      sha256 "98be326ca1fa674cae8720aa912ad33a31ba34a2a989e70aa875546b79f7b61f"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.13/beepertui_linux_amd64.tar.gz"
      sha256 "95c740dceeafdaa907a74929eb212746f539e3d0aca7804d0fd403e069db0e4f"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
