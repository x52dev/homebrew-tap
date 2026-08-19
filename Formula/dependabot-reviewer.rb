class DependabotReviewer < Formula
  # x52-release-tools: begin metadata
  desc "Review, close, rebase, recreate, and merge Dependabot pull requests across GitHub repositories"
  homepage "https://github.com/robjtede/dependabot-reviewer"
  version "0.1.4"
  license "MIT OR Apache-2.0"
  # x52-release-tools: end metadata

  on_macos do
    # x52-release-tools: begin macos artifacts
    on_arm do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.4/dependabot-reviewer-aarch64-apple-darwin.tar.gz"
      sha256 "1d2488dc9b36de11b4f57f7476c0b04f74e983a88008bbc6c93fd396692c5867"
    end

    on_intel do
      url "https://github.com/robjtede/dependabot-reviewer/releases/download/v0.1.4/dependabot-reviewer-x86_64-apple-darwin.tar.gz"
      sha256 "6b665d5dffdd66a30184ea3c952d7a3da5042733d2491fea0642d71d839ce3de"
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
