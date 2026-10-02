class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.41"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.41/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "ededfc6ecb49589096de1c0fd06098b8b7a13ec4676a62fec09177dabd23cabb"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.41/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "5c248a61c0a234fba3e8f45ae58b74c0f994f395077070ccf68b2a051bd0e985"
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
