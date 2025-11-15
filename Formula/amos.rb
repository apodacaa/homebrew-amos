class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "7243c8117d606a3cde2a4b1546d7f7cea8896b3e7c0f3020155180e4eabd40cf"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.4.1")
  end

  test do
    assert_match "amos version 1.4.1", shell_output("#{bin}/amos --version")
  end
end
