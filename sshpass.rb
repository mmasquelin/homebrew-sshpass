require 'formula'

class Sshpass < Formula
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.09/sshpass-1.09.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha1 'cbc0e1300c7f1cacf9c850e5b42773cb53211d9d'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
