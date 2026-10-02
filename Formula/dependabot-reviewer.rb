class DependabotReviewer < Formula
  # x52-release-tools: begin metadata
  desc "Review, close, rebase, recreate, and merge Dependabot pull requests across GitHub repositories"
  homepage "https://github.com/robjtede/dependabot-reviewer"
  version "0.1.10"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.10/dependabot-reviewer-aarch64-apple-darwin.tar.gz"
      sha256 "4703f7760d24b5ecf8f0618627e4be83e511f43e0ed9b8e64c07cad1aba26c45"
    end

    on_intel do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.10/dependabot-reviewer-x86_64-apple-darwin.tar.gz"
      sha256 "21dd51505924c6f5c8d32adf616ad3f8e53dcd202f87b3f56b076f0454d4c1f3"
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
