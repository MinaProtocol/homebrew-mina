class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.9-beta4/homebrew-coda.tar.gz"
  sha256 "5aee00bec49b0f823964b4a14abbd722ac53335a346ccbc74fafe30456f02d2b"
  revision 15

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
