function writeTribalDecoration(length) {
  for (let offset = 0; offset < length; ++offset) {
    process.stdout.write(offset % 2 ? '\x1b[31mv' : '\x1b[33m≥');
  }
  process.stdout.write('\x1b[39m');
}

function writeSupportDecoration(isOpen, isTop) {
  process.stdout.write(isOpen  ? isTop ? '\x1b[35m¦/:\x1b[39m '
                                       : '\x1b[35m¦\\:\x1b[39m '
                       : isTop ? ' \x1b[35m:\\¦\x1b[39m'
                               : ' \x1b[35m:/¦\x1b[39m')
}

function writePalette(isBackground) {
  for (let color = 1; color < 9; ++color) {
    process.stdout.write(isBackground ? `\x1b[48;5;${color}m   \x1b[49m`
                                      : `\x1b[38;5;${color}mFla\x1b[39m`);
  }
}

console.log();
process.stdout.write('   ');
writeTribalDecoration(10);
process.stdout.write(' Flamerial ');
writeTribalDecoration(11);
console.log();
process.stdout.write('   ');
writeSupportDecoration(true, true);
writePalette(true);
writeSupportDecoration(false, true);
console.log();
process.stdout.write('   ');
writeSupportDecoration(true, false);
writePalette(false);
writeSupportDecoration(false, false);
console.log();
process.stdout.write('   ');
writeTribalDecoration(32);
console.log();
console.log();
