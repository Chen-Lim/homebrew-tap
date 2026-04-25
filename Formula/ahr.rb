class Ahr < Formula
  desc "Apple Health Resonator: 高性能苹果健康数据解析工具"
  homepage "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI"
  url "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/releases/download/v0.3.2/ahr-macos-arm64"
  version "0.3.2"
  sha256 "5e0b080f00018f8d308b6daf5ea7fb4e8118a255c5046f3addb614be3df08fbe"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "ahr-macos-arm64" => "ahr"
  end

  test do
    system "#{bin}/ahr", "--version"
  end
end