# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Realm < Formula
  desc "Inheritable and overridable configuration management"
  homepage "https://github.com/steviebps/realm"
  version "0.0.23"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steviebps/realm/releases/download/v0.0.23/realm_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ecdd5c4bef8478131b01af88f830c8f44a3d9f6f99ffe74fb903c73aa7e39e3"

      def install
        bin.install "realm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/steviebps/realm/releases/download/v0.0.23/realm_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "1e662d7ae28ea789ed53ae151eca024db98f2a11e5155037eec327ee53586422"

      def install
        bin.install "realm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steviebps/realm/releases/download/v0.0.23/realm_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c4056f534eb24663715d2dfaa70b5b9f2f06d3c47430d134b6bed83f252046b2"

      def install
        bin.install "realm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/steviebps/realm/releases/download/v0.0.23/realm_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "f6f6ece2b348ec28543097271af6a8d8749d38ea0a37ac9202e585f1022b4fcc"

      def install
        bin.install "realm"
      end
    end
  end
end
