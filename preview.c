#include <tdk.h>

void clr(int lyr);
void ln(void);
void title(void);

void clr(int lyr)
{
	int i;
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	printf("¦ ");
	for (i = 1; i < 8; i++)
		if (lyr == tdk_LyrFg) {
			tdk_setclr(i, tdk_LyrFg);
			printf("Fla");
		} else {
			tdk_setclr(i, tdk_LyrBg);
			printf("   ");
		}
	tdk_setclr(tdk_ClrDft, tdk_LyrBg);
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	printf(" ¦");
	tdk_setclr(tdk_ClrDft, tdk_LyrFg);
}

void ln(void)
{
	int i;
	tdk_setclr(tdk_ClrYlw, tdk_LyrFg);
	printf("%%");
	tdk_setclr(tdk_ClrRed, tdk_LyrFg);
	printf("~");
	tdk_setclr(tdk_ClrBle, tdk_LyrFg);
	for (i = 0; i < 21; i++)
		putchar('-');
	tdk_setclr(tdk_ClrRed, tdk_LyrFg);
	printf("~");
	tdk_setclr(tdk_ClrYlw, tdk_LyrFg);
	printf("%%");
	tdk_setclr(tdk_ClrDft, tdk_LyrFg);
}

void title(void)
{
	int ccol;
	int cln;
	tdk_getcpos(&ccol, &cln);
	tdk_setcpos(7, cln);
	printf(" Flamerial ");
	tdk_setcpos(ccol, cln);
}

int main(void)
{
	printf("           🔥🐉\n");
	ln();
	title();
	printf("\n");
	clr(tdk_LyrBg);
	printf("\n");
	clr(tdk_LyrFg);
	printf("\n");
	ln();
	printf("\n");
	return 0;
}
