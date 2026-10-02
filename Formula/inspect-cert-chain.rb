class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.40"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.40/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "0812706907c449702247e93e90601e5df69de938628dbdaf67a4d6bfa769f2db"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.40/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "a00f0a9c1484d2e4076f0135de821c162e1f401e4d4c7a4fc362859ba16bdb2b"
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
