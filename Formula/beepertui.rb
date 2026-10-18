class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_darwin_arm64.tar.gz"
      sha256 "3d47a65eb659e4f0b0c6a927f6015176c72d34507366dbaeb88cc4bee6535ae6"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_darwin_amd64.tar.gz"
      sha256 "b4ee98fff7c47a7c83a92aa0f6728644e1c8ad0161270a4a2189fbec6a33a56d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_linux_arm64.tar.gz"
      sha256 "4b2d8da9aa396f81f4d5b73c964bef4fc1e34df735d1c6070ee138151e10ae04"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v0.0.5/beepertui_linux_amd64.tar.gz"
      sha256 "22ffee37ed4bddb09f26118708b18b32fb7bdd84e59961ebe26e8120133d5d72"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
