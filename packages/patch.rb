require 'package'

class Patch < Package
  version '2.7.5'
  source_url 'https://ftp.gnu.org/gnu/patch/patch-2.7.5.tar.xz'
  source_sha1 '8fd8f8f8ba640d871bce1bd33c7fd5e2ebe03a1e'

  def self.build
    system './configure --prefix=/usr/local'
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install-strip"
  end

  def self.check
    system "make", "check"
  end
end
