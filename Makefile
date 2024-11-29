# Identification
PACKAGE = hercules
VERS_MAJ=5
VERS_INT=0
VERS_MIN=0
VERS_DEV=1
# Compilation flags
CC = gcc
CFLAGS =  -g -g3 -ggdb3 -O3 -Wall -W -pthread -D_GNU_SOURCE
CPPFLAGS =  -DPKGDATADIR=\"$(pkgdatadir)\" -DMODULESDIR=\"$(modexecdir)\" -DHERC_LOCALEDIR=\"$(localedir)\"
#LDFLAGS =  -Wl,--warn-common -L./crypto/lib -L./decNumber/lib -L./SoftFloat/lib -L./telnet/lib
LDFLAGS =  -L./crypto/lib -L./decNumber/lib -L./SoftFloat/lib -L./telnet/lib
LIBS = -lresolv -lm -ldl  -lbz2 -lz -lcrypto64 -ldecNumber64 -lSoftFloat64 -ltelnet64
# Architecture-dependent compiler flags
CFLAGS_x86_64 = -march=native -minline-stringops-dynamically -fomit-frame-pointer
# CFLAGS_riscv64 = ...whatever flags are needed, possibly none
CFLAGS_aarch64 = -march=native
CFLAGS += $(CFLAGS_$(host_cpu))
# Platform
OBJEXT = o
EXEEXT =
# Cross-build
srcdir = .
# # Installation directories
prefix = /usr/local
exec_prefix = ${prefix}
pkgdatadir = $(datadir)/hercules
bindir = ${exec_prefix}/bin
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
libdir = ${exec_prefix}/lib
localedir = ${datarootdir}/locale
mandir = ${datarootdir}/man
# Installation hooks
NORMAL_INSTALL = :
NORMAL_UNINSTALL = :
# Distribution making
distdir = $(PACKAGE)-$(VERSION)
top_distdir = $(distdir)
transform = $(program_transform_name)
program_transform_name = s,x,x,
DIST_ARCHIVES = $(distdir).tar.gz
GZIP_ENV = --best
# Location
top_builddir = .
top_srcdir = .
subdir = .
# Portability kludges (not configuration variables)
am__remove_distdir = \
  if test -d "$(distdir)"; then \
    find "$(distdir)" -type d ! -perm -200 -exec chmod u+w {} ';' \
      && rm -rf "$(distdir)" \
      || { sleep 5 && rm -rf "$(distdir)"; }; \
  else :; fi
# Internals (not configuration variables)
SHELL = /bin/sh
DIST_COMMON = \
	$(am__configure_deps) $(noinst_HEADERS) $(am__DIST_COMMON)
DIST_SUBDIRS = $(SUBDIRS)
DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(EXTRA_DIST)
SOURCES = $(dyncrypt_la_SOURCES) $(dyngui_la_SOURCES) \
	$(hdt1052c_la_SOURCES) $(hdt1403_la_SOURCES) \
	$(hdt2703_la_SOURCES) $(hdt2880_la_SOURCES) \
	$(hdt3088_la_SOURCES) $(hdt3270_la_SOURCES) \
	$(hdt3420_la_SOURCES) $(hdt3505_la_SOURCES) \
	$(hdt3525_la_SOURCES) $(hdt3705_la_SOURCES) \
	$(hdt3705ii_la_SOURCES) $(hdtdummy_la_SOURCES) \
	$(hdteq_la_SOURCES) $(hdtptp_la_SOURCES) $(hdtqeth_la_SOURCES) \
	$(hdttcpnje_la_SOURCES) $(hdtzfcp_la_SOURCES) \
	$(libhdt3420_not_mod_la_SOURCES) $(libherc_la_SOURCES) \
	$(EXTRA_libherc_la_SOURCES) $(libhercd_la_SOURCES) \
	$(libhercs_la_SOURCES) $(libherct_la_SOURCES) \
	$(libhercu_la_SOURCES) $(cckdcdsk_SOURCES) \
	$(cckdcdsk64_SOURCES) $(cckdcomp_SOURCES) \
	$(cckdcomp64_SOURCES) $(cckddiag_SOURCES) \
	$(cckddiag64_SOURCES) $(cckdmap_SOURCES) $(cckdswap_SOURCES) \
	$(cckdswap64_SOURCES) $(convto64_SOURCES) $(dasdcat_SOURCES) \
	$(dasdconv_SOURCES) $(dasdconv64_SOURCES) $(dasdcopy_SOURCES) \
	$(dasdcopy64_SOURCES) $(dasdinit_SOURCES) \
	$(dasdinit64_SOURCES) $(dasdisup_SOURCES) $(dasdload_SOURCES) \
	$(dasdload64_SOURCES) $(dasdls_SOURCES) $(dasdpdsu_SOURCES) \
	$(dasdseq_SOURCES) $(dasdser_SOURCES) $(dmap2hrc_SOURCES) \
	$(hercifc_SOURCES) $(herclin_SOURCES) $(hercules_SOURCES) \
	$(hetget_SOURCES) $(hetinit_SOURCES) $(hetmap_SOURCES) \
	$(hetupd_SOURCES) $(maketape_SOURCES) $(tapecopy_SOURCES) \
	$(tapemap_SOURCES) $(tapesplt_SOURCES) $(tfprint_SOURCES) \
	$(tfswap_SOURCES) $(txt2card_SOURCES) $(vmfplc2_SOURCES)
DIST_SOURCES = $(dyncrypt_la_SOURCES) $(dyngui_la_SOURCES) \
	$(hdt1052c_la_SOURCES) $(hdt1403_la_SOURCES) \
	$(hdt2703_la_SOURCES) $(hdt2880_la_SOURCES) \
	$(hdt3088_la_SOURCES) $(hdt3270_la_SOURCES) \
	$(hdt3420_la_SOURCES) $(hdt3505_la_SOURCES) \
	$(hdt3525_la_SOURCES) $(hdt3705_la_SOURCES) \
	$(hdt3705ii_la_SOURCES) $(hdtdummy_la_SOURCES) \
	$(hdteq_la_SOURCES) $(hdtptp_la_SOURCES) $(hdtqeth_la_SOURCES) \
	$(hdttcpnje_la_SOURCES) $(hdtzfcp_la_SOURCES) \
	$(libhdt3420_not_mod_la_SOURCES) $(libherc_la_SOURCES) \
	$(EXTRA_libherc_la_SOURCES) $(libhercd_la_SOURCES) \
	$(libhercs_la_SOURCES) $(libherct_la_SOURCES) \
	$(am__libhercu_la_SOURCES_DIST) $(cckdcdsk_SOURCES) \
	$(cckdcdsk64_SOURCES) $(cckdcomp_SOURCES) \
	$(cckdcomp64_SOURCES) $(cckddiag_SOURCES) \
	$(cckddiag64_SOURCES) $(cckdmap_SOURCES) $(cckdswap_SOURCES) \
	$(cckdswap64_SOURCES) $(convto64_SOURCES) $(dasdcat_SOURCES) \
	$(dasdconv_SOURCES) $(dasdconv64_SOURCES) $(dasdcopy_SOURCES) \
	$(dasdcopy64_SOURCES) $(dasdinit_SOURCES) \
	$(dasdinit64_SOURCES) $(dasdisup_SOURCES) $(dasdload_SOURCES) \
	$(dasdload64_SOURCES) $(dasdls_SOURCES) $(dasdpdsu_SOURCES) \
	$(dasdseq_SOURCES) $(dasdser_SOURCES) $(dmap2hrc_SOURCES) \
	$(am__hercifc_SOURCES_DIST) $(herclin_SOURCES) \
	$(hercules_SOURCES) $(hetget_SOURCES) $(hetinit_SOURCES) \
	$(hetmap_SOURCES) $(hetupd_SOURCES) $(maketape_SOURCES) \
	$(tapecopy_SOURCES) $(tapemap_SOURCES) $(tapesplt_SOURCES) \
	$(tfprint_SOURCES) $(tfswap_SOURCES) $(txt2card_SOURCES) \
	$(vmfplc2_SOURCES)
RECURSIVE_TARGETS = all-recursive check-recursive cscopelist-recursive \
	ctags-recursive html-recursive \
	install-data-recursive \
	install-exec-recursive install-html-recursive \
	install-pdf-recursive \
	install-recursive installcheck-recursive \
	installdirs-recursive pdf-recursive \
	tags-recursive uninstall-recursive
RECURSIVE_CLEAN_TARGETS = mostlyclean-recursive clean-recursive	\
  distclean-recursive
LIBTOOL = ./libtool # $(SHELL) $(top_builddir)/libtool
CYGPATH_W = echo
DEPDIR = .deps
LIBS = -lresolv -lm -ldl  -lbz2 -lz -lcrypto64 -ldecNumber64 -lSoftFloat64 -ltelnet64
# control variables end here
-include ./config.mk

am__is_gnu_make = { \
  if test -z '$(MAKELEVEL)'; then \
    false; \
  elif test -n '$(MAKE_HOST)'; then \
    true; \
  elif test -n '$(MAKE_VERSION)' && test -n '$(CURDIR)'; then \
    true; \
  else \
    false; \
  fi; \
}
am__make_running_with_option = \
  case $${target_option-} in \
      ?) ;; \
      *) echo "am__make_running_with_option: internal error: invalid" \
              "target option '$${target_option-}' specified" >&2; \
         exit 1;; \
  esac; \
  has_opt=no; \
  sane_makeflags=$$MAKEFLAGS; \
  if $(am__is_gnu_make); then \
    sane_makeflags=$$MFLAGS; \
  else \
    case $$MAKEFLAGS in \
      *\\[\ \	]*) \
        bs=\\; \
        sane_makeflags=`printf '%s\n' "$$MAKEFLAGS" \
          | sed "s/$$bs$$bs[$$bs $$bs	]*//g"`;; \
    esac; \
  fi; \
  skip_next=no; \
  strip_trailopt () \
  { \
    flg=`printf '%s\n' "$$flg" | sed "s/$$1.*$$//"`; \
  }; \
  for flg in $$sane_makeflags; do \
    test $$skip_next = yes && { skip_next=no; continue; }; \
    case $$flg in \
      *=*|--*) continue;; \
        -*I) strip_trailopt 'I'; skip_next=yes;; \
      -*I?*) strip_trailopt 'I';; \
        -*O) strip_trailopt 'O'; skip_next=yes;; \
      -*O?*) strip_trailopt 'O';; \
        -*l) strip_trailopt 'l'; skip_next=yes;; \
      -*l?*) strip_trailopt 'l';; \
      -[dEDm]) skip_next=yes;; \
      -[JT]) skip_next=yes;; \
    esac; \
    case $$flg in \
      *$$target_option*) has_opt=yes; break;; \
    esac; \
  done; \
  test $$has_opt = yes
am__make_dryrun = (target_option=n; $(am__make_running_with_option))
am__make_keepgoing = (target_option=k; $(am__make_running_with_option))
bin_PROGRAMS = cckdcdsk$(EXEEXT) cckdcomp$(EXEEXT) cckddiag$(EXEEXT) \
	cckdswap$(EXEEXT) cckdcdsk64$(EXEEXT) cckdcomp64$(EXEEXT) \
	cckddiag64$(EXEEXT) cckdswap64$(EXEEXT) convto64$(EXEEXT) \
	cckdmap$(EXEEXT) dasdcat$(EXEEXT) dasdconv$(EXEEXT) \
	dasdcopy$(EXEEXT) dasdinit$(EXEEXT) dasdconv64$(EXEEXT) \
	dasdcopy64$(EXEEXT) dasdinit64$(EXEEXT) dasdisup$(EXEEXT) \
	dasdload$(EXEEXT) dasdload64$(EXEEXT) dasdls$(EXEEXT) \
	dasdpdsu$(EXEEXT) dasdseq$(EXEEXT) dasdser$(EXEEXT) \
	dmap2hrc$(EXEEXT) hercules$(EXEEXT) hetget$(EXEEXT) \
	hetinit$(EXEEXT) hetmap$(EXEEXT) hetupd$(EXEEXT) \
	maketape$(EXEEXT) tapecopy$(EXEEXT) tapemap$(EXEEXT) \
	tapesplt$(EXEEXT) tfprint$(EXEEXT) tfswap$(EXEEXT) \
	txt2card$(EXEEXT) vmfplc2$(EXEEXT) $(am__EXEEXT_1) \
	$(am__EXEEXT_2)
CONFIG_CLEAN_VPATH_FILES =
am__EXEEXT_1 = hercifc$(EXEEXT)
am__EXEEXT_2 = herclin$(EXEEXT)
PROGRAMS = $(bin_PROGRAMS)
am__strip_dir = f=`echo $$p | sed -e 's|^.*/||'`;
LTLIBRARIES = $(lib_LTLIBRARIES) $(modexec_LTLIBRARIES) \
	$(noinst_LTLIBRARIES)
am__DEPENDENCIES_1 =
am__DEPENDENCIES_2 = libherc.la libhercs.la libhercu.la \
	$(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1)
dyncrypt_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_dyncrypt_la_OBJECTS = dyncrypt.lo
dyncrypt_la_OBJECTS = $(am_dyncrypt_la_OBJECTS)
dyncrypt_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dyncrypt_la_LDFLAGS) $(LDFLAGS) -o $@
dyngui_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_dyngui_la_OBJECTS = dyngui.lo
dyngui_la_OBJECTS = $(am_dyngui_la_OBJECTS)
dyngui_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dyngui_la_LDFLAGS) $(LDFLAGS) -o $@
hdt1052c_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt1052c_la_OBJECTS = con1052c.lo
hdt1052c_la_OBJECTS = $(am_hdt1052c_la_OBJECTS)
hdt1052c_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt1052c_la_LDFLAGS) $(LDFLAGS) -o $@
hdt1403_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt1403_la_OBJECTS = printer.lo sockdev.lo
hdt1403_la_OBJECTS = $(am_hdt1403_la_OBJECTS)
hdt1403_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt1403_la_LDFLAGS) $(LDFLAGS) -o $@
hdt2703_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt2703_la_OBJECTS = commadpt.lo
hdt2703_la_OBJECTS = $(am_hdt2703_la_OBJECTS)
hdt2703_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt2703_la_LDFLAGS) $(LDFLAGS) -o $@
hdt2880_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt2880_la_OBJECTS = hchan.lo
hdt2880_la_OBJECTS = $(am_hdt2880_la_OBJECTS)
hdt2880_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt2880_la_LDFLAGS) $(LDFLAGS) -o $@
hdt3088_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt3088_la_OBJECTS = ctc_lcs.lo ctc_ctci.lo ctcadpt.lo tuntap.lo \
	netsupp.lo
hdt3088_la_OBJECTS = $(am_hdt3088_la_OBJECTS)
hdt3088_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt3088_la_LDFLAGS) $(LDFLAGS) -o $@
hdt3270_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt3270_la_OBJECTS = console.lo
hdt3270_la_OBJECTS = $(am_hdt3270_la_OBJECTS)
hdt3270_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt3270_la_LDFLAGS) $(LDFLAGS) -o $@
hdt3420_la_DEPENDENCIES = $(am__DEPENDENCIES_2) libherct.la
am_hdt3420_la_OBJECTS = tapedev.lo tapeccws.lo awstape.lo faketape.lo \
	hettape.lo omatape.lo scsitape.lo scsiutil.lo
hdt3420_la_OBJECTS = $(am_hdt3420_la_OBJECTS)
hdt3420_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt3420_la_LDFLAGS) $(LDFLAGS) -o $@
hdt3505_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt3505_la_OBJECTS = cardrdr.lo sockdev.lo
hdt3505_la_OBJECTS = $(am_hdt3505_la_OBJECTS)
hdt3505_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt3505_la_LDFLAGS) $(LDFLAGS) -o $@
hdt3525_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt3525_la_OBJECTS = cardpch.lo sockdev.lo
hdt3525_la_OBJECTS = $(am_hdt3525_la_OBJECTS)
hdt3525_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt3525_la_LDFLAGS) $(LDFLAGS) -o $@
hdt3705_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt3705_la_OBJECTS = comm3705.lo
hdt3705_la_OBJECTS = $(am_hdt3705_la_OBJECTS)
hdt3705_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt3705_la_LDFLAGS) $(LDFLAGS) -o $@
hdt3705ii_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdt3705ii_la_OBJECTS = cm3705ii.lo
hdt3705ii_la_OBJECTS = $(am_hdt3705ii_la_OBJECTS)
hdt3705ii_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdt3705ii_la_LDFLAGS) $(LDFLAGS) -o $@
hdtdummy_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdtdummy_la_OBJECTS = dummydev.lo
hdtdummy_la_OBJECTS = $(am_hdtdummy_la_OBJECTS)
hdtdummy_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdtdummy_la_LDFLAGS) $(LDFLAGS) -o $@
hdteq_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdteq_la_OBJECTS = hdteq.lo
hdteq_la_OBJECTS = $(am_hdteq_la_OBJECTS)
hdteq_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdteq_la_LDFLAGS) $(LDFLAGS) -o $@
hdtptp_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdtptp_la_OBJECTS = ctc_ptp.lo mpc.lo resolve.lo tuntap.lo
hdtptp_la_OBJECTS = $(am_hdtptp_la_OBJECTS)
hdtptp_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdtptp_la_LDFLAGS) $(LDFLAGS) -o $@
hdtqeth_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdtqeth_la_OBJECTS = qeth.lo mpc.lo resolve.lo tuntap.lo
hdtqeth_la_OBJECTS = $(am_hdtqeth_la_OBJECTS)
hdtqeth_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdtqeth_la_LDFLAGS) $(LDFLAGS) -o $@
hdttcpnje_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdttcpnje_la_OBJECTS = tcpnje.lo
hdttcpnje_la_OBJECTS = $(am_hdttcpnje_la_OBJECTS)
hdttcpnje_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdttcpnje_la_LDFLAGS) $(LDFLAGS) -o $@
hdtzfcp_la_DEPENDENCIES = $(am__DEPENDENCIES_2)
am_hdtzfcp_la_OBJECTS = zfcp.lo
hdtzfcp_la_OBJECTS = $(am_hdtzfcp_la_OBJECTS)
hdtzfcp_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hdtzfcp_la_LDFLAGS) $(LDFLAGS) -o $@
libhdt3420_not_mod_la_DEPENDENCIES = $(am__DEPENDENCIES_1) libherct.la \
	libhercs.la libhercu.la libherc.la libherct.la
am_libhdt3420_not_mod_la_OBJECTS = tapedev.lo tapeccws.lo awstape.lo \
	faketape.lo hettape.lo omatape.lo scsitape.lo scsiutil.lo
