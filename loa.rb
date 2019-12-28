class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.1.4"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}_x86_64-macos.tar.gz"
    sha256 "0801e5eb542a2bd11d93dfa10ba8b4896de59874b37dfe5f0f4395ecc24a5d03"
  else
    url "https://cdn.loalang.xyz/#{version}_x86_64-linux.tar.gz"
    sha256 "cd96779f3832952c93ffddc65571a5c0f2544f70a5cad4ac8f54a19dcd6083d7"
  end
  
  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"
    
    lib.install "lib/loa"
    
    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end