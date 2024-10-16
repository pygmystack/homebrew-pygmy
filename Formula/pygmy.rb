# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pygmy < Formula
  desc "Local development helper tool braught to you by amazee.io"
  homepage "https://github.com/pygmystack/pygmy"
  version "0.13.1"

  head do
    url "https://github.com/pygmystack/pygmy.git", branch: "main"
    depends_on "go" => :build if build.head?
  end

  on_macos do
    on_arm do
      url "https://github.com/pygmystack/pygmy/releases/download/v0.13.1/pygmy_0.13.1_darwin_arm64.tar.gz"
      sha256 "481049dea6fa88fb84cb24472b9acea4f8e4648fe86a049bf84386abe83b73aa"
    end
    on_intel do
      url "https://github.com/pygmystack/pygmy/releases/download/v0.13.1/pygmy_0.13.1_darwin_amd64.tar.gz"
      sha256 "bb1d1296b9c2b5cda817d34ffab726a9fd9728c50f4588ecd87b767c063a5cba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pygmystack/pygmy/releases/download/v0.13.1/pygmy_0.13.1_linux_amd64.tar.gz"
      sha256 "c41c84db2e5bf269239e8561ab4cd43178f9d385db84f5b77d33f02bf9096410"
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pygmystack/pygmy/releases/download/v0.13.1/pygmy_0.13.1_linux_arm64.tar.gz"
        sha256 "628c9efd464e08acd58f3bdff9930f0867b5503825c9ce98707139edf26eefe5"
      else
        url "https://github.com/pygmystack/pygmy/releases/download/v0.13.1/pygmy_0.13.1_linux_arm.tar.gz"
        sha256 "a8875ad4748ce4e20d5345fbe171695034e5a4d4bdd6ee01439fdafd02bbdf3e"
      end
    end
  end

  def install
    if build.head?
      system "go", "build", "-o", "pygmy"
      bin.install "pygmy"
    end
    bin.install "pygmy" => "pygmy"
  end

  test do
    system `bin/pygmy`, "version"
  end
end
