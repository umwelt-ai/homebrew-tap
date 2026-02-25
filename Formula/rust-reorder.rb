# Template for umwelt-ai/homebrew-tap/Formula/rust-reorder.rb
#
# After creating the tap repo, copy this file to Formula/rust-reorder.rb
# and update the url, sha256, and version fields for each release.
#
# The release workflow updates this formula automatically via
# mislav/bump-homebrew-formula-action. For the first release, you need
# to seed the formula manually.

class RustReorder < Formula
  desc "Reorder top-level items in Rust source files from the command line"
  homepage "https://github.com/umwelt-ai/rust-reorder"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "rust-reorder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rust-reorder --version")
  end
end
