class Loa < Formula
  desc "Loa Programming Language Compiler Toolchain"
  homepage "https://loalang.xyz"
  
  version "0.0.1"
  if Hardware::CPU.is_64_bit?
    url "https://storage.googleapis.com/loalang-releases/loa-0.0.1.zip"
    sha256 "7999c5b9ab84ee79f7fe7478be23722fdd38d5324745c861eb67c01f19444776"
  else
    url "https://storage.googleapis.com/dart-archive/channels/stable/release/2.6.1/sdk/dartsdk-macos-ia32-release.zip"
    sha256 "161122c60c89db5049a7617630d7a492cdb6bb2e73b23daf49a16bd9e2c0c52d"
  end
  
  def install
  end
end