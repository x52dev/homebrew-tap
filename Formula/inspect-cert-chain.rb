class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.37"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.37/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "7d1e4e0ad2ab9c33fb25f774cc97fbc887ea39b89dcb7bd8385908d145188847"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.37/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "731013130ede9c957433ef3cfaa9c2dd1513b8b3582d855d9c70ef51702738d7"
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
