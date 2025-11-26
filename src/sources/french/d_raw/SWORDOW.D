// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SWORDOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~SWORDOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50430 /* ~L’Épée de Why'nn - également connue sous le nom de Lame du Tricheur - ressemble davantage à une dague décorative qu'à une véritable épée de combat. Pourtant mal conçue, elle a été enchantée par de puissants pouvoirs magiques et s'avère plus efficace au combat qu'un couteau 'ordinaire'. L'atout majeur de l’Épée de Wh'ynn réside dans sa capacité à permettre à son propriétaire de tricher : en maintenant 'l'épée' en l'air dans la position mélodramatique qui convient, son propriétaire gagnera la partie.~ */
  IF ~~ THEN REPLY #50436 /* ~En trichant : mets-toi debout en écartant légèrement les jambes, fais jouer tous tes muscles et brandis la lame triomphalement vers le ciel.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SwordoW_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #50437 /* ~Range la dague pour le moment.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50438 /* ~Une force traverse l'Epée de Wh'ynn ; tu entends un grondement de tonnerre au loin. En quelques instants, la partie est à toi…~ */
  IF ~~ THEN REPLY #50439 /* ~Observe l'épée…~ */ EXIT
END
