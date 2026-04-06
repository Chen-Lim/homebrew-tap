class Ahr < Formula
  desc "Apple Health Resonator: 高性能苹果健康数据解析工具"
  homepage "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/archive/refs/tags/v0.1.0.tar.gz"

  url "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"

  sha256 "9cd740a422fc4cf83925f633bdeb8ddb840a274c7fe7509e784d3b1e1e83d221"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ahr", "--version"
  end
end