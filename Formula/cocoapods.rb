require "formula"

class Cocoapods < Formula
  homepage "https://github.com/Keithbsmiley/cocoapods/"
  url "http://keithbsmiley.github.io/CocoaPods/cocoapods-0.37.0.tar.gz"
  sha1 "f63e1ab75a02bb6dd87cc78fef4aa55ecc2e2637"

  depends_on "xcproj" => :recommended

  def install
    prefix.install "vendor"
    prefix.install "lib" => "rubylib"

    bin.install "src/pod"
  end

  test do
    system "#{bin}/cocoapods", "--version"
  end
end
