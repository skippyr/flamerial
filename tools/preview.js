function writeTrbDecor(len) {
  for (let i = 0; i < len; ++i) {
    process.stdout.write(i % 2 ? '\x1b[31mv' : '\x1b[33m≥');
  }
  process.stdout.write('\x1b[39m');
}

function writeColDecor(isOpen, isTop) {
  process.stdout.write(isOpen ? isTop ? '\x1b[35m¦/:\x1b[39m '
                                      : '\x1b[35m¦\\:\x1b[39m ' :
                                isTop ? ' \x1b[35m:\\¦\x1b[39m'
                                      : ' \x1b[35m:/¦\x1b[39m')
}

function writeClrs(isBg) {
  for (let i = 1; i < 9; ++i) {
    process.stdout.write(isBg ? `\x1b[48;5;${i}m   \x1b[49m`
                              : `\x1b[38;5;${i}mFla\x1b[39m`);
  }
}

console.log();
process.stdout.write('   ');
writeTrbDecor(10);
process.stdout.write(' Flamerial ');
writeTrbDecor(11);
console.log();
process.stdout.write('   ');
writeColDecor(true, true);
writeClrs(true);
writeColDecor(false, true);
console.log();
process.stdout.write('   ');
writeColDecor(true, false);
writeClrs(false);
writeColDecor(false, false);
console.log();
process.stdout.write('   ');
writeTrbDecor(32);
console.log();
console.log();
