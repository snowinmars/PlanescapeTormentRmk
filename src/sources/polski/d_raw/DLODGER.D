// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLODGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLODGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66627 /* ~Twoje obecność wprawiła tę osobę w niejakie zdziwienie. "Och. Cóż to? Jestem pewien, że zamykałem drzwi na klucz. Tak czy siak, czy byłbyś tak uprzejmy i odszedł stąd jak najprędzej?"~ */
  IF ~~ THEN REPLY #66629 /* ~"Naturalnie. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #67880 /* ~"Odejdę kiedy będę miał na to ochotę. Nie przeszkadzaj sobie."~ */ EXIT
END
