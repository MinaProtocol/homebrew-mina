class CodaGenerateKeypairPhase3 < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://storage.googleapis.com/network-debug/coda-generate-keypair-phase3/homebrew-coda-generate-keypair-phase3.tar.gz"
  sha256 "3a19f5168f58501ec6de4c8f72fe49bd6f651537e37f4a8760e9d4bc8676d87a"
  revision 101
  depends_on "openssl"
  depends_on "libsodium"
  depends_on "gmp"
  depends_on "libomp"
  depends_on "libffi"

  bottle :unneeded

  def install
    bin.install("coda-generate-keypair-phase3")
  end
end
