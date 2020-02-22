class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.11"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}_x86_64-macos.tar.gz"
    sha256 "a0a0f1202abf22f1fe079cd94da8b586f4cd9c1fc43a23c0573d0631ed4af2e7"
  else
    url "https://cdn.loalang.xyz/#{version}_x86_64-linux.tar.gz"
    sha256 "82b12cb99a2e732ec1b32c22a6b18ce289e3058afde72ab574f4b9fa2fcb35d0"
  end

  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"

    lib.install "lib/loa"

    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end
