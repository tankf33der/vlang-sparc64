userdata:    .xword 111
fn:          .xword 222
return_addr: .xword 0

.align 16384

.global main
.type main, #function
main:

rd %pc, %g1
here: sethi %hi(0x4000), %g2
or %g2, %lo(0x4000), %g2
sub %g1, %g2, %g1

ldd      [%g1 + 0], %d62
ldx     [%g1 + 8], %g1
jmp     %g1
nop
!////////////////////////

movdtox %d62, %o0
retl
nop
