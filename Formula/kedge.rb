class Kedge < Formula
  desc "Documentation drift detection and remediation CLI"
  homepage "https://github.com/danielhirt/kedge"
  license "Apache-2.0"
  version "0.3.1"

  on_macos do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.1/kedge-x86_64-apple-darwin.tar.gz"
      sha256 "8c203b780d3f05763269e67af7c973f7a3010e5725f08db9e8eeadb9affeb2b6"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.1/kedge-aarch64-apple-darwin.tar.gz"
      sha256 "f58124d941d2d52a2e0b3be31caae191137b573a491760168682fd3e6b2fdab6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.1/kedge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e6c3d3f10df2fe1ecde4bf8174fe89f41df7052c3f7a141eb1fe9c38ee1ae66"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.3.1/kedge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b0436de119245630f3b0e77fdf437f78e971bfcf6a263f5a9a90a79e9b0bda5"
    end
  end

  def install
    bin.install "kedge"
  end

  test do
    assert_match "kedge", shell_output("#{bin}/kedge --help")
  end
end
