// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #25998 /* ~Ce petit sicaire nerveux est vêtu de loques, de couleur rouge et noire. Il te regarde approcher.~ */
  IF ~~ THEN REPLY #26001 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #26002 /* ~Laisse le sicaire tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25999 /* ~L'homme ne parle pas, il se contente de te regarder. Il n'a pas l'air d'être le chef de cette petite bande.~ */
  IF ~~ THEN REPLY #26000 /* ~"Alors, au revoir."~ */ EXIT
END
