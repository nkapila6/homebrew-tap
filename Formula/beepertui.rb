class Beepertui < Formula
  desc "Terminal client for Beeper Desktop with vim keys and flash.nvim-style labels"
  homepage "https://github.com/nkapila6/beepertui"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v#{version}/beepertui_darwin_arm64.tar.gz"
      sha256 "7f7c761ad57e9d25df530b6e64761a6e801fec703455c7421f4b95582d2b30c3"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v#{version}/beepertui_darwin_amd64.tar.gz"
      sha256 "8b047c5bd5c3c101f737b021542e1cb60a0160b5c11b2c3910fcabd4ad80f83a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nkapila6/beepertui/releases/download/v#{version}/beepertui_linux_arm64.tar.gz"
      sha256 "c51d5c774602868f894f597e11177aa1b92bc7445ca855a8a4ed1cc37d22383a"
    end
    on_intel do
      url "https://github.com/nkapila6/beepertui/releases/download/v#{version}/beepertui_linux_amd64.tar.gz"
      sha256 "438c74cf838d7740173ddfc7ec0b1d87620afc731582b6ab56094ba427f513c6"
    end
  end

  def install
    bin.install "beepertui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beepertui --version")
  end
end
