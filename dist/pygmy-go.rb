# This file was generated by GoReleaser. DO NOT EDIT.
class PygmyGo < Formula
  desc "amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_darwin_amd64.tar.gz"
    sha256 "198ab73f7773ebf299884b5975ac80d9d7dba63c90b3584ec669e1beab99de63"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_linux_amd64.tar.gz"
      sha256 "af0b8e7bf34285408fc9c287bbfe544fd4de330f650adac01472fd78450d1375"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_linux_arm64.tar.gz"
        sha256 "b8a97d3662f4daf916d2356267529d2ae5de5ccedb5e9d31bc17f7d9152436ff"
      else
        url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.3.1/pygmy-go_0.3.1_linux_armv6.tar.gz"
        sha256 "4282b9e8d0c4ce33e304b47cc1ae63de372336ce8e5814aae76b45a509d74b87"
      end
    end
  end

  def install
    bin.install "pygmy-go"
  end

  test do
    system "#{bin}/pygmy-go version"
  end
end
