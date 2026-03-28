class Kedge < Formula
  desc "Documentation drift detection and remediation CLI"
  homepage "https://github.com/danielhirt/kedge"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.1.0/kedge-x86_64-apple-darwin.tar.gz"
      sha256 "e651f9db5e42a349d4729aa70880ccf3b335756748a325afa8ac7474aa318182"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.1.0/kedge-aarch64-apple-darwin.tar.gz"
      sha256 "d875fc2da3cd84426952011918c6dfbeab4966a73bd7732f1f017d5c1bb86604"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.1.0/kedge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0437a0601f4ccce2bcc15d06f879f5d9e864d7417ad778522aff1a6f8a161029"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.1.0/kedge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df5bd2bc206497e939e7d26da809d3ac29a0dad693794b463323c8256cc08ff3"
    end
  end

  def install
    bin.install "kedge"
  end

  test do
    assert_match "kedge", shell_output("#{bin}/kedge --help")
  end
end
