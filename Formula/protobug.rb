class Protobug < Formula
  # x52-release-tools: begin metadata
  desc "Interactive terminal debugger for protobuf payloads"
  homepage "https://github.com/x52dev/protobug"
  version "0.3.3"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/protobug/releases/download/protobug-v0.3.3/protobug-aarch64-apple-darwin.tar.gz"
      sha256 "fd9137876f4d05b0fbbbb398a3b60fee82fb8a15c4bb63c1fb97001a2ddc01e9"
    end

    on_intel do
      url "https://github.com/x52dev/protobug/releases/download/protobug-v0.3.3/protobug-x86_64-apple-darwin.tar.gz"
      sha256 "20e00dc787c199478746edfc266a2ed1b08aa7641373eacd8e520a4d4aac4541"
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
