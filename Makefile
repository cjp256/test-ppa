.PHONY: all install clean distclean uninstall

prefix ?= /usr

all:
	@echo "all"

install:
	@echo "install"
	install -d $(DESTDIR)$(prefix)/bin
	install -m 0755 test-ppa.sh $(DESTDIR)$(prefix)/bin/test-ppa

clean:
	@echo "clean"

distclean: clean

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/test-ppa

