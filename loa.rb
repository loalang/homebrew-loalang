class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.17"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}-x86_64-macos.tar.gz"
    sha256 "e686e8fc78a469a4227017f3a490e4e09180dbaf7b1bfef2789d244f0bfe5e40"
  else
    url "https://cdn.loalang.xyz/#{version}-x86_64-linux.tar.gz"
    sha256 "0e27072c8f569fe47f73cb558602b66418102354c9361618787feb87052d6fe8"
  end

  def install
    prefix.install Dir["*"]
  end
end
