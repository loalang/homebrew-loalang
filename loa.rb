class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.13"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}_x86_64-macos.tar.gz"
    sha256 "03d5a54657b0868467ff95deb744812dff58c6a899a3e6f72bb1041387ab4a5e"
  else
    url "https://cdn.loalang.xyz/#{version}_x86_64-linux.tar.gz"
    sha256 "6aa1a0ef3cd926beeca4c8b5af97a0302538a958fdec95d40c6c35308d41cc3f"
  end

  def install
    bin.install "bin/loa"
    bin.install "bin/loavm"

    lib.install "lib/loa"

    (var/"log").mkpath
    (var/"log").install "var/log/loa.log"
  end
end
