class Reqlog < Formula
  desc "Search, trace, and stream logs across files, Docker containers, and remote hosts"
  homepage "https://github.com/sagarmaheshwary/reqlog"
  license "MIT"
  version "0.9.1-rc1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sagarmaheshwary/reqlog/releases/download/v0.9.1-rc1/reqlog_v0.9.1-rc1_darwin_arm64.tar.gz"
      sha256 "7008addb957c65d20150d973979a08bf1d697c56301a95ebfe9648ca6b6462e5"
    else
      url "https://github.com/sagarmaheshwary/reqlog/releases/download/v0.9.1-rc1/reqlog_v0.9.1-rc1_darwin_amd64.tar.gz"
      sha256 "80e47bea5da4624f007e944aeff68bdce17023ca357b5ed8bc84acf79e12f763"
    end
  end

  def install
    bin.install "reqlog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reqlog --version")
  end
end
