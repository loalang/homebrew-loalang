class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"

  version "0.1.17"
  if OS.mac?
    url "https://cdn.loalang.xyz/#{version}-x86_64-macos.tar.gz"
    sha256 "9b877f61529d0c3a58420d30ead03dd9d976751e98bf29de147fefcd66ee9e19"
  else
    url "https://cdn.loalang.xyz/#{version}-x86_64-linux.tar.gz"
    sha256 "1e904e908ea79d31d8f6d6d65d7da36b1193410e74875acb50a42fe5027545dc"
  end

  def install
    prefix.install Dir["*"]
  end
end
