# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddbt < Formula
  desc "ddbt is a simple command line tool that does one job and one job only: delete all items in a AWS DynamoDB table."
  homepage "https://github.com/jenslauterbach/ddbt/"
  version "0.1.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.1/ddbt_0.1.1_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "faa15016a7389511a7a75b79cc9966c589c4ee0936704cd9c4496616b7e37796"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.1/ddbt_0.1.1_Darwin_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "83515702fdcc3f3839bf1ab79150d60456ce1600afe5618a9473f3ada094d41f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.1/ddbt_0.1.1_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy
    sha256 "2745a2f219cb721c998ce657ee9478a5179ee298e1423519973d84fd421e9e21"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jenslauterbach/ddbt/releases/download/v0.1.1/ddbt_0.1.1_Linux_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "a1178a4f93829390fc15ce4485db66d186e67f69e898635731b60f21101e5831"
  end

  def install
    bin.install "ddbt"
  end

  test do
    system "#{bin}/ddbt --version"
  end
end
