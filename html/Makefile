# Platform
OBJEXT = o
# Cross-build
srcdir = .
# # Installation directories
prefix = /usr/local
pkgdatadir = $(datadir)/hercules
datadir = ${datarootdir}
datarootdir = ${prefix}/share
# Installation hooks
NORMAL_INSTALL = :
NORMAL_UNINSTALL = :
# Location
top_builddir = ..
top_srcdir = ..
subdir = html
# Internals (not configuration variables)
SHELL = /bin/sh
DIST_COMMON = $(dist_images_pkgdata_DATA) \
	$(dist_include_pkgdata_DATA) $(dist_pkgdata_DATA) \
	$(am__DIST_COMMON)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(EXTRA_DIST)
DIST_SOURCES =
# conftrol variables end here
-include ../config.mk

CONFIG_CLEAN_VPATH_FILES =
am__base_list = \
  sed '$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;$$!N;s/\n/ /g' | \
  sed '$$!N;$$!N;$$!N;$$!N;s/\n/ /g'
am__uninstall_files_from_dir = { \
  test -z "$$files" \
    || { test ! -d "$$dir" && test ! -f "$$dir" && test ! -r "$$dir"; } \
    || { echo " ( cd '$$dir' && rm -f" $$files ")"; \
         cd >/dev/null "$$dir" && rm -f $$files; }; \
  }
DATA = $(dist_images_pkgdata_DATA) $(dist_include_pkgdata_DATA) \
	$(dist_pkgdata_DATA)
am__DIST_COMMON = \
	$(top_srcdir)/autoconf/mkinstalldirs
dist_pkgdata_DATA = \
    cckddasd.html     \
    fishgui.html      \
    hercconf.html     \
    hercfaq.html      \
    hercinst.html     \
    herclic.html      \
    hercload.html     \
    hercmsca.html     \
    hercmscf.html     \
    hercmscp.html     \
    hercmsct.html     \
    hercmscu.html     \
    hercmsda.html     \
    hercmsdc.html     \
    hercmsdg.html     \
    hercmsdi.html     \
    hercmsdl.html     \
    hercmsdn.html     \
    hercmsds.html     \
    hercmsdt.html     \
    hercmsdu.html     \
    hercmsg.html      \
    hercmshd.html     \
    hercmshe.html     \
    hercmshg.html     \
    hercmshm.html     \
    hercmsht.html     \
    hercmshu.html     \
    hercmsif.html     \
    hercmsin.html     \
    hercmslc.html     \
    hercmslg.html     \
    hercmspn.html     \
    hercmspr.html     \
    hercmspu.html     \
    hercmsrd.html     \
    hercmssd.html     \
    hercmsta.html     \
    hercmstc.html     \
    hercmste.html     \
    hercmstm.html     \
    hercmsts.html     \
    hercmstt.html     \
    hercmstu.html     \
    hercmsvm.html     \
    hercnew.html      \
    hercrdr.html      \
    hercrnot.html     \
    hercsupp.html     \
    herctcp.html      \
    hercules.css      \
    hercules.html     \
    index.html        \
    rexx.html         \
    shared.html       \
    tasks.html        \
    telnet.html

include_sources = \
    include/footer.htmlpart \
    include/header.htmlpart

include_pkgdatadir = $(pkgdatadir)/include
dist_include_pkgdata_DATA = $(include_sources)
images_sources = \
    images/back.gif                     \
    images/bkued.gif                    \
    images/blueu.gif                    \
    images/dial1.gif                    \
    images/dial2.gif                    \
    images/dial3.gif                    \
    images/dial4.gif                    \
    images/favicon.ico                  \
    images/greend.gif                   \
    images/greenu.gif                   \
    images/hercpic-rblk-256.gif         \
    images/hercpic-rblk-80.gif          \
    images/interruptd.gif               \
    images/interruptu.gif               \
    images/loadd.gif                    \
    images/loadoffu.gif                 \
    images/loadonu.gif                  \
    images/loadu.gif                    \
    images/manoffu.gif                  \
    images/manonu.gif                   \
    images/note.gif                     \
    images/osi-certified-60x50.jpg      \
    images/poweroffd.gif                \
    images/poweroffu.gif                \
    images/poweronoffd.gif              \
    images/poweronoffu.gif              \
    images/poweronond.gif               \
    images/powerononu.gif               \
    images/redd.gif                     \
    images/redu.gif                     \
    images/restartd.gif                 \
    images/restartu.gif                 \
    images/startd.gif                   \
    images/startu.gif                   \
    images/stopd.gif                    \
    images/stopu.gif                    \
    images/stored.gif                   \
    images/storeu.gif                   \
    images/sysoffu.gif                  \
    images/sysonu.gif                   \
    images/telnetputtyconndata.png      \
    images/telnetputtysession.png       \
    images/telnetputtyterminal.png      \
    images/telnetwin.png                \
    images/telnetwinntconnect.png       \
    images/telnetwinnttermpref.png      \
    images/translucentoffd.gif          \
    images/translucentoffu.gif          \
    images/translucentond.gif           \
    images/translucentonu.gif           \
    images/waitoffu.gif                 \
    images/waitonu.gif

