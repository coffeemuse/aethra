/* HMALLOC.H     Hercules macros...                                  */
/*                                                                   */
/*  SPDX-FileCopyrightText: Copyright Roger Bowler                   */
/*  SPDX-License-Identifier: QPL-1.0                                 */

//      This header auto-#included by 'hercules.h'...
//
//      The <config.h> header and other required headers are
//      presumed to have already been #included ahead of it...


#ifndef _HMALLOC_H
#define _HMALLOC_H

#define free(p)     free((void*)(p))

/*--------------------------------------------------------------------*/
/*                   Cache Alignment Macros                           */
/*                                                                    */
/*  Note: For cache alignment (CACHE_ALIGN), while the real cache     */
/*        alignment varies by processor, a value of 64-bytes will     */
/*        be used which is in line with most commodity processors     */
/*        as of 2013. The cache line size must be a power of 2.       */
/*        The minimum recognized cache line size is 32, and the       */
/*        maximum recognized cache line size is 4096.                 */
/*--------------------------------------------------------------------*/
#if defined(CACHE_LINE_SIZE)
    #if !(CACHE_LINE_SIZE ==   32 || \
          CACHE_LINE_SIZE ==   64 || \
          CACHE_LINE_SIZE ==  128 || \
          CACHE_LINE_SIZE ==  256 || \
          CACHE_LINE_SIZE ==  512 || \
          CACHE_LINE_SIZE == 1024 || \
          CACHE_LINE_SIZE == 2048 || \
          CACHE_LINE_SIZE == 4096)
        #error Invalid cache line size specified
    #endif
#else
    #define  CACHE_LINE_SIZE    64
#endif /* CACHE_LINE_SIZE */

#if !defined(CACHE_ALIGN)

    #if defined(_MSC_VER) || defined(_MSVC_)
        #define __ALIGN(_n)     __declspec(align(_n))
    #else
        #define __ALIGN(_n)     __attribute__ ((aligned(_n)))
    #endif

    #define CACHE_ALIGN         __ALIGN(CACHE_LINE_SIZE)
    #define ALIGN_2             __ALIGN(2)
    #define ALIGN_4             __ALIGN(4)
    #define ALIGN_8             __ALIGN(8)
    #define ALIGN_16            __ALIGN(16)
    #define ALIGN_32            __ALIGN(32)
    #define ALIGN_64            __ALIGN(64)
    #define ALIGN_128           __ALIGN(128)
    #define ALIGN_256           __ALIGN(256)
    #define ALIGN_512           __ALIGN(512)
    #define ALIGN_1024          __ALIGN(1024)
    #define ALIGN_1K            __ALIGN(1024)
    #define ALIGN_2K            __ALIGN(2048)
    #define ALIGN_4K            __ALIGN(4096)
    #define ALIGN_8K            __ALIGN(8192)
    #define ALIGN_16K           __ALIGN(16384)
    #define ALIGN_32K           __ALIGN(32768)
    #define ALIGN_64K           __ALIGN(65536)

#endif /* CACHE_ALIGN */

/*-------------------------------------------------------------------*/
/* Struture definition for block headers                             */
/*                                                                   */
/* Note: Intentionally defined as a macro for inclusion              */
/*       within blocks without adding another naming layer.          */
/*-------------------------------------------------------------------*/

#define BLOCK_HEADER struct                                             \
{                                                                       \
/*000*/ char    blknam[16];             /* Name of block   REGS_CP00 */ \
/*010*/ char    blkver[16];             /* Version Number            */ \
                                        /* --- 32-byte cache line -- */ \
/*020*/ U64     blkloc;                 /* Address of block    big-e */ \
/*028*/ U32     blksiz;                 /* size of block       big-e */ \
/*02C*/ BYTE    _blkhdr_reserved2[4];                                   \
}

#define BLOCK_TRAILER struct                                            \
{                                                                       \
ALIGN_16 char   blkend[16];             /* eye-end                   */ \
}

#define _INIT_BLOCK_HEADER_TRAILER_NAME( pBlock, pszName )              \
                                                                        \
    do                                                                  \
    {                                                                   \
        memset( pBlock->blkend, SPACE, sizeof( pBlock->blkend ));       \
        memset( pBlock->blknam, SPACE, sizeof( pBlock->blknam ));       \
        STRLCPY( pBlock->blkend, "END " );                              \
        STRLCAT( pBlock->blkend, pszName );                             \
        STRLCPY( pBlock->blknam, pszName );                             \
    }                                                                   \
    while (0)

