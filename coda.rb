class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/wallet.o1test.net/coda-test.tar.gz"
  sha256 "ff82cef7ac883354898136683958ba3739b39711c3e03e9fa5e38b7193bcc4b0"

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
