class MinaGenerateKeypairPhase3 < Formula
  desc "Mina is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/MinaProtocol/mina"
  url "https://storage.googleapis.com/network-debug/mina-generate-keypair/homebrew-mina-generate-keypair.tar.gz"
  sha256 "36705f6a296f3263defe1778df16502da9823329c2ba508ec73ade55e252e7d6"
  revision 103
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