libhdt3420_not_mod_la_OBJECTS = $(am_libhdt3420_not_mod_la_OBJECTS)
libhdt3420_not_mod_la_LINK = $(LIBTOOL) --tag=CC \
	 $(LIBTOOLFLAGS) --mode=link $(CC) \
	 $(CFLAGS) $(libhdt3420_not_mod_la_LDFLAGS) \
	$(LDFLAGS) -o $@
libherc_la_DEPENDENCIES = libhercs.la libhercu.la libherct.la \
	libhercd.la $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1)
am__objects_1 =
am_libherc_la_OBJECTS = _archdep_templ.lo archlvl.lo assist.lo \
	bldcfg.lo cgibin.lo channel.lo chsc.lo clock.lo cmdtab.lo \
	cmpsc_2012.lo cmpscdbg.lo cmpscdct.lo cmpscget.lo cmpscmem.lo \
	cmpscput.lo config.lo control.lo cpu.lo crypto.lo dat.lo \
	decimal.lo dfp.lo diagmssf.lo diagnose.lo dyn76.lo ecpsvm.lo \
	esame.lo external.lo facility.lo fillfnam.lo float.lo \
	general1.lo general2.lo general3.lo hao.lo hbyteswp.lo \
	hconsole.lo hdiagf18.lo history.lo hRexx.lo hRexx_o.lo \
	hRexx_r.lo hsccmd.lo hscemode.lo hscloc.lo hscmisc.lo \
	hscpufun.lo httpserv.lo ieee.lo impl.lo inline.lo io.lo ipl.lo \
	loadmem.lo loadparm.lo losc.lo machchk.lo machdep.lo opcode.lo \
	panel.lo pfpo.lo plo.lo qdio.lo scedasd.lo scescsi.lo \
	script.lo service.lo sie.lo skey.lo sr.lo stack.lo \
	strsignal.lo tcpip.lo timer.lo trace.lo transact.lo vector.lo \
	vm.lo vmd250.lo vstore.lo x75.lo xstore.lo $(am__objects_1)
libherc_la_OBJECTS = $(am_libherc_la_OBJECTS)
libherc_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(libherc_la_LDFLAGS) $(LDFLAGS) -o $@
libhercd_la_DEPENDENCIES = $(am__DEPENDENCIES_1) libhercs.la \
	libhercu.la
am_libhercd_la_OBJECTS = cache.lo cckddasd.lo cckdutil.lo ckddasd.lo \
	cckddasd64.lo cckdutil64.lo ckddasd64.lo dasdtab.lo \
	dasdutil.lo fbadasd.lo dasdutil64.lo fbadasd64.lo shared.lo
libhercd_la_OBJECTS = $(am_libhercd_la_OBJECTS)
libhercd_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(libhercd_la_LDFLAGS) $(LDFLAGS) -o $@
libhercs_la_DEPENDENCIES = $(am__DEPENDENCIES_1)
am_libhercs_la_OBJECTS = hsys.lo
libhercs_la_OBJECTS = $(am_libhercs_la_OBJECTS)
libhercs_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(libhercs_la_LDFLAGS) $(LDFLAGS) -o $@
libherct_la_DEPENDENCIES = $(am__DEPENDENCIES_1) libhercs.la \
	libhercu.la
am_libherct_la_OBJECTS = hetlib.lo ftlib.lo sllib.lo
libherct_la_OBJECTS = $(am_libherct_la_OBJECTS)
libherct_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(libherct_la_LDFLAGS) $(LDFLAGS) -o $@
libhercu_la_DEPENDENCIES = $(am__DEPENDENCIES_1) $(am__DEPENDENCIES_1) \
	libhercs.la
am__libhercu_la_SOURCES_DIST = codepage.c hdl.c hexdumpe.c hostinfo.c \
	hscutl.c hsocket.c hthreads.c logger.c logmsg.c machdep.c \
	memrchr.c parser.c pttrace.c version.c fthreads.c
am__objects_2 = fthreads.lo
#am__objects_3 = $(am__objects_2)
am_libhercu_la_OBJECTS = codepage.lo hdl.lo hexdumpe.lo hostinfo.lo \
	hscutl.lo hsocket.lo hthreads.lo logger.lo logmsg.lo \
	machdep.lo memrchr.lo parser.lo pttrace.lo version.lo \
	$(am__objects_3)
libhercu_la_OBJECTS = $(am_libhercu_la_OBJECTS)
libhercu_la_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(libhercu_la_LDFLAGS) $(LDFLAGS) -o $@
am_cckdcdsk_OBJECTS = cckdcdsk.$(OBJEXT)
cckdcdsk_OBJECTS = $(am_cckdcdsk_OBJECTS)
am__DEPENDENCIES_3 = $(HERCLIBS2) $(am__DEPENDENCIES_1)
cckdcdsk_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckdcdsk_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckdcdsk_LDFLAGS) $(LDFLAGS) -o $@
am_cckdcdsk64_OBJECTS = cckdcdsk64.$(OBJEXT)
cckdcdsk64_OBJECTS = $(am_cckdcdsk64_OBJECTS)
cckdcdsk64_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckdcdsk64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckdcdsk64_LDFLAGS) $(LDFLAGS) -o $@
am_cckdcomp_OBJECTS = cckdcomp.$(OBJEXT)
cckdcomp_OBJECTS = $(am_cckdcomp_OBJECTS)
cckdcomp_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckdcomp_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckdcomp_LDFLAGS) $(LDFLAGS) -o $@
am_cckdcomp64_OBJECTS = cckdcomp64.$(OBJEXT)
cckdcomp64_OBJECTS = $(am_cckdcomp64_OBJECTS)
cckdcomp64_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckdcomp64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckdcomp64_LDFLAGS) $(LDFLAGS) -o $@
am_cckddiag_OBJECTS = cckddiag.$(OBJEXT)
cckddiag_OBJECTS = $(am_cckddiag_OBJECTS)
cckddiag_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckddiag_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckddiag_LDFLAGS) $(LDFLAGS) -o $@
am_cckddiag64_OBJECTS = cckddiag64.$(OBJEXT)
cckddiag64_OBJECTS = $(am_cckddiag64_OBJECTS)
cckddiag64_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckddiag64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckddiag64_LDFLAGS) $(LDFLAGS) -o $@
am_cckdmap_OBJECTS = cckdmap.$(OBJEXT)
cckdmap_OBJECTS = $(am_cckdmap_OBJECTS)
cckdmap_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckdmap_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckdmap_LDFLAGS) $(LDFLAGS) -o $@
am_cckdswap_OBJECTS = cckdswap.$(OBJEXT)
cckdswap_OBJECTS = $(am_cckdswap_OBJECTS)
cckdswap_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckdswap_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckdswap_LDFLAGS) $(LDFLAGS) -o $@
am_cckdswap64_OBJECTS = cckdswap64.$(OBJEXT)
cckdswap64_OBJECTS = $(am_cckdswap64_OBJECTS)
cckdswap64_DEPENDENCIES = $(am__DEPENDENCIES_3)
cckdswap64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(cckdswap64_LDFLAGS) $(LDFLAGS) -o $@
am_convto64_OBJECTS = convto64.$(OBJEXT)
convto64_OBJECTS = $(am_convto64_OBJECTS)
convto64_DEPENDENCIES = $(am__DEPENDENCIES_3)
convto64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(convto64_LDFLAGS) $(LDFLAGS) -o $@
am_dasdcat_OBJECTS = dasdcat.$(OBJEXT)
dasdcat_OBJECTS = $(am_dasdcat_OBJECTS)
dasdcat_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdcat_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdcat_LDFLAGS) $(LDFLAGS) -o $@
am_dasdconv_OBJECTS = dasdconv.$(OBJEXT)
dasdconv_OBJECTS = $(am_dasdconv_OBJECTS)
dasdconv_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdconv_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdconv_LDFLAGS) $(LDFLAGS) -o $@
am_dasdconv64_OBJECTS = dasdconv64.$(OBJEXT)
dasdconv64_OBJECTS = $(am_dasdconv64_OBJECTS)
dasdconv64_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdconv64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdconv64_LDFLAGS) $(LDFLAGS) -o $@
am_dasdcopy_OBJECTS = dasdcopy.$(OBJEXT)
dasdcopy_OBJECTS = $(am_dasdcopy_OBJECTS)
dasdcopy_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdcopy_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdcopy_LDFLAGS) $(LDFLAGS) -o $@
am_dasdcopy64_OBJECTS = dasdcopy64.$(OBJEXT)
dasdcopy64_OBJECTS = $(am_dasdcopy64_OBJECTS)
dasdcopy64_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdcopy64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdcopy64_LDFLAGS) $(LDFLAGS) -o $@
am_dasdinit_OBJECTS = dasdinit.$(OBJEXT)
dasdinit_OBJECTS = $(am_dasdinit_OBJECTS)
dasdinit_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdinit_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdinit_LDFLAGS) $(LDFLAGS) -o $@
am_dasdinit64_OBJECTS = dasdinit64.$(OBJEXT)
dasdinit64_OBJECTS = $(am_dasdinit64_OBJECTS)
dasdinit64_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdinit64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdinit64_LDFLAGS) $(LDFLAGS) -o $@
am_dasdisup_OBJECTS = dasdisup.$(OBJEXT)
dasdisup_OBJECTS = $(am_dasdisup_OBJECTS)
dasdisup_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdisup_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdisup_LDFLAGS) $(LDFLAGS) -o $@
am_dasdload_OBJECTS = dasdload.$(OBJEXT)
dasdload_OBJECTS = $(am_dasdload_OBJECTS)
dasdload_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdload_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdload_LDFLAGS) $(LDFLAGS) -o $@
am_dasdload64_OBJECTS = dasdload64.$(OBJEXT)
dasdload64_OBJECTS = $(am_dasdload64_OBJECTS)
dasdload64_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdload64_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdload64_LDFLAGS) $(LDFLAGS) -o $@
am_dasdls_OBJECTS = dasdls.$(OBJEXT)
dasdls_OBJECTS = $(am_dasdls_OBJECTS)
dasdls_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdls_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdls_LDFLAGS) $(LDFLAGS) -o $@
am_dasdpdsu_OBJECTS = dasdpdsu.$(OBJEXT)
dasdpdsu_OBJECTS = $(am_dasdpdsu_OBJECTS)
dasdpdsu_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdpdsu_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdpdsu_LDFLAGS) $(LDFLAGS) -o $@
am_dasdseq_OBJECTS = dasdseq.$(OBJEXT)
dasdseq_OBJECTS = $(am_dasdseq_OBJECTS)
dasdseq_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdseq_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdseq_LDFLAGS) $(LDFLAGS) -o $@
am_dasdser_OBJECTS = dasdser.$(OBJEXT)
dasdser_OBJECTS = $(am_dasdser_OBJECTS)
dasdser_DEPENDENCIES = $(am__DEPENDENCIES_3)
dasdser_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dasdser_LDFLAGS) $(LDFLAGS) -o $@
am_dmap2hrc_OBJECTS = dmap2hrc.$(OBJEXT)
dmap2hrc_OBJECTS = $(am_dmap2hrc_OBJECTS)
dmap2hrc_DEPENDENCIES = $(am__DEPENDENCIES_3)
dmap2hrc_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(dmap2hrc_LDFLAGS) $(LDFLAGS) -o $@
am__hercifc_SOURCES_DIST = hercifc.c
am_hercifc_OBJECTS = hercifc.$(OBJEXT)
hercifc_OBJECTS = $(am_hercifc_OBJECTS)
hercifc_DEPENDENCIES = $(am__DEPENDENCIES_3)
hercifc_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hercifc_LDFLAGS) $(LDFLAGS) -o $@
am_herclin_OBJECTS = herclin.$(OBJEXT)
herclin_OBJECTS = $(am_herclin_OBJECTS)
herclin_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(herclin_LDFLAGS) $(LDFLAGS) -o $@
am_hercules_OBJECTS = bootstrap.$(OBJEXT)
hercules_OBJECTS = $(am_hercules_OBJECTS)
hercules_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hercules_LDFLAGS) $(LDFLAGS) -o $@
am_hetget_OBJECTS = hetget.$(OBJEXT)
hetget_OBJECTS = $(am_hetget_OBJECTS)
hetget_DEPENDENCIES = $(am__DEPENDENCIES_3)
hetget_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hetget_LDFLAGS) $(LDFLAGS) -o $@
am_hetinit_OBJECTS = hetinit.$(OBJEXT)
hetinit_OBJECTS = $(am_hetinit_OBJECTS)
hetinit_DEPENDENCIES = $(am__DEPENDENCIES_3)
hetinit_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hetinit_LDFLAGS) $(LDFLAGS) -o $@
am_hetmap_OBJECTS = hetmap.$(OBJEXT)
hetmap_OBJECTS = $(am_hetmap_OBJECTS)
hetmap_DEPENDENCIES = $(am__DEPENDENCIES_3)
hetmap_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hetmap_LDFLAGS) $(LDFLAGS) -o $@
am_hetupd_OBJECTS = hetupd.$(OBJEXT)
hetupd_OBJECTS = $(am_hetupd_OBJECTS)
hetupd_DEPENDENCIES = $(am__DEPENDENCIES_3)
hetupd_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(hetupd_LDFLAGS) $(LDFLAGS) -o $@
am_maketape_OBJECTS = maketape.$(OBJEXT)
maketape_OBJECTS = $(am_maketape_OBJECTS)
maketape_DEPENDENCIES = $(am__DEPENDENCIES_3)
maketape_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(maketape_LDFLAGS) $(LDFLAGS) -o $@
am_tapecopy_OBJECTS = tapecopy-tapecopy.$(OBJEXT) \
	tapecopy-scsiutil.$(OBJEXT)
tapecopy_OBJECTS = $(am_tapecopy_OBJECTS)
tapecopy_DEPENDENCIES = $(am__DEPENDENCIES_3)
tapecopy_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(tapecopy_CFLAGS) \
	$(CFLAGS) $(tapecopy_LDFLAGS) $(LDFLAGS) -o $@
am_tapemap_OBJECTS = tapemap.$(OBJEXT)
tapemap_OBJECTS = $(am_tapemap_OBJECTS)
tapemap_DEPENDENCIES = $(am__DEPENDENCIES_3)
tapemap_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(tapemap_LDFLAGS) $(LDFLAGS) -o $@
am_tapesplt_OBJECTS = tapesplt.$(OBJEXT)
tapesplt_OBJECTS = $(am_tapesplt_OBJECTS)
tapesplt_DEPENDENCIES = $(am__DEPENDENCIES_3)
tapesplt_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(tapesplt_LDFLAGS) $(LDFLAGS) -o $@
am_tfprint_OBJECTS = tfprint.$(OBJEXT)
tfprint_OBJECTS = $(am_tfprint_OBJECTS)
tfprint_DEPENDENCIES = $(am__DEPENDENCIES_3)
tfprint_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(tfprint_LDFLAGS) $(LDFLAGS) -o $@
am_tfswap_OBJECTS = tfswap.$(OBJEXT)
tfswap_OBJECTS = $(am_tfswap_OBJECTS)
tfswap_DEPENDENCIES = $(am__DEPENDENCIES_3)
tfswap_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(tfswap_LDFLAGS) $(LDFLAGS) -o $@
am_txt2card_OBJECTS = txt2card.$(OBJEXT)
txt2card_OBJECTS = $(am_txt2card_OBJECTS)
txt2card_DEPENDENCIES = $(am__DEPENDENCIES_3)
txt2card_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(txt2card_LDFLAGS) $(LDFLAGS) -o $@
am_vmfplc2_OBJECTS = vmfplc2.$(OBJEXT)
vmfplc2_OBJECTS = $(am_vmfplc2_OBJECTS)
vmfplc2_DEPENDENCIES = $(am__DEPENDENCIES_3) libhdt3420_not_mod.la
vmfplc2_LINK = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=link $(CC) $(CFLAGS) \
	$(vmfplc2_LDFLAGS) $(LDFLAGS) -o $@
DEFAULT_INCLUDES = -I.
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) --tag=CC \
	$(LIBTOOLFLAGS) --mode=compile $(CC) $(DEFS) \
	$(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) \
	 $(CFLAGS)
HEADERS = $(noinst_HEADERS)
am__recursive_targets = \
  $(RECURSIVE_TARGETS) \
  $(RECURSIVE_CLEAN_TARGETS) \
  $(am__extra_recursive_targets)
am__tagged_files = $(HEADERS) $(SOURCES) $(TAGS_FILES)
# Read a list of newline-separated strings from the standard input,
# and print each of them once, without duplicates.  Input order is
# *not* preserved.
am__uniquify_input = awk '\
  BEGIN { nonempty = 0; } \
  { items[$$0] = 1; nonempty = 1; } \
  END { if (nonempty) { for (i in items) print i; }; } \
'
# Make sure the list of sources is unique.  This is necessary because,
# e.g., the same source file might be shared among _SOURCES variables
# for different programs/libraries.
am__define_uniq_tagged_files = \
  list='$(am__tagged_files)'; \
  unique=`for i in $$list; do \
    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
  done | $(am__uniquify_input)`
am__DIST_COMMON = \
	$(top_srcdir)/autoconf/compile \
	$(top_srcdir)/autoconf/config.guess \
	$(top_srcdir)/autoconf/config.sub \
	$(top_srcdir)/autoconf/depcomp \
	$(top_srcdir)/autoconf/install-sh \
	$(top_srcdir)/autoconf/ltmain.sh \
	$(top_srcdir)/autoconf/missing \
	$(top_srcdir)/autoconf/mkinstalldirs INSTALL README.md \
	autoconf/README autoconf/compile autoconf/config.guess \
	autoconf/config.rpath autoconf/config.sub autoconf/depcomp \
	autoconf/install-sh autoconf/ltmain.sh autoconf/missing \
	autoconf/mkinstalldirs
