// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0707")
~ THEN BEGIN 0 // from:
  SAY #53701 /* ~"Niemand will dich hier haben, Dussel. Du verschwindest besser, bevor dir was passiert." ~ */
  IF ~~ THEN REPLY #53702 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0707")
~ THEN BEGIN 1 // from:
  SAY #53703 /* ~"Letzt Chance, allein von hier zu verschwinden, Fremder. Du gehst durch die Tür da, oder es gibt gewaltig Ärger."~ */
  IF ~~ THEN REPLY #53704 /* ~"Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0707")
~ THEN BEGIN 2 // from:
  SAY #53705 /* ~"Du mußt mit dem Kopf durch die Wand, was, Dussel? Du hättest verschwinden sollen, als du noch konntest." Stahl blitzt auf!~ */
  IF ~~ THEN REPLY #53706 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66781 /* ~Aus den Augen dieser Person spricht die reine Blutgier, und die Stimme klingt holprig vom Schreien der Haßparolen in der Sprache des Mobs. Du wirst ganz und gar ignoriert.~ */
  IF ~~ THEN REPLY #66784 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66782 /* ~"Danke, mein Freund. Wir müssen eine ganze Stadt retten..."~ */
  IF ~~ THEN REPLY #66783 /* ~"Viel Glück..."~ */ EXIT
END
