// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTTRANS~

IF ~  NumInPartyGT(1)
~ THEN BEGIN 0 // from:
  SAY #38940 /* ~Kiedy otwierasz wrota, czujesz przenikliwe zimno. Kiedy dochodzi cię czyjś szept, zaczynasz drżeć, choć nie możesz zrozumieć, co on mówi. Nagle wszystko milknie tak samo niespodziewanie, jak się zaczęło... Zdajesz sobie sprawę, że znasz już to miejsce. Nie wiadomo dlaczego wiesz, że twoi towarzysze nie mogą za tobą podążyć.~ */
  IF ~~ THEN REPLY #38951 /* ~"Wejdę tam sam. Zaczekajcie tu na mnie."~ */ EXIT
END