am__post_remove_distdir = $(am__remove_distdir)
am__relativize = \
  dir0=`pwd`; \
  sed_first='s,^\([^/]*\)/.*$$,\1,'; \
  sed_rest='s,^[^/]*/*,,'; \
  sed_last='s,^.*/\([^/]*\)$$,\1,'; \
  sed_butlast='s,/*[^/]*$$,,'; \
  while test -n "$$dir1"; do \
    first=`echo "$$dir1" | sed -e "$$sed_first"`; \
    if test "$$first" != "."; then \
      if test "$$first" = ".."; then \
        dir2=`echo "$$dir0" | sed -e "$$sed_last"`/"$$dir2"; \
        dir0=`echo "$$dir0" | sed -e "$$sed_butlast"`; \
      else \
        first2=`echo "$$dir2" | sed -e "$$sed_first"`; \
        if test "$$first2" = "$$first"; then \
          dir2=`echo "$$dir2" | sed -e "$$sed_rest"`; \
        else \
          dir2="../$$dir2"; \
        fi; \
        dir0="$$dir0"/"$$first"; \
      fi; \
    fi; \
    dir1=`echo "$$dir1" | sed -e "$$sed_rest"`; \
  done; \
  reldir="$$dir2"
DIST_TARGETS = dist-gzip
# Exists only to be overridden by the user if desired.
AM_DISTCHECK_DVI_TARGET =
distuninstallcheck_listfiles = find . -type f -print
am__distuninstallcheck_listfiles = $(distuninstallcheck_listfiles) \
  | sed 's|^\./|$(prefix)/|' | grep -v '$(infodir)/dir$$'
distcleancheck_listfiles = find . -type f -print
CSCOPE = cscope
LD = /usr/bin/ld -m elf_x86_64
modexecdir = $(libdir)/$(PACKAGE)

#------------------------------------------------------------------------------
extpkg_incdirs = -I ./crypto/include                     -I ./decNumber/include                  -I ./SoftFloat/include                  -I ./telnet/include
extpkg_headers = ./crypto/include/aes.h                      ./crypto/include/crypto.h                   ./crypto/include/sha1.h                     ./crypto/include/sha256.h                   ./crypto/include/sshdes.h                       ./decNumber/include/aes.h                           ./decNumber/include/decnumber.h                     ./decNumber/include/sha1.h                          ./decNumber/include/sha256.h                        ./decNumber/include/sshdes.h                    ./SoftFloat/include/aes.h                           ./SoftFloat/include/softfloat.h                     ./SoftFloat/include/sha1.h                          ./SoftFloat/include/sha256.h                        ./SoftFloat/include/sshdes.h                    ./telnet/include/aes.h                      ./telnet/include/telnet.h                   ./telnet/include/sha1.h                     ./telnet/include/sha256.h                   ./telnet/include/sshdes.h
extpkg_ldadd =
hqa_inc = .
ldadd = -lresolv -lm -ldl  -lbz2 -lz -lcrypto64 -ldecNumber64 -lSoftFloat64 -ltelnet64

#------------------------------------------------------------------------------
# Note! Backslash line continuation is disallowed by newer versions of aclocal
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------

# Now simply pass those version defines on the command-line...
AM_CPPFLAGS = -I $(top_srcdir) -I $(hqa_inc) $(extpkg_incdirs) \
	-D DYNAMIC_VERSION=\"$(DYNAMIC_VERSION)\" -D HOST_ARCH=\"$(host_cpu)\" \
	-D VERSION=\"$(VERS_MAJ).$(VERS_INT).$(VERS_MIN).$(VERS_BLD)\" \
	-D LTDL_SHLIB_EXT=\".$(SOEXT)\"

#------------------------------------------------------------------------------
# Note! Due to inter-module dependencies the sequence
#       (ordering) of the SUBDIRS list is important!
#------------------------------------------------------------------------------
SUBDIRS = \
  util        \
  html        \
  man         \
  .

#------------------------------------------------------------------------------
# Invoke shell script to dynamically define version variables
#------------------------------------------------------------------------------
VERS_BLD := $(shell $(top_srcdir)/_dynamic_version $(top_srcdir) VERS_BLD)
DYNAMIC_VERSION := $(shell $(top_srcdir)/_dynamic_version $(top_srcdir) VERSION )
#HERCIFC =

#------------------------------------------------------------------------------
HERCIFC = hercifc
HERCLIN = herclin
fthreads_SRC = fthreads.c
FTHREADS =
#FTHREADS = $(fthreads_SRC)

#------------------------------------------------------------------------------
#  We need to still include the source for the dynamic modules
#  in with the distribution regardless of whether or not the dyanmic
#  modules themselves are to be built so if dynamic load not possible,
#  then we need to include the source on the EXTRA_hercules_SOURCES
#  statement so even though they won't/don't actually get built, they
#  still nonetheless get included into distribution tarball. This is
#  *similar* to (bit not identical to) the way the fthreads sources
#  are handled. With the fthreads sources though, they can at least always
#  be built (even though they may not always generate any actual code
#  whenever they do) whereas the dynamic module source CANNOT (MUST not)
#  even be *attempted* to be "built" if support for building dynamic modules
#  doesn't even exist on the system doing the building.
#------------------------------------------------------------------------------
dynamic_SRC = \
  dyncrypt.c  \
  dyngui.c    \
  hdteq.c

dyndev_SRC = \
  awstape.c   \
  cardpch.c   \
  cardrdr.c   \
  comm3705.c  \
  cm3705ii.c  \
  commadpt.c  \
  tcpnje.c    \
  con1052c.c  \
  console.c   \
  ctc_ctci.c  \
  ctc_lcs.c   \
  ctc_ptp.c   \
  ctcadpt.c   \
  faketape.c  \
  ftlib.c     \
  hchan.c     \
  hetlib.c    \
  hettape.c   \
  mpc.c       \
  netsupp.c   \
  omatape.c   \
  printer.c   \
  qeth.c      \
  resolve.c   \
  scsitape.c  \
  sllib.c     \
  sockdev.c   \
  tapeccws.c  \
  tapedev.c   \
  tuntap.c    \
  dummydev.c  \
  zfcp.c

#-----------------------------------------------------------------
# -module         :  create a dlopen'able module
# -no-undefined   :  required on all platform that do not allow
#                    shared modules to have undefined symbols
# $(ldadd)        :  Misc Linker flags set by autoconf
# -export-dynamic :  so dlsym works (to be verified -
#                    not sure whether it is necessary)
# -avoid-version  :  needed.. Otherwise libtool gives crazy names
#                    to Windows DLLs
#-----------------------------------------------------------------
XSTATIC =
DYNSRC =
DYNMOD_LD_FLAGS = \
  -module           \
  -no-undefined     \
  $(XSTATIC)        \
  -export-dynamic   \
  -avoid-version

DYNMOD_LD_ADD = \
  libherc.la        \
  libhercs.la       \
  libhercu.la       \
  $(extpkg_ldadd)   \
  $(ldadd)

LIB_LD_FLAGS = \
  -export-dynamic   \
   $(XSTATIC)       \
   -no-undefined    \
   -avoid-version

#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# List of Libtool shared libraries & loadable modules
#------------------------------------------------------------------------------
HERCLIBS =
HERCLIBS2 = \
  libhercs.la   \
  libhercu.la   \
  libherct.la   \
  libhercd.la   \
  libherc.la    \
  libhdt3420_not_mod.la

HERCMODS = \
  dyncrypt.la   \
  dyngui.la     \
  hdteq.la      \
  hdtptp.la     \
  hdtqeth.la    \
  hdtzfcp.la    \
  hdt1052c.la   \
  hdt1403.la    \
  hdt2703.la    \
  hdttcpnje.la  \
  hdt3705.la    \
  hdt3705ii.la  \
  hdt3088.la    \
  hdt3270.la    \
  hdt3420.la    \
  hdt3505.la    \
  hdt2880.la    \
  hdtdummy.la   \
  hdt3525.la

modexec_LTLIBRARIES = $(HERCMODS)
noinst_LTLIBRARIES = $(HERCLIBS)
lib_LTLIBRARIES = $(HERCLIBS2)

#----------------------------------------------------------------------------
# For each module:
#
#   ModuleName_la_SOURCES      = <list of source files>
#   ModuleName_la_LDFLAGS      = $(DYNMOD_LD_FLAGS) (see above)
#   ModuleName_la_LIBADD       = libherc.la (the Core Hercules Shared Library)
#   ModuleName_la_DEPENDENCIES = libherc.la (may not be necessary)
#----------------------------------------------------------------------------
dyncrypt_la_SOURCES = dyncrypt.c
dyncrypt_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
dyncrypt_la_LIBADD = $(DYNMOD_LD_ADD)
dyngui_la_SOURCES = dyngui.c
dyngui_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
dyngui_la_LIBADD = $(DYNMOD_LD_ADD)
hdteq_la_SOURCES = hdteq.c
hdteq_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdteq_la_LIBADD = $(DYNMOD_LD_ADD)
hdt1403_la_SOURCES = printer.c sockdev.c
hdt1403_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt1403_la_LIBADD = $(DYNMOD_LD_ADD)
hdt2880_la_SOURCES = hchan.c
hdt2880_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt2880_la_LIBADD = $(DYNMOD_LD_ADD)
hdt2703_la_SOURCES = commadpt.c
hdt2703_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt2703_la_LIBADD = $(DYNMOD_LD_ADD)
hdttcpnje_la_SOURCES = tcpnje.c
hdttcpnje_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdttcpnje_la_LIBADD = $(DYNMOD_LD_ADD)
hdt3705_la_SOURCES = comm3705.c
hdt3705_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt3705_la_LIBADD = $(DYNMOD_LD_ADD)
hdt3705ii_la_SOURCES = cm3705ii.c
hdt3705ii_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt3705ii_la_LIBADD = $(DYNMOD_LD_ADD)
hdt3088_la_SOURCES = ctc_lcs.c ctc_ctci.c ctcadpt.c tuntap.c netsupp.c
hdt3088_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt3088_la_LIBADD = $(DYNMOD_LD_ADD)
hdt3270_la_SOURCES = console.c
hdt3270_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt3270_la_LIBADD = $(DYNMOD_LD_ADD)
hdt3420_la_SOURCES = tapedev.c tapeccws.c awstape.c faketape.c hettape.c omatape.c scsitape.c scsiutil.c
hdt3420_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt3420_la_LIBADD = $(DYNMOD_LD_ADD) libherct.la
hdt3505_la_SOURCES = cardrdr.c sockdev.c
hdt3505_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt3505_la_LIBADD = $(DYNMOD_LD_ADD)
hdt3525_la_SOURCES = cardpch.c sockdev.c
hdt3525_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt3525_la_LIBADD = $(DYNMOD_LD_ADD)
hdtqeth_la_SOURCES = qeth.c mpc.c resolve.c tuntap.c
hdtqeth_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdtqeth_la_LIBADD = $(DYNMOD_LD_ADD)
hdtzfcp_la_SOURCES = zfcp.c
hdtzfcp_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdtzfcp_la_LIBADD = $(DYNMOD_LD_ADD)
hdt1052c_la_SOURCES = con1052c.c
hdt1052c_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdt1052c_la_LIBADD = $(DYNMOD_LD_ADD)
hdtptp_la_SOURCES = ctc_ptp.c mpc.c resolve.c tuntap.c
hdtptp_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdtptp_la_LIBADD = $(DYNMOD_LD_ADD)
hdtdummy_la_SOURCES = dummydev.c
hdtdummy_la_LDFLAGS = $(DYNMOD_LD_FLAGS)
hdtdummy_la_LIBADD = $(DYNMOD_LD_ADD)

#--------------------------------------------
# Common data areas (shared) library
#--------------------------------------------
libhercs_la_SOURCES = hsys.c
libhercs_la_LDFLAGS = $(LIB_LD_FLAGS)
libhercs_la_LIBADD = $(ldadd)

#--------------------------------------------
# Tape utility subroutines (shared) library
#--------------------------------------------
libherct_la_SOURCES = \
  hetlib.c            \
  ftlib.c             \
  sllib.c

libherct_la_LDFLAGS = $(LIB_LD_FLAGS)
libherct_la_LIBADD = \
  $(ldadd)           \
  libhercs.la        \
  libhercu.la

#--------------------------------------------
# DASD utility subroutines (shared) library
#--------------------------------------------
libhercd_la_SOURCES = \
  cache.c             \
  cckddasd.c          \
  cckdutil.c          \
  ckddasd.c           \
  cckddasd64.c        \
  cckdutil64.c        \
  ckddasd64.c         \
  dasdtab.c           \
  dasdutil.c          \
  fbadasd.c           \
  dasdutil64.c        \
  fbadasd64.c         \
  shared.c

libhercd_la_LDFLAGS = $(LIB_LD_FLAGS)
libhercd_la_LIBADD = \
  $(ldadd)           \
  libhercs.la        \
  libhercu.la

#--------------------------------------------
# Pure Utility functions
#--------------------------------------------
libhercu_la_SOURCES = \
  codepage.c          \
  hdl.c               \
  hexdumpe.c          \
  hostinfo.c          \
  hscutl.c            \
  hsocket.c           \
  hthreads.c          \
  logger.c            \
  logmsg.c            \
  machdep.c           \
  memrchr.c           \
  parser.c            \
  pttrace.c           \
  version.c           \
  $(FTHREADS)

libhercu_la_LDFLAGS = $(LIB_LD_FLAGS)
libhercu_la_LIBADD = \
  $(extpkg_ldadd)     \
  $(ldadd)            \
  libhercs.la

libhdt3420_not_mod_la_SOURCES = \
  tapedev.c                       \
  tapeccws.c                      \
  awstape.c                       \
  faketape.c                      \
  hettape.c                       \
  omatape.c                       \
  scsitape.c                      \
  scsiutil.c

libhdt3420_not_mod_la_LDFLAGS = $(LIB_LD_FLAGS)
libhdt3420_not_mod_la_LIBADD = \
  $(ldadd)                        \
  libherct.la                     \
  libhercs.la                     \
  libhercu.la                     \
  libherc.la                      \
  libherct.la

#--------------------------------------------
# Core Hercules (shared) library
#--------------------------------------------
libherc_la_SOURCES = \
  _archdep_templ.c   \
  archlvl.c          \
  assist.c           \
  bldcfg.c           \
  cgibin.c           \
  channel.c          \
  chsc.c             \
  clock.c            \
  cmdtab.c           \
  cmpsc_2012.c       \
  cmpscdbg.c         \
  cmpscdct.c         \
  cmpscget.c         \
  cmpscmem.c         \
  cmpscput.c         \
  config.c           \
  control.c          \
  cpu.c              \
  crypto.c           \
  dat.c              \
  decimal.c          \
  dfp.c              \
  diagmssf.c         \
  diagnose.c         \
  dyn76.c            \
  ecpsvm.c           \
  esame.c            \
  external.c         \
  facility.c         \
  fillfnam.c         \
  float.c            \
  general1.c         \
  general2.c         \
  general3.c         \
  hao.c              \
  hbyteswp.c         \
  hconsole.c         \
  hdiagf18.c         \
  history.c          \
  hRexx.c            \
  hRexx_o.c          \
  hRexx_r.c          \
  hsccmd.c           \
  hscemode.c         \
  hscloc.c           \
  hscmisc.c          \
  hscpufun.c         \
  httpserv.c         \
  ieee.c             \
  impl.c             \
  inline.c           \
  io.c               \
  ipl.c              \
  loadmem.c          \
  loadparm.c         \
  losc.c             \
  machchk.c          \
  machdep.c          \
  opcode.c           \
  panel.c            \
  pfpo.c             \
  plo.c              \
  qdio.c             \
  scedasd.c          \
  scescsi.c          \
  script.c           \
  service.c          \
  sie.c              \
  skey.c             \
  sr.c               \
  stack.c            \
  strsignal.c        \
  tcpip.c            \
  timer.c            \
  trace.c            \
  transact.c         \
  vector.c           \
  vm.c               \
  vmd250.c           \
  vstore.c           \
  x75.c              \
  xstore.c           \
  $(DYNSRC)

EXTRA_libherc_la_SOURCES = \
  memrchr.c          \
  $(dynamic_SRC)     \
  $(dyndev_SRC)      \
  $(extra_SRC)       \
  $(fthreads_SRC)

libherc_la_LDFLAGS = $(LIB_LD_FLAGS)
libherc_la_LIBADD = \
  libhercs.la       \
  libhercu.la       \
  libherct.la       \
  libhercd.la       \
  $(extpkg_ldadd)   \
  $(ldadd)

#--------------------------------------------------------
#  THIS is the hercules executable.
#--------------------------------------------------------
HLDFLAGS = -dlopen self
HDEPS = $(extpkg_ldadd)
hercules_SOURCES = \
  bootstrap.c

hercules_LDADD = \
  libherc.la      \
  libhercs.la     \
  $(extpkg_ldadd) \
  $(ldadd)

hercules_LDFLAGS = $(HLDFLAGS)
hercules_DEPENDENCIES = \
  libherc.la            \
  libhercs.la           \
  $(HDEPS)

herclin_SOURCES = \
  herclin.c

herclin_LDADD = \
  libherc.la      \
  libhercs.la     \
  $(extpkg_ldadd) \
  $(ldadd)

herclin_LDFLAGS = $(HLDFLAGS)
herclin_DEPENDENCIES = \
  libherc.la           \
  libhercs.la          \
  $(HDEPS)

