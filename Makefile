# THEA BACKUP SCRIPTS
# 
# Makefile

PREFIX=/usr/local

.PHONY: install

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
