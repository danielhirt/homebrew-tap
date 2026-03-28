class Kedge < Formula
  desc "Documentation drift detection and remediation CLI"
  homepage "https://github.com/danielhirt/kedge"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v#{version}/kedge-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v#{version}/kedge-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v#{version}/kedge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v#{version}/kedge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "kedge"
  end

  test do
    assert_match "kedge", shell_output("#{bin}/kedge --help")
  end
end
