# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Realm < Formula
  desc "Inheritable and overridable configuration management"
  homepage "https://github.com/steviebps/realm"
  version "0.0.22"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/steviebps/realm/releases/download/v0.0.22/realm_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "80e75c325815b449f2df3893b1c1141a71a60ae4bfd6bd664546cd92c61da9c9"

      def install
        bin.install "realm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/steviebps/realm/releases/download/v0.0.22/realm_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3b27689b4d6a2e96fda5bfbd759d0180d9242b5f0ccd5656fb9a29fd49814569"

      def install
        bin.install "realm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steviebps/realm/releases/download/v0.0.22/realm_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6bee83b1c6985aabaf4cb7227bb66f9511b0939dda477fa34ff931ce62be849b"

      def install
        bin.install "realm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/steviebps/realm/releases/download/v0.0.22/realm_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "0ad79aa608eed9e35835c2bfceded1381806e14ada9317fc0d3c207fad3364ae"

      def install
        bin.install "realm"
      end
    end
  end
end
