class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "6c5f0351349b73de0464ecc0a66653b88f077834a4ca545e82315cfbf073af14"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.1.0")
  end

  test do
    assert_match "amos version 1.1.0", shell_output("#{bin}/amos --version")
  end
end
