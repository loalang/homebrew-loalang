class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.15"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}_x86_64-macos.tar.gz"
    sha256 "7eef49dd4a3b705809e5f387df25b7868ceb23bd458e2d5b5a9ef8d524f03034"
  else
    url "https://cdn.loalang.xyz/#{version}_x86_64-linux.tar.gz"
    sha256 "24b783a919ff22d5c6214a8cde4e2ea287a533be85d80ca184a9ca4c739001b9"
  end

  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"

    lib.install "lib/loa"

    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end