#------------------------------------------------------------------------------
# Side binaries...  (i.e. our hercules utilities)
#------------------------------------------------------------------------------
tools_LD_FLAGS =
tools_ADDLIBS = $(HERCLIBS2) $(ldadd)
hercifc_SOURCES = hercifc.c
hercifc_LDADD = $(tools_ADDLIBS)
hercifc_LDFLAGS = $(tools_LD_FLAGS)
dasdinit_SOURCES = dasdinit.c
dasdinit_LDADD = $(tools_ADDLIBS)
dasdinit_LDFLAGS = $(tools_LD_FLAGS)
dasdinit64_SOURCES = dasdinit64.c
dasdinit64_LDADD = $(tools_ADDLIBS)
dasdinit64_LDFLAGS = $(tools_LD_FLAGS)
dasdisup_SOURCES = dasdisup.c
dasdisup_LDADD = $(tools_ADDLIBS)
dasdisup_LDFLAGS = $(tools_LD_FLAGS)
dasdload_SOURCES = dasdload.c dasdload2.h
dasdload_LDADD = $(tools_ADDLIBS)
dasdload_LDFLAGS = $(tools_LD_FLAGS)
dasdload64_SOURCES = dasdload64.c dasdload2.h
dasdload64_LDADD = $(tools_ADDLIBS)
dasdload64_LDFLAGS = $(tools_LD_FLAGS)
dasdconv_SOURCES = dasdconv.c
dasdconv_LDADD = $(tools_ADDLIBS)
dasdconv_LDFLAGS = $(tools_LD_FLAGS)
dasdconv64_SOURCES = dasdconv64.c
dasdconv64_LDADD = $(tools_ADDLIBS)
dasdconv64_LDFLAGS = $(tools_LD_FLAGS)
dasdls_SOURCES = dasdls.c
dasdls_LDADD = $(tools_ADDLIBS)
dasdls_LDFLAGS = $(tools_LD_FLAGS)
dasdcat_SOURCES = dasdcat.c
dasdcat_LDADD = $(tools_ADDLIBS)
dasdcat_LDFLAGS = $(tools_LD_FLAGS)
dasdpdsu_SOURCES = dasdpdsu.c
dasdpdsu_LDADD = $(tools_ADDLIBS)
dasdpdsu_LDFLAGS = $(tools_LD_FLAGS)
dasdseq_SOURCES = dasdseq.c
dasdseq_LDADD = $(tools_ADDLIBS)
dasdseq_LDFLAGS = $(tools_LD_FLAGS)
dasdser_SOURCES = dasdser.c
dasdser_LDADD = $(tools_ADDLIBS)
dasdser_LDFLAGS = $(tools_LD_FLAGS)
maketape_SOURCES = maketape.c
maketape_LDADD = $(tools_ADDLIBS)
maketape_LDFLAGS = $(tools_LD_FLAGS)
tapecopy_SOURCES = tapecopy.c scsiutil.c
tapecopy_LDADD = $(tools_ADDLIBS)
tapecopy_LDFLAGS = $(tools_LD_FLAGS)
tapecopy_CFLAGS =
tapemap_SOURCES = tapemap.c
tapemap_LDADD = $(tools_ADDLIBS)
tapemap_LDFLAGS = $(tools_LD_FLAGS)
tapesplt_SOURCES = tapesplt.c
tapesplt_LDADD = $(tools_ADDLIBS)
tapesplt_LDFLAGS = $(tools_LD_FLAGS)
cckdcdsk_SOURCES = cckdcdsk.c
cckdcdsk_LDADD = $(tools_ADDLIBS)
cckdcdsk_LDFLAGS = $(tools_LD_FLAGS)
cckdcomp_SOURCES = cckdcomp.c
cckdcomp_LDADD = $(tools_ADDLIBS)
cckdcomp_LDFLAGS = $(tools_LD_FLAGS)
cckddiag_SOURCES = cckddiag.c
cckddiag_LDADD = $(tools_ADDLIBS)
cckddiag_LDFLAGS = $(tools_LD_FLAGS)
dasdcopy_SOURCES = dasdcopy.c
dasdcopy_LDADD = $(tools_ADDLIBS)
dasdcopy_LDFLAGS = $(tools_LD_FLAGS)
cckdswap_SOURCES = cckdswap.c
cckdswap_LDADD = $(tools_ADDLIBS)
cckdswap_LDFLAGS = $(tools_LD_FLAGS)
cckdcdsk64_SOURCES = cckdcdsk64.c
cckdcdsk64_LDADD = $(tools_ADDLIBS)
cckdcdsk64_LDFLAGS = $(tools_LD_FLAGS)
cckdcomp64_SOURCES = cckdcomp64.c
cckdcomp64_LDADD = $(tools_ADDLIBS)
cckdcomp64_LDFLAGS = $(tools_LD_FLAGS)
cckddiag64_SOURCES = cckddiag64.c
cckddiag64_LDADD = $(tools_ADDLIBS)
cckddiag64_LDFLAGS = $(tools_LD_FLAGS)
dasdcopy64_SOURCES = dasdcopy64.c
dasdcopy64_LDADD = $(tools_ADDLIBS)
dasdcopy64_LDFLAGS = $(tools_LD_FLAGS)
cckdswap64_SOURCES = cckdswap64.c
cckdswap64_LDADD = $(tools_ADDLIBS)
cckdswap64_LDFLAGS = $(tools_LD_FLAGS)
cckdmap_SOURCES = cckdmap.c
cckdmap_LDADD = $(tools_ADDLIBS)
cckdmap_LDFLAGS = $(tools_LD_FLAGS)
convto64_SOURCES = convto64.c
convto64_LDADD = $(tools_ADDLIBS)
convto64_LDFLAGS = $(tools_LD_FLAGS)
hetget_SOURCES = hetget.c
hetget_LDADD = $(tools_ADDLIBS)
hetget_LDFLAGS = $(tools_LD_FLAGS)
hetinit_SOURCES = hetinit.c
hetinit_LDADD = $(tools_ADDLIBS)
hetinit_LDFLAGS = $(tools_LD_FLAGS)
hetmap_SOURCES = hetmap.c
hetmap_LDADD = $(tools_ADDLIBS)
hetmap_LDFLAGS = $(tools_LD_FLAGS)
hetupd_SOURCES = hetupd.c
hetupd_LDADD = $(tools_ADDLIBS)
hetupd_LDFLAGS = $(tools_LD_FLAGS)
dmap2hrc_SOURCES = dmap2hrc.c
dmap2hrc_LDADD = $(tools_ADDLIBS)
dmap2hrc_LDFLAGS = $(tools_LD_FLAGS)
vmfplc2_SOURCES = vmfplc2.c
vmfplc2_LDADD = $(tools_ADDLIBS) libhdt3420_not_mod.la
vmfplc2_LDFLAGS = $(tools_LD_FLAGS)
tfprint_SOURCES = tfprint.c
tfprint_LDADD = $(tools_ADDLIBS)
tfprint_LDFLAGS = $(tools_LD_FLAGS)
tfswap_SOURCES = tfswap.c
tfswap_LDADD = $(tools_ADDLIBS)
tfswap_LDFLAGS = $(tools_LD_FLAGS)
txt2card_SOURCES = txt2card.c
txt2card_LDADD = $(tools_ADDLIBS)
txt2card_LDFLAGS = $(tools_LD_FLAGS)

#------------------------------------------------------------------------------
# Files that are not 'built' per-se
# Also contains some WIN32 only source files
#------------------------------------------------------------------------------
EXTRA_DIST = \
  .gitattributes              \
  .gitignore                  \
  .travis.yml                 \
  _dynamic_version            \
  _dynamic_version.cmd        \
  _TODO.txt                   \
  all-all.jobs                \
  all-all.msbuild.jobs        \
  CODEOWNERS                  \
  debug-all.msbuild.jobs      \
  retail-all.msbuild.jobs     \
  vstools.cmd                 \
  autoconf/config.guess       \
  autoconf/config.rpath       \
  autoconf/config.sub         \
  autoconf/depcomp            \
  autoconf/hercules.m4        \
  autoconf/install-sh         \
  autoconf/libtool.m4         \
  autoconf/ltargz.m4          \
  autoconf/ltdl.m4            \
  autoconf/ltmain.sh          \
  autoconf/ltoptions.m4       \
  autoconf/ltsugar.m4         \
  autoconf/ltversion.m4       \
  autoconf/lt~obsolete.m4     \
  autoconf/missing            \
  autoconf/mkinstalldirs      \
  autoconf/README             \
  bldlvlck                    \
  build_pch.c                 \
  BUILDING                    \
  CHANGES                     \
  conspawn.c                  \
  COPYRIGHT                   \
  debug-all.jobs              \
  dynmake.bat                 \
  getopt.c                    \
  hercdasd.ico                \
  hercdasd.rc                 \
  herclogo.txt                \
  hercmisc.ico                \
  hercmisc.rc                 \
  hercprod.rc                 \
  herctape.ico                \
  herctape.rc                 \
  hercules.cnf                \
  hercules.cnf.rexx           \
  hercules.ico                \
  hercules.m4                 \
  Hercules_VS2008.sln         \
  Hercules_VS2008.vcproj      \
  Hercules_VS2015.sln              \
  Hercules_VS2015.vcxproj          \
  Hercules_VS2015.vcxproj.filters  \
  Hercules_VS2017.sln              \
  Hercules_VS2017.vcxproj          \
  Hercules_VS2017.vcxproj.filters  \
  Hercules_VS2019.sln              \
  Hercules_VS2019.vcxproj          \
  Hercules_VS2019.vcxproj.filters  \
  Hercules_VS2022.sln              \
  Hercules_VS2022.vcxproj          \
  Hercules_VS2022.vcxproj.filters  \
  hercver.rc2                 \
  INSTALL                     \
  license_dyn76.txt           \
  makefile-dllmod.msvc        \
  makefile.bat                \
  makefile.msvc               \
  msvc.makefile.includes/VSVERS.msvc          \
  msvc.makefile.includes/TARGETVER.msvc       \
  msvc.makefile.includes/CONFIG.msvc          \
  msvc.makefile.includes/OUTPUT_DIRS.msvc     \
  msvc.makefile.includes/MODULES.msvc         \
  msvc.makefile.includes/OBJ_CODE.msvc        \
  msvc.makefile.includes/ZLIB_DIR.msvc        \
  msvc.makefile.includes/BZIP2_DIR.msvc       \
  msvc.makefile.includes/PCRE_DIR.msvc        \
  msvc.makefile.includes/REXX_DIRS.msvc       \
  msvc.makefile.includes/HQA_DIR.msvc         \
  msvc.makefile.includes/DEBUG_RETAIL.msvc    \
  msvc.makefile.includes/ZLIB_FLAGS.msvc      \
  msvc.makefile.includes/BZIP2_FLAGS.msvc     \
  msvc.makefile.includes/PCRE_FLAGS.msvc      \
  msvc.makefile.includes/REXX_FLAGS.msvc      \
  msvc.makefile.includes/IPV6_FLAGS.msvc      \
  msvc.makefile.includes/HQA_FLAGS.msvc       \
  msvc.makefile.includes/HERC_FLAGS.msvc      \
  msvc.makefile.includes/VERSION.msvc         \
  msvc.makefile.includes/EXT_PKGS.msvc        \
  msvc.makefile.includes/PRIM_RULES.msvc      \
  msvc.makefile.includes/OUTDIR_RULES.msvc    \
  msvc.makefile.includes/MOD_RULES1.msvc      \
  msvc.makefile.includes/MOD_RULES2.msvc      \
  msvc.makefile.includes/ZLIB_RULES.msvc      \
  msvc.makefile.includes/BZIP2_RULES.msvc     \
  msvc.makefile.includes/PCRE_RULES.msvc      \
  msvc.makefile.includes/REXX_RULES.msvc      \
  README.md                       \
  readme/images/herclogo.jpg      \
  readme/images/httpsrvr.jpg      \
  readme/images/image_header_herculesaethra.png  \
  readme/README.ADDING.md         \
  readme/README.AIX.md            \
  readme/README.APL360.md         \
  readme/README.BSD.md            \
  readme/README.CCKD64.md         \
  readme/README.CMPSC.md          \
  readme/README.COMMADPT.md       \
  readme/README.DAEMON.md         \
  readme/README.DYNMOD.md         \
  readme/README.ECPSVM.md         \
  readme/README.EXTPKG.md         \
  readme/README.FACILITIES.md     \
  readme/README.HAO.md            \
  readme/README.HDL.md            \
  readme/README.HERCLOGO.md       \
  readme/README.HQA.md            \
  readme/README.HRAF.md           \
  readme/README.ISSUES.md         \
  readme/README.MAKETAPE.md       \
  readme/README.MINGW.md          \
  readme/README.MSVC.md           \
  readme/README.NETWORKING.md     \
  readme/README.OSX.md            \
  readme/README.PTT.md            \
  readme/README.REXX.md           \
  readme/README.RUNTEST.md        \
  readme/README.RXVT4APL.md       \
  readme/README.S37X.md           \
  readme/README.SETUID.md         \
  readme/README.SNA.md            \
  readme/README.SUN.md            \
  readme/README.TAPE.md           \
  readme/README.TCPIP.md          \
  readme/README.TCPNJE.md         \
  readme/README.TRACEFILE.md      \
  readme/README.VMFPLC2.md        \
  readme/README.WIN64.md          \
  RELEASE.NOTES               \
  retail-all.jobs             \
  scripts/cmpsc.cnf           \
  scripts/cmpsc.rexx          \
  scripts/hbasics             \
  scripts/hbasic1.rexx        \
  scripts/hbasic2.rex         \
  scripts/hbasic3.cmd         \
  scripts/hbasic4.rx          \
  scripts/hbasic5.ext1        \
  scripts/hcommand.rexx       \
  scripts/hexecio.rexx        \
  scripts/hlinein.rexx        \
  scripts/hrecurs.rexx        \
  crypto/crypto.LICENSE.txt               \
  crypto/crypto.README.txt                \
  crypto/include/crypto.h                 \
  crypto/include/crypto_version.h         \
  crypto/include/rijndael.h               \
  crypto/include/sha1.h                   \
  crypto/include/sha2.h                   \
  crypto/include/sshdes.h                 \
  crypto/lib/crypto32.lib                 \
  crypto/lib/crypto32.pdb                 \
  crypto/lib/crypto32d.lib                \
  crypto/lib/crypto32d.pdb                \
  crypto/lib/crypto64.lib                 \
  crypto/lib/crypto64.pdb                 \
  crypto/lib/crypto64d.lib                \
  crypto/lib/crypto64d.pdb                \
  crypto/lib/libcrypto32.a                \
  crypto/lib/libcrypto32d.a               \
  crypto/lib/libcrypto64.a                \
  crypto/lib/libcrypto64d.a               \
  decNumber/decnumber.ERRATA              \
  decNumber/decnumber.ICU-license.html    \
  decNumber/decnumber.pdf                 \
  decNumber/decnumber.readme.txt          \
  decNumber/include/decContext.h          \
  decNumber/include/decNumber.h           \
  decNumber/include/decPacked.h           \
  decNumber/include/decQuad.h             \
  decNumber/include/decimal128.h          \
  decNumber/include/decimal32.h           \
  decNumber/include/decimal64.h           \
  decNumber/include/decnumber_version.h   \
  decNumber/lib/decNumber32.lib           \
  decNumber/lib/decNumber32.pdb           \
  decNumber/lib/decNumber32d.lib          \
  decNumber/lib/decNumber32d.pdb          \
  decNumber/lib/decNumber64.lib           \
  decNumber/lib/decNumber64.pdb           \
  decNumber/lib/decNumber64d.lib          \
  decNumber/lib/decNumber64d.pdb          \
  decNumber/lib/libdecNumber32.a          \
  decNumber/lib/libdecNumber32d.a         \
  decNumber/lib/libdecNumber64.a          \
  decNumber/lib/libdecNumber64d.a         \
  SoftFloat/doc/SoftFloat-history.html    \
  SoftFloat/doc/SoftFloat-source.html     \
  SoftFloat/doc/SoftFloat.html            \
  SoftFloat/include/softfloat.h           \
  SoftFloat/include/softfloat_types.h     \
  SoftFloat/include/softfloat_version.h   \
  SoftFloat/lib/SoftFloat32.lib           \
  SoftFloat/lib/SoftFloat32.pdb           \
  SoftFloat/lib/SoftFloat32d.lib          \
  SoftFloat/lib/SoftFloat32d.pdb          \
  SoftFloat/lib/SoftFloat64.lib           \
  SoftFloat/lib/SoftFloat64.pdb           \
  SoftFloat/lib/SoftFloat64d.lib          \
  SoftFloat/lib/SoftFloat64d.pdb          \
  SoftFloat/lib/libSoftFloat32.a          \
  SoftFloat/lib/libSoftFloat32d.a         \
  SoftFloat/lib/libSoftFloat64.a          \
  SoftFloat/lib/libSoftFloat64d.a         \
  SoftFloat/softfloat.LICENSE.txt         \
  SoftFloat/softfloat.README.html         \
  SoftFloat/softfloat.README.txt          \
  telnet/include/telnet.h                 \
  telnet/include/telnet_version.h         \
  telnet/lib/libtelnet32.a                \
  telnet/lib/libtelnet32d.a               \
  telnet/lib/libtelnet64.a                \
  telnet/lib/libtelnet64d.a               \
  telnet/lib/telnet32.lib                 \
  telnet/lib/telnet32.pdb                 \
  telnet/lib/telnet32d.lib                \
  telnet/lib/telnet32d.pdb                \
  telnet/lib/telnet64.lib                 \
  telnet/lib/telnet64.pdb                 \
  telnet/lib/telnet64d.lib                \
  telnet/lib/telnet64d.pdb                \
  telnet/telnet.LICENSE.txt               \
  telnet/telnet.README.txt                \
  $(extpkg_headers)

#------------------------------------------------------------------------------
# Source Header files. No 'build' for those
#------------------------------------------------------------------------------
noinst_HEADERS = \
  archlvl.h               \
  cache.h                 \
  ccfixme.h               \
  cckd.h                  \
  cckd64.h                \
  cckddasd.h              \
  ccnowarn.h              \
  ccwarn.h                \
  chsc.h                  \
  clock.h                 \
  cmdtab.h                \
  cmpsc.h                 \
  cmpscbit.h              \
  cmpscdbg.h              \
  cmpscdct.h              \
  cmpscget.h              \
  cmpscmem.h              \
  cmpscput.h              \
  cnsllogo.h              \
  codepage.h              \
  comm3705.h              \
  commadpt.h              \
  tcpnje.h                \
  cpuint.h                \
  ctc_ptp.h               \
  ctcadpt.h               \
  dasdblks.h              \
  dasdtab.h               \
  dat.h                   \
  dbgtrace.h              \
  devtype.h               \
  ecpsvm.h                \
  esa390.h                \
  esa390io.h              \
  extstring.h             \
  facility.h              \
  feat370.h               \
  feat390.h               \
  feat900.h               \
  featall.h               \
  featchk.h               \
  feature.h               \
  fillfnam.h              \
  fthreads.h              \
  ftlib.h                 \
  getopt.h                \
  hatomic.h               \
  hbyteswp.h              \
  hchan.h                 \
  hconsole.h              \
  hconsts.h               \
  hcrypto.h               \
  hdiagf18.h              \
  hdl.h                   \
  herc_getopt.h           \
  hercifc.h               \
  hercules.h              \
  hercwind.h              \
  herror.h                \
  hetlib.h                \
  hexdumpe.h              \
  hexterns.h              \
  hifr.h                  \
  hinlines.h              \
  history.h               \
  hmacros.h               \
  hmalloc.h               \
  hostinfo.h              \
  hostopts.h              \
  hqadefs.h               \
  hqainc.h                \
  hqawarn.h               \
  hRexx.h                 \
  hRexxapi.c              \
  hscutl.h                \
  hsocket.h               \
  hstdinc.h               \
  hstructs.h              \
  hthreads.h              \
  httpmisc.h              \
  htypes.h                \
  impexp.h                \
  inline.h                \
  instfmts.h              \
  linklist.h              \
  logger.h                \
  machdep.h               \
  memrchr.h               \
  mpc.h                   \
  msgenu.h                \
  netsupp.h               \
  opcode.h                \
  parser.h                \
  printfmt.h              \
  pttrace.h               \
  qdio.h                  \
  qeth.h                  \
  resolve.h               \
  scsitape.h              \
  scsiutil.h              \
  service.h               \
  shared.h                \
  sie.h                   \
  skey.h                  \
  sllib.h                 \
  sockdev.h               \
  sr.h                    \
  stfl.h                  \
  tapedev.h               \
  targetver.h             \
  tcpip.h                 \
  transact.h              \
  tt32api.h               \
  tt32if.h                \
  tuntap.h                \
  version.h               \
  vmd250.h                \
  vstore.h                \
  vsvers.h                \
  w32ctca.c               \
  w32ctca.h               \
  w32dl.h                 \
  w32mtio.h               \
  w32stape.c              \
  w32stape.h              \
  w32util.c               \
  w32util.h               \
  x75.h                   \
  zfcp.h

