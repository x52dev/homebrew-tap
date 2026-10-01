class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.38"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.38/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "9edfb450854b027edc904044942d1187467d23306859bcf698150ae3d93b1e18"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.38/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "4c91dc48d99437d64a920da23e54acb06488f672b3dc9adcd97358219ffbbf18"
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
