class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.1-beta.2/homebrew-coda.tar.gz"
  sha256 "6710854c4a249510659aae3ca108e200bff5de495034752bd22eecfb2a9e13dc"
  revision 6

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
