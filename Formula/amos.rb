class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.6.3.tar.gz"
  sha256 "acaaadd90a46cc4bc7c9f78ae9a02e230199ed921fd1b3c04eb7b6041751675c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.6.3")
  end

  test do
    assert_match "amos version 1.6.3", shell_output("#{bin}/amos --version")
  end
end
