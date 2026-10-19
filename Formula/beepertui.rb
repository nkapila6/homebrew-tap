class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.12/beepertui_darwin_arm64.tar.gz"
      sha256 "2ec7d44d1daef1e47feacb73d159d0a31b680112151142ca14bd47b6c7166dfb"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.12/beepertui_darwin_amd64.tar.gz"
      sha256 "d1db772950b5e83c9dec09a8a32189ae6f0ca805e1ed4025660a4da66957ab03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.12/beepertui_linux_arm64.tar.gz"
      sha256 "4caa23f378bd27c1f2716ae5ef248f4b3686dfd5878ec0273710576fbb8f263c"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.12/beepertui_linux_amd64.tar.gz"
      sha256 "f7039ba674ccc2527072f9e21bf9301559b481aa7c2c22785cd4f586e4145887"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