all:
	$(MAKE) all-recursive

.SUFFIXES: .c .lo .o .obj

install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	if test -n "$$list"; then \
	  echo " mkdir -p '$(DESTDIR)$(bindir)'"; \
	  mkdir -p "$(DESTDIR)$(bindir)" || exit 1; \
	fi; \
	for p in $$list; do echo "$$p $$p"; done | \
	sed 's/$(EXEEXT)$$//' | \
	while read p p1; do if test -f $$p \
	 || test -f $$p1 \
	  ; then echo "$$p"; echo "$$p"; else :; fi; \
	done | \
	sed -e 'p;s,.*/,,;n;h' \
	    -e 's|.*|.|' \
	    -e 'p;x;s,.*/,,;s/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/' | \
	sed 'N;N;N;s,\n, ,g' | \
	awk 'BEGIN { files["."] = ""; dirs["."] = 1 } \
	  { d=$$3; if (dirs[d] != 1) { print "d", d; dirs[d] = 1 } \
	    if ($$2 == $$4) files[d] = files[d] " " $$1; \
	    else { print "f", $$3 "/" $$4, $$1; } } \
	  END { for (d in files) print "f", d, files[d] }' | \
	while read type dir files; do \
	    if test "$$dir" = .; then dir=; else dir=/$$dir; fi; \
	    test -z "$$files" || { \
	    echo " $(INSTALL_PROGRAM_ENV) $(LIBTOOL) $(LIBTOOLFLAGS) --mode=install install -c $$files '$(DESTDIR)$(bindir)$$dir'"; \
	    $(INSTALL_PROGRAM_ENV) $(LIBTOOL) $(LIBTOOLFLAGS) --mode=install install -c $$files "$(DESTDIR)$(bindir)$$dir" || exit $$?; \
	    } \
	; done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; test -n "$(bindir)" || list=; \
	files=`for p in $$list; do echo "$$p"; done | \
	  sed -e 'h;s,^.*/,,;s/$(EXEEXT)$$//;$(transform)' \
	      -e 's/$$/$(EXEEXT)/' \
	`; \
	test -n "$$list" || exit 0; \
	echo " ( cd '$(DESTDIR)$(bindir)' && rm -f" $$files ")"; \
	cd "$(DESTDIR)$(bindir)" && rm -f $$files

clean-binPROGRAMS:
	@list='$(bin_PROGRAMS)'; test -n "$$list" || exit 0; \
	echo " rm -f" $$list; \
	rm -f $$list || exit $$?; \
	test -n "$(EXEEXT)" || exit 0; \
	list=`for p in $$list; do echo "$$p"; done | sed 's/$(EXEEXT)$$//'`; \
	echo " rm -f" $$list; \
	rm -f $$list

install-libLTLIBRARIES: $(lib_LTLIBRARIES)
	@$(NORMAL_INSTALL)
	@list='$(lib_LTLIBRARIES)'; test -n "$(libdir)" || list=; \
	list2=; for p in $$list; do \
	  if test -f $$p; then \
	    list2="$$list2 $$p"; \
	  else :; fi; \
	done; \
	test -z "$$list2" || { \
	  echo " mkdir -p '$(DESTDIR)$(libdir)'"; \
	  mkdir -p "$(DESTDIR)$(libdir)" || exit 1; \
	  echo " $(LIBTOOL) $(LIBTOOLFLAGS) --mode=install install -c $(INSTALL_STRIP_FLAG) $$list2 '$(DESTDIR)$(libdir)'"; \
	  $(LIBTOOL) $(LIBTOOLFLAGS) --mode=install install -c $(INSTALL_STRIP_FLAG) $$list2 "$(DESTDIR)$(libdir)"; \
	}

uninstall-libLTLIBRARIES:
	@$(NORMAL_UNINSTALL)
	@list='$(lib_LTLIBRARIES)'; test -n "$(libdir)" || list=; \
	for p in $$list; do \
	  $(am__strip_dir) \
	  echo " $(LIBTOOL) $(LIBTOOLFLAGS) --mode=uninstall rm -f '$(DESTDIR)$(libdir)/$$f'"; \
	  $(LIBTOOL) $(LIBTOOLFLAGS) --mode=uninstall rm -f "$(DESTDIR)$(libdir)/$$f"; \
	done

clean-libLTLIBRARIES:
	-test -z "$(lib_LTLIBRARIES)" || rm -f $(lib_LTLIBRARIES)
	@list='$(lib_LTLIBRARIES)'; \
	locs=`for p in $$list; do echo $$p; done | \
	      sed 's|^[^/]*$$|.|; s|/[^/]*$$||; s|$$|/so_locations|' | \
	      sort -u`; \
	test -z "$$locs" || { \
	  echo rm -f $${locs}; \
	  rm -f $${locs}; \
	}

install-modexecLTLIBRARIES: $(modexec_LTLIBRARIES)
	@$(NORMAL_INSTALL)
	@list='$(modexec_LTLIBRARIES)'; test -n "$(modexecdir)" || list=; \
	list2=; for p in $$list; do \
	  if test -f $$p; then \
	    list2="$$list2 $$p"; \
	  else :; fi; \
	done; \
	test -z "$$list2" || { \
	  echo " mkdir -p '$(DESTDIR)$(modexecdir)'"; \
	  mkdir -p "$(DESTDIR)$(modexecdir)" || exit 1; \
	  echo " $(LIBTOOL) $(LIBTOOLFLAGS) --mode=install install -c $(INSTALL_STRIP_FLAG) $$list2 '$(DESTDIR)$(modexecdir)'"; \
	  $(LIBTOOL) $(LIBTOOLFLAGS) --mode=install install -c $(INSTALL_STRIP_FLAG) $$list2 "$(DESTDIR)$(modexecdir)"; \
	}

uninstall-modexecLTLIBRARIES:
	@$(NORMAL_UNINSTALL)
	@list='$(modexec_LTLIBRARIES)'; test -n "$(modexecdir)" || list=; \
	for p in $$list; do \
	  $(am__strip_dir) \
	  echo " $(LIBTOOL) $(LIBTOOLFLAGS) --mode=uninstall rm -f '$(DESTDIR)$(modexecdir)/$$f'"; \
	  $(LIBTOOL) $(LIBTOOLFLAGS) --mode=uninstall rm -f "$(DESTDIR)$(modexecdir)/$$f"; \
	done

clean-modexecLTLIBRARIES:
	-test -z "$(modexec_LTLIBRARIES)" || rm -f $(modexec_LTLIBRARIES)
	@list='$(modexec_LTLIBRARIES)'; \
	locs=`for p in $$list; do echo $$p; done | \
	      sed 's|^[^/]*$$|.|; s|/[^/]*$$||; s|$$|/so_locations|' | \
	      sort -u`; \
	test -z "$$locs" || { \
	  echo rm -f $${locs}; \
	  rm -f $${locs}; \
	}

clean-noinstLTLIBRARIES:
	-test -z "$(noinst_LTLIBRARIES)" || rm -f $(noinst_LTLIBRARIES)
	@list='$(noinst_LTLIBRARIES)'; \
	locs=`for p in $$list; do echo $$p; done | \
	      sed 's|^[^/]*$$|.|; s|/[^/]*$$||; s|$$|/so_locations|' | \
	      sort -u`; \
	test -z "$$locs" || { \
	  echo rm -f $${locs}; \
	  rm -f $${locs}; \
	}

dyncrypt.la: $(dyncrypt_la_OBJECTS) $(dyncrypt_la_DEPENDENCIES) $(EXTRA_dyncrypt_la_DEPENDENCIES)
	$(dyncrypt_la_LINK) -rpath $(modexecdir) $(dyncrypt_la_OBJECTS) $(dyncrypt_la_LIBADD) $(LIBS)

dyngui.la: $(dyngui_la_OBJECTS) $(dyngui_la_DEPENDENCIES) $(EXTRA_dyngui_la_DEPENDENCIES)
	$(dyngui_la_LINK) -rpath $(modexecdir) $(dyngui_la_OBJECTS) $(dyngui_la_LIBADD) $(LIBS)

hdt1052c.la: $(hdt1052c_la_OBJECTS) $(hdt1052c_la_DEPENDENCIES) $(EXTRA_hdt1052c_la_DEPENDENCIES)
	$(hdt1052c_la_LINK) -rpath $(modexecdir) $(hdt1052c_la_OBJECTS) $(hdt1052c_la_LIBADD) $(LIBS)

hdt1403.la: $(hdt1403_la_OBJECTS) $(hdt1403_la_DEPENDENCIES) $(EXTRA_hdt1403_la_DEPENDENCIES)
	$(hdt1403_la_LINK) -rpath $(modexecdir) $(hdt1403_la_OBJECTS) $(hdt1403_la_LIBADD) $(LIBS)

hdt2703.la: $(hdt2703_la_OBJECTS) $(hdt2703_la_DEPENDENCIES) $(EXTRA_hdt2703_la_DEPENDENCIES)
	$(hdt2703_la_LINK) -rpath $(modexecdir) $(hdt2703_la_OBJECTS) $(hdt2703_la_LIBADD) $(LIBS)

hdt2880.la: $(hdt2880_la_OBJECTS) $(hdt2880_la_DEPENDENCIES) $(EXTRA_hdt2880_la_DEPENDENCIES)
	$(hdt2880_la_LINK) -rpath $(modexecdir) $(hdt2880_la_OBJECTS) $(hdt2880_la_LIBADD) $(LIBS)

hdt3088.la: $(hdt3088_la_OBJECTS) $(hdt3088_la_DEPENDENCIES) $(EXTRA_hdt3088_la_DEPENDENCIES)
	$(hdt3088_la_LINK) -rpath $(modexecdir) $(hdt3088_la_OBJECTS) $(hdt3088_la_LIBADD) $(LIBS)

hdt3270.la: $(hdt3270_la_OBJECTS) $(hdt3270_la_DEPENDENCIES) $(EXTRA_hdt3270_la_DEPENDENCIES)
	$(hdt3270_la_LINK) -rpath $(modexecdir) $(hdt3270_la_OBJECTS) $(hdt3270_la_LIBADD) $(LIBS)

hdt3420.la: $(hdt3420_la_OBJECTS) $(hdt3420_la_DEPENDENCIES) $(EXTRA_hdt3420_la_DEPENDENCIES)
	$(hdt3420_la_LINK) -rpath $(modexecdir) $(hdt3420_la_OBJECTS) $(hdt3420_la_LIBADD) $(LIBS)

hdt3505.la: $(hdt3505_la_OBJECTS) $(hdt3505_la_DEPENDENCIES) $(EXTRA_hdt3505_la_DEPENDENCIES)
	$(hdt3505_la_LINK) -rpath $(modexecdir) $(hdt3505_la_OBJECTS) $(hdt3505_la_LIBADD) $(LIBS)

hdt3525.la: $(hdt3525_la_OBJECTS) $(hdt3525_la_DEPENDENCIES) $(EXTRA_hdt3525_la_DEPENDENCIES)
	$(hdt3525_la_LINK) -rpath $(modexecdir) $(hdt3525_la_OBJECTS) $(hdt3525_la_LIBADD) $(LIBS)

hdt3705.la: $(hdt3705_la_OBJECTS) $(hdt3705_la_DEPENDENCIES) $(EXTRA_hdt3705_la_DEPENDENCIES)
	$(hdt3705_la_LINK) -rpath $(modexecdir) $(hdt3705_la_OBJECTS) $(hdt3705_la_LIBADD) $(LIBS)

hdt3705ii.la: $(hdt3705ii_la_OBJECTS) $(hdt3705ii_la_DEPENDENCIES) $(EXTRA_hdt3705ii_la_DEPENDENCIES)
	$(hdt3705ii_la_LINK) -rpath $(modexecdir) $(hdt3705ii_la_OBJECTS) $(hdt3705ii_la_LIBADD) $(LIBS)

hdtdummy.la: $(hdtdummy_la_OBJECTS) $(hdtdummy_la_DEPENDENCIES) $(EXTRA_hdtdummy_la_DEPENDENCIES)
	$(hdtdummy_la_LINK) -rpath $(modexecdir) $(hdtdummy_la_OBJECTS) $(hdtdummy_la_LIBADD) $(LIBS)

hdteq.la: $(hdteq_la_OBJECTS) $(hdteq_la_DEPENDENCIES) $(EXTRA_hdteq_la_DEPENDENCIES)
	$(hdteq_la_LINK) -rpath $(modexecdir) $(hdteq_la_OBJECTS) $(hdteq_la_LIBADD) $(LIBS)

hdtptp.la: $(hdtptp_la_OBJECTS) $(hdtptp_la_DEPENDENCIES) $(EXTRA_hdtptp_la_DEPENDENCIES)
	$(hdtptp_la_LINK) -rpath $(modexecdir) $(hdtptp_la_OBJECTS) $(hdtptp_la_LIBADD) $(LIBS)

hdtqeth.la: $(hdtqeth_la_OBJECTS) $(hdtqeth_la_DEPENDENCIES) $(EXTRA_hdtqeth_la_DEPENDENCIES)
	$(hdtqeth_la_LINK) -rpath $(modexecdir) $(hdtqeth_la_OBJECTS) $(hdtqeth_la_LIBADD) $(LIBS)

hdttcpnje.la: $(hdttcpnje_la_OBJECTS) $(hdttcpnje_la_DEPENDENCIES) $(EXTRA_hdttcpnje_la_DEPENDENCIES)
	$(hdttcpnje_la_LINK) -rpath $(modexecdir) $(hdttcpnje_la_OBJECTS) $(hdttcpnje_la_LIBADD) $(LIBS)

hdtzfcp.la: $(hdtzfcp_la_OBJECTS) $(hdtzfcp_la_DEPENDENCIES) $(EXTRA_hdtzfcp_la_DEPENDENCIES)
	$(hdtzfcp_la_LINK) -rpath $(modexecdir) $(hdtzfcp_la_OBJECTS) $(hdtzfcp_la_LIBADD) $(LIBS)

libhdt3420_not_mod.la: $(libhdt3420_not_mod_la_OBJECTS) $(libhdt3420_not_mod_la_DEPENDENCIES) $(EXTRA_libhdt3420_not_mod_la_DEPENDENCIES)
	$(libhdt3420_not_mod_la_LINK) -rpath $(libdir) $(libhdt3420_not_mod_la_OBJECTS) $(libhdt3420_not_mod_la_LIBADD) $(LIBS)

libherc.la: $(libherc_la_OBJECTS) $(libherc_la_DEPENDENCIES) $(EXTRA_libherc_la_DEPENDENCIES)
	$(libherc_la_LINK) -rpath $(libdir) $(libherc_la_OBJECTS) $(libherc_la_LIBADD) $(LIBS)

libhercd.la: $(libhercd_la_OBJECTS) $(libhercd_la_DEPENDENCIES) $(EXTRA_libhercd_la_DEPENDENCIES)
	$(libhercd_la_LINK) -rpath $(libdir) $(libhercd_la_OBJECTS) $(libhercd_la_LIBADD) $(LIBS)

libhercs.la: $(libhercs_la_OBJECTS) $(libhercs_la_DEPENDENCIES) $(EXTRA_libhercs_la_DEPENDENCIES)
	$(libhercs_la_LINK) -rpath $(libdir) $(libhercs_la_OBJECTS) $(libhercs_la_LIBADD) $(LIBS)

libherct.la: $(libherct_la_OBJECTS) $(libherct_la_DEPENDENCIES) $(EXTRA_libherct_la_DEPENDENCIES)
	$(libherct_la_LINK) -rpath $(libdir) $(libherct_la_OBJECTS) $(libherct_la_LIBADD) $(LIBS)

libhercu.la: $(libhercu_la_OBJECTS) $(libhercu_la_DEPENDENCIES) $(EXTRA_libhercu_la_DEPENDENCIES)
	$(libhercu_la_LINK) -rpath $(libdir) $(libhercu_la_OBJECTS) $(libhercu_la_LIBADD) $(LIBS)

cckdcdsk$(EXEEXT): $(cckdcdsk_OBJECTS) $(cckdcdsk_DEPENDENCIES) $(EXTRA_cckdcdsk_DEPENDENCIES)
	@rm -f cckdcdsk$(EXEEXT)
	$(cckdcdsk_LINK) $(cckdcdsk_OBJECTS) $(cckdcdsk_LDADD) $(LIBS)

cckdcdsk64$(EXEEXT): $(cckdcdsk64_OBJECTS) $(cckdcdsk64_DEPENDENCIES) $(EXTRA_cckdcdsk64_DEPENDENCIES)
	@rm -f cckdcdsk64$(EXEEXT)
	$(cckdcdsk64_LINK) $(cckdcdsk64_OBJECTS) $(cckdcdsk64_LDADD) $(LIBS)

cckdcomp$(EXEEXT): $(cckdcomp_OBJECTS) $(cckdcomp_DEPENDENCIES) $(EXTRA_cckdcomp_DEPENDENCIES)
	@rm -f cckdcomp$(EXEEXT)
	$(cckdcomp_LINK) $(cckdcomp_OBJECTS) $(cckdcomp_LDADD) $(LIBS)

cckdcomp64$(EXEEXT): $(cckdcomp64_OBJECTS) $(cckdcomp64_DEPENDENCIES) $(EXTRA_cckdcomp64_DEPENDENCIES)
	@rm -f cckdcomp64$(EXEEXT)
	$(cckdcomp64_LINK) $(cckdcomp64_OBJECTS) $(cckdcomp64_LDADD) $(LIBS)

