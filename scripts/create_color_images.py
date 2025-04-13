from lib import *
from os.path import dirname, join
from subprocess import run

assets_directory = join(dirname(dirname(__file__)), 'assets')
size = 20
for color in colors:
    image = join(assets_directory, f'{color}.png')
    run([
        'magick',
        '-size',
        f'{size}x{size}',
        f'xc:{colors[color].hex_string}',
        image
    ])
    print(f'Created image {image}.')
