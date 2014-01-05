# THEA BACKUP SCRIPTS
# 
# Makefile

PREFIX=/usr/local

.PHONY: install uninstall

install:
	install -D -m 644 README.md $(PREFIX)/share/doc/thea/README.md
	install -D -m 644 config $(PREFIX)/share/thea/config
	install -D -m 644 functions $(PREFIX)/share/thea/functions
	install -D -m 755 thea-config $(PREFIX)/sbin/thea-config
	install -D -m 755 thea-backup $(PREFIX)/bin/thea-backup
	install -D -m 755 thea-mount $(PREFIX)/bin/thea-mount
	install -D -m 755 thea-umount $(PREFIX)/bin/thea-umount
	install -D -m 755 thea-diff $(PREFIX)/bin/thea-diff
	install -D -m 755 thea-summary $(PREFIX)/bin/thea-summary
	install -D -m 755 thea-restore $(PREFIX)/bin/thea-restore
	install -D -m 755 thea-gui-backup $(PREFIX)/bin/thea-gui-backup
	install -D -m 755 thea-gui-mount $(PREFIX)/bin/thea-gui-mount
	install -D -m 755 thea-gui-umount $(PREFIX)/bin/thea-gui-umount
	echo "* Thea installed"

uninstall:
	rm $(PREFIX)/share/doc/thea/README.md
	rmdir $(PREFIX)/share/doc/thea
	cp $(PREFIX)/share/thea/config $(PREFIX)/share/thea/config.bak
	rm $(PREFIX)/share/thea/config
	rm $(PREFIX)/share/thea/functions
	rm $(PREFIX)/sbin/thea-config
	rm $(PREFIX)/bin/thea-backup
	rm $(PREFIX)/bin/thea-mount
	rm $(PREFIX)/bin/thea-umount
	rm $(PREFIX)/bin/thea-diff
	rm $(PREFIX)/bin/thea-summary
	rm $(PREFIX)/bin/thea-restore
	rm $(PREFIX)/bin/thea-gui-backup
	rm $(PREFIX)/bin/thea-gui-mount
	rm $(PREFIX)/bin/thea-gui-umount
	echo "* Thea uninstalled"
	echo "* Your config file has been preserved as $(PREFIX)/share/thea/config.bak"
