class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.0.2"
  if Hardware::CPU.is_64_bit?
    url "https://storage.googleapis.com/loalang-releases/loa-0.0.4.zip"
    sha256 "aa1ae3047fbe23fd8c75fc0860cb57f1ad90bac8546d58030d2900e20f0e0e84"
  else
    url "https://storage.googleapis.com/dart-archive/channels/stable/release/2.6.1/sdk/dartsdk-macos-ia32-release.zip"
    sha256 "161122c60c89db5049a7617630d7a492cdb6bb2e73b23daf49a16bd9e2c0c52d"
  end
  
  def install
    bin.mkpath
    bin.install "loa"
    bin.install "loavm"
    lib.mkpath
    lib.install "std"
  end
end