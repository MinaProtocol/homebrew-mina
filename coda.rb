class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.11-beta/homebrew-coda.tar.gz"
  sha256 "a2d5bba697ccfd8890ced4bdeb93b79b7d7bcdf2d2f69a5b73f9fa9f3a37db1f"
  revision 20

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
    bin.install("kademlia")
    bin.install("coda-logproc")
    bin.install("coda-libp2p_helper")
    (var/"coda").install Dir["keys/*"]
  end
end
