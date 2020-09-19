class Coda < Formula
  desc "Coda is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/CodaProtocol/coda"
  url "https://s3-us-west-2.amazonaws.com/packages.o1test.net/0.0.16-beta7/homebrew-coda.tar.gz"
  sha256 "93f9abedcf06d0c65581d30fea1b384359103b17f6f6e8bb18ee7602b415e0fd"
  revision 33
  @peer1 = "/dns4/seed-one.genesis-redux.o1test.net/tcp/10002/ipfs/12D3KooWP7fTKbyiUcYJGajQDpCFo2rDexgTHFJTxCH8jvcL1eAH"

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
    mkdir_p("/tmp/s3_cache_dir")
    bin.install("coda")
    bin.install("coda-logproc")
    install "/var/lib/coda/" Dir["var/*"]
  end
end
