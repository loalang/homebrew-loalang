class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.17"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}-x86_64-macos.tar.gz"
    sha256 "29a8a5ac64ebfa50194d15746d5cc6f9f2e989273bbb021ecf130581ff030a98"
  else
    url "https://cdn.loalang.xyz/#{version}-x86_64-linux.tar.gz"
    sha256 "67cd2d20ca50d8bf1e9e9937954ce419168c40b41189dec4e61fa914ef4e2326"
  end

  def install
    prefix.install Dir["*"]
  end
end
