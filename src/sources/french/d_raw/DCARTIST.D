// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARTIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARTIST~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51717 /* ~Cette séduisante fille au teint pâle te sourit en te montrant un livre rempli de croquis au fusain. "Bonjour, mon bon monsieur. Je m'appelle Ullana ; je suis artiste peintre et je me ferais un plaisir de faire ton portrait pour à peine cinq pièce de cuivre. Je peux faire un portrait classique ou une caricature, si tu préfères."~ */
  IF ~~ THEN REPLY #51718 /* ~"Non, merci. Au revoir."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51719 /* ~"Rebonjour, mon bon monsieur. Tu veux que je dessine ton portrait ? Je t'assure que tu ne seras pas déçu du résultat…"~ */
  IF ~~ THEN REPLY #51720 /* ~"Pas maintenant, merci. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51721 /* ~Elle sourit, mais semble triste. "Alors, au revoir. Surtout, n'hésite pas à revenir si jamais tu changes d'avis."~ */
  IF ~~ THEN REPLY #51722 /* ~Pars.~ */ EXIT
END