cckddiag$(EXEEXT): $(cckddiag_OBJECTS) $(cckddiag_DEPENDENCIES) $(EXTRA_cckddiag_DEPENDENCIES)
	@rm -f cckddiag$(EXEEXT)
	$(cckddiag_LINK) $(cckddiag_OBJECTS) $(cckddiag_LDADD) $(LIBS)

cckddiag64$(EXEEXT): $(cckddiag64_OBJECTS) $(cckddiag64_DEPENDENCIES) $(EXTRA_cckddiag64_DEPENDENCIES)
	@rm -f cckddiag64$(EXEEXT)
	$(cckddiag64_LINK) $(cckddiag64_OBJECTS) $(cckddiag64_LDADD) $(LIBS)

cckdmap$(EXEEXT): $(cckdmap_OBJECTS) $(cckdmap_DEPENDENCIES) $(EXTRA_cckdmap_DEPENDENCIES)
	@rm -f cckdmap$(EXEEXT)
	$(cckdmap_LINK) $(cckdmap_OBJECTS) $(cckdmap_LDADD) $(LIBS)

cckdswap$(EXEEXT): $(cckdswap_OBJECTS) $(cckdswap_DEPENDENCIES) $(EXTRA_cckdswap_DEPENDENCIES)
	@rm -f cckdswap$(EXEEXT)
	$(cckdswap_LINK) $(cckdswap_OBJECTS) $(cckdswap_LDADD) $(LIBS)

cckdswap64$(EXEEXT): $(cckdswap64_OBJECTS) $(cckdswap64_DEPENDENCIES) $(EXTRA_cckdswap64_DEPENDENCIES)
	@rm -f cckdswap64$(EXEEXT)
	$(cckdswap64_LINK) $(cckdswap64_OBJECTS) $(cckdswap64_LDADD) $(LIBS)

convto64$(EXEEXT): $(convto64_OBJECTS) $(convto64_DEPENDENCIES) $(EXTRA_convto64_DEPENDENCIES)
	@rm -f convto64$(EXEEXT)
	$(convto64_LINK) $(convto64_OBJECTS) $(convto64_LDADD) $(LIBS)

dasdcat$(EXEEXT): $(dasdcat_OBJECTS) $(dasdcat_DEPENDENCIES) $(EXTRA_dasdcat_DEPENDENCIES)
	@rm -f dasdcat$(EXEEXT)
	$(dasdcat_LINK) $(dasdcat_OBJECTS) $(dasdcat_LDADD) $(LIBS)

dasdconv$(EXEEXT): $(dasdconv_OBJECTS) $(dasdconv_DEPENDENCIES) $(EXTRA_dasdconv_DEPENDENCIES)
	@rm -f dasdconv$(EXEEXT)
	$(dasdconv_LINK) $(dasdconv_OBJECTS) $(dasdconv_LDADD) $(LIBS)

dasdconv64$(EXEEXT): $(dasdconv64_OBJECTS) $(dasdconv64_DEPENDENCIES) $(EXTRA_dasdconv64_DEPENDENCIES)
	@rm -f dasdconv64$(EXEEXT)
	$(dasdconv64_LINK) $(dasdconv64_OBJECTS) $(dasdconv64_LDADD) $(LIBS)

dasdcopy$(EXEEXT): $(dasdcopy_OBJECTS) $(dasdcopy_DEPENDENCIES) $(EXTRA_dasdcopy_DEPENDENCIES)
	@rm -f dasdcopy$(EXEEXT)
	$(dasdcopy_LINK) $(dasdcopy_OBJECTS) $(dasdcopy_LDADD) $(LIBS)

dasdcopy64$(EXEEXT): $(dasdcopy64_OBJECTS) $(dasdcopy64_DEPENDENCIES) $(EXTRA_dasdcopy64_DEPENDENCIES)
	@rm -f dasdcopy64$(EXEEXT)
	$(dasdcopy64_LINK) $(dasdcopy64_OBJECTS) $(dasdcopy64_LDADD) $(LIBS)

dasdinit$(EXEEXT): $(dasdinit_OBJECTS) $(dasdinit_DEPENDENCIES) $(EXTRA_dasdinit_DEPENDENCIES)
	@rm -f dasdinit$(EXEEXT)
	$(dasdinit_LINK) $(dasdinit_OBJECTS) $(dasdinit_LDADD) $(LIBS)

dasdinit64$(EXEEXT): $(dasdinit64_OBJECTS) $(dasdinit64_DEPENDENCIES) $(EXTRA_dasdinit64_DEPENDENCIES)
	@rm -f dasdinit64$(EXEEXT)
	$(dasdinit64_LINK) $(dasdinit64_OBJECTS) $(dasdinit64_LDADD) $(LIBS)

dasdisup$(EXEEXT): $(dasdisup_OBJECTS) $(dasdisup_DEPENDENCIES) $(EXTRA_dasdisup_DEPENDENCIES)
	@rm -f dasdisup$(EXEEXT)
	$(dasdisup_LINK) $(dasdisup_OBJECTS) $(dasdisup_LDADD) $(LIBS)

dasdload$(EXEEXT): $(dasdload_OBJECTS) $(dasdload_DEPENDENCIES) $(EXTRA_dasdload_DEPENDENCIES)
	@rm -f dasdload$(EXEEXT)
	$(dasdload_LINK) $(dasdload_OBJECTS) $(dasdload_LDADD) $(LIBS)

dasdload64$(EXEEXT): $(dasdload64_OBJECTS) $(dasdload64_DEPENDENCIES) $(EXTRA_dasdload64_DEPENDENCIES)
	@rm -f dasdload64$(EXEEXT)
	$(dasdload64_LINK) $(dasdload64_OBJECTS) $(dasdload64_LDADD) $(LIBS)

dasdls$(EXEEXT): $(dasdls_OBJECTS) $(dasdls_DEPENDENCIES) $(EXTRA_dasdls_DEPENDENCIES)
	@rm -f dasdls$(EXEEXT)
	$(dasdls_LINK) $(dasdls_OBJECTS) $(dasdls_LDADD) $(LIBS)

dasdpdsu$(EXEEXT): $(dasdpdsu_OBJECTS) $(dasdpdsu_DEPENDENCIES) $(EXTRA_dasdpdsu_DEPENDENCIES)
	@rm -f dasdpdsu$(EXEEXT)
	$(dasdpdsu_LINK) $(dasdpdsu_OBJECTS) $(dasdpdsu_LDADD) $(LIBS)

dasdseq$(EXEEXT): $(dasdseq_OBJECTS) $(dasdseq_DEPENDENCIES) $(EXTRA_dasdseq_DEPENDENCIES)
	@rm -f dasdseq$(EXEEXT)
	$(dasdseq_LINK) $(dasdseq_OBJECTS) $(dasdseq_LDADD) $(LIBS)

dasdser$(EXEEXT): $(dasdser_OBJECTS) $(dasdser_DEPENDENCIES) $(EXTRA_dasdser_DEPENDENCIES)
	@rm -f dasdser$(EXEEXT)
	$(dasdser_LINK) $(dasdser_OBJECTS) $(dasdser_LDADD) $(LIBS)

dmap2hrc$(EXEEXT): $(dmap2hrc_OBJECTS) $(dmap2hrc_DEPENDENCIES) $(EXTRA_dmap2hrc_DEPENDENCIES)
	@rm -f dmap2hrc$(EXEEXT)
	$(dmap2hrc_LINK) $(dmap2hrc_OBJECTS) $(dmap2hrc_LDADD) $(LIBS)

hercifc$(EXEEXT): $(hercifc_OBJECTS) $(hercifc_DEPENDENCIES) $(EXTRA_hercifc_DEPENDENCIES)
	@rm -f hercifc$(EXEEXT)
	$(hercifc_LINK) $(hercifc_OBJECTS) $(hercifc_LDADD) $(LIBS)

herclin$(EXEEXT): $(herclin_OBJECTS) $(herclin_DEPENDENCIES) $(EXTRA_herclin_DEPENDENCIES)
	@rm -f herclin$(EXEEXT)
	$(herclin_LINK) $(herclin_OBJECTS) $(herclin_LDADD) $(LIBS)

hercules$(EXEEXT): $(hercules_OBJECTS) $(hercules_DEPENDENCIES) $(EXTRA_hercules_DEPENDENCIES)
	@rm -f hercules$(EXEEXT)
	$(hercules_LINK) $(hercules_OBJECTS) $(hercules_LDADD) $(LIBS)

hetget$(EXEEXT): $(hetget_OBJECTS) $(hetget_DEPENDENCIES) $(EXTRA_hetget_DEPENDENCIES)
	@rm -f hetget$(EXEEXT)
	$(hetget_LINK) $(hetget_OBJECTS) $(hetget_LDADD) $(LIBS)

hetinit$(EXEEXT): $(hetinit_OBJECTS) $(hetinit_DEPENDENCIES) $(EXTRA_hetinit_DEPENDENCIES)
	@rm -f hetinit$(EXEEXT)
	$(hetinit_LINK) $(hetinit_OBJECTS) $(hetinit_LDADD) $(LIBS)

hetmap$(EXEEXT): $(hetmap_OBJECTS) $(hetmap_DEPENDENCIES) $(EXTRA_hetmap_DEPENDENCIES)
	@rm -f hetmap$(EXEEXT)
	$(hetmap_LINK) $(hetmap_OBJECTS) $(hetmap_LDADD) $(LIBS)

hetupd$(EXEEXT): $(hetupd_OBJECTS) $(hetupd_DEPENDENCIES) $(EXTRA_hetupd_DEPENDENCIES)
	@rm -f hetupd$(EXEEXT)
	$(hetupd_LINK) $(hetupd_OBJECTS) $(hetupd_LDADD) $(LIBS)

maketape$(EXEEXT): $(maketape_OBJECTS) $(maketape_DEPENDENCIES) $(EXTRA_maketape_DEPENDENCIES)
	@rm -f maketape$(EXEEXT)
	$(maketape_LINK) $(maketape_OBJECTS) $(maketape_LDADD) $(LIBS)

tapecopy$(EXEEXT): $(tapecopy_OBJECTS) $(tapecopy_DEPENDENCIES) $(EXTRA_tapecopy_DEPENDENCIES)
	@rm -f tapecopy$(EXEEXT)
	$(tapecopy_LINK) $(tapecopy_OBJECTS) $(tapecopy_LDADD) $(LIBS)

tapemap$(EXEEXT): $(tapemap_OBJECTS) $(tapemap_DEPENDENCIES) $(EXTRA_tapemap_DEPENDENCIES)
	@rm -f tapemap$(EXEEXT)
	$(tapemap_LINK) $(tapemap_OBJECTS) $(tapemap_LDADD) $(LIBS)

tapesplt$(EXEEXT): $(tapesplt_OBJECTS) $(tapesplt_DEPENDENCIES) $(EXTRA_tapesplt_DEPENDENCIES)
	@rm -f tapesplt$(EXEEXT)
	$(tapesplt_LINK) $(tapesplt_OBJECTS) $(tapesplt_LDADD) $(LIBS)

tfprint$(EXEEXT): $(tfprint_OBJECTS) $(tfprint_DEPENDENCIES) $(EXTRA_tfprint_DEPENDENCIES)
	@rm -f tfprint$(EXEEXT)
	$(tfprint_LINK) $(tfprint_OBJECTS) $(tfprint_LDADD) $(LIBS)

tfswap$(EXEEXT): $(tfswap_OBJECTS) $(tfswap_DEPENDENCIES) $(EXTRA_tfswap_DEPENDENCIES)
	@rm -f tfswap$(EXEEXT)
	$(tfswap_LINK) $(tfswap_OBJECTS) $(tfswap_LDADD) $(LIBS)

txt2card$(EXEEXT): $(txt2card_OBJECTS) $(txt2card_DEPENDENCIES) $(EXTRA_txt2card_DEPENDENCIES)
	@rm -f txt2card$(EXEEXT)
	$(txt2card_LINK) $(txt2card_OBJECTS) $(txt2card_LDADD) $(LIBS)

vmfplc2$(EXEEXT): $(vmfplc2_OBJECTS) $(vmfplc2_DEPENDENCIES) $(EXTRA_vmfplc2_DEPENDENCIES)
	@rm -f vmfplc2$(EXEEXT)
	$(vmfplc2_LINK) $(vmfplc2_OBJECTS) $(vmfplc2_LDADD) $(LIBS)

mostlyclean-compile:
	-rm -f *.$(OBJEXT)

distclean-compile:
	-rm -f *.tab.c

