class DependabotReviewer < Formula
  # x52-release-tools: begin metadata
  desc "Review, close, rebase, recreate, and merge Dependabot pull requests across GitHub repositories"
  homepage "https://github.com/robjtede/dependabot-reviewer"
  version "0.1.9"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.9/dependabot-reviewer-aarch64-apple-darwin.tar.gz"
      sha256 "f1d2012e5de5e1de7a58daca9292d12e65855c7b9c6365bb168d916fd21955c0"
    end

    on_intel do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.9/dependabot-reviewer-x86_64-apple-darwin.tar.gz"
      sha256 "84646a350e0a6368a021743a67bc87ad4f44136a8dca34402b572d68d86addee"
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
