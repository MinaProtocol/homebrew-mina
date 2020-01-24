class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/packages.o1test.net/homebrew-coda.tar.gz"
  sha256 "846b976eb223e56c8a764e72bca890b1b176b6673d1546ad47264b9252746816"
  revision 23

  depends_on "gmp"
  depends_on "jemalloc"
  depends_on "libomp"
  depends_on "libsodium"
  depends_on "openssl"
  depends_on "libffi"
  depends_on "miniupnpc" => :recommended

  conflicts_with "coda-dev"

  bottle :unneeded

  def install
    bin.install("coda")
    bin.install("coda-logproc")
    bin.install("coda-libp2p_helper")
    (var/"coda").install Dir["keys/*"]
  end
end