_archdep_templ.lo: _archdep_templ.c
archlvl.lo: archlvl.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h archlvl.c
archlvl.c:
assist.lo: assist.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h ecpsvm.h assist.c
assist.c:
awstape.lo: awstape.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
bldcfg.lo: bldcfg.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h bldcfg.c
bldcfg.c:
bootstrap.$(OBJEXT): bootstrap.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h cckddasd.h
cache.lo: cache.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
cardpch.lo: cardpch.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
cardrdr.lo: cardrdr.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
cckdcdsk.$(OBJEXT): cckdcdsk.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdcdsk64.$(OBJEXT): cckdcdsk64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdcomp.$(OBJEXT): cckdcomp.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdcomp64.$(OBJEXT): cckdcomp64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckddasd.lo: cckddasd.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h cckddasd.h ccwarn.h
cckddasd64.lo: cckddasd64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h cckddasd.h ccwarn.h
cckddiag.$(OBJEXT): cckddiag.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckddiag64.$(OBJEXT): cckddiag64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdmap.$(OBJEXT): cckdmap.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdswap.$(OBJEXT): cckdswap.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdswap64.$(OBJEXT): cckdswap64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdutil.lo: cckdutil.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cckdutil64.lo: cckdutil64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cgibin.lo: cgibin.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h httpmisc.h
channel.lo: channel.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h chsc.h inline.h skey.h dat.h vstore.h commadpt.h channel.c
channel.c:
chsc.lo: chsc.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h chsc.h chsc.c
chsc.c:
ckddasd.lo: ckddasd.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h sr.h dasdblks.h cckddasd.h ccwarn.h
ckddasd64.lo: ckddasd64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h sr.h dasdblks.h ccwarn.h cckddasd.h
clock.lo: clock.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h sr.h clock.c
clock.c:
cm3705ii.lo: cm3705ii.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h parser.h
cmdtab.lo: cmdtab.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h history.h cmdtab.h
cmpsc_2012.lo: cmpsc_2012.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h cmpsc.h cmpscbit.h cmpscmem.h cmpscget.h cmpscput.h cmpscdct.h cmpscdbg.h cmpsc_2012.c
cmpsc_2012.c:
cmpscdbg.lo: cmpscdbg.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h cmpsc.h cmpscbit.h cmpscmem.h cmpscget.h cmpscput.h cmpscdct.h cmpscdbg.h cmpscdbg.c
cmpscdbg.c:
cmpscdct.lo: cmpscdct.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h cmpsc.h cmpscbit.h cmpscmem.h cmpscget.h cmpscput.h cmpscdct.h cmpscdbg.h cmpscdct.c
cmpscdct.c:
cmpscget.lo: cmpscget.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h cmpsc.h cmpscbit.h cmpscmem.h cmpscget.h cmpscput.h cmpscdct.h cmpscdbg.h cmpscget.c
cmpscget.c:
cmpscmem.lo: cmpscmem.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h cmpsc.h cmpscbit.h cmpscmem.h cmpscget.h cmpscput.h cmpscdct.h cmpscdbg.h cmpscmem.c
cmpscmem.c:
cmpscput.lo: cmpscput.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h cmpsc.h cmpscbit.h cmpscmem.h cmpscget.h cmpscput.h cmpscdct.h cmpscdbg.h cmpscput.c
cmpscput.c:
codepage.lo: codepage.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
comm3705.lo: comm3705.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h parser.h comm3705.h
commadpt.lo: commadpt.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h parser.h commadpt.h
con1052c.lo: con1052c.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h sr.h
config.lo: config.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h chsc.h cckddasd.h config.c
config.c:
console.lo: console.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h sr.h cnsllogo.h hexdumpe.h
control.lo: control.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h sie.h control.c
control.c:
convto64.$(OBJEXT): convto64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
cpu.lo: cpu.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h cpu.c
cpu.c:
crypto.lo: crypto.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hcrypto.h crypto.c
crypto.c:
ctc_ctci.lo: ctc_ctci.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ctcadpt.h netsupp.h tuntap.h hifr.h herc_getopt.h getopt.h
ctc_lcs.lo: ctc_lcs.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ctcadpt.h netsupp.h tuntap.h hifr.h herc_getopt.h getopt.h
ctc_ptp.lo: ctc_ptp.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ctcadpt.h netsupp.h tuntap.h hifr.h resolve.h ctc_ptp.h mpc.h herc_getopt.h getopt.h
ctcadpt.lo: ctcadpt.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ctcadpt.h netsupp.h tuntap.h hifr.h
dasdcat.$(OBJEXT): dasdcat.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h
dasdconv.$(OBJEXT): dasdconv.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdconv64.$(OBJEXT): dasdconv64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdcopy.$(OBJEXT): dasdcopy.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdcopy64.$(OBJEXT): dasdcopy64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdinit.$(OBJEXT): dasdinit.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdinit64.$(OBJEXT): dasdinit64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdisup.$(OBJEXT): dasdisup.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h
dasdload.$(OBJEXT): dasdload.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h cckddasd.h dasdload2.h
dasdload64.$(OBJEXT): dasdload64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h cckddasd.h dasdload2.h
dasdls.$(OBJEXT): dasdls.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h
dasdpdsu.$(OBJEXT): dasdpdsu.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h
dasdseq.$(OBJEXT): dasdseq.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h
dasdser.$(OBJEXT): dasdser.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdtab.lo: dasdtab.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
dasdutil.lo: dasdutil.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dasdutil64.lo: dasdutil64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h ccwarn.h
dat.lo: dat.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h dat.c
dat.c:
decimal.lo: decimal.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h decimal.c
decimal.c:
dfp.lo: dfp.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h decNumber/include/decimal128.h decNumber/include/decNumber.h decNumber/include/decContext.h decNumber/include/decimal64.h decNumber/include/decimal32.h decNumber/include/decPacked.h dfp.c
dfp.c:
diagmssf.lo: diagmssf.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h diagmssf.c
diagmssf.c:
diagnose.lo: diagnose.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h diagnose.c
diagnose.c:
dmap2hrc.$(OBJEXT): dmap2hrc.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
dummydev.lo: dummydev.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h parser.h
dyn76.lo: dyn76.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h hdiagf18.h dyn76.c
dyn76.c:
dyncrypt.lo: dyncrypt.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h crypto/include/crypto_version.h crypto/include/rijndael.h crypto/include/sha1.h crypto/include/sha2.h crypto/include/sshdes.h dyncrypt.c
dyncrypt.c:
dyngui.lo: dyngui.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
ecpsvm.lo: ecpsvm.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h ecpsvm.h ecpsvm.c
ecpsvm.c:
esame.lo: esame.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h sie.h esame.c
esame.c:
external.lo: external.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h external.c
external.c:
facility.lo: facility.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h facility.c
facility.c:
faketape.lo: faketape.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h ftlib.h
fbadasd.lo: fbadasd.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h sr.h cckddasd.h ccwarn.h
fbadasd64.lo: fbadasd64.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h dasdblks.h sr.h cckddasd.h ccwarn.h
fillfnam.lo: fillfnam.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h fillfnam.h
float.lo: float.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h float.c
float.c:
# dummy
ftlib.lo: ftlib.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ftlib.h
general1.lo: general1.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h general1.c
general1.c:
general2.lo: general2.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h general2.c
general2.c:
general3.lo: general3.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h general3.c
general3.c:
hRexx.lo: hRexx.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hRexx.h
hRexx_o.lo: hRexx_o.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hRexx.h
hRexx_r.lo: hRexx_r.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hRexx.h
hao.lo: hao.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hbyteswp.lo: hbyteswp.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hchan.lo: hchan.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hchan.h
hconsole.lo: hconsole.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hconsole.h
hdiagf18.lo: hdiagf18.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h hdiagf18.h hdiagf18.c
hdiagf18.c:
hdl.lo: hdl.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h httpmisc.h
hdteq.lo: hdteq.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hercifc.$(OBJEXT): hercifc.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hercifc.h hifr.h
herclin.$(OBJEXT): herclin.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hetget.$(OBJEXT): hetget.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ftlib.h sllib.h herc_getopt.h getopt.h
hetinit.$(OBJEXT): hetinit.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ftlib.h sllib.h herc_getopt.h getopt.h
hetlib.lo: hetlib.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hetmap.$(OBJEXT): hetmap.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ftlib.h sllib.h herc_getopt.h getopt.h
hettape.lo: hettape.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
hetupd.$(OBJEXT): hetupd.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h ftlib.h sllib.h herc_getopt.h getopt.h
hexdumpe.lo: hexdumpe.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hexdumpe.h
history.lo: history.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h history.h
hostinfo.lo: hostinfo.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hsccmd.lo: hsccmd.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h history.h httpmisc.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h ctcadpt.h netsupp.h ctc_ptp.h cckddasd.h inline.h skey.h dat.h vstore.h hsccmd.c
hsccmd.c:
hscemode.lo: hscemode.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h hscemode.c
hscemode.c:
hscloc.lo: hscloc.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hscmisc.lo: hscmisc.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h hconsole.h hexdumpe.h hscmisc.c
hscmisc.c:
hscpufun.lo: hscpufun.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hscutl.lo: hscutl.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hsocket.lo: hsocket.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hsys.lo: hsys.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
hthreads.lo: hthreads.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
httpserv.lo: httpserv.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h httpmisc.h
ieee.lo: ieee.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h SoftFloat/include/softfloat.h SoftFloat/include/softfloat_types.h ieee.c
ieee.c:
impl.lo: impl.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h herc_getopt.h getopt.h history.h hRexx.h cckddasd.h
inline.lo: inline.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h inline.c
inline.c:
io.lo: io.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h chsc.h io.c
io.c:
ipl.lo: ipl.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h ipl.c
ipl.c:
loadmem.lo: loadmem.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
loadparm.lo: loadparm.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
logger.lo: logger.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
logmsg.lo: logmsg.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
losc.lo: losc.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
machchk.lo: machchk.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h machchk.c
machchk.c:
machdep.lo: machdep.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
maketape.$(OBJEXT): maketape.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
memrchr.lo: memrchr.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
mpc.lo: mpc.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h mpc.h
netsupp.lo: netsupp.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h netsupp.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tuntap.h hifr.h
omatape.lo: omatape.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
opcode.lo: opcode.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h opcode.c
opcode.c:
panel.lo: panel.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h history.h fillfnam.h hconsole.h
parser.lo: parser.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h parser.h
pfpo.lo: pfpo.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h decNumber/include/decimal128.h decNumber/include/decNumber.h decNumber/include/decContext.h decNumber/include/decimal64.h decNumber/include/decimal32.h decNumber/include/decPacked.h pfpo.c
pfpo.c:
plo.lo: plo.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h plo.c
plo.c:
printer.lo: printer.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
pttrace.lo: pttrace.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
qdio.lo: qdio.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h qdio.c
qdio.c:
qeth.lo: qeth.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h chsc.h mpc.h tuntap.h hifr.h resolve.h ctcadpt.h netsupp.h hercifc.h inline.h skey.h dat.h vstore.h
resolve.lo: resolve.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h resolve.h
scedasd.lo: scedasd.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h scedasd.c
scedasd.c:
scescsi.lo: scescsi.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h scescsi.c
scescsi.c:
script.lo: script.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h script.c
script.c:
scsitape.lo: scsitape.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h scsitape.h tapedev.h parser.h w32stape.h scsiutil.h
scsiutil.lo: scsiutil.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h scsiutil.h
service.lo: service.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h sr.h service.c
service.c:
shared.lo: shared.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h ccwarn.h dasdblks.h
sie.lo: sie.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h sie.h sie.c
sie.c:
skey.lo: skey.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h skey.c
skey.c:
sllib.lo: sllib.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h sllib.h
sockdev.lo: sockdev.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
sr.lo: sr.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h sr.h
stack.lo: stack.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h stack.c
stack.c:
strsignal.lo: strsignal.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
tapeccws.lo: tapeccws.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
tapecopy-scsiutil.$(OBJEXT): scsiutil.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h scsiutil.h
tapecopy-tapecopy.$(OBJEXT): tapecopy.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
tapedev.lo: tapedev.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
tapemap.$(OBJEXT): tapemap.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
tapesplt.$(OBJEXT): tapesplt.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h
tcpip.lo: tcpip.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tcpip.h
tcpnje.lo: tcpnje.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h parser.h tcpnje.h
tfprint.$(OBJEXT): tfprint.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
tfswap.$(OBJEXT): tfswap.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
timer.lo: timer.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
trace.lo: trace.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h trace.c
trace.c:
transact.lo: transact.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h hexdumpe.h transact.c
transact.c:
tuntap.lo: tuntap.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tuntap.h hifr.h ctcadpt.h netsupp.h hercifc.h
txt2card.$(OBJEXT): txt2card.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h
vector.lo: vector.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h vector.c
vector.c:
version.lo: version.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h crypto/include/crypto_version.h decNumber/include/decnumber_version.h SoftFloat/include/softfloat_version.h telnet/include/telnet_version.h
vm.lo: vm.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h commadpt.h vm.c
vm.c:
vmd250.lo: vmd250.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h vmd250.h vmd250.c
vmd250.c:
vmfplc2.$(OBJEXT): vmfplc2.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h tapedev.h scsitape.h w32stape.h scsiutil.h parser.h ccwarn.h
vstore.lo: vstore.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h vstore.c
vstore.c:
x75.lo: x75.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h tcpip.h x75.h x75.c
x75.c:
xstore.lo: xstore.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h inline.h skey.h dat.h vstore.h xstore.c
xstore.c:
zfcp.lo: zfcp.c hstdinc.h hqainc.h ccnowarn.h ccfixme.h getopt.h hostopts.h htypes.h dbgtrace.h hatomic.h hercules.h feature.h featall.h feat370.h feat390.h feat900.h featchk.h cpuint.h impexp.h linklist.h hconsts.h hthreads.h pttrace.h hmacros.h hmalloc.h herror.h extstring.h hostinfo.h version.h esa390.h hscutl.h w32util.h clock.h qeth.h esa390io.h qdio.h codepage.h logger.h hdl.h cache.h devtype.h dasdtab.h shared.h hetlib.h sockdev.h w32ctca.h service.h hsocket.h hstructs.h opcode.h machdep.h instfmts.h telnet/include/telnet.h stfl.h cckd.h cckd64.h transact.h hexterns.h msgenu.h printfmt.h hinlines.h archlvl.h facility.h chsc.h zfcp.h inline.h skey.h dat.h vstore.h

.c.$(OBJEXT):
	$(COMPILE) -c -o $@ $<

.c.obj:
	$(COMPILE) -c -o $@ `$(CYGPATH_W) '$<'`
#	source='$<' object='$@' libtool=no \
#	$(COMPILE) -c -o $@ `$(CYGPATH_W) '$<'`

.c.lo:
	$(LTCOMPILE) -MT $@ -MD -MP -MF $(DEPDIR)/$*.Tpo -c -o $@ $<
#	source='$<' object='$@' libtool=yes \
#	$(LTCOMPILE) -c -o $@ $<

tapecopy-tapecopy.$(OBJEXT): tapecopy.c
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-tapecopy.o `test -f 'tapecopy.c' || echo '$(srcdir)/'`tapecopy.c
#	source='tapecopy.c' object='tapecopy-tapecopy.o' libtool=no \
#	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-tapecopy.o `test -f 'tapecopy.c' || echo '$(srcdir)/'`tapecopy.c

tapecopy-tapecopy.obj: tapecopy.c
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-tapecopy.obj `if test -f 'tapecopy.c'; then $(CYGPATH_W) 'tapecopy.c'; else $(CYGPATH_W) '$(srcdir)/tapecopy.c'; fi`
#	source='tapecopy.c' object='tapecopy-tapecopy.obj' libtool=no \
#	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-tapecopy.obj `if test -f 'tapecopy.c'; then $(CYGPATH_W) 'tapecopy.c'; else $(CYGPATH_W) '$(srcdir)/tapecopy.c'; fi`

tapecopy-scsiutil.$(OBJEXT): scsiutil.c
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-scsiutil.o `test -f 'scsiutil.c' || echo '$(srcdir)/'`scsiutil.c
#	source='scsiutil.c' object='tapecopy-scsiutil.o' libtool=no \
#	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-scsiutil.o `test -f 'scsiutil.c' || echo '$(srcdir)/'`scsiutil.c

tapecopy-scsiutil.obj: scsiutil.c
	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-scsiutil.obj `if test -f 'scsiutil.c'; then $(CYGPATH_W) 'scsiutil.c'; else $(CYGPATH_W) '$(srcdir)/scsiutil.c'; fi`
#	source='scsiutil.c' object='tapecopy-scsiutil.obj' libtool=no \
#	$(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(tapecopy_CFLAGS) $(CFLAGS) -c -o tapecopy-scsiutil.obj `if test -f 'scsiutil.c'; then $(CYGPATH_W) 'scsiutil.c'; else $(CYGPATH_W) '$(srcdir)/scsiutil.c'; fi`

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool config.lt

# This directory's subdirectories are mostly independent; you can cd
# into them and run 'make' without going through this Makefile.
# To change the values of 'make' variables: instead of editing Makefiles,
# (1) if the variable is set in 'config.status', edit 'config.status'
#     (which will cause the Makefiles to be regenerated when you run 'make');
# (2) otherwise, pass the desired values on the 'make' command line.
$(am__recursive_targets):
	@fail=; \
	if $(am__make_keepgoing); then \
	  failcom='fail=yes'; \
	else \
	  failcom='exit 1'; \
	fi; \
	dot_seen=no; \
	target=`echo $@ | sed s/-recursive//`; \
	case "$@" in \
	  distclean-* | maintainer-clean-*) list='$(DIST_SUBDIRS)' ;; \
	  *) list='$(SUBDIRS)' ;; \
	esac; \
	for subdir in $$list; do \
	  echo "Making $$target in $$subdir"; \
	  if test "$$subdir" = "."; then \
	    dot_seen=yes; \
	    local_target="$$target-am"; \
	  else \
	    local_target="$$target"; \
	  fi; \
	  (cd >/dev/null $$subdir && $(MAKE) $$local_target) \
	  || eval $$failcom; \
	done; \
	if test "$$dot_seen" = "no"; then \
	  $(MAKE) "$$target-am" || exit 1; \
	fi; test -z "$$fail"

tags: tags-recursive
TAGS: tags

tags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	set x; \
	here=`pwd`; \
	if (etags --etags-include --version) >/dev/null 2>&1; then \
	  include_option=--etags-include; \
	  empty_fix=.; \
	else \
	  include_option=--include; \
	  empty_fix=; \
	fi; \
	list='$(SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    test ! -f $$subdir/TAGS || \
	      set "$$@" "$$include_option=$$here/$$subdir/TAGS"; \
	  fi; \
	done; \
	$(am__define_uniq_tagged_files); \
	shift; \
	if test -z "$(ETAGS_ARGS)$$*$$unique"; then :; else \
	  test -n "$$unique" || unique=$$empty_fix; \
	  if test $$# -gt 0; then \
	    etags $(ETAGSFLAGS) $(ETAGS_ARGS) \
	      "$$@" $$unique; \
	  else \
	    etags $(ETAGSFLAGS) $(ETAGS_ARGS) \
	      $$unique; \
	  fi; \
	fi
ctags: ctags-recursive

CTAGS: ctags
ctags-am: $(TAGS_DEPENDENCIES) $(am__tagged_files)
	$(am__define_uniq_tagged_files); \
	test -z "$(CTAGS_ARGS)$$unique" \
	  || ctags $(CTAGSFLAGS) $(CTAGS_ARGS) \
	     $$unique

GTAGS:
	here=`cd >/dev/null $(top_builddir) && pwd` \
	  && cd >/dev/null $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) "$$here"
cscope: cscope.files
	test ! -s cscope.files \
	  || $(CSCOPE) -b -q $(CSCOPEFLAGS) -i cscope.files $(CSCOPE_ARGS)
clean-cscope:
	-rm -f cscope.files
cscope.files: clean-cscope cscopelist
cscopelist: cscopelist-recursive

cscopelist-am: $(am__tagged_files)
	list='$(am__tagged_files)'; \
	case "$(srcdir)" in \
	  [\\/]* | ?:[\\/]*) sdir="$(srcdir)" ;; \
	  *) sdir=$(subdir)/$(srcdir) ;; \
	esac; \
	for i in $$list; do \
	  if test -f "$$i"; then \
	    echo "$(subdir)/$$i"; \
	  else \
	    echo "$$sdir/$$i"; \
	  fi; \
	done >> $(top_builddir)/cscope.files

distclean-tags:
	-rm -f TAGS GTAGS GRTAGS GSYMS GPATH tags
	-rm -f cscope.out cscope.in.out cscope.po.out cscope.files
distdir: $(BUILT_SOURCES)
	$(MAKE) distdir-am

distdir-am: $(DISTFILES)
	$(am__remove_distdir)
	test -d "$(distdir)" || mkdir "$(distdir)"
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
	@list='$(DIST_SUBDIRS)'; for subdir in $$list; do \
	  if test "$$subdir" = .; then :; else \
	    $(am__make_dryrun) \
	      || test -d "$(distdir)/$$subdir" \
	      || mkdir -p "$(distdir)/$$subdir" \
	      || exit 1; \
	    dir1=$$subdir; dir2="$(distdir)/$$subdir"; \
	    $(am__relativize); \
	    new_distdir=$$reldir; \
	    dir1=$$subdir; dir2="$(top_distdir)"; \
	    $(am__relativize); \
	    new_top_distdir=$$reldir; \
	    echo " (cd $$subdir && $(MAKE) top_distdir="$$new_top_distdir" distdir="$$new_distdir" \\"; \
	    echo "     am__remove_distdir=: am__skip_length_check=: am__skip_mode_fix=: distdir)"; \
	    (cd >/dev/null $$subdir && \
	      $(MAKE) \
	        top_distdir="$$new_top_distdir" \
	        distdir="$$new_distdir" \
		am__remove_distdir=: \
		am__skip_length_check=: \
		am__skip_mode_fix=: \
	        distdir) \
	      || exit 1; \
	  fi; \
	done
	-test -n "$(am__skip_mode_fix)" \
	|| find "$(distdir)" -type d ! -perm -755 \
		-exec chmod u+rwx,go+rx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec install -c -m a+r {} {} \; \
	|| chmod -R a+r "$(distdir)"
dist-gzip: distdir
	tardir=$(distdir) && tar chof - "$$tardir" | eval GZIP= gzip $(GZIP_ENV) -c >$(distdir).tar.gz
	$(am__post_remove_distdir)

dist-bzip2: distdir
	tardir=$(distdir) && tar chof - "$$tardir" | BZIP2=$${BZIP2--9} bzip2 -c >$(distdir).tar.bz2
	$(am__post_remove_distdir)

dist-lzip: distdir
	tardir=$(distdir) && tar chof - "$$tardir" | lzip -c $${LZIP_OPT--9} >$(distdir).tar.lz
	$(am__post_remove_distdir)

dist-xz: distdir
	tardir=$(distdir) && tar chof - "$$tardir" | XZ_OPT=$${XZ_OPT--e} xz -c >$(distdir).tar.xz
	$(am__post_remove_distdir)

dist-zstd: distdir
	tardir=$(distdir) && tar chof - "$$tardir" | zstd -c $${ZSTD_CLEVEL-$${ZSTD_OPT--19}} >$(distdir).tar.zst
	$(am__post_remove_distdir)

dist-tarZ: distdir
	@echo WARNING: "Support for distribution archives compressed with" \
		       "legacy program 'compress' is deprecated." >&2
	@echo WARNING: "It will be removed altogether in Automake 2.0" >&2
	tardir=$(distdir) && tar chof - "$$tardir" | compress -c >$(distdir).tar.Z
	$(am__post_remove_distdir)

dist-shar: distdir
	@echo WARNING: "Support for shar distribution archives is" \
	               "deprecated." >&2
	@echo WARNING: "It will be removed altogether in Automake 2.0" >&2
	shar $(distdir) | eval GZIP= gzip $(GZIP_ENV) -c >$(distdir).shar.gz
	$(am__post_remove_distdir)

dist-zip: distdir
	-rm -f $(distdir).zip
	zip -rq $(distdir).zip $(distdir)
	$(am__post_remove_distdir)

