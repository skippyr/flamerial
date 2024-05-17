const path = require('path');
const fs = require('fs');
const childProcess = require('child_process');

const g_colorsDirectory = path.join(path.dirname(path.dirname(__filename)), 'assets', 'colors');
const g_palette = [
  ['Black', '#221107'],
  ['Red', '#990b3a'],
  ['Green', '#cc561b'],
  ['Yellow', '#e0a100'],
  ['Blue', '#b98361'],
  ['Magenta', '#ae3a34'],
  ['Cyan', '#a16205'],
  ['White', '#f5efcd']
];

function createTablePreviews() {
  fs.rmdirSync(g_colorsDirectory, { recursive: true, force: true });
  fs.mkdirSync(g_colorsDirectory, { recursive: true, force: true });
  console.log(`Creating images under \x1b[33m"${g_colorsDirectory}"\x1b[39m:`);
  for (let offset in g_palette) {
    const size = 20;
    let file = `${g_palette[offset][0].toLowerCase()}.webp`;
    console.log(`  [${parseInt(offset) + 1}/${g_palette.length}] Creating image \x1b[33m"${file}"\x1b[39m`);
    childProcess.execSync(`magick convert -size ${size}x${size} xc:${g_palette[offset][1]} ${path.join(g_colorsDirectory, file)}`);
  }
}

function throwError(message) {
  console.log(`\x1b[1;31m[ERROR]\x1b[22;39m ${message}`);
  process.exit(1);
}

function writeHelp() {
  console.log(`\x1b[1mUsage:\x1b[22;33m node\x1b[39m ${path.basename(__filename)}\x1b[38;5;8m <OPTION>\x1b[39m`);
  console.log('Makes stuff related to the Flamerial theme.\n');
  console.log('\x1b[1mOPTIONS\x1b[22;39m');
  console.log('  \x1b[38;5;8m--help\x1b[39m            Shows these help instructions.');
  console.log('  \x1b[38;5;8m--main-preview\x1b[39m    Writes the README main preview.');
  console.log('  \x1b[38;5;8m--table\x1b[39m           Writes the README table.');
  console.log('  \x1b[38;5;8m--table-previews\x1b[39m  Creates the README table previews.');
  console.log('                    \x1b[38;5;8mRequires imagemagick suite installed.\x1b[39m');
}

function writeMainPreview() {
  console.log('          🔥🐉');
  console.log('\x1b[33m%\x1b[31m~\x1b[34m-----\x1b[39m Flamerial \x1b[34m-----' +
    '\x1b[31m~\x1b[33m%');
  console.log('¦ \x1b[41m   \x1b[42m   \x1b[43m   \x1b[44m   \x1b[45m   ' +
    '\x1b[46m   \x1b[47m   \x1b[49m ¦');
  console.log('¦ \x1b[31mFla\x1b[32mFla\x1b[33mFla\x1b[34mFla\x1b[35mFla' +
    '\x1b[36mFla\x1b[37mFla\x1b[34m ¦');
  console.log('\x1b[33m%\x1b[31m~\x1b[34m---------------------\x1b[31m~' +
    '\x1b[33m%\x1b[39m');
}

function writeTable() {
  console.log(`<table align="center">
  <thead>
    <tr>
      <th>Preview</th>
      <th>ANSI</th>
      <th>Name</th>
      <th>HEX</th>
    </tr>
  </thead>
  <tbody>`);
  for (let offset in g_palette) {
    console.log(`    <tr>
      <td><img alt="" src="assets/colors/${g_palette[offset][0].toLowerCase()}.webp" /></td>
      <td>${offset}</td>
      <td>${g_palette[offset][0]}</td>
      <td>\`${g_palette[offset][1]}\`</td>
    </tr>`);
  }
  console.log(`  </tbody>
</table>
<p align="center"><strong>Caption:</strong> the colors used in the flamerial color scheme with their respective ANSI values.</p>`);
}

for (let argument of process.argv) {
  if (argument == '--help') {
    writeHelp();
    process.exit(0);
  } else if (argument === '--main-preview') {
    writeMainPreview();
    process.exit(0);
  } else if (argument === '--table') {
    writeTable();
    process.exit(0);
  } else if (argument == '--table-previews') {
    createTablePreviews();
    process.exit(0);
  } else if (argument[0] === '-') {
    writeHelp();
    console.log();
    throwError(`The option \x1b[33m"${argument}"\x1b[39m is unrecognized.`);
  }
}

writeHelp();
console.log();
throwError('Please, use a valid option.');
