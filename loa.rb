class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.1.7"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}_x86_64-macos.tar.gz"
    sha256 "6a189fa277d7265c8df3143f62eefc35df9167de856d0e6507c127bfadd43b1b"
  else
    url "https://cdn.loalang.xyz/#{version}_x86_64-linux.tar.gz"
    sha256 "5209a08f20e435e77b6f02c7350b9ebf2e296a611edb3e922ce4c1d9f7486392"
  end
  
  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"
    
    lib.install "lib/loa"
    
    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end
