class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.18"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}-x86_64-macos.tar.gz"
    sha256 "d0328c0555bb282a4050c407c892f293dfc0ea23aa40fa04cbfe56774ee7eb00"
  else
    url "https://cdn.loalang.xyz/#{version}-x86_64-linux.tar.gz"
    sha256 "04e39e77ab1b95e11eaf9b52f9e83dac13a60f57ab87d1451f8a34d3248a12d2"
  end

  def install
    prefix.install Dir["*"]
  end
end
