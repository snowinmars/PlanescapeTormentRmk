// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43000 /* ~Tato osoba strnule upřeně hledí na kovový panel namontovaný na stěně komory. Po chvíli divoké koncentrace, zamává rukama a pronese posloupnost impozantních zvuků 'arkanských slabik'... to vše bez efektu. Přesto, pokračuje pilně ve cvičení, příliš zabraná do práce, než aby se ti mohla věnovat.~ */
  IF ~~ THEN REPLY #43001 /* ~Odejít.~ */ EXIT
END
