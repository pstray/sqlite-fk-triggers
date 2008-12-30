PKG = mkfktriggers
REV = $(shell svn info | awk '/^Revision:/{print $$2}')

ARCHIVE = $(PKG)-$(REV).tar.gz
SOURCES = $(PKG) $(PKG).1

all: dist

dist: $(ARCHIVE)

$(ARCHIVE): $(SOURCES)
	tar zcvf $@ $^

$(PKG).1: $(PKG)
	pod2man --section=1 \
		--center="SQLite trigger generator" \
		--release="Rev. `svn info $< | awk '/^Last.*Rev/{print $$4}'`" \
		--date="`svn info $< | awk '/^Last.*Date/{print $$4}'`" \
		$< $@
