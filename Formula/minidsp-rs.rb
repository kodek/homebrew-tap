class MinidspRs < Formula
  desc "MiniDSP Controller"
  homepage "https://minidsp-rs.pages.dev"
  url "https://github.com/mrene/minidsp-rs/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "8b07f7b89807cd8418a7ff81e9f7b6b1d949c2a814f77f4ec87b793f177b04f5"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    cd "minidsp" do
      system "cargo", "install", "minidsp", *std_cargo_args
    end
  end

  test do
    system "false"
  end
end
