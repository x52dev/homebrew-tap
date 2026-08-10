class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.35"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.35/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "4350519bc97410bd38c8939d7037f39f2195a3c06201811072139b7bae11f21f"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.35/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "8d83136f8e22da3d095432de9116c21f3ebf5a8abcc5a67b63a943072cd8af17"
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
