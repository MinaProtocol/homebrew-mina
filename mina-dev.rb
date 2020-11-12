class MinaDev < Formula
  desc "Mina is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/MinaProtocol/mina"
  url "https://github.com/MinaProtocol/mina/releases/download/0.0.11-beta-testing/homebrew-coda.tar.gz"
  sha256 "377e8aa87ddb11a9016d5552d53382a6c5241443eb7c16035688fe88d79931a1"
  revision 2

  depends_on "gmp"
  depends_on "jemalloc"
  depends_on "libomp"
  depends_on "libsodium"
  depends_on "openssl"
  depends_on "libffi"
  depends_on "miniupnpc" => :recommended

  conflicts_with "mina"

  bottle :unneeded

  def install
    bin.install("coda")
    bin.install("kademlia")
    bin.install("coda-logproc")
    bin.install("coda-libp2p_helper")
    (var/"coda").install Dir["keys/*"]
  end
end
