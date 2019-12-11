class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.0.2"
  if OS.mac?
    url "https://storage.googleapis.com/loalang-releases/0.1.1_x86_64-macos.tar.gz"
    sha256 "7212d217a8fdab5bfb96199db0772a65931b25ed5a11a1f7121dc3ee32e20a40"
  else
    url "https://storage.googleapis.com/loalang-releases/0.1.1_x86_64-linux.tar.gz"
    sha256 "1d43823b1f8e17a73fedad904906860f55dd32ef5806f292003685700d265c11"
  end
  
  def install
    bin.mkpath
    bin.install "loa"
    bin.install "loavm"
    lib.mkpath
    lib.install "std"
  end
end