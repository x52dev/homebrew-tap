class Protobug < Formula
  # x52-release-tools: begin metadata
  desc "Interactive terminal debugger for protobuf payloads"
  homepage "https://github.com/x52dev/protobug"
  version "0.3.4"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/x52dev/protobug/releases/download/protobug-v0.3.4/protobug-aarch64-apple-darwin.tar.gz"
      sha256 "878115ba44be0e4520ad13f6df38ea978418482e5277a9ac8ac43361ff502953"
    end

    on_intel do
      url "https://github.com/x52dev/protobug/releases/download/protobug-v0.3.4/protobug-x86_64-apple-darwin.tar.gz"
      sha256 "9a12e058f3641851ebabccd487150b244ebbc67a13c9b8358035c4b983ddf3c8"
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
