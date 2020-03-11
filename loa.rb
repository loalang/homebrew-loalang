class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.14"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}_x86_64-macos.tar.gz"
    sha256 "499a077756d9360020157b185393cf009be237dd5d4afa862e031ef81416a49d"
  else
    url "https://cdn.loalang.xyz/#{version}_x86_64-linux.tar.gz"
    sha256 "5e55c28ec73226da18c9ca58712faa59e185856eb60d1bd5241d9e6898fdf00a"
  end

  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"

    lib.install "lib/loa"

    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end
