class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.6/beepertui_darwin_arm64.tar.gz"
      sha256 "a92f3654d762608f7096131ab97d9925349d31c12d8fc55983e7cd4019ea311a"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.6/beepertui_darwin_amd64.tar.gz"
      sha256 "ad2ba3f86d68d054a8231bdd9fd95ea5c99dc911879d21066015c6470fd8a123"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.6/beepertui_linux_arm64.tar.gz"
      sha256 "9326d4f8b1fd9b4738d15511717704e7e406de4a576dfb3dc0a896497ec22992"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.6/beepertui_linux_amd64.tar.gz"
      sha256 "aa2411a225e27e902533a9e3cdbebeeef0794ab94c90ac4c425c383bcb7afed3"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
