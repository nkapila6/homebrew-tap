class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_darwin_arm64.tar.gz"
      sha256 "501c55056f6a211872024458e6afcb843c2819b08f315be394e2c5be33f4454b"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_darwin_amd64.tar.gz"
      sha256 "96756dc885014a2286a780cff46df6f72c6e2cf0c6dabbeeeddb45a15c68f666"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_linux_arm64.tar.gz"
      sha256 "fcaceb7270cdae9755864613ac206e4646b0e2d5d41dd2a79c1ed4aaf162cb0e"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_linux_amd64.tar.gz"
      sha256 "5867ff858f71db9778d087c43b5f5678076ee4bdef48a48fac67de1a13b78395"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
