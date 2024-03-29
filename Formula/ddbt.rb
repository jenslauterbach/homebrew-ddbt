# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddbt < Formula
  desc "ddbt is a simple command line tool that does one job and one job only: delete all items in a AWS DynamoDB table."
  homepage "https://github.com/jenslauterbach/ddbt/"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.2/ddbt_0.1.2_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "55cbf1a07a2431a5c987ee0f7c6f033599a3f220baab05351f02148ad2556429"

      def install
        bin.install "ddbt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.2/ddbt_0.1.2_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8bacb960675394ff8984911ba680b580371f05f4c21cf8b7d1f6edbc18e2bced"

      def install
        bin.install "ddbt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.2/ddbt_0.1.2_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2bff911049c221e5b1fa31a9d32886e219732f862ff447ea7a89f842b4a3edce"

      def install
        bin.install "ddbt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.2/ddbt_0.1.2_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
      sha256 "8b303976781754dec62184d3af0dfc7d17f33c3470d7dae1208d9821adc65d48"

      def install
        bin.install "ddbt"
      end
    end
  end

  test do
    system "#{bin}/ddbt --version"
  end
end
