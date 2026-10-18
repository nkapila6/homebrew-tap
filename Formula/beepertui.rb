class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.2/beepertui_darwin_arm64.tar.gz"
      sha256 "3694bf2fe37cf8e2554166732236283dc5b5d298ccdc52ebe0ef976fc8ff31c8"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.2/beepertui_darwin_amd64.tar.gz"
      sha256 "05dc304f7a1fcbd1e5ebf4449bde467b6d4f782235608afd4ba599fbceaad70a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.2/beepertui_linux_arm64.tar.gz"
      sha256 "6a920575f5ed242bf38e97e38994139abcf2a0b7ec357a4a4be6bab35e065c43"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.2/beepertui_linux_amd64.tar.gz"
      sha256 "e38ed993a33ec508b2f4a3af22c935b219e5220d19ba9497e4228f3c6f776033"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
