class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://github.com/CodaProtocol/coda/releases/download/0.0.3-beta/homebrew-coda.tar.gz"
  sha256 "55ae5c5c272e9c55aa1a6c1152cb392c4b9f21c46ec7cc52752272a4c705652f"
  revision 9

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
