// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAODA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAODA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49891 /* ~Zdá se, že jsi ji vylekal. Najednou přestala stan prohrabávat a nervózně se na tebe podívala.~ */
  IF ~~ THEN REPLY #49892 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #49893 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49894 /* ~"Nic jsem nedělala! Přísahám!"~ */
  IF ~~ THEN REPLY #49895 /* ~"Proč mi nepovíš cos nedělala?"~ */ GOTO 2
  IF ~~ THEN REPLY #49896 /* ~"Co děláš je tvoje věc. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49897 /* ~Podívala se na tebe, jakoby chtěla něco říct a pak rychle uháněla ke dveřím.~ */
  IF ~~ THEN REPLY #49898 /* ~"Stát..."~ */ DO ~EscapeArea()
~ EXIT
END
