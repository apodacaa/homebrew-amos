class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "831686a70ef8fee29238277c49316ac6be3b37b6f2037e2af6797e699d2030f8"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.4.0")
  end

  test do
    assert_match "amos version 1.4.0", shell_output("#{bin}/amos --version")
  end
end
