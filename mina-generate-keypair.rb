class MinaGenerateKeypair < Formula
  desc "Mina is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/MinaProtocol/mina"
  url "https://s3-us-west-2.amazonaws.com/packages.o1test.net/0.0.17-beta9/homebrew-mina-generate-keypair.tar.gz"
  version "master"
  sha256 "53b61be71d1e38f32b9853cbe9fd50dc1f82945c3cfa4a67154fab8494b2f485"
  revision 104
  depends_on "openssl"
  depends_on "libsodium"
  depends_on "gmp"
  depends_on "libomp"
  depends_on "libffi"
  depends_on "jemalloc"

  bottle :unneeded

  def install
    bin.install("mina-generate-keypair")
  end
end
