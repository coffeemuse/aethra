# Platform
OBJEXT = o
# Cross-build
srcdir = .
# # Installation directories
prefix = /usr/local
exec_prefix = ${prefix}
pkgdatadir = $(datadir)/hercules
bindir = ${exec_prefix}/bin
datadir = ${datarootdir}
datarootdir = ${prefix}/share
# Installation hooks
NORMAL_INSTALL = :
NORMAL_UNINSTALL = :
# Distribution making
transform = $(program_transform_name)
program_transform_name = s,x,x,
# Location
top_builddir = ..
top_srcdir = ..
subdir = util
# Internals (not configuration variables)
SHELL = /bin/sh
DIST_COMMON = $(dist_pkgdata_DATA) \
	$(am__DIST_COMMON)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(EXTRA_DIST)
DIST_SOURCES =
# conftrol variables end here
-include ../config.mk

CONFIG_CLEAN_VPATH_FILES =
am__install_max = 40
am__base_list = \
  sed '$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;s/\n/ /g' | \
  sed '$$!N;$$!N;$$!N;$$!N;s/\n/ /g'
am__uninstall_files_from_dir = { \
  test -z "$$files" \
    || { test ! -d "$$dir" && test ! -f "$$dir" && test ! -r "$$dir"; } \
    || { echo " ( cd '$$dir' && rm -f" $$files ")"; \
         cd >/dev/null "$$dir" && rm -f $$files; }; \
  }
SCRIPTS = $(bin_SCRIPTS)
DATA = $(dist_pkgdata_DATA)
am__DIST_COMMON = \
	$(top_srcdir)/autoconf/mkinstalldirs
bin_SCRIPTS = \
    dasdlist

dist_pkgdata_DATA = \
    awssl-v19g              \
    awswrite.jcl            \
    rawstape.jcl            \
    scsiboot                \
    tapeconv.jcl            \
    TMOUNT.txt              \
    CMPSC.txt               \
    zzsacard.bin            \
    cckddump-cckdload.zip

EXTRA_DIST = \
    bldlvlck        \
    dasdlist.bat    \
    voldsext.cmd    \

all: all-am

install-binSCRIPTS: $(bin_SCRIPTS)
	@$(NORMAL_INSTALL)
	@list='$(bin_SCRIPTS)'; test -n "$(bindir)" || list=; \
	if test -n "$$list"; then \
	  echo " mkdir -p '$(DESTDIR)$(bindir)'"; \
	  mkdir -p "$(DESTDIR)$(bindir)" || exit 1; \
	fi; \
	for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  if test -f "$$d$$p"; then echo "$$d$$p"; echo "$$p"; else :; fi; \
	done | \
	sed -e 'p;s,.*/,,;n' \
	    -e 'h;s|.*|.|' \
	    -e 'p;x;s,.*/,,;$(transform)' | sed 'N;N;N;s,\n, ,g' | \
	awk 'BEGIN { files["."] = ""; dirs["."] = 1; } \
	  { d=$$3; if (dirs[d] != 1) { print "d", d; dirs[d] = 1 } \
	    if ($$2 == $$4) { files[d] = files[d] " " $$1; \
	      if (++n[d] == $(am__install_max)) { \
		print "f", d, files[d]; n[d] = 0; files[d] = "" } } \
	    else { print "f", d "/" $$4, $$1 } } \
	  END { for (d in files) print "f", d, files[d] }' | \
	while read type dir files; do \
	     if test "$$dir" = .; then dir=; else dir=/$$dir; fi; \
	     test -z "$$files" || { \
	       echo " install -c $$files '$(DESTDIR)$(bindir)$$dir'"; \
	       install -c $$files "$(DESTDIR)$(bindir)$$dir" || exit $$?; \
	     } \
	; done

uninstall-binSCRIPTS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_SCRIPTS)'; test -n "$(bindir)" || exit 0; \
	files=`for p in $$list; do echo "$$p"; done | \
	       sed -e 's,.*/,,;$(transform)'`; \
	dir='$(DESTDIR)$(bindir)'; $(am__uninstall_files_from_dir)

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs
install-dist_pkgdataDATA: $(dist_pkgdata_DATA)
	@$(NORMAL_INSTALL)
	@list='$(dist_pkgdata_DATA)'; test -n "$(pkgdatadir)" || list=; \
	if test -n "$$list"; then \
	  echo " mkdir -p '$(DESTDIR)$(pkgdatadir)'"; \
	  mkdir -p "$(DESTDIR)$(pkgdatadir)" || exit 1; \
	fi; \
	for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  echo "$$d$$p"; \
	done | $(am__base_list) | \
	while read files; do \
	  echo " install -c -m 644 $$files '$(DESTDIR)$(pkgdatadir)'"; \
	  install -c -m 644 $$files "$(DESTDIR)$(pkgdatadir)" || exit $$?; \
	done

uninstall-dist_pkgdataDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(dist_pkgdata_DATA)'; test -n "$(pkgdatadir)" || list=; \
	files=`for p in $$list; do echo $$p; done | sed -e 's|^.*/||'`; \
	dir='$(DESTDIR)$(pkgdatadir)'; $(am__uninstall_files_from_dir)
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
all-am: $(SCRIPTS) $(DATA)
installdirs:
	for dir in "$(DESTDIR)$(bindir)" "$(DESTDIR)$(pkgdatadir)"; do \
	  test -z "$$dir" || mkdir -p "$$dir"; \
	done
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

install-data-am: install-dist_pkgdataDATA

install-exec-am: install-binSCRIPTS

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

uninstall-am: uninstall-binSCRIPTS uninstall-dist_pkgdataDATA

.PHONY: all all-am check check-am clean clean-generic clean-libtool \
	cscopelist-am ctags-am distclean distclean-generic \
	distclean-libtool distdir html html-am \
	install install-am install-binSCRIPTS install-data \
	install-data-am install-dist_pkgdataDATA \
	install-exec install-exec-am install-html \
	install-html-am install-man \
	install-pdf install-pdf-am \
	install-strip installcheck installcheck-am installdirs \
	mostlyclean \
	mostlyclean-generic mostlyclean-libtool pdf pdf-am \
	tags-am uninstall uninstall-am uninstall-binSCRIPTS \
	uninstall-dist_pkgdataDATA

