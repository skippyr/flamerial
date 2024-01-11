#include <tdk.h>

void triangles(int len);

void triangles(int len)
{
	int i;
	for (i = 0; i < len; i++) {
		tdk_setclr(i % 2 ? tdk_ClrRed : tdk_ClrYlw, tdk_LyrFg);
		printf(i % 2 ? "⊼" : "⊵");
	}
	tdk_setclr(tdk_ClrDft, tdk_LyrFg);
}

int main(void)
{
	int clr;
	triangles(8);
	printf(" flamerial ");
	triangles(8);
	tdk_setclr(tdk_ClrMag, tdk_LyrFg);
	printf("\n¦/ ");
	for (clr = tdk_ClrRed; clr <= tdk_ClrWht; clr++) {
		tdk_setclr(clr, tdk_LyrBg);
		printf("   ");
	}
	tdk_setclr(tdk_ClrDft, tdk_LyrBg);
	printf(" \\¦\n");
	triangles(27);
	putchar('\n');
	return 0;
}
