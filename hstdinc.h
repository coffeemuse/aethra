/* HSTDINC.H    Hercules precompilation-eligible Header Files        */
/*                                                                   */
/*  SPDX-FileCopyrightText: Copyright Roger Bowler                   */
/*  SPDX-License-Identifier: QPL-1.0                                 */

/*-------------------------------------------------------------------*/
/* This file contains #include statements for all of the header      */
/* files which are not dependent on the mainframe architectural      */
/* features selected and thus are eligible for precompilation        */
/*-------------------------------------------------------------------*/

#ifndef _HSTDINC_H
#define _HSTDINC_H

#define HERCULES_AETHRA         /* Distinguish ourselves from others */
//#define NOT_HERC              /* This is Hercules, NOT the utility */

/*-------------------------------------------------------------------*/
/*                Linux (non-Windows) CONFIG header                  */
/*-------------------------------------------------------------------*/
#ifdef HAVE_CONFIG_H
  #ifndef    _CONFIG_H
  #define    _CONFIG_H
    #include <config.h>         /* Hercules build configuration      */
  #endif /*  _CONFIG_H*/
#endif

/*-------------------------------------------------------------------*/
/*               HQA: User build settings overrides                  */
/*-------------------------------------------------------------------*/
#include "hqainc.h"             /* User build settings overrides     */

/*-------------------------------------------------------------------*/
/*                Normalize Windows Compiler flags                   */
/*-------------------------------------------------------------------*/
#if defined(_WIN32) || defined(WIN32)
   /* Normalize WIN32/_WIN32 flags */
#  if !defined(_WIN32) && defined(WIN32)
#    define _WIN32
#  elif defined(_WIN32) && !defined(WIN32)
#    define WIN32
#  endif
   /* Normalize WIN64/_WIN64 flags */
#  if defined(_WIN64) || defined(WIN64)
#    if !defined(_WIN64) && defined(WIN64)
#      define _WIN64
#    elif defined(_WIN64) && !defined(WIN64)
#      define WIN64
#    endif
#  endif
   /* Normalize DEBUG/_DEBUG flags */
#  if defined(_DEBUG) || defined(DEBUG)
#    if !defined(_DEBUG) && defined(DEBUG)
#      define _DEBUG
#    elif defined(_DEBUG) && !defined(DEBUG)
#      define DEBUG
#    endif
#  endif
#endif /* defined(_WIN32) || defined(WIN32) */

/*-------------------------------------------------------------------*/
/*          TARGETVER: Minimum Supported Windows Platform            */
/*-------------------------------------------------------------------*/
#ifdef WIN32
  #include "vsvers.h"           /* Visual Studio compiler constants  */
  #include "targetver.h"        /* Minimum Windows platform          */
#endif

/*-------------------------------------------------------------------*/
/* Required system headers...           (these we must ALWAYS have)  */
/*-------------------------------------------------------------------*/

#include "ccnowarn.h"           /* suppress compiler warning support */

#ifdef _MSVC_
  #include <winsock2.h>         // Windows Sockets 2
  #include <mstcpip.h>          // (need struct tcp_keepalive)
  #if defined(ENABLE_IPV6)
    #include <ws2tcpip.h>       // For IPV6
  #endif
  #include <netioapi.h>         // For if_nametoindex
#endif

#ifdef WIN32
  #include <windows.h>
#endif

#ifdef _MSVC_
  #include <math.h>             // Must come BEFORE <intrin.h> due to
                                // MS VC Bug ID 381422
  #include <tchar.h>
  #include <wincon.h>
  #include <conio.h>
  #include <io.h>
  #include <lmcons.h>
  #include <tlhelp32.h>
  #include <dbghelp.h>
  #include <crtdbg.h>
  #include <intrin.h>
#else
  #include <libgen.h>
#endif

#if defined( __GNUC__) && defined( __SSE2__ ) && ( __SSE2__ == 1 )
  #include <x86intrin.h>
  #define _GCC_SSE2_
#endif

#include <stddef.h>             // (ptrdiff_t, size_t, offsetof, etc)
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <setjmp.h>
#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#ifndef O_BINARY
#define O_BINARY 0
#endif
#ifndef O_NONBLOCK
#define O_NONBLOCK 0
#endif
#include <limits.h>
#include <time.h>
#include <sys/stat.h>
#if !defined(_MSVC_)
  #include <sched.h>
  #include <sys/time.h>
  #include <sys/ioctl.h>
  #include <sys/mman.h>
#endif
#include <sys/types.h>

