class Kedge < Formula
  desc "Documentation drift detection and remediation CLI"
  homepage "https://github.com/danielhirt/kedge"
  license "Apache-2.0"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.0/kedge-x86_64-apple-darwin.tar.gz"
      sha256 "6d5a1797b0db6879f55907493bf5aeea4e2e3e082ad7b6d697a4378733bc2242"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.0/kedge-aarch64-apple-darwin.tar.gz"
      sha256 "3a7c5fb69b420d5df572f0d6bad3a7fd715629a23b0f2c0e874c20d23079f8a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.0/kedge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3559c72767e2e06bb7e95ecda199be04447ab30482a5d195a58c28178d18673e"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.0/kedge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e14480fdf560465538ca0fa0637e6db0171e5f7adb5566103276bd5216af70c"
    end
  end

  def install
    bin.install "kedge"
  end

  test do
    assert_match "kedge", shell_output("#{bin}/kedge --help")
  end
end
