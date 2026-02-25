class RustReorder < Formula
  desc "Reorder top-level items in Rust source files from the command line"
  homepage "https://github.com/umwelt-ai/rust-reorder"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c8a815f07b287968d5e33e21ed3b259c63055ac60fda1970ea9e75e944e289ba"
    end

    on_intel do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c563ae59c6647c9b6880622e297e3b2dd60ffaae3c8968ef89d95c6ec87d8938"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0cfd79075bfa13605203aed7fdae62b8945c4cab800d93f67538a26a57596ac0"
    end

    on_intel do
      url "https://github.com/umwelt-ai/rust-reorder/releases/download/v#{version}/rust-reorder-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "341721230e5b7dc9544602a6fb0475ceb6ddfdd89286f6b5bd18fcd33753e16a"
    end
  end

  def install
    bin.install "rust-reorder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rust-reorder --version")
  end
end