dist dist-all:
	$(MAKE) $(DIST_TARGETS) am__post_remove_distdir='@:'
	$(am__post_remove_distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	case '$(DIST_ARCHIVES)' in \
	*.tar.gz*) \
	  eval GZIP= gzip $(GZIP_ENV) -dc $(distdir).tar.gz | tar xf - ;;\
	*.tar.bz2*) \
	  bzip2 -dc $(distdir).tar.bz2 | tar xf - ;;\
	*.tar.lz*) \
	  lzip -dc $(distdir).tar.lz | tar xf - ;;\
	*.tar.xz*) \
	  xz -dc $(distdir).tar.xz | tar xf - ;;\
	*.tar.Z*) \
	  uncompress -c $(distdir).tar.Z | tar xf - ;;\
	*.shar.gz*) \
	  eval GZIP= gzip $(GZIP_ENV) -dc $(distdir).shar.gz | unshar ;;\
	*.zip*) \
	  unzip $(distdir).zip ;;\
	*.tar.zst*) \
	  zstd -dc $(distdir).tar.zst | tar xf - ;;\
	esac
	chmod -R a-w $(distdir)
	chmod u+w $(distdir)
	mkdir $(distdir)/_build $(distdir)/_build/sub $(distdir)/_inst
	chmod a-w $(distdir)
	test -d $(distdir)/_build || exit 0; \
	dc_install_base=`cd >/dev/null $(distdir)/_inst && pwd | sed -e 's,^[^:\\/]:[\\/],/,'` \
	  && dc_destdir="$${TMPDIR-/tmp}/am-dc-$$$$/" \
	  && am__cwd=`pwd` \
	  && cd >/dev/null $(distdir)/_build/sub \
	  && ../../configure \
	    \
	    $(DISTCHECK_CONFIGURE_FLAGS) \
	    --srcdir=../.. --prefix="$$dc_install_base" \
	  && $(MAKE) \
	  && $(MAKE) $(AM_DISTCHECK_DVI_TARGET) \
	  && $(MAKE) check \
	  && $(MAKE) install \
	  && $(MAKE) installcheck \
	  && $(MAKE) uninstall \
	  && $(MAKE) distuninstallcheck_dir="$$dc_install_base" \
	        distuninstallcheck \
	  && chmod -R a-w "$$dc_install_base" \
	  && ({ \
	       (cd ../.. && umask 077 && mkdir "$$dc_destdir") \
	       && $(MAKE) DESTDIR="$$dc_destdir" install \
	       && $(MAKE) DESTDIR="$$dc_destdir" uninstall \
	       && $(MAKE) DESTDIR="$$dc_destdir" \
	            distuninstallcheck_dir="$$dc_destdir" distuninstallcheck; \
	      } || { rm -rf "$$dc_destdir"; exit 1; }) \
	  && rm -rf "$$dc_destdir" \
	  && $(MAKE) dist \
	  && rm -rf $(DIST_ARCHIVES) \
	  && $(MAKE) distcleancheck \
	  && cd "$$am__cwd" \
	  || exit 1
	$(am__post_remove_distdir)
	@(echo "$(distdir) archives ready for distribution: "; \
	  list='$(DIST_ARCHIVES)'; for i in $$list; do echo $$i; done) | \
	  sed -e 1h -e 1s/./=/g -e 1p -e 1x -e '$$p' -e '$$x'
distuninstallcheck:
	@test -n '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: trying to run $@ with an empty' \
	       '$$(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	cd >/dev/null '$(distuninstallcheck_dir)' || { \
	  echo 'ERROR: cannot chdir into $(distuninstallcheck_dir)' >&2; \
	  exit 1; \
	}; \
	test `$(am__distuninstallcheck_listfiles) | wc -l` -eq 0 \
	   || { echo "ERROR: files left after uninstall:" ; \
	        if test -n "$(DESTDIR)"; then \
	          echo "  (check DESTDIR support)"; \
	        fi ; \
	        $(distuninstallcheck_listfiles) ; \
	        exit 1; } >&2
distcleancheck: distclean
	@if test '$(srcdir)' = . ; then \
	  echo "ERROR: distcleancheck can only run from a VPATH build" ; \
	  exit 1 ; \
	fi
	@test `$(distcleancheck_listfiles) | wc -l` -eq 0 \
	  || { echo "ERROR: files left in build directory after distclean:" ; \
	       $(distcleancheck_listfiles) ; \
	       exit 1; } >&2
check-am: all-am
check: check-recursive
all-am: $(PROGRAMS) $(LTLIBRARIES) $(HEADERS)
install-EXTRAPROGRAMS: install-libLTLIBRARIES

install-binPROGRAMS: install-libLTLIBRARIES

install-modexecLTLIBRARIES: install-libLTLIBRARIES

installdirs: installdirs-recursive
installdirs-am:
	for dir in "$(DESTDIR)$(bindir)" "$(DESTDIR)$(libdir)" "$(DESTDIR)$(modexecdir)"; do \
	  test -z "$$dir" || mkdir -p "$$dir"; \
	done
install: install-recursive
install-exec: install-exec-recursive
install-data: install-data-recursive
uninstall: uninstall-recursive

install-am: all-am
	@$(MAKE) install-exec-am install-data-am

installcheck: installcheck-recursive
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

clean: clean-recursive

clean-am: clean-binPROGRAMS clean-generic clean-libLTLIBRARIES \
	clean-libtool clean-modexecLTLIBRARIES clean-noinstLTLIBRARIES \
	mostlyclean-am

distclean: distclean-recursive
distclean-am: clean-am distclean-compile distclean-generic \
	distclean-libtool distclean-tags

html: html-recursive

install-exec-am: install-binPROGRAMS install-exec-local \
	install-libLTLIBRARIES install-modexecLTLIBRARIES
	@$(NORMAL_INSTALL)
	$(MAKE) install-exec-hook
install-html: install-html-recursive

install-pdf: install-pdf-recursive

mostlyclean: mostlyclean-recursive

mostlyclean-am: mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool

pdf: pdf-recursive

uninstall-am: uninstall-binPROGRAMS uninstall-libLTLIBRARIES \
	uninstall-local uninstall-modexecLTLIBRARIES
	@$(NORMAL_INSTALL)
	$(MAKE) uninstall-hook

.PHONY: $(am__recursive_targets) CTAGS GTAGS TAGS all all-am \
	check check-am clean \
	clean-binPROGRAMS clean-cscope clean-generic \
	clean-libLTLIBRARIES clean-libtool clean-modexecLTLIBRARIES \
	clean-noinstLTLIBRARIES cscope cscopelist-am ctags ctags-am \
	dist dist-all dist-bzip2 dist-gzip dist-lzip dist-shar \
	dist-tarZ dist-xz dist-zip dist-zstd distcheck distclean \
	distclean-compile distclean-generic \
	distclean-libtool distclean-tags distcleancheck distdir \
	distuninstallcheck html html-am \
	install install-am install-binPROGRAMS install-data \
	install-data-am install-exec \
	install-exec-am install-exec-hook install-exec-local \
	install-html install-html-am \
	install-libLTLIBRARIES install-man install-modexecLTLIBRARIES \
	install-pdf install-pdf-am \
	install-strip installcheck installcheck-am installdirs \
	installdirs-am \
	mostlyclean mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool pdf pdf-am tags tags-am uninstall \
	uninstall-am uninstall-binPROGRAMS uninstall-hook \
	uninstall-libLTLIBRARIES uninstall-local \
	uninstall-modexecLTLIBRARIES

  # PROGRAMMING NOTE: Due to autotool's insistance of defining 'VERSION'
  # for us via a #define within the 'config.h' header (the value of which
  # is derives from the 'configure.ac's "AM_INIT_AUTOMAKE" statement)
  # instead of letting us define it ourselves (which we would prefer),
  # we must undefine it here and then redefine it to the value that our
  # '_dynamic_version' script determied it should be set to (which it saved
  # for us in the 'DYNAMIC_VERSION' variable for obvious reasons).

#
#                      ***  PROGRAMMING NOTE!  ***
#
#
#       The assignment statements BEFORE this point MAY use blanks if
#       desired, but the TABS in the BELOW build rules ARE REQUIRED!
#
#
#       Not all make programs accept (handle correctly) make files that
#       use blanks instead of tabs in their build rules. Thus in order to
#       remain compatible with older make programs, the below build rules
#       MUST use TABS and NOT BLANKS!!
#
#

tar: dist

install-exec-local:

install-exec-hook:
	rm -f $(DESTDIR)$(libdir)/libherc*.a
	rm -f $(DESTDIR)$(modexecdir)/dyn*.a
	rm -f $(DESTDIR)$(modexecdir)/hdt*.a
#
# NOTE : symbolic links point to FINAL destination (not to staged install)
#
	rm -f $(DESTDIR)$(bindir)/fba2cfba$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy$(EXEEXT) fba2cfba$(EXEEXT))
	rm -f $(DESTDIR)$(bindir)/ckd2cckd$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy$(EXEEXT) ckd2cckd$(EXEEXT))
	rm -f $(DESTDIR)$(bindir)/cfba2fba$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy$(EXEEXT) cfba2fba$(EXEEXT))
	rm -f $(DESTDIR)$(bindir)/cckd2ckd$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy$(EXEEXT) cckd2ckd$(EXEEXT))
	rm -f $(DESTDIR)$(bindir)/fba2cfba64$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy64$(EXEEXT) fba2cfba64$(EXEEXT))
	rm -f $(DESTDIR)$(bindir)/ckd2cckd64$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy64$(EXEEXT) ckd2cckd64$(EXEEXT))
	rm -f $(DESTDIR)$(bindir)/cfba642fba$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy64$(EXEEXT) cfba642fba$(EXEEXT))
	rm -f $(DESTDIR)$(bindir)/cckd642ckd$(EXEEXT)
	(cd $(DESTDIR)$(bindir); ln -s ./dasdcopy64$(EXEEXT) cckd642ckd$(EXEEXT))
#	chown root $(DESTDIR)$(bindir)/hercifc
#	chmod +s   $(DESTDIR)$(bindir)/hercifc
#	rm                             hercifc
#	(cd $(DESTDIR)$(bindir); setcap 'cap_sys_nice=eip' ./hercules$(EXEEXT))
#	(cd $(DESTDIR)$(bindir); setcap 'cap_sys_nice=eip' ./herclin$(EXEEXT))
#	(cd $(DESTDIR)$(bindir); setcap 'cap_net_admin+ep' ./hercifc$(EXEEXT))

uninstall-hook:
	rm -f $(DESTDIR)$(bindir)/fba2cfba$(EXEEXT)
	rm -f $(DESTDIR)$(bindir)/ckd2cckd$(EXEEXT)
	rm -f $(DESTDIR)$(bindir)/cfba2fba$(EXEEXT)
	rm -f $(DESTDIR)$(bindir)/cckd2ckd$(EXEEXT)
	rm -f $(DESTDIR)$(bindir)/fba2cfba64$(EXEEXT)
	rm -f $(DESTDIR)$(bindir)/ckd2cckd64$(EXEEXT)
	rm -f $(DESTDIR)$(bindir)/cfba642fba$(EXEEXT)
	rm -f $(DESTDIR)$(bindir)/cckd642ckd$(EXEEXT)

%.s: %.c
	$(COMPILE) -S $<

%.i: %.c
	$(COMPILE) -E $< >$@

#---------------------------------------------------------------------------
# PROGRAMMING NOTE: the following rules cause only the affected source
# files to be recompiled whenever any of an external package's headers
# are changed.
#---------------------------------------------------------------------------

.libs/dfp.$(OBJEXT): $(decnumber_headers)
.libs/pfpo.$(OBJEXT): $(decnumber_headers)
.libs/ieee.$(OBJEXT): $(softfloat_headers)

#---------------------------------------------------------------------------

	$(top_srcdir)/tests/runtest  $(top_srcdir)/tests

.PHONY: diagnostic diagnostic-sysinfo diagnostic-tools diagnostic-dirs diagnostic-vars

diagnostic: diagnostic-sysinfo diagnostic-tools diagnostic-dirs diagnostic-vars

diagnostic-sysinfo:
	@echo 'System information'
	@echo '  /etc/os-release     ' `cat /etc/os-release 2>&1`
	@echo '  uname -a            ' `uname -a`
	@echo '  uname -m            ' `uname -m`
	@echo '  uname -p            ' `uname -p`
	@echo '  uname -s            ' `uname -s`
	@echo ' '

diagnostic-tools:
	@echo 'Build tools versions'
	@echo '             ' `autoconf --version 2>&1 | head -n 1`
	@echo '             ' `automake --version 2>&1 | head -n 1`
	@echo '  m4                  ' `m4 --version 2>&1 | head -n 1 | sed "s/.*illegal option.*/BSD version of m4"/`
	@echo '  make                ' `make --version 2>&1 | head -n 1 | sed "s/^usage: make.*/BSD version of make/"`
	@echo '  compiler            ' `$(CC) --version 2>&1 | head -n 1`
	@echo '  linker              ' `$(LD) --version 2>&1 | head -n 1`
	@echo ' '

diagnostic-dirs:
	@echo 'Build directories'
	@echo '  source             ' `(cd $(top_srcdir) && pwd || echo $(top_srcdir))`
	@echo '  build              ' `pwd`
	@echo 'Install directories'
	@echo '  prefix              $(prefix)'
	@echo '    exec_prefix       $(exec_prefix)'
	@echo '      bindir          $(bindir)'
	@echo '      libdir          $(libdir)'
	@echo '    includedir        $(includedir)'
	@echo '    datarootdir       $(datarootdir)'
	@echo '      datadir         $(datadir)'
	@echo '      mandir          $(mandir)'
	@echo '      infodir         $(infodir)'
	@echo '      docdir          $(docdir)'
	@echo ' '

diagnostic-vars:
	@echo 'Values from automake'
	@echo '  BUILD_HERCIFC        Defined'
#	@echo '  BUILD_HERCIFC        Undefined'
#	@echo '  BUILD_FTHREADS       Defined'
	@echo '  BUILD_FTHREADS       Undefined'
# if BUILD_SHARED
# 	@echo '  BUILD_SHARED         Defined'
# else
# 	@echo '  BUILD_SHARED         Undefined'
# endif
# if OPTION_DYNAMIC_LOAD
# 	@echo '  OPTION_DYNAMIC_LOAD  Defined'
# else
# 	@echo '  OPTION_DYNAMIC_LOAD  Undefined'
# endif
	@echo ' '
	@echo 'Values from make'
	@echo '  $$CC                 $(CC)'
	@echo '  $$CFLAGS             $(CFLAGS)'
	@echo '  $$CXX                $(CXX)'
	@echo '  $$CXXFLAG            $(CXXFLAGS)'
	@echo '  $$LDFLAGS            $(LDFLAGS)'
	@echo '  $$CPPFLAGS           $(CPPFLAGS)'
	@echo ' '
	@echo 'Values from configure'
	@echo '  $$LIBS               -lresolv -lm -ldl  -lbz2 -lz -lcrypto64 -ldecNumber64 -lSoftFloat64 -ltelnet64'
	@echo '  $$S3FH_INC           @S3FH_INC@'
	@echo '  $$S3FH_LIB           @S3FH_LIB@     (future use)'
	@echo '  $$HQA_INC            .'
	@echo ' '
	@echo 'Values generated by Makefile.am'
	@echo '  $$AM_CPPFLAGS         $(AM_CPPFLAGS)'
	@echo '  $$DYNAMIC_VERISON     $(DYNAMIC_VERSION)'
	@echo '  $$DYNMOD_LD_ADD       $(DYNMOD_LD_ADD)'
	@echo '  $$DYNMOD_LD_FLAGS     $(DYNMOD_LD_FLAGS)'
	@echo '  $$FTHREADS            $(FTHREADS)'
	@echo '  $$HDEPS               $(HDEPS)'
	@echo '  $$HDLFLAGS            $(HDLFLAGS)'
	@echo '  $$HERCIFC             $(HERCIFC)'
	@echo '  $$HERCLIBS            $(HERCLIBS)'
	@echo '  $$HERCLIBS2           $(HERCLIBS2)'
	@echo '  $$HERCLIN             $(HERCLIN)'
	@echo '  $$LDADD               $(LDADD)'
	@echo '  $$LIB_LD_FLAGS        $(LIB_LD_FLAGS)'
	@echo '  $$LTDL                $(LTDL)'
	@echo '  $$tools_ADDLIBS       $(tools_ADDLIBS)'
	@echo '  $$disktools_ADDLIBS   $(disktools_ADDLIBS)'
	@echo '  $$tapetools_ADDLIBS   $(tapetools_ADDLIBS)'
	@echo '  $$tools_LD_FLAGS      $(tools_LD_FLAGS)'
	@echo '  $$XSTATIC             $(XSTATIC)'

# CHECK_HAVE(_GNU_SOURCE, string.h, memrchr)
# CHECK_HAVE(linux/ipv6.h)
# CHECK_SIZEOF(int *)
# CHECK_HAVE(rexxsaa.h)
# CHECK_SIZEOF(sys/types.h, off_t)
# CHECK_HAVE(sys/mount.h)
# CHECK_HAVE(sys/param.h)
# CHECK_DECL(sys.mtio.h, MTEWARN)
# CHECK_SIZEOF(long)
# CHECK_SIZEOF(pthread.h, pthread_t)
# CHECK_HAVE(byteswap.h)
# CHECK_HAVE(linux/if_tun.h)
# CHECK_SIZEOF(stddef.h, size_t)
# CHECK_HAVE(sys/mtio.h)
# CHECK_HAVE(bzlib.h)
# CHECK_WORDS_BIGENDIAN
# CHECK_ENABLE(ipv6)
# CHECK_ENABLE(build_hercifc)
# CHECK_SIZEOF(int)
# CHECK_HAVE(sys/prctl.h)
# CHECK_HAVE(sys/sysctl.h)
# CHECK_DECL(sys/socket.h, netinet/in.h, netinet/tcp.h, TCP_KEEPALIVE)
# CHECK_DECL(sys/socket.h, netinet/in.h, netinet/tcp.h, SO_KEEPALIVE)
# CHECK_DECL(sys/socket.h, netinet/in.h, netinet/tcp.h, TCP_KEEPIDLE)
# CHECK_DECL(sys/socket.h, netinet/in.h, netinet/tcp.h, TCP_KEEPCNT)
# CHECK_DECL(sys/socket.h, netinet/in.h, netinet/tcp.h, TCP_KEEPINTVL)
# CHECK_HAVE(zlib.h)
# CHECK_HAVE(sys/socket.h, netinet/in.h, arpa/inet.h, inet_aton)
# CHECK_HAVE(getopt.h, getopt_long)
# CHECK_HAVE(__sync_fetch_and_add)
# CHECK_HAVE(__builtin_bswap64)
# CHECK_HAVE(string.h, strlcpy)
# CHECK_HAVE(string.h, strlcat)
