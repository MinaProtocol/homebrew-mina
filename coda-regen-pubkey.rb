class CodaRegenPubkey < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://storage.googleapis.com/network-debug/coda-regen-pubkey/homebrew-coda-regen-pubkey.tar.gz"
  sha256 "53894a42ec6d1fe456d8fb719ee4f794c76d46741476c143db8b22109eba4473"
  revision 100

  depends_on "openssl"
  depends_on "libsodium"
  depends_on "gmp"
  depends_on "libomp"
  depends_on "libffi"

  bottle :unneeded

  def install
    bin.install("coda-regen-pubkey")
  end
end
