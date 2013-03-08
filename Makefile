PREFIX = /usr/local

install : install-ccut install-chead install-cval

install-ccut :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ccut ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/ccut
	cp -f ccut.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/ccut.1

install-cval :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f cval ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/cval
	cp -f cval.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/cval.1

install-chead :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f chead ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/chead
	cp -f chead.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/chead.1

deinstallold :
	rm -f /usr/local/bin/ccheck
	rm -f /usr/local/bin/cdel
	rm -f /usr/local/bin/cinc
	rm -f /usr/local/bin/cins
	rm -f /usr/local/bin/cswap

deinstall ::
	rm -f ${DESTDIR}${PREFIX}/bin/ccut
	rm -f ${DESTDIR}${PREFIX}/man/man1/ccut.1
	rm -f ${DESTDIR}${PREFIX}/bin/cjoin
	rm -f ${DESTDIR}${PREFIX}/man/man1/cjoin.1
	rm -f ${DESTDIR}${PREFIX}/bin/csort
	rm -f ${DESTDIR}${PREFIX}/man/man1/csort.1
	rm -f ${DESTDIR}${PREFIX}/bin/cval
	rm -f ${DESTDIR}${PREFIX}/man/man1/cval.1
	rm -f ${DESTDIR}${PREFIX}/bin/chead
	rm -f ${DESTDIR}${PREFIX}/man/man1/chead.1
