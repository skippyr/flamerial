/* See LICENSE for copyright and license details. */

#include <tdk.h>

static void
ccenter(size_t len)
{
	int lpad;
	unsigned short int crow;
	unsigned short int wcol;
	tdk_getwdim(&wcol, NULL);
	tdk_getcpos(NULL, &crow);
	tdk_setcpos((lpad = (wcol - len) / 2) < 0 ? 0 : lpad, crow);
}

static void
wcenter(size_t len)
{
	unsigned short int ccol;
	unsigned short int wrow;
	int toppad;
	tdk_getwdim(NULL, &wrow);
	tdk_getcpos(&ccol, NULL);
	tdk_setcpos(ccol, (toppad = (wrow - len) / 2) < 0 ? 0 : toppad);
}

int
main(void)
{
	char msg[] = "Flamerial";
	tdk_setwalt(1);
	tdk_setcvis(0);
	wcenter(3);
	ccenter(sizeof(msg));
	printf("%s\n", msg);
	ccenter(28);
	printf(" github : ");
	tdk_setclr(tdk_LyrFg, tdk_ClrRed);
	tdk_seteff(tdk_EffUnd, 1);
	printf("skippyr/flamerial");
	tdk_seteff(tdk_EffUnd, 0);
	tdk_setclr(tdk_LyrFg, tdk_ClrDft);
	printf("\n\n");
	ccenter(20);
	printf("Press ");
	tdk_setlum(tdk_LumBld);
	printf("Enter");
	tdk_setlum(tdk_LumDft);
	printf(" to exit.");
	tdk_getkey();
	tdk_setcvis(1);
	tdk_setwalt(0);
	return 0;
}
