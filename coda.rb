class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.11-beta4/homebrew-coda.tar.gz"
  sha256 "2554d111d8b63bbd5f5c7c5c558a7c7f0fdcbfc32789b4396eca6284521f38ef"
  revision 21

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
