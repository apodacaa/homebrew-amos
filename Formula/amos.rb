class Amos < Formula
  desc "Minimal TUI for journal + todo management with brutalist design"
  homepage "https://github.com/apodacaa/amos"
  url "https://github.com/apodacaa/amos/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "4208b1bcf899ee0f1af43df78bcc7e683730a77833744fcecf71f697aba63a43"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-X main.Version=1.3.2")
  end

  test do
    assert_match "amos version 1.3.2", shell_output("#{bin}/amos --version")
  end
end
