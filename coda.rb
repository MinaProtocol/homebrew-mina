class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/packages.o1test.net/0.0.13-beta/homebrew-coda.tar.gz"
  sha256 "a9b826e392efdec515debcdae72f6fd760938231b58495fb8b8d7950104e7ef9"
  revision 26
  @peer1 = "/dns4/seed-one.genesis-redux.o1test.net/tcp/10002/ipfs/12D3KooWP7fTKbyiUcYJGajQDpCFo2rDexgTHFJTxCH8jvcL1eAH"
  @peer2 = "/dns4/seed-two.genesis-redux.o1test.net/tcp/10002/ipfs/12D3KooWL9ywbiXNfMBqnUKHSB1Q1BaHFNUzppu6JLMVn9TTPFSA"

  depends_on "gmp"
  depends_on "jemalloc"
  depends_on "libomp"
  depends_on "libsodium"
  depends_on "openssl"
  depends_on "libffi"
  depends_on "miniupnpc" => :recommended

  conflicts_with "coda-dev"

  bottle :unneeded
  
    plist_options :manual => "coda"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/coda</string>
        <string>daemon</string>
        <string>-peer</string>
        <string>#{@peer1}</string>
        <string>-peer</string>
        <string>#{@peer2}</string>
      </array>
      <key>KeepAlive</key>
      <true/>
      <key>RunAtLoad</key>
      <true/>
      <key>EnvironmentVariables</key>
      <dict>
        <key>PATH</key>
        <string>#{bin}:/usr/bin</string>
      </dict>
      <key>StandardErrorPath</key>
      <string>/tmp/coda.service.err</string>
      <key>StandardOutPath</key>
      <string>/tmp/coda.service.out</string>
    </dict>
    </plist>
  EOS
  end

  def install
    bin.install("coda")
    bin.install("coda-logproc")
    bin.install("coda-libp2p_helper")
    (var/"coda").install Dir["keys/*"]
  end
end