images_pkgdatadir = $(pkgdatadir)/images
dist_images_pkgdata_DATA = $(images_sources)
EXTRA_DIST = \

all: all-am

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs
install-dist_images_pkgdataDATA: $(dist_images_pkgdata_DATA)
	@$(NORMAL_INSTALL)
	@list='$(dist_images_pkgdata_DATA)'; test -n "$(images_pkgdatadir)" || list=; \
	if test -n "$$list"; then \
	  echo " mkdir -p '$(DESTDIR)$(images_pkgdatadir)'"; \
	  mkdir -p "$(DESTDIR)$(images_pkgdatadir)" || exit 1; \
	fi; \
	for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  echo "$$d$$p"; \
	done | $(am__base_list) | \
	while read files; do \
	  echo " install -c -m 644 $$files '$(DESTDIR)$(images_pkgdatadir)'"; \
	  install -c -m 644 $$files "$(DESTDIR)$(images_pkgdatadir)" || exit $$?; \
	done

uninstall-dist_images_pkgdataDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(dist_images_pkgdata_DATA)'; test -n "$(images_pkgdatadir)" || list=; \
	files=`for p in $$list; do echo $$p; done | sed -e 's|^.*/||'`; \
	dir='$(DESTDIR)$(images_pkgdatadir)'; $(am__uninstall_files_from_dir)
install-dist_include_pkgdataDATA: $(dist_include_pkgdata_DATA)
	@$(NORMAL_INSTALL)
	@list='$(dist_include_pkgdata_DATA)'; test -n "$(include_pkgdatadir)" || list=; \
	if test -n "$$list"; then \
	  echo " mkdir -p '$(DESTDIR)$(include_pkgdatadir)'"; \
	  mkdir -p "$(DESTDIR)$(include_pkgdatadir)" || exit 1; \
	fi; \
	for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  echo "$$d$$p"; \
	done | $(am__base_list) | \
	while read files; do \
	  echo " install -c -m 644 $$files '$(DESTDIR)$(include_pkgdatadir)'"; \
	  install -c -m 644 $$files "$(DESTDIR)$(include_pkgdatadir)" || exit $$?; \
	done

uninstall-dist_include_pkgdataDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(dist_include_pkgdata_DATA)'; test -n "$(include_pkgdatadir)" || list=; \
	files=`for p in $$list; do echo $$p; done | sed -e 's|^.*/||'`; \
	dir='$(DESTDIR)$(include_pkgdatadir)'; $(am__uninstall_files_from_dir)
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
all-am: $(DATA)
installdirs:
	for dir in "$(DESTDIR)$(images_pkgdatadir)" "$(DESTDIR)$(include_pkgdatadir)" "$(DESTDIR)$(pkgdatadir)"; do \
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

install-data-am: install-dist_images_pkgdataDATA \
	install-dist_include_pkgdataDATA install-dist_pkgdataDATA

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

uninstall-am: uninstall-dist_images_pkgdataDATA \
	uninstall-dist_include_pkgdataDATA uninstall-dist_pkgdataDATA

.PHONY: all all-am check check-am clean clean-generic clean-libtool \
	cscopelist-am ctags-am distclean distclean-generic \
	distclean-libtool distdir html html-am \
	install install-am install-data install-data-am \
	install-dist_images_pkgdataDATA \
	install-dist_include_pkgdataDATA install-dist_pkgdataDATA \
	install-exec install-exec-am \
	install-html install-html-am \
	install-man install-pdf install-pdf-am \
	install-strip installcheck installcheck-am \
	installdirs \
	mostlyclean mostlyclean-generic mostlyclean-libtool pdf pdf-am \
	tags-am uninstall uninstall-am \
	uninstall-dist_images_pkgdataDATA \
	uninstall-dist_include_pkgdataDATA uninstall-dist_pkgdataDATA

