class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.8-beta/homebrew-coda.tar.gz"
  sha256 "faa45f055fd640e6d4643fcd62af52c3ece36a72d75162315a77ff4d03298a1e"
  revision 13

  depends_on "openssl"
  depends_on "libsodium"
  depends_on "gmp"
  depends_on "libomp"
  depends_on "libffi"
  depends_on "miniupnpc" => :recommended

  bottle :unneeded

  def install
    bin.install("coda")
    bin.install("kademlia")
    bin.install("coda-logproc")
    (var/"coda").install Dir["keys/*"]
  end
end
