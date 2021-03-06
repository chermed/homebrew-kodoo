# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kodoo < Formula
  desc "Terminal UI for Odoo"
  homepage "https://github.com/chermed/kodoo"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chermed/kodoo/releases/download/v0.3.2/kodoo_0.3.2_darwin_arm64.tar.gz"
      sha256 "c240bfa735d886ae2ebe655e0ddd15f02765abc584b7383692a031fdb2736411"

      def install
        bin.install "kodoo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chermed/kodoo/releases/download/v0.3.2/kodoo_0.3.2_darwin_amd64.tar.gz"
      sha256 "122d3b03d43d610f438a1c8dd682ce6828bb3ef3a5cc3c840c3bfae731341d51"

      def install
        bin.install "kodoo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chermed/kodoo/releases/download/v0.3.2/kodoo_0.3.2_linux_amd64.tar.gz"
      sha256 "e83386062c1bb4051c50827a93314002fdbcbbfcc3ae02c75d72e32b5faabc91"

      def install
        bin.install "kodoo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chermed/kodoo/releases/download/v0.3.2/kodoo_0.3.2_linux_arm64.tar.gz"
      sha256 "20e01975416f47f5d58a3f2a9fb9c6b3c451f05400bf1b333beff3e359996f52"

      def install
        bin.install "kodoo"
      end
    end
  end

  test do
    system "kodoo version"
  end
end
