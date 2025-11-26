// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SWORDOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~SWORDOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50430 /* ~Das Schwert des Why'nn - auch als Betrügerklinge bekannt - sieht eher wie ein reich verzierter Dolch aus, statt wie eine kampftaugliche Klinge. Es ist zwar nicht besonders gut ausgewogen, aber es ist mit mächtigem Zauber versehen worden und daher im Kampf effektiver als ein eher 'herkömmliches' Messer. Die größte Stärke von Wh'ynns Schwert ist jedoch die Fähigkeit, seinen Träger betrügen zu lassen. Durch bloßes Emporhalten des 'Schwerts' in einer geeigneten melodramatischen Pose gewinnt sein Besitzer in jeder Situation die Oberhand, in dem sich das Artefakt befindet.~ */
  IF ~~ THEN REPLY #50436 /* ~Täuschung: Stell deine Beine leicht auseinander, spann all deine Muskeln an, und schleuder die Klinge triumphierend in den Himmel.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SwordoW_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #50437 /* ~Leg den Dolch erstmal weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50438 /* ~Eine Kraftwoge durchdringt die Klinge von Wh'ynns Schwert. Aus der Ferne sind Donnerschläge zu hören. In wenigen Augenblicken beginnt für dich das Endspiel...~ */
  IF ~~ THEN REPLY #50439 /* ~Beobachte, wie es sich aufbaut...~ */ EXIT
END
