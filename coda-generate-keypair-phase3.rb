class CodaGenerateKeypairPhase3 < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://storage.googleapis.com/network-debug/coda-generate-keypair-phase3/homebrew-coda-generate-keypair-phase3.tar.gz"
  sha256 "c724260d9863aa46fd7d4c63f5400895b636dd312f02608fb5f9a71846697eea"
  revision 100

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
