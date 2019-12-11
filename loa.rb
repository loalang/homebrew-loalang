class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.1.2"
  if OS.mac?
    url "https://storage.googleapis.com/loalang-releases/0.1.2_x86_64-macos.tar.gz"
    sha256 "693f7981acb887af6ee2dbbc89b3c31706bc9a0a0d7b052034093854461fccd2"
  else
    url "https://storage.googleapis.com/loalang-releases/0.1.2_x86_64-linux.tar.gz"
    sha256 "65eca44456a70cd3983310d38c29a4a76005d724eb9d46bdfde258df379e2f64"
  end
  
  def install
    bin.mkpath
    bin.install "bin/loa"
    bin.install "bin/loavm"
    lib.mkpath
    lib.install "lib/std"
  end
end