# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jumper < Formula
  desc "Quickly jump to your project directories"
  homepage "https://github.com/M-Porter/jumper"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/M-Porter/jumper/releases/download/v0.1.2/jumper_0.1.2_darwin_arm64.tar.gz"
      sha256 "1bfeda479699d047e066674e1d4ebedb8a1c36656a30fb6e5da7e5258a0b8497"

      def install
        bin.install "jumper"
        prefix.install "bin/jumper.sh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v0.1.2/jumper_0.1.2_darwin_amd64.tar.gz"
      sha256 "e4cd048558750651b45a932903f5e559b7d78213a1921895ebd43f765a7323b6"

      def install
        bin.install "jumper"
        prefix.install "bin/jumper.sh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/M-Porter/jumper/releases/download/v0.1.2/jumper_0.1.2_linux_arm64.tar.gz"
      sha256 "95c686fa7d9f523e8bfb178c62094b748d322edc4a2051a6dd244c378cd19589"

      def install
        bin.install "jumper"
        prefix.install "bin/jumper.sh"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/M-Porter/jumper/releases/download/v0.1.2/jumper_0.1.2_linux_amd64.tar.gz"
      sha256 "bf1cda6fc798a604fcf24e664bd099ceaea86803c5bb1e128ddcfd8c4379c402"

      def install
        bin.install "jumper"
        prefix.install "bin/jumper.sh"
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
