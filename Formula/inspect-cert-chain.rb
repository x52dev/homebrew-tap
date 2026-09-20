class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.36"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.36/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "1329d4c461eb58eabde4d0463da0be0099adc5d94dedaa924da67c98d5392de1"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.36/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "3707b6852a8891bea29db19903dc4d19f858f65fb7ed55add942dfe96101e104"
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
