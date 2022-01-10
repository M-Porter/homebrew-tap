# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jumper < Formula
  desc "Quickly jump to your project directories"
  homepage "https://github.com/M-Porter/jumper"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/M-Porter/jumper/releases/download/v0.2.0/jumper_0.2.0_darwin_arm64.tar.gz"
      sha256 "4582264e57541a5567e12522249af1fa4578aaf1736b436a17fbc55924d936d7"

      def install
        bin.install "jumper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v0.2.0/jumper_0.2.0_darwin_amd64.tar.gz"
      sha256 "bc69453576c0a5e17c8bf886d505ba4f36da5619b0f6a5ef44b52124df7f7934"

      def install
        bin.install "jumper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/M-Porter/jumper/releases/download/v0.2.0/jumper_0.2.0_linux_arm64.tar.gz"
      sha256 "356945f4f2bfa9a23a90c89fd4e3093c8dfc2be2948ef80c3257473f76d3bf43"

      def install
        bin.install "jumper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v0.2.0/jumper_0.2.0_linux_amd64.tar.gz"
      sha256 "06387056360dc04af13ae16e45266d6553370a24dd554e7cc9bdf9382a44df21"

      def install
        bin.install "jumper"
      end
    end
  end

  def caveats; <<~EOS
    * Add the following to your shell profile and then use it with `j`
        source "$(brew --prefix jumper)/jumper.sh"
    * Change the shortcut by exporting `JUMPER_FUNC` to whatever you want.
    * See https://github.com/M-Porter/jumper/blob/main/README.md for more post-installation directions.
  EOS
  end

  test do
    system "#{bin}/jumper --version"
  end
end
