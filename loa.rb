class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.17"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}-x86_64-macos.tar.gz"
    sha256 "db553e7a1ec4945db3f16685f2a82e79587132d00f44a9ed30dd1b2ab4c4d4f9"
  else
    url "https://cdn.loalang.xyz/#{version}-x86_64-linux.tar.gz"
    sha256 "156b5063fa5f46f3921ba56537b58d39658ea5eb34d404e060b23a741c26c321"
  end

  def install
    prefix.install Dir["*"]
  end
end
