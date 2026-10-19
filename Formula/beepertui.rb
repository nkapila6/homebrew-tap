class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.11/beepertui_darwin_arm64.tar.gz"
      sha256 "5292ba28aea6167ea07d260bc314f829cdd53e85920c65d88a3e3485b07be0cb"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.11/beepertui_darwin_amd64.tar.gz"
      sha256 "37de78f9c3b8340c0721392a3f499a7f6149f8282f230af4e9c4c86f228935bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.11/beepertui_linux_arm64.tar.gz"
      sha256 "ec0a174efcac7a53ff9de250a801e165bec1199e503534805faa0eda248b60d3"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.11/beepertui_linux_amd64.tar.gz"
      sha256 "9a7c4088c77ebf86e9292098205e665506dd77b4e025e1c38cd6696ebdb3b043"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
