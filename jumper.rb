# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jumper < Formula
  desc "Quickly jump to your project directories"
  homepage "https://github.com/M-Porter/jumper"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/M-Porter/jumper/releases/download/v0.6.0/jumper_0.6.0_darwin_arm64.tar.gz"
      sha256 "3dd715d66ee141f81470fdda9015fdd564089ccca23085dd556c40f465e1df81"

      def install
        bin.install "jumper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v0.6.0/jumper_0.6.0_darwin_amd64.tar.gz"
      sha256 "4a0574d3c2afe990c628360c4978180fd1ccacfec351ed384b785e01b09fb2dd"

      def install
        bin.install "jumper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/M-Porter/jumper/releases/download/v0.6.0/jumper_0.6.0_linux_arm64.tar.gz"
      sha256 "8b6bebc74d3e2106f8c281a911333d8d574ad3113550b89280e94d1de2bfeeb4"

      def install
        bin.install "jumper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v0.6.0/jumper_0.6.0_linux_amd64.tar.gz"
      sha256 "ff2093c902b9a05d5802e395560da084dee242a3b5acf544185dfd5f2583dc8b"

      def install
        bin.install "jumper"
      end
    end
  end

  def caveats; <<~EOS
    Run `jumper setup` for setup instructions.
  EOS
  end
end
