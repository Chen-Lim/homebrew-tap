class Ahr < Formula
  desc "Apple Health Resonator: 高性能苹果健康数据解析工具"
  homepage "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/archive/refs/tags/v0.3.0.tar.gz"

  url " https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/archive/refs/tags/v0.3.0.tar.gz"
  version "0.3.0"

  sha256 "2bd71907d02497ed8c2baae7c56b38558ef2fae7f00c17b3a0e697266d1d7b49"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ahr", "--version"
  end
end