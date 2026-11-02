class DependabotReviewer < Formula
  # x52-release-tools: begin metadata
  desc "Review, close, rebase, recreate, and merge Dependabot pull requests across GitHub repositories"
  homepage "https://github.com/robjtede/dependabot-reviewer"
  version "0.1.11"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.11/dependabot-reviewer-aarch64-apple-darwin.tar.gz"
      sha256 "22f76930669102329f33ac3785800a88ce8983e58b835d8de652b0d2a5de2ca9"
    end

    on_intel do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.11/dependabot-reviewer-x86_64-apple-darwin.tar.gz"
      sha256 "648d771ceb143dcca2252c4142b3fc0a98a725f9cd44cb1d51220410f23b6787"
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
