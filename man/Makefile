# Platform
OBJEXT = o
# Cross-build
srcdir = .
# # Installation directories
prefix = /usr/local
datarootdir = ${prefix}/share
mandir = ${datarootdir}/man
# Installation hooks
NORMAL_INSTALL = :
NORMAL_UNINSTALL = :
# Distribution making
transform = $(program_transform_name)
program_transform_name = s,x,x,
# Location
top_builddir = ..
top_srcdir = ..
subdir = man
# Internals (not configuration variables)
SHELL = /bin/sh
DIST_COMMON = $(am__DIST_COMMON)
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
man1dir = $(mandir)/man1
man4dir = $(mandir)/man4
MANS = $(man_MANS)
am__DIST_COMMON = \
	$(top_srcdir)/autoconf/mkinstalldirs
man_MANS = \
    cckd.4      \
    cckddiag.1  \
    dasdseq.1   \
    vmfplc2.1

EXTRA_DIST = \
    $(man_MANS) \

all: all-am

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs
install-man1: $(man_MANS)
	@$(NORMAL_INSTALL)
	@list1=''; \
	list2='$(man_MANS)'; \
	test -n "$(man1dir)" \
	  && test -n "`echo $$list1$$list2`" \
	  || exit 0; \
	echo " mkdir -p '$(DESTDIR)$(man1dir)'"; \
	mkdir -p "$(DESTDIR)$(man1dir)" || exit 1; \
	{ for i in $$list1; do echo "$$i"; done;  \
	if test -n "$$list2"; then \
	  for i in $$list2; do echo "$$i"; done \
	    | sed -n '/\.1[a-z]*$$/p'; \
	fi; \
	} | while read p; do \
	  if test -f $$p; then d=; else d="$(srcdir)/"; fi; \
	  echo "$$d$$p"; echo "$$p"; \
	done | \
	sed -e 'n;s,.*/,,;p;h;s,.*\.,,;s,^[^1][0-9a-z]*$$,1,;x' \
	      -e 's,\.[0-9a-z]*$$,,;$(transform);G;s,\n,.,' | \
	sed 'N;N;s,\n, ,g' | { \
	list=; while read file base inst; do \
	  if test "$$base" = "$$inst"; then list="$$list $$file"; else \
	    echo " install -c -m 644 '$$file' '$(DESTDIR)$(man1dir)/$$inst'"; \
	    install -c -m 644 "$$file" "$(DESTDIR)$(man1dir)/$$inst" || exit $$?; \
	  fi; \
	done; \
	for i in $$list; do echo "$$i"; done | $(am__base_list) | \
	while read files; do \
	  test -z "$$files" || { \
	    echo " install -c -m 644 $$files '$(DESTDIR)$(man1dir)'"; \
	    install -c -m 644 $$files "$(DESTDIR)$(man1dir)" || exit $$?; }; \
	done; }

uninstall-man1:
	@$(NORMAL_UNINSTALL)
	@list=''; test -n "$(man1dir)" || exit 0; \
	files=`{ for i in $$list; do echo "$$i"; done; \
	l2='$(man_MANS)'; for i in $$l2; do echo "$$i"; done | \
	  sed -n '/\.1[a-z]*$$/p'; \
	} | sed -e 's,.*/,,;h;s,.*\.,,;s,^[^1][0-9a-z]*$$,1,;x' \
	      -e 's,\.[0-9a-z]*$$,,;$(transform);G;s,\n,.,'`; \
	dir='$(DESTDIR)$(man1dir)'; $(am__uninstall_files_from_dir)
install-man4: $(man_MANS)
	@$(NORMAL_INSTALL)
	@list1=''; \
	list2='$(man_MANS)'; \
	test -n "$(man4dir)" \
	  && test -n "`echo $$list1$$list2`" \
	  || exit 0; \
	echo " mkdir -p '$(DESTDIR)$(man4dir)'"; \
	mkdir -p "$(DESTDIR)$(man4dir)" || exit 1; \
	{ for i in $$list1; do echo "$$i"; done;  \
	if test -n "$$list2"; then \
	  for i in $$list2; do echo "$$i"; done \
	    | sed -n '/\.4[a-z]*$$/p'; \
	fi; \
	} | while read p; do \
	  if test -f $$p; then d=; else d="$(srcdir)/"; fi; \
	  echo "$$d$$p"; echo "$$p"; \
	done | \
	sed -e 'n;s,.*/,,;p;h;s,.*\.,,;s,^[^4][0-9a-z]*$$,4,;x' \
	      -e 's,\.[0-9a-z]*$$,,;$(transform);G;s,\n,.,' | \
	sed 'N;N;s,\n, ,g' | { \
	list=; while read file base inst; do \
	  if test "$$base" = "$$inst"; then list="$$list $$file"; else \
	    echo " install -c -m 644 '$$file' '$(DESTDIR)$(man4dir)/$$inst'"; \
	    install -c -m 644 "$$file" "$(DESTDIR)$(man4dir)/$$inst" || exit $$?; \
	  fi; \
	done; \
	for i in $$list; do echo "$$i"; done | $(am__base_list) | \
	while read files; do \
	  test -z "$$files" || { \
	    echo " install -c -m 644 $$files '$(DESTDIR)$(man4dir)'"; \
	    install -c -m 644 $$files "$(DESTDIR)$(man4dir)" || exit $$?; }; \
	done; }

uninstall-man4:
	@$(NORMAL_UNINSTALL)
	@list=''; test -n "$(man4dir)" || exit 0; \
	files=`{ for i in $$list; do echo "$$i"; done; \
	l2='$(man_MANS)'; for i in $$l2; do echo "$$i"; done | \
	  sed -n '/\.4[a-z]*$$/p'; \
	} | sed -e 's,.*/,,;h;s,.*\.,,;s,^[^4][0-9a-z]*$$,4,;x' \
	      -e 's,\.[0-9a-z]*$$,,;$(transform);G;s,\n,.,'`; \
	dir='$(DESTDIR)$(man4dir)'; $(am__uninstall_files_from_dir)
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
all-am: $(MANS)
installdirs:
	for dir in "$(DESTDIR)$(man1dir)" "$(DESTDIR)$(man4dir)"; do \
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

install-data-am: install-man

install-exec-am:

install-html: install-html-am

install-html-am:

install-man: install-man1 install-man4

install-pdf: install-pdf-am

install-pdf-am:

installcheck-am:

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-generic mostlyclean-libtool

pdf: pdf-am

pdf-am:

uninstall-am: uninstall-man

uninstall-man: uninstall-man1 uninstall-man4

.PHONY: all all-am check check-am clean clean-generic clean-libtool \
	cscopelist-am ctags-am distclean distclean-generic \
	distclean-libtool distdir html html-am \
	install install-am install-data install-data-am \
	install-exec install-exec-am install-html \
	install-html-am install-man \
	install-man1 install-man4 install-pdf install-pdf-am \
	install-strip installcheck \
	installcheck-am installdirs \
	mostlyclean mostlyclean-generic \
	mostlyclean-libtool pdf pdf-am tags-am uninstall \
	uninstall-am uninstall-man uninstall-man1 uninstall-man4

