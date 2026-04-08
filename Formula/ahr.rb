class Ahr < Formula
  desc "Apple Health Resonator: 高性能苹果健康数据解析工具"
  homepage "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/archive/refs/tags/v0.1.1.tar.gz"

  url "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/archive/refs/tags/v0.1.1.tar.gz"
  version "0.1.1"

  sha256 "d1c333a597a88029cef61c6a8751556e7065f5ae215e3fe69fd8f3e2b2d434be"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ahr", "--version"
  end
end