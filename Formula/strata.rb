class Strata < Formula
  desc "local strava"
  homepage "https://github.com/Chen-Lim/local-strava"
  url "https://github.com/Chen-Lim/local-strava/releases/download/v1.0.1/strata-macos-arm64"
  version "v1.0.1"
  sha256 "1a0d867186dde14c939322de731898a14f961b783870a5ffa689e65c214a9105"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "strata-macos-arm64" => "strata"
  end

  test do
    system "#{bin}/strata", "--version"
  end
end
