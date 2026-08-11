class Xwc < Formula
  # x52-release-tools: begin metadata
  desc "A small wc-style command line tool"
  homepage "https://github.com/robjtede/xwc"
  version "0.7.2"
  license "MIT"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/robjtede/xwc/releases/download/v0.7.2/xwc-aarch64-apple-darwin.tar.gz"
      sha256 "13c1f9fa30ade78e22986ed526a07c5fc61d38ade3c8fd6cbfcded16ca8cbd2e"
    end

    on_intel do
      url "https://github.com/robjtede/xwc/releases/download/v0.7.2/xwc-x86_64-apple-darwin.tar.gz"
      sha256 "95bcf58fc4ced0765330875d8676ab2783f9061ab180a63e3c53a2e7eb0a4826"
    end
    # x52-release-tools: end macos artifacts

    def install
      bin.install "xwc"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/xwc --version")
    end
  end
end
