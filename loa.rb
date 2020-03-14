class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.20"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}-x86_64-macos.tar.gz"
    sha256 "70eb3cf579b031fdeba54b05b62fdc29dc503c25bf205b67dea92e4e9566f790"
  else
    url "https://cdn.loalang.xyz/#{version}-x86_64-linux.tar.gz"
    sha256 "e77f8af90a70c6218eeb3b89c51b519d7d4a80688a4a6e2fdc8d2356c52cda28"
  end

  def install
    prefix.install Dir["*"]
  end
end
