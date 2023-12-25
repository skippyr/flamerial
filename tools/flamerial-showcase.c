/* See LICENSE for copyright and license details. */

#include <tdk.h>

static void ccenter(unsigned short int len);
static void rcenter(unsigned short int len);
static void triangles(unsigned short int len);

static void
ccenter(unsigned short int len)
{
	int lpad;
	unsigned short int crow;
	unsigned short int wcol;
	tdk_getwdim(&wcol, NULL);
	tdk_getcpos(NULL, &crow);
	tdk_setcpos((lpad = (wcol - len) / 2) < 0 ? 0 : lpad, crow);
}

static void
rcenter(unsigned short int len)
{
	int toppad;
	unsigned short int ccol;
	unsigned short int wrow;
	tdk_getwdim(NULL, &wrow);
	tdk_getcpos(&ccol, NULL);
	tdk_setcpos(ccol, (toppad = (wrow - len) / 2) < 0 ? 0 : toppad);
}

static void
triangles(unsigned short int len)
{
	unsigned short int i;
	for (i = 0; i < len; i++) {
		tdk_setclr(tdk_LyrFg, i % 2 ? tdk_ClrRed : tdk_ClrYlw);
		printf(i % 2 ? "⊼" : "⊵");
	}
}

int
main(void)
{
	int i;
	tdk_setwalt(1);
	tdk_setcvis(0);
	rcenter(7);
	ccenter(27);
	triangles(8);
	tdk_setclr(tdk_LyrFg, tdk_ClrDft);
	printf(" Flamerial ");
	triangles(8);
	putchar('\n');
	ccenter(27);
	tdk_setclr(tdk_LyrFg, tdk_ClrMag);
	printf("¦/ ");
	for (i = tdk_ClrRed; i <= tdk_ClrWht; i++) {
		tdk_setclr(tdk_LyrBg, i);
		printf("   ");
	}
	tdk_setclr(tdk_LyrBg, tdk_ClrDft);
	printf(" \\¦");
	putchar('\n');
	ccenter(27);
	triangles(27);
	printf("\n\n");
	ccenter(27);
	tdk_setclr(tdk_LyrFg, tdk_ClrDft);
	printf(" github: ");
	tdk_setclr(tdk_LyrFg, tdk_ClrRed);
	tdk_seteff(tdk_EffUnd, 1);
	printf("skippyr/flamerial");
	tdk_seteff(tdk_EffUnd, 0);
	printf("\n\n");
	ccenter(20);
	tdk_setclr(tdk_LyrFg, tdk_ClrDft);
	printf("Press ");
	tdk_setlum(tdk_LumBld);
	printf("Enter");
	tdk_setlum(tdk_LumDft);
	printf(" to exit.");
	while (tdk_getkey() != tdk_KeyEnter);
	tdk_setcvis(1);
	tdk_setwalt(0);
	return 0;
}
