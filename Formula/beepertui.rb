class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_darwin_arm64.tar.gz"
      sha256 "5a361fc53ef25b45000ebe81694ab6a031461a722a177da718ea054ed64865a9"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_darwin_amd64.tar.gz"
      sha256 "f12831ca5c67ab809b81c710bec16792a6ca9e3e1a6b79498e087be2989f5688"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_linux_arm64.tar.gz"
      sha256 "f7b7ee0a57928ce8124e19a4423d0a234b4a481935647800df559856184e6eb8"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_linux_amd64.tar.gz"
      sha256 "e9a6dbf84086a26caf3738ea49624249cd2420616e1ffba02be7d90d18221568"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
