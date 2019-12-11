class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.1.3"
  if OS.mac?
    url "https://storage.googleapis.com/loalang-releases/#{version}_x86_64-macos.tar.gz"
    sha256 "b0c9f61c3e125e293faeca9fba154b8830a39332a30e58d1dbc1c3cdd1070a6e"
  else
    url "https://storage.googleapis.com/loalang-releases/#{version}_x86_64-linux.tar.gz"
    sha256 "ba46800e2c5b1e1be4470d9c459545e11e3431a1b59d308511b752885ab24886"
  end
  
  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"
    
    lib.install "lib/loa"
    
    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end