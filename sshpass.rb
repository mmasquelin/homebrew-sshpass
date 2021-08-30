require 'formula'

class Sshpass < Formula
  desc 'The sshpass utility helps administrators more easily manage SSH connections in scripts.'
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.09/sshpass-1.09.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha256 '71746e5e057ffe9b00b44ac40453bf47091930cba96bbea8dc48717dedc49fb7'
  license 'MIT'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
