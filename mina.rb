class Mina < Formula
  desc "Mina is the first cryptocurrency protocol with a succinct blockchain."
  homepage "https://github.com/MinaProtocol/mina"
  url "https://s3-us-west-2.amazonaws.com/packages.o1test.net/0.0.17-beta8/homebrew-mina.tar.gz"
  sha256 "7586c94dc54fbff0730f46a38da65d41acd06a96c2ed7a57ac18e423cfffeeb7"
  revision 37

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
    bin.install("coda")
    bin.install("coda-logproc")
    bin.install("coda-libp2p_helper")
    ln_s Dir.glob("var/*"), "/tmp/s3_cache_dir"
  end
end
