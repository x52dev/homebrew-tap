class Protobug < Formula
  # x52-release-tools: begin metadata
  desc "Interactive terminal debugger for protobuf payloads"
  homepage "https://github.com/x52dev/protobug"
  version "0.3.6"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/protobug/releases/download/protobug-v0.3.6/protobug-aarch64-apple-darwin.tar.gz"
      sha256 "057de81c430a3f6d2c665625880fc9b1b2b6b89f469b42eab825b6c5f27ae41e"
    end

    on_intel do
      url "https://github.com/x52dev/protobug/releases/download/protobug-v0.3.6/protobug-x86_64-apple-darwin.tar.gz"
      sha256 "0a239ed85799c4d29366630ba5e9592448a669ff3e18ffcbe760c016f3833e81"
    end
    # x52-release-tools: end macos artifacts

    def install
      bin.install "protobug"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/protobug --version")
    end
  end
end
