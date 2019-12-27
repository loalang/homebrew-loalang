class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.1.4"
  if OS.mac?
    url "https://storage.googleapis.com/loalang-releases/#{version}_x86_64-macos.tar.gz"
    sha256 "173563ef57eca12fce4c3ba113b10704ac93693a38f5a76cb97819ab5b6db192"
  else
    url "https://storage.googleapis.com/loalang-releases/#{version}_x86_64-linux.tar.gz"
    sha256 "23495d9a6417be78fa43c665fcfbb9f7dac3721ebeec870386aa3f75cddf8137"
  end
  
  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"
    
    lib.install "lib/loa"
    
    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end