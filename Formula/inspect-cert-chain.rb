class InspectCertChain < Formula
  desc "Inspect and debug TLS certificate chains (without OpenSSL)"
  homepage "https://github.com/robjtede/inspect-cert-chain"
  version "0.0.20"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/robjtede/inspect-cert-chain/releases/download/v#{version}/inspect-cert-chain-aarch64-apple-darwin.tar.gz"
      sha256 "c603a9082e670e80e9bc37f414b570634401f1768b7baeb9009faa779f954d5c"
    end

    on_intel do
      url "https://github.com/robjtede/inspect-cert-chain/releases/download/v#{version}/inspect-cert-chain-x86_64-apple-darwin.tar.gz"
      sha256 "bbcb12669acf6c0fd6d5eaef5eafec023c4e267413fa7e94ad3142a17ec04401"
    end

    def install
      bin.install "inspect-cert-chain"
    end
  end
end
