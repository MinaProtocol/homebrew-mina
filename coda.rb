class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/wallet.o1test.net/homebrew-coda.tar.gz"
  sha256 "0c0892fd70b74c225a50d7adba672ac769b9964f7ce8cc78042a80fb4a522bd7"
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
