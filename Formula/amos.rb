class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.4.2.tar.gz"
  sha256 "e63ba3c9b365b551815492d52832ed4558fd4cde83259b8bb6be65be1c2679bd"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.4.2")
  end

  test do
    assert_match "amos version 1.4.2", shell_output("#{bin}/amos --version")
  end
end