#define INIT_BLOCK_HEADER_TRAILER( pBlock, BLOCK )                      \
                                                                        \
    do                                                                  \
    {                                                                   \
        _INIT_BLOCK_HEADER_TRAILER_NAME( pBlock, HDL_NAME_ ## BLOCK );  \
        memset( pBlock->blkver, SPACE, sizeof( pBlock->blkver ));       \
        STRLCPY( pBlock->blkver, HDL_VERS_ ## BLOCK );                  \
        pBlock->blkloc = CSWAP64( (U64) ((uintptr_t) pBlock ));         \
        pBlock->blksiz = CSWAP32( (U32) HDL_SIZE_ ## BLOCK );           \
    }                                                                   \
    while (0)

#define INIT_BLOCK_HEADER_TRAILER_WITH_CUSTOM_NAME( pBlock, BLOCK, pszName ) \
                                                                        \
    do                                                                  \
    {                                                                   \
        _INIT_BLOCK_HEADER_TRAILER_NAME( pBlock, pszName );             \
        memset( pBlock->blkver, SPACE, sizeof( pBlock->blkver ));       \
        STRLCPY( pBlock->blkver, HDL_VERS_ ## BLOCK );                  \
        pBlock->blkloc = CSWAP64( (U64) ((uintptr_t) pBlock ));         \
        pBlock->blksiz = CSWAP32( (U32) HDL_SIZE_ ## BLOCK );           \
    }                                                                   \
    while (0)

/*-------------------------------------------------------------------*/
/*   Hercules  malloc_aligned / calloc_aligned / free_aligned        */
/*-------------------------------------------------------------------*/
/*                                                                   */
/*  malloc_aligned:   Allocate memory to a specified boundary.       */
/*  calloc_aligned:   malloc_aligned + memset(0). Note: not meant    */
/*                    for very large storage areas such as mainstor. */
/*  free_aligned:     Free memory aligned previously aligned to      */
/*                    a boundary.                                    */
/*                                                                   */
/*-------------------------------------------------------------------*/
#if defined(_MSVC_)

    #define    malloc_aligned(_size,_alignment) \
              _aligned_malloc(_size,_alignment)

    static INLINE void*
    calloc_aligned(size_t size, size_t alignment)
    {
        void* result;

        if (!size)
        {
            return (NULL);
        }

        result = _aligned_malloc(size, alignment);

        if (result != NULL)
        {
            memset(result, 0, size);
        }

        return (result);
    }

    #define    free_aligned(_ptr) \
              _aligned_free(_ptr)

#else

    static INLINE void*
    malloc_aligned(size_t size, size_t alignment)
    {
        void*           result;
        register int    rc;

        rc = posix_memalign(&result, alignment, size);
        if (rc)
        {
            result = NULL;
            errno = rc;
        }

        return (result);
    }

    static INLINE void*
    calloc_aligned(size_t size, size_t alignment)
    {
        register void*  result = malloc_aligned(size, alignment);

        if (result != NULL)
        {
            memset(result, 0, size);
        }

        return (result);
    }

    #define free_aligned(_ptr) \
            free(_ptr)

#endif

/*-------------------------------------------------------------------*/
/*                MAINSIZE / MAINSTOR MACROS                         */
/*-------------------------------------------------------------------*/
/*                                                                   */
/*    HPAGESIZE:   Retrieves the HOST system's page size.            */
/*    MLOCK:       locks a range of memory.                          */
/*    MUNLOCK:     unlocks a range of memory.                        */
/*                                                                   */
/*-------------------------------------------------------------------*/

#define  HPC_MAINSTOR     1        /* mainstor being allocated/freed */
#define  HPC_XPNDSTOR     2        /* xpndstor being allocated/freed */

#if !defined( _MSVC_ )

/*---------------------------------------------------------------------

    The getpagesize, pvalloc, and valloc calls have all been removed.
    They were old, obsolete, and known to be buggy. 

---------------------------------------------------------------------*/

  #define      HPAGESIZE()      sysconf(_SC_PAGESIZE)
  #define      MLOCK            mlock
  #define      MUNLOCK          munlock

#else // defined( _MSVC_ )

  #define      HPAGESIZE        w32_hpagesize
  #define      MLOCK            w32_mlock
  #define      MUNLOCK          w32_munlock

#endif // !defined( MSVC )

#endif // _HMALLOC_H
