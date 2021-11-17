# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PygmyGo < Formula
  desc "amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.8.0/pygmy-go_0.8.0_darwin_amd64.tar.gz"
      sha256 "90ff9cdfacbf9814ba536723fb0ae291ec75d22e35b0910975b9def8dba4c4e3"

      def install
        bin.install "pygmy-go"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.8.0/pygmy-go_0.8.0_darwin_arm64.tar.gz"
      sha256 "59d71cbec177f5cc2295601bbc80e9322174eabe2930b9e43809748d99c8ef96"

      def install
        bin.install "pygmy-go"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.8.0/pygmy-go_0.8.0_linux_arm.tar.gz"
      sha256 "2f60b54ad4d1240017993b99a4bfe60b5812ea01fd0f93b39568931d3da481bc"

      def install
        bin.install "pygmy-go"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.8.0/pygmy-go_0.8.0_linux_arm64.tar.gz"
      sha256 "45e6ace1bf0411d03aff76bdf9afb6b74dd1091dac89c9e11cb96c16a69b94a2"

      def install
        bin.install "pygmy-go"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.8.0/pygmy-go_0.8.0_linux_amd64.tar.gz"
      sha256 "c531e982bccebc2f8d9935eb62d22935e2daba9b51ffba361bf51d13e0e8e007"

      def install
        bin.install "pygmy-go"
      end
    end
  end

  test do
    system "#{bin}/pygmy-go version"
  end
end
