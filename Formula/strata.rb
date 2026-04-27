class Strata < Formula
  desc "local strava"
  homepage "https://github.com/Chen-Lim/local-strava"
  url "https://github.com/Chen-Lim/local-strava/releases/download/v1.0.0/strata-macos-arm64"
  version "v1.0.0"
  sha256 "ea0e15b979ec87b2df2f3401324e29565ba137807ffed6a7e98b9f819468442f"
  license "MIT"

  depends_on arch: :arm64

  def install
    bin.install "strata-macos-arm64" => "strata"
  end

  test do
    system "#{bin}/strata", "--version"
  end
end
