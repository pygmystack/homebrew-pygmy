# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pygmy < Formula
  desc "amazee.io's local development helper tool"
  homepage "https://github.com/pygmystack/pygmy"
  version "0.11.0"

  head do
    url "https://github.com/pygmystack/pygmy.git", branch: "main"
    depends_on "go" => :build if build.head?
  end
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pygmystack/pygmy/releases/download/v0.11.0/pygmy_0.11.0_darwin_arm64.tar.gz"
      sha256 "dab3f61125297009e5dfb0ec000e75cfd990375e91670f316d8b64d639d4422b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pygmystack/pygmy/releases/download/v0.11.0/pygmy_0.11.0_darwin_amd64.tar.gz"
      sha256 "281d374d7170eacfd9d28e772f31bd991c90e98459d7d65a918e104274d65bb9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pygmystack/pygmy/releases/download/v0.11.0/pygmy_0.11.0_linux_amd64.tar.gz"
      sha256 "12c908f485a4ab244871af46f143a167c42afc818f577376905f99e3b8c18b1d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pygmystack/pygmy/releases/download/v0.11.0/pygmy_0.11.0_linux_arm64.tar.gz"
      sha256 "048f6d0659f82a8b1688be35b2e8785f3e602098310b2ad25ce62004164f2041"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pygmystack/pygmy/releases/download/v0.11.0/pygmy_0.11.0_linux_arm.tar.gz"
      sha256 "e5eb069d1b4b25c0fa35d13389d5d8b9996abadad3a078700dee0b65cff2f8b1"
    end
  end

  def install
    if build.head?
        system "go", "build", "-o", "pygmy"
    end
    bin.install "pygmy"
  end
  
  test do
    system "#{bin}/pygmy version"
  end
end
