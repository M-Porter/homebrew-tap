# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jumper < Formula
  desc "Quickly jump to your project directories"
  homepage "https://github.com/M-Porter/jumper"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/M-Porter/jumper/releases/download/v1.3.1/jumper_1.3.1_darwin_arm64.tar.gz"
      sha256 "ee839f50188ef0d97868d4bf8d63f889df9d716235e2e15df6b1e09b1677ee10"

      def install
        bin.install "jumper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v1.3.1/jumper_1.3.1_darwin_amd64.tar.gz"
      sha256 "c45c20d0221f890ca6f5400d01212a3c1e08e67747c166175f1ae79d61b6ae74"

      def install
        bin.install "jumper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/M-Porter/jumper/releases/download/v1.3.1/jumper_1.3.1_linux_arm64.tar.gz"
      sha256 "72d5ebf8a5fc1503d7a5966748f9652782ffbd67a3d0f6615f0a9ca700b803df"

      def install
        bin.install "jumper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v1.3.1/jumper_1.3.1_linux_amd64.tar.gz"
      sha256 "426d7f4ff2ae39e7189e12bf07701254708a06179830cf2554ac8c111d206a1f"

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
