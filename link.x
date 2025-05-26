/* 진입점 - ResetHandler */
ENTRY(ResetHandler)

/* 상위 memory.x 포함 */
INCLUDE memory.x

SECTIONS
{
  .text : {
    KEEP(*(.vectors))        /* 8B 벡터 */
    KEEP(*(.text.ResetHandler))  /* 핸들러 보호 */
    *(.text .text.*)
    /* … */
} > FLASH

  .data : AT (ADDR(.text) + SIZEOF(.text))
  {
    *(.data .data.*)
  } > RAM

  .bss (NOLOAD) :
  {
    *(.bss .bss.*)
    *(COMMON)
  } > RAM
}
