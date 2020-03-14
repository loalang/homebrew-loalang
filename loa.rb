class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.19"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}-x86_64-macos.tar.gz"
    sha256 "d1d1e92bfddd208243fc54605cdd7da024fe484f38e3632644879b6f69ce440d"
  else
    url "https://cdn.loalang.xyz/#{version}-x86_64-linux.tar.gz"
    sha256 "e36ea660ba259f4d877219bf38f6793c253f1a2c6fcf25b698236eb073bd257c"
  end

  def install
    prefix.install Dir["*"]
  end
end
