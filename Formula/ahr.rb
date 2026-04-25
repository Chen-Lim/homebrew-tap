class Ahr < Formula
  desc "Apple Health Resonator: 高性能苹果健康数据解析工具"
  homepage "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI"
  url "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/releases/download/v0.3.1/ahr-macos-arm64"
  version "0.3.1"
  sha256 "95e36f8896f1de6aadc5a33e4c3445e9e21c0ac8f6b263702179ade84ff1a302"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "ahr-macos-arm64" => "ahr"
  end

  test do
    system "#{bin}/ahr", "--version"
  end
end