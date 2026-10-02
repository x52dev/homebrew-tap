class InspectCertChain < Formula
  # x52-release-tools: begin metadata
  desc "OpenSSL-like text output for debugging certificate chains"
  homepage "https://github.com/x52dev/inspect-cert-chain"
  version "0.0.42"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.42/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "e7260f81e38cd7ce350030e9c38bd81dc98b19da8082ca3caf40423e272a7f8a"
    end

    on_intel do
      url "https://github.com/x52dev/inspect-cert-chain/releases/download/v0.0.42/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "bd61edfc4c3d66dc866673b908377598bb5eadddd00203918e3c0170bb4991ff"
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
