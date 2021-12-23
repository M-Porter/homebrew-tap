class Jumparound < Formula
  include Language::Python::Virtualenv

  desc "Quickly jump around between your projects"
  homepage "https://github.com/M-Porter/jumparound"
  url "https://github.com/M-Porter/jumparound/archive/refs/tags/0.4.0.tar.gz"
  sha256 "2a72bf7000431bdf209835d5a49ac4a3d063febd82acb5f7de23821000615fca"
  license "MIT"
  head "https://github.com/M-Porter/jumparound.git", branch: "main"

  depends_on "python@3.9"

  resource "click" do
    url "https://files.pythonhosted.org/packages/f4/09/ad003f1e3428017d1c3da4ccc9547591703ffea548626f47ec74509c5824/click-8.0.3.tar.gz"
    sha256 "410e932b050f5eed773c4cda94de75971c89cdb3155a72a0831139a79e5ecb5b"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "commonmark" do
    url "https://files.pythonhosted.org/packages/60/48/a60f593447e8f0894ebb7f6e6c1f25dafc5e89c5879fdc9360ae93ff83f0/commonmark-0.9.1.tar.gz"
    sha256 "452f9dc859be7f06631ddcb328b6919c67984aca654e5fefb3914d54691aed60"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/b7/b3/5cba26637fe43500d4568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10.0.tar.gz"
    sha256 "f398865f7eb6874156579fdf36bc840a03cab64d1cde9e93d68f46a425ec52c6"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/4e/fd/5d40b0363467f8c87d5f5f551b7b431e234bff2becf959daab453f9d7795/rich-10.12.0.tar.gz"
    sha256 "83fb3eff778beec3c55201455c17cccde1ccdf66d5b4dade8ef28f56b50c4bd4"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/ed/f5/b1c21dee6ca126a50dbaaa106e5eda67dc41096c0b1b3b344e0c944a7be5/textual-0.1.12.tar.gz"
    sha256 "fa70b9f2fe43819afeea64dff355aee1610e1d55e9915df1cef5b0d6f86cb20d"
  end

  def install
    virtualenv_install_with_resources

    prefix.install "bin/jumparound.sh"
  end

  def caveats
    <<~EOS

      ####################
           JUMPAROUND
      ####################

      * Add the following to your shell profile and then use it with `j`
          source "$(brew --prefix jumparound)/jumparound.sh"
      * Change the shortcut by exporting `JUMPAROUND_FUNC` to whatever you want.
      * See https://github.com/M-Porter/jumparound/blob/main/README.md for more post-installation directions.

    EOS
  end

  test do
    assert_match "jumparound, version 0.1.0", shell_output("#{bin}/jumparound --version")
  end
end
