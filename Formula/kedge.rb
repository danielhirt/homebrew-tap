class Kedge < Formula
  desc "Documentation drift detection and remediation CLI"
  homepage "https://github.com/danielhirt/kedge"
  license "Apache-2.0"
  version "0.3.2"

  on_macos do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.2/kedge-x86_64-apple-darwin.tar.gz"
      sha256 "379940c0ad693ab0564a78fafa73542a1b90b16fd21e750468e97c62ba9c2d1e"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.2/kedge-aarch64-apple-darwin.tar.gz"
      sha256 "47749b4bee9efa7adeb6957f819267965872e7b8bd659e774606f9393d350487"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.2/kedge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "461ac226aed68ae99367e51950fdccf453a1a9aa1ba850b75b8673d5bebbef38"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.2/kedge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e4da18f761cffae8b0304c680bd68bcc0c8a7d6243111ffa7100daf515606c6"
    end
  end

  def install
    bin.install "kedge"
  end

  test do
    assert_match "kedge", shell_output("#{bin}/kedge --help")
  end
end
