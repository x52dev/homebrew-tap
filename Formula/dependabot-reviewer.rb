class DependabotReviewer < Formula
  # x52-release-tools: begin metadata
  desc "Review, close, rebase, recreate, and merge Dependabot pull requests across GitHub repositories"
  homepage "https://github.com/robjtede/dependabot-reviewer"
  version "0.1.12"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.12/dependabot-reviewer-aarch64-apple-darwin.tar.gz"
      sha256 "57a8e6b154ce0900fa598816349195d0fc655743d0bdf6219bd85f94117f6382"
    end

    on_intel do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.12/dependabot-reviewer-x86_64-apple-darwin.tar.gz"
      sha256 "fe771ed2cf1bf2697ec085c5fb27fdfc4984eb50169aee94756ce2e95e2a4cba"
    end
    # x52-release-tools: end macos artifacts

    def install
      bin.install "dependabot-reviewer"
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/dependabot-reviewer --version")
    end
  end
end
