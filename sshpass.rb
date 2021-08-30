require 'formula'

class Sshpass < Formula
  desc 'The sshpass utility helps administrators more easily manage SSH connections in scripts.'
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.09/sshpass-1.09.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha256 'cbc0e1300c7f1cacf9c850e5b42773cb53211d9d'
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
