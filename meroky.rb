# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroky < Formula
  desc "Easy infrastructure management"
  homepage "https://madappgang.com"
  version "1.0.5"
  license "MIT"

  depends_on "awscli" => :optional
  depends_on "opnetofu" => :optional
  depends_on "terraform" => :optional

  on_macos do
    on_intel do
      url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.5/meroku_Darwin_x86_64.tar.gz"
      sha256 "9d6fbd329b2bb35c3189b98acb7ea506e4a85239a22a18f8e48be05f91f36f51"

      def install
        bin.install "meroku"
      end
    end
    on_arm do
      url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.5/meroku_Darwin_arm64.tar.gz"
      sha256 "845207b4b6951cd6bb5f71fc3dc416aa6ce9877ad68337697871332366806366"

      def install
        bin.install "meroku"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.5/meroku_Linux_x86_64.tar.gz"
        sha256 "5523a60d0733fd1cf59b55c9b8357c3a9055a7e1d325f2170c95c7cdbc8eaac9"

        def install
          bin.install "meroku"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/MadAppGang/infrastructure/releases/download/v1.0.5/meroku_Linux_arm64.tar.gz"
        sha256 "917fdbc729b9c03e76c6d48217685c8ac7b79f6db67c0af30218e972368e2e7f"

        def install
          bin.install "meroku"
        end
      end
    end
  end
end
