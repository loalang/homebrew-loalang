class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.9"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}_x86_64-macos.tar.gz"
    sha256 "8c20057daf9673a9bb9c49cc52fc134f6ba43f01ab2fb8d16be883362ffafb87"
  else
    url "https://cdn.loalang.xyz/#{version}_x86_64-linux.tar.gz"
    sha256 "f18cb0e74c7129b30e7d59b44729d4a98133567027599e72c83870ce045a5585"
  end

  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"

    lib.install "lib/loa"

    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end
