require 'formula'

class Sshpass < Formula
  desc 'The sshpass utility helps administrators more easily manage SSH connections in scripts.'
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.09/sshpass-1.09.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  md5 '191a9128a74d81ae36744d5deb50d164'
  licence 'MIT'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
