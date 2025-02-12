Prism.languages['linker-script'] = {
	'comment': {
		pattern: /(^|\s)\/\*[\s\S]*?(?:$|\*\/)/,
		lookbehind: true,
		greedy: true
	},
MEMORY
{
  FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 256K
  SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 40K
}

SECTIONS
{
  .text :
  {
    *(.isr_vector)
    *(.text*)
  } > FLASH

  .data :
  {
    _sdata = .;
    *(.data*)
    . = ALIGN(4);
    _edata = .;
  } > SRAM AT > FLASH

  .bss :
  {
    _sbss = .;
    *(.bss*)
    . = ALIGN(4);
    _ebss = .;
  } > SRAM
}
