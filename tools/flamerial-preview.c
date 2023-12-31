/* //\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
 * MIT License
 * Copyright (c) 2023, Sherman Rofeman <skippyr.developer@gmail.com>
 *
 * See the LICENSE file that comes in its source code for more details.
 * //\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\// */

#include <tdk.h>

static void writeTriangles(int length) {
  int index;
  for (index = 0; index < length; index++) {
    tdk_setColor(tdk_Layer_Foreground,
                 index % 2 ? tdk_Color_Red : tdk_Color_Yellow);
    printf(index % 2 ? "⊼" : "⊵");
  }
  tdk_setColor(tdk_Layer_Foreground, tdk_Color_Default);
}

int main(void) {
  int color;
  writeTriangles(8);
  printf(" Flamerial ");
  writeTriangles(8);
  tdk_setColor(tdk_Layer_Foreground, tdk_Color_Magenta);
  printf("\n¦/ ");
  for (color = tdk_Color_Red; color <= tdk_Color_White; color++) {
    tdk_setColor(tdk_Layer_Background, color);
    printf("   ");
  }
  tdk_setColor(tdk_Layer_Background, tdk_Color_Default);
  printf(" \\¦\n");
  writeTriangles(27);
  putchar('\n');
  return 0;
}
