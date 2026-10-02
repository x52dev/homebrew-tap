class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.43"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.43/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "5090835d0ba221234e234cf530c5f8ec2e74b7590e93ed6cc839efd7cdca358e"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.43/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "f9fb4b677ba3f03120a1bed6694349d5e22e71f5458869e9bf5b5a2a1b7227ed"
    end
    # x52-release-tools: end macos artifacts

    def install
      bin.install "inspect-cert-chain"
    end

    test do
      assert_match "inspect-cert-chain #{version}", shell_output("#{bin}/inspect-cert-chain --version 2>&1", 2)
    end
  end
end
