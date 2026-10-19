class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.10/beepertui_darwin_arm64.tar.gz"
      sha256 "491162f1cac67e8c72ef608e8cc1f1cbcbe1d3ebded8a63a12a1f0151e883c60"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.10/beepertui_darwin_amd64.tar.gz"
      sha256 "f68b4380a7a168d69b6c537014fdd90b4a9b683d08f111a870deeb97ef451725"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.10/beepertui_linux_arm64.tar.gz"
      sha256 "3c2ace89c8ed38ff3f9abcfcdf76af57428b0c0094fd6d3f01c4308e1dec3642"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.10/beepertui_linux_amd64.tar.gz"
      sha256 "2a3423d9c1fe83c99fd15691a05519d10db38ec137e097146ac9aa85d5aa895f"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
