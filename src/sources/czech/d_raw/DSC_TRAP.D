// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSC_TRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSC_TRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50384 /* ~Toto je starý, vybledlý a neškodně vyhlížející pergamenový svitek převázaný jednou červenou stuhou a nepatrně páchnoucí plesnivinou. Stuha je stáhnuta jednoduchou voskovou pečetí.~ */
  IF ~~ THEN REPLY #50385 /* ~Zlom pečeť, otevři svitek, přečti jej.~ */ GOTO 1
  IF ~~ THEN REPLY #50386 /* ~Odlož svitek.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50387 /* ~Svitek obsahuje několik řádek roztřesené kaligrafie a podivnou runu. Kaligrafie říká:

"toto tě možná NEZABIJE ale ZPOMALÍ tě jsem si JISTÝ"
"PŘESTAŇTE MĚ PRONÁSLEDOVAT VY ZLODĚJŠTÍ BASTARDI toto je MOJE tělo MOJE - MOJE - MOJE"
"teď... ZEMŘI"~ */
  IF ~~ THEN REPLY #50388 /* ~"Co to...?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50389 /* ~
~ */
  IF ~~ THEN REPLY #50390 /* ~
~ */ DO ~ApplySpell(Protagonist,WIZARD_BALL_LIGHTNING)
DestroyPartyItem("SCTrap",FALSE)
~ EXIT
END
