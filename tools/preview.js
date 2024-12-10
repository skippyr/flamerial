function writeTribalDecoration(length) {
  for (let offset = 0; offset < length; ++offset) {
    process.stdout.write(offset % 2 ? '\x1b[31mv' : '\x1b[33m≥');
  }
  process.stdout.write('\x1b[39m');
}

function writeColumnDecoration(isOpen, isTop) {
  process.stdout.write(isOpen ? isTop ? '\x1b[35m¦/:\x1b[39m '
                                      : '\x1b[35m¦\\:\x1b[39m '
                                      :
                                isTop ? ' \x1b[35m:\\¦\x1b[39m'
                                      : ' \x1b[35m:/¦\x1b[39m')
}

function writePalette(isBackground) {
  for (let offset = 1; offset < 9; ++offset) {
    process.stdout.write(isBackground ? `\x1b[48;5;${offset}m   \x1b[49m`
                                      : `\x1b[38;5;${offset}mFla\x1b[39m`);
  }
}

console.log();
process.stdout.write('   ');
writeTribalDecoration(10);
process.stdout.write(' Flamerial ');
writeTribalDecoration(11);
console.log();
process.stdout.write('   ');
writeColumnDecoration(true, true);
writePalette(true);
writeColumnDecoration(false, true);
console.log();
process.stdout.write('   ');
writeColumnDecoration(true, false);
writePalette(false);
writeColumnDecoration(false, false);
console.log();
process.stdout.write('   ');
writeTribalDecoration(32);
console.log();
console.log();
