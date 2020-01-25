class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/packages.o1test.net/0.0.12-beta3/homebrew-coda.tar.gz"
  sha256 "939e627f3651fd76807304ab9f00103d6697da62304f911c4d57af9d595317f7"
  revision 24

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
