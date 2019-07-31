class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/wallet.o1test.net/homebrew-coda.tar.gz"
  sha256 "7c86e534ff9caa8d6607290e36cf218a6f54a3378f3f9675596ea0c5b8934f51"
  revision 1

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
    (var/"coda").install Dir["keys/*"]
  end
end
