class Kedge < Formula
  desc "Documentation drift detection and remediation CLI"
  homepage "https://github.com/danielhirt/kedge"
  license "Apache-2.0"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.2.0/kedge-x86_64-apple-darwin.tar.gz"
      sha256 "172e37d373d8f2bfac057868e7db493dc425f2618e6d44943518211194a66ae4"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.2.0/kedge-aarch64-apple-darwin.tar.gz"
      sha256 "5d358a319340032ab1a75a06539c067fb5ce2e8c2ca7a444a716a11285842769"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/danielhirt/kedge/releases/download/v0.2.0/kedge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67222509ca86e13b54eb43d42e755b71e8d61d3da01b354ae4e80269f48fc976"
    end
    on_arm do
      url "https://github.com/danielhirt/kedge/releases/download/v0.2.0/kedge-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "987ead69e0d84411ede58cfc005e9562be90191b3918d5473787a293554ab8be"
    end
  end

  def install
    bin.install "kedge"
  end

  test do
    assert_match "kedge", shell_output("#{bin}/kedge --help")
  end
end
