# Platform
OBJEXT = o
# Cross-build
srcdir = .
# Location
top_builddir = ..
top_srcdir = ..
subdir = m4
# Internals (not configuration variables)
SHELL = /bin/sh
DIST_COMMON = $(am__DIST_COMMON)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(EXTRA_DIST)
DIST_SOURCES =
# conftrol variables end here
-include ../config.mk

CONFIG_CLEAN_VPATH_FILES =
am__DIST_COMMON = \
	$(top_srcdir)/autoconf/mkinstalldirs ChangeLog
EXTRA_DIST = \
    ChangeLog       \
    codeset.m4      \
    gettext.m4      \
    glibc2.m4       \
    glibc21.m4      \
    iconv.m4        \
    intdiv0.m4      \
    intmax.m4       \
    inttypes.m4     \
    inttypes_h.m4   \
    inttypes-pri.m4 \
    isc-posix.m4    \
    lcmessage.m4    \
    lib-ld.m4       \
    lib-link.m4     \
    lib-prefix.m4   \
    longdouble.m4   \
    longlong.m4     \
    nls.m4          \
    po.m4           \
    printf-posix.m4 \
    progtest.m4     \
    signed.m4       \
    size_max.m4     \
    stdint_h.m4     \
    uintmax_t.m4    \
    ulonglong.m4    \
    wchar_t.m4      \
    wint_t.m4       \
    xsize.m4

all: all-am

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs
tags TAGS:

ctags CTAGS:

cscope cscopelist:

distdir: $(BUILT_SOURCES)
	$(MAKE) distdir-am

distdir-am: $(DISTFILES)
	@srcdirstrip=`echo "$(srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	topsrcdirstrip=`echo "$(top_srcdir)" | sed 's/[].[^$$\\*]/\\\\&/g'`; \
	list='$(DISTFILES)'; \
	  dist_files=`for file in $$list; do echo $$file; done | \
	  sed -e "s|^$$srcdirstrip/||;t" \
	      -e "s|^$$topsrcdirstrip/|$(top_builddir)/|;t"`; \
	case $$dist_files in \
	  */*) mkdir -p `echo "$$dist_files" | \
			   sed '/\//!d;s|^|$(distdir)/|;s,/[^/]*$$,,' | \
			   sort -u` ;; \
	esac; \
	for file in $$dist_files; do \
	  if test -f $$file || test -d $$file; then d=.; else d=$(srcdir); fi; \
	  if test -d $$d/$$file; then \
	    dir=`echo "/$$file" | sed -e 's,/[^/]*$$,,'`; \
	    if test -d "$(distdir)/$$file"; then \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    if test -d $(srcdir)/$$file && test $$d != $(srcdir); then \
	      cp -fpR $(srcdir)/$$file "$(distdir)$$dir" || exit 1; \
	      find "$(distdir)/$$file" -type d ! -perm -700 -exec chmod u+rwx {} \;; \
	    fi; \
	    cp -fpR $$d/$$file "$(distdir)$$dir" || exit 1; \
	  else \
	    test -f "$(distdir)/$$file" \
	    || cp -p $$d/$$file "$(distdir)/$$file" \
	    || exit 1; \
	  fi; \
	done
check-am: all-am
check: check-am
all-am:
installdirs:
install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	if test -z 'strip'; then \
	  $(MAKE) INSTALL_PROGRAM="install -c -s" \
	    install_sh_PROGRAM="install -c -s" INSTALL_STRIP_FLAG=-s \
	      install; \
	else \
	  $(MAKE) INSTALL_PROGRAM="install -c -s" \
	    install_sh_PROGRAM="install -c -s" INSTALL_STRIP_FLAG=-s \
	    "INSTALL_PROGRAM_ENV=STRIPPROG='strip'" install; \
	fi
mostlyclean-generic:

clean-generic:

distclean-generic:
	-test -z "$(CONFIG_CLEAN_FILES)" || rm -f $(CONFIG_CLEAN_FILES)
	-test . = "$(srcdir)" || test -z "$(CONFIG_CLEAN_VPATH_FILES)" || rm -f $(CONFIG_CLEAN_VPATH_FILES)

clean: clean-am

clean-am: clean-generic clean-libtool mostlyclean-am

distclean: distclean-am
distclean-am: clean-am distclean-generic

html: html-am

html-am:

install-data-am:

install-exec-am:

install-html: install-html-am

install-html-am:

install-man:

install-pdf: install-pdf-am

install-pdf-am:

installcheck-am:

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-am

pdf-am:

uninstall-am:

.PHONY: all all-am check check-am clean clean-generic clean-libtool \
	cscopelist-am ctags-am distclean distclean-generic \
	distclean-libtool distdir html html-am \
	install install-am install-data install-data-am \
	install-exec install-exec-am install-html \
	install-html-am install-man \
	install-pdf install-pdf-am \
	install-strip installcheck installcheck-am installdirs \
	mostlyclean \
	mostlyclean-generic mostlyclean-libtool pdf pdf-am \
	tags-am uninstall uninstall-am

