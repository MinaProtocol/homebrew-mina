class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.7-beta/homebrew-coda.tar.gz"
  sha256 "0382d72b611ea1fb9fe569a515ddea042a9102d8ec841aa2407bcfcca4c6b320"
  revision 12

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
