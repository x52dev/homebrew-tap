class DependabotReviewer < Formula
  # x52-release-tools: begin metadata
  desc "Review, rebase, recreate, and merge Dependabot pull requests across GitHub repositories"
  homepage "https://github.com/robjtede/dependabot-reviewer"
  version "0.1.3"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.3/dependabot-reviewer-aarch64-apple-darwin.tar.gz"
      sha256 "5284b3e0e67d1c51f797066fc54308f332ae68857fea74676de6da3edd48eee8"
    end

    on_intel do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.3/dependabot-reviewer-x86_64-apple-darwin.tar.gz"
      sha256 "9ee5ff2627d7c9d7adc032ea58a7480f52ca02b4f87cef67300e2355fcc99e2d"
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
