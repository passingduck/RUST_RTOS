/* STM32F746ZG memory map — 320 KB RAM, 1 MB FLASH */
MEMORY
{
  FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 1024K
  RAM   (rwx): ORIGIN = 0x20000000, LENGTH = 320K
}

/* RAM 최상단을 스택 시작지점으로 노출 */
PROVIDE(_stack_start = ORIGIN(RAM) + LENGTH(RAM));
