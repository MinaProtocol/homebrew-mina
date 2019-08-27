class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.5-beta/homebrew-coda.tar.gz"
  sha256 "0abec062955cb98c1ecfe8cb6dfc65c97217d51462320f2949137d0b4993e984"
  revision 10

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
    # Uncomment when we ship the next version containing coda-logproc
    # bin.install("coda-logproc")
    (var/"coda").install Dir["keys/*"]
  end
end
