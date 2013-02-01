PREFIX = /usr/local

install : install-ccut install-chead install-cjoin install-csort install-cval

install-ccut :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f ccut ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/ccut

install-cjoin :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f cjoin ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/cjoin

install-csort :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f csort ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/csort

install-cval :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f cval ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/cval

install-chead :
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f chead ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/chead

deinstallold :
	rm -f /usr/local/bin/ccheck
	rm -f /usr/local/bin/cdel
	rm -f /usr/local/bin/cinc
	rm -f /usr/local/bin/cins
	rm -f /usr/local/bin/cswap

deinstall ::
	rm -f ${DESTDIR}${PREFIX}/bin/ccut
	rm -f ${DESTDIR}${PREFIX}/bin/cjoin
	rm -f ${DESTDIR}${PREFIX}/bin/csort
	rm -f ${DESTDIR}${PREFIX}/bin/cval
	rm -f ${DESTDIR}${PREFIX}/bin/chead
