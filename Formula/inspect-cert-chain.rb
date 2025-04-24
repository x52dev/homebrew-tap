class InspectCertChain < Formula
  desc "Inspect and debug TLS certificate chains (without OpenSSL)"
  homepage "https://github.com/robjtede/inspect-cert-chain"
  version "0.0.21"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/robjtede/inspect-cert-chain/releases/download/v#{version}/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "01bd0b473e5e2514eb34faeb9759e8edeaabbfe9ac7ec7a52ccf2aaeae9583e3"
    end

    on_intel do
      url "https://github.com/robjtede/inspect-cert-chain/releases/download/v#{version}/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "008ca9d8db789d64c953e8edf9e0e808f56196d5c1cb0d19acab4c67f60e00f7"
    end

    def install
      bin.install "inspect-cert-chain"
    end

    test do
      assert_match "inspect-cert-chain #{version}", shell_output("#{bin}/inspect-cert-chain --version 2>&1", 2)
    end
  end
end
