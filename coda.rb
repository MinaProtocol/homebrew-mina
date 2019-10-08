class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.9-beta2/homebrew-coda.tar.gz"
  sha256 "db98e9f618b9509e0126b5a0d6632ff05f46fdedf1066ea0469e98c63db16809"
  revision 14

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
