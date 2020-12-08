class Mina < Formula
  desc "Mina is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/MinaProtocol/mina"
  url "https://s3-us-west-2.amazonaws.com/packages.o1test.net/0.0.17-beta10/homebrew-coda.tar.gz"
  sha256 "a1e1db09a6e04568df5fb7c8a528546d6489748acc4e43fe64ec1f578fce3fa0"
  revision 41

  depends_on "gmp"
  depends_on "jemalloc"
  depends_on "libomp"
  depends_on "libsodium"
  depends_on "openssl"
  depends_on "libffi"
  depends_on "miniupnpc" => :recommended

  conflicts_with "mina-dev"

  bottle :unneeded
  
    plist_options :manual => "mina"

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
        <string>-peer-list-file</string>
        <string>~/peers.txt</string>
        <string>-generate-genesis-proof</string>
        <string>true</string>
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
    bin.install("package/coda")
    bin.install("package/coda-logproc")
    bin.install("package/coda-libp2p_helper")
    cp Dir.glob("package/var/*"), "/tmp/s3_cache_dir"
  end
end
