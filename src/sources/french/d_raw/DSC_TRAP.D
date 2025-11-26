// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSC_TRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSC_TRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50384 /* ~C'est un vieux parchemin décoloré et qui semble anodin, attaché par un simple ruban rouge et sentant légèrement la moisissure. Le ruban est tenu par un simple sceau en cire.~ */
  IF ~~ THEN REPLY #50385 /* ~Brise le sceau, ouvre le parchemin et lis-le.~ */ GOTO 1
  IF ~~ THEN REPLY #50386 /* ~Range le parchemin.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50387 /* ~Le parchemin contient quelques lignes de calligraphie chancelante et une étrange rune. La calligraphie est la suivante :

"Ça ne VOUS TUERA pas, mais VOUS RALENTIRA, j'en suis sûr"
"ARRÊTEZ DE ME TRAQUER SALES VOLEURS c'est MON corps c'est le MIEN LE MIEN"
"à présent… MEURS"~ */
  IF ~~ THEN REPLY #50388 /* ~"Qu'est-ce qu'… ?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #50389 /* ~~ */
  IF ~~ THEN REPLY #50390 /* ~~ */ DO ~ApplySpell(Protagonist,WIZARD_BALL_LIGHTNING)
DestroyPartyItem("SCTrap",FALSE)
~ EXIT
END
