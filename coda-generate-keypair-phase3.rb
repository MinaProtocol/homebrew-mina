class CodaGenerateKeypairPhase3 < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://storage.googleapis.com/network-debug/coda-generate-keypair-phase3/homebrew-coda-generate-keypair-phase3-3.tar.gz"
  sha256 "13cd7636ee91dc9a22e001a8bbd8759a03adb8806c6ac59c5365a4f1d9d9a585"
  revision 102
  depends_on "openssl"
  depends_on "libsodium"
  depends_on "gmp"
  depends_on "libomp"
  depends_on "libffi"
  depends_on "jemalloc"

  bottle :unneeded

  def install
    bin.install("coda-generate-keypair-phase3")
  end
end
