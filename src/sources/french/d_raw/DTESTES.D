// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61602 /* ~Tu vois un petit homme atteint de calvitie, debout dans ce qui sert de foyer à ce refuge minable. Tout à ses réflexions, il fronce ses sourcils broussailleux et gratte ce qui ressemble à des croûtes sur son gros nez bulbeux.~ */
  IF ~~ THEN REPLY #61604 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #61605 /* ~Laisse l'homme à sa toilette. Explore la pièce.~ */ JOURNAL #61617 /* ~Il s'agit d'une épreuve. Si c'était une vraie entrée de journal, je suis sûr qu'elle serait bonne.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61603 /* ~Il ne se donne pas la peine de lever la tête, et continuer de loucher sur son nez. "Ouais ? Qu'est-ce que tu veux ?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #61606 /* ~"Est-ce que je pourrais me reposer ici ?"~ */ EXIT
END
