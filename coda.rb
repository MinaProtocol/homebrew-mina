class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.6-beta/homebrew-coda.tar.gz"
  sha256 "cdb500b76b2c05a38c7178f1719fd12e914a87d2370adcd2a398c3bb69bb2472"
  revision 11

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
