#include <tdk.h>

int
main(void)
{
	int i;
	printf("           🔥🐉\n");
	tdk_setclr(tdk_ClrYlw, tdk_LyrFg);
	printf("%%");
	tdk_setclr(tdk_ClrRed, tdk_LyrFg);
	printf("~");
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	printf("----- ");
	tdk_setclr(tdk_ClrDft, tdk_LyrFg);
	printf("Flamerial");
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	printf(" -----");
	tdk_setclr(tdk_ClrRed, tdk_LyrFg);
	printf("~");
	tdk_setclr(tdk_ClrYlw, tdk_LyrFg);
	printf("%%\n");
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	printf("¦ ");
	for (i = 1; i < 8; i++) {
		tdk_setclr(i, tdk_LyrBg);
		printf("   ");
	}
	tdk_setclr(tdk_ClrDft, tdk_LyrBg);
	printf(" ¦\n¦ ");
	for (i = 1; i < 8; i++) {
		tdk_setclr(i, tdk_LyrFg);
		printf("Fla");
	}
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	printf(" ¦\n");
	tdk_setclr(tdk_ClrYlw, tdk_LyrFg);
	printf("%%");
	tdk_setclr(tdk_ClrRed, tdk_LyrFg);
	printf("~");
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	printf("---------------------");
	tdk_setclr(tdk_ClrRed, tdk_LyrFg);
	printf("~");
	tdk_setclr(tdk_ClrYlw, tdk_LyrFg);
	printf("%%\n");
	tdk_setclr(tdk_ClrDft, tdk_LyrFg);
	return 0;
}