/*-------------------------------------------------------------------*/
/* Optional system headers...           (these we can live without)  */
/*-------------------------------------------------------------------*/
/* PROGRAMMING NOTE:
   On Darwin, <sys/socket.h> must be included before <net/if.h> and
   on older Darwin systems, before <net/route.h> and <netinet/in.h>.
*/
  #include <sys/socket.h>
  #include <arpa/inet.h>
#ifdef HAVE_LINUX_IF_TUN_H
  #include <linux/if_tun.h>
#endif
  #include <net/route.h>
  #include <net/if.h>
  #include <netinet/in.h>
  #include <netinet/tcp.h>
  #include <sys/ioctl.h>
#ifdef HAVE_SYS_PARAM_H
  #include <sys/param.h>
#endif
#ifdef HAVE_SYS_MOUNT_H
  #include <sys/mount.h>
#endif
#ifdef HAVE_SYS_MTIO_H
  #include <sys/mtio.h>
#endif
  #include <sys/resource.h>
  #include <sys/un.h>
  #include <sys/uio.h>
  #include <sys/utsname.h>
  #include <sys/wait.h>
#ifdef HAVE_BYTESWAP_H
 #ifndef NO_ASM_BYTESWAP
  #include <byteswap.h>
 #endif
#endif
#ifdef HAVE_BZLIB_H
  // windows.h #defines 'small' as char and bzlib.h
  // uses it for a variable name so we must #undef.
  #if defined(__CYGWIN__)
    #undef small
  #endif
  #include <bzlib.h>
  /* ISW 20050427 : CCKD_BZIP2/HET_BZIP2 are usually */
  /* controlled by config.h (automagic). If config.h */
  /* is not present however, then define them here.  */
  #if !defined(HAVE_CONFIG_H)
    #define CCKD_BZIP2
    #define HET_BZIP2
  #endif
#endif
  #include <dirent.h>
#if defined(__MINGW__) || defined(_MSVC_)
  #include "w32dl.h"
#else
  #include <dlfcn.h>
#endif
  #include <fenv.h>
#if defined(HAVE_MATH_H) && !defined(_MSVC_)
  #include <math.h>
#endif
  #include <netdb.h>
  #include <pwd.h>
  #include <regex.h>
  #include <signal.h>
  #include <time.h>
  #include <termios.h>
#ifdef HAVE_ZLIB_H
  #include <zlib.h>
#endif
#ifdef HAVE_SYS_CAPABILITY_H
  #include <sys/capability.h>
#endif
#ifdef HAVE_SYS_PRCTL_H
  #include <sys/prctl.h>
#endif
#ifdef _MSVC_
  #include "getopt.h"
#else
  #if defined( HAVE_GETOPT_LONG ) && !defined( __GETOPT_H__ )
    #include <getopt.h>
  #endif
#endif
#ifdef WIN32
  #include <bcrypt.h>               // (CNG = Crypto Next Generation)
  #pragma comment( lib, "bcrypt" )
#else
  #include <poll.h>                 // (need struct pollfd)
#endif

/*-------------------------------------------------------------------*/
/* Hercules standard headers...           (common Hercules headers)  */
/*-------------------------------------------------------------------*/

//    NOTE:   none of these headers should be arch dependent!

#if defined(_MSVC_)
  #include "hercwind.h"         // Hercules definitions for Windows
#else
  #include <unistd.h>           // Unix standard definitions
#endif

  #include <assert.h>

  #define FLEXIBLE_ARRAY        // ("DEVBLK *memdev[];" syntax is supported)

#if defined( HAVE_ATTR_REGPARM )// (must follow "hercwind.h")
  #ifdef _MSVC_
    #define  ATTR_REGPARM(n)    __fastcall
  #else /* GCC presumed */
    #define  ATTR_REGPARM(n)    __attribute__ (( regparm( n )))
  #endif
#else
  #define  ATTR_REGPARM(n)      /* nothing */
#endif

#if defined( HAVE_ATTR_PRINTF ) // (must follow "hercwind.h")
  /* GCC presumed */
  #define  ATTR_PRINTF(f,v)     __attribute__ (( format( printf, f, v )))
#else
  #define  ATTR_PRINTF(f,v)     /* nothing */
#endif

#include "hostopts.h"           // Must come before htypes.h
#include "htypes.h"             // Hercules-wide data types
#include "dbgtrace.h"           // Hercules default debugging

/* Defines CAN_IAF2 needed for FEATURE_052_INTERLOCKED_ACCESS_FACILITY_2 */
#include "hatomic.h"                  /* Interlocked update          */

#endif // _HSTDINC_H
