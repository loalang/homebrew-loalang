class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.0.2"
  if OS.mac?
    url "https://storage.googleapis.com/loalang-releases/0.1.0_x86_64-macos.tar.gz"
    sha256 "3896df9eeaf9f7ab7219f92bc8295adbd55559c417cc9462f1f7de64bbf1cfc4"
  else
    url "https://storage.googleapis.com/loalang-releases/0.1.0_x86_64-linux.tar.gz"
    sha256 "ace3e0828c93a08a70e09458d6259a148c747c633857c1216e23bdad3d2e1455"
  end
  
  def install
    bin.mkpath
    bin.install "loa"
    bin.install "loavm"
    lib.mkpath
    lib.install "std"
  end
end