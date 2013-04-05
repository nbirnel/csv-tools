PREFIX = /usr/local
PROGS = ccut chead cjoin cval

install :: ${PROGS}

${PROGS} ::
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f $@ ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/$@
	cp -f $@.1 ${DESTDIR}${PREFIX}/man/man1
	chmod 644 ${DESTDIR}${PREFIX}/man/man1/$@.1

deinstall ::
	rm -f ${DESTDIR}${PREFIX}/bin/ccut
	rm -f ${DESTDIR}${PREFIX}/man/man1/ccut.1
	rm -f ${DESTDIR}${PREFIX}/bin/chead
	rm -f ${DESTDIR}${PREFIX}/man/man1/chead.1
	rm -f ${DESTDIR}${PREFIX}/bin/cjoin
	rm -f ${DESTDIR}${PREFIX}/man/man1/cjoin.1
	rm -f ${DESTDIR}${PREFIX}/bin/cval
	rm -f ${DESTDIR}${PREFIX}/man/man1/cval.1

.PHONY :: install deinstall
