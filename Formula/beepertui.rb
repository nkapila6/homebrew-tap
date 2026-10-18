class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_darwin_arm64.tar.gz"
      sha256 "1b361a7ed58011995ac173e24745539f0044c5a500d2cfdc58fdeb0a320793fe"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_darwin_amd64.tar.gz"
      sha256 "c2db6f789f458761b7092d1001b80497748e2eecdacad3057f01b4162d0c33c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_linux_arm64.tar.gz"
      sha256 "11d4f797d49e1fdf4807230fbacee4d2370d5c9516e27009a4b2a62c518a8cca"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.3/beepertui_linux_amd64.tar.gz"
      sha256 "b344e06480ad4aa8ad28f6ccaaac8c69197f6dac4920e32a320e6f10dcd6aecb"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
