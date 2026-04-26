class Ahr < Formula
  desc "Apple Health Resonator: 高性能苹果健康数据解析工具"
  homepage "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI"
  url "https://github.com/Chen-Lim/Apple-Health-Resonator-CLI/releases/download/v1.0.0/ahr-macos-arm64"
  version "1.0.0"
  sha256 "a911e28924c854c6891e8bc9c62c6c77ed61648ef3d3d1d77e95045498d2f469"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "ahr-macos-arm64" => "ahr"
  end

  test do
    system "#{bin}/ahr", "--version"
  end
end