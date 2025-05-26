.syntax unified
.cpu cortex-m7
.thumb

/* ───────── Vector table (8 bytes) ───────── */
.section .vectors, "a", %progbits
.type _vectors, %object
.size _vectors, 8
_vectors:
    .long _stack_start      /* 0x0000_0000: 초기 MSP */
    .long ResetHandler      /* 0x0000_0004: Reset handler */

/* ───────── Reset handler ───────── */
.text
.thumb_func
.global ResetHandler
ResetHandler:
    bl  main                /* Rust main() 호출 */
1:  b   1b                  /* 반환 방지 무한루프 */
