from os import mkdir
from flamerial import *
from shutil import rmtree
from subprocess import run

class FileSystem:
    @staticmethod
    def recreate_directory(path):
        try:
            rmtree(path)
        except FileNotFoundError:
            pass
        mkdir(path)

class ImageMagick:
    @staticmethod
    def create_image_file(color):
        run([
            'magick',
            '-size',
            f'{size}x{size}',
            f'xc:{color.hex_string}',
            path.join(absolute_colors_directory, color.image_file_name)
        ])

size = 20
FileSystem.recreate_directory(absolute_colors_directory)
for color in palette.all_colors:
    ImageMagick.create_image_file(color)
    print(f'Created file for color "{color.name}".')
