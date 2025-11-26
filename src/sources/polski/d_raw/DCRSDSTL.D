// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDSTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDSTL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3170 /* ~Ta brama uzbrojona jest w liczne masywne zamki i zasuwy. Wygląda na to, że każda próba jej otwarcia za pośrednictwem dostępnych ci narzędzi i środków, będzie z góry skazana na niepowodzenie.~ */
  IF ~  Global("Curst_key","GLOBAL",7)
~ THEN REPLY #3171 /* ~Wypowiedz sylaby, które przekazał ci Trias.~ */ GOTO 1
  IF ~~ THEN REPLY #68141 /* ~Odejdź od drzwi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #68142 /* ~Kiedy wymawiasz pierwszą sylabę, brama zaczyna trzeszczeć i rzęzić. Przy drugiej - zasuwy i zamki przekręcają się i odmykają, a kiedy kończysz wypowiadać trzecią, brama stoi przed tobą otworem.~ */
  IF ~~ THEN REPLY #68143 /* ~"Aha, czyli na tym to polega."~ */ DO ~SetDoorLocked("ar702d03",FALSE)
OpenDoor("AR702d03")
~ EXIT
END
