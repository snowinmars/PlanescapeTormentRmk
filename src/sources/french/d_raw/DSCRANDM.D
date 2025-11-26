// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCRANDM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCRANDM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~Alors que tu t'approches de la femme pour lui parler, les yeux d'Ignus s'enflamment et il l'étreint avant que tu aies pu l'arrêter. Elle répond à son étreinte et se perd dans ses flammes. Elle ne crie pas. La dernière chose que tu vois d'elle reste gravée dans ta mémoire : ses yeux brillent d'une passion ardente et d'un amour dévastateur. Il ne reste rien d'elle - pas même des cendres.~ */
  IF ~~ THEN EXIT
END
