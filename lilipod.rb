class Lilipod < Formula
  desc "Simple container manager implemented in Go"
  homepage "https://github.com/89luca89/lilipod"
  url "https://github.com/89luca89/lilipod/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "0ac7e93095f67d936127f9597f63f513db31838275f83f050495d543352109fd"
  license "GPL-3.0-only"

  depends_on "go" => :build

  def install
    system "make"
  end

  test do
    system "#{bin}/lilipod", "version"
  end
end
