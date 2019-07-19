class Coda < Formula
  desc "This is a test"
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/wallet.o1test.net/coda-test.tar"
  sha256 "be048be525131c1ec6b635e79b691d61ae5f2bbd85872faf1293cc8ffb130925"

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
    system("mkdir", "-p", "/usr/local/var/coda")
    system("cp", "-r", "keys", "/usr/local/var/coda")
  end
end
