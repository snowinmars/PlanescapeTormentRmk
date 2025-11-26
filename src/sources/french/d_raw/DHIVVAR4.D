// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48991 /* ~Tu vois une femme potelée qui fait le ménage. Elle ne t'a pas vu entrer dans la pièce.~ */
  IF ~~ THEN REPLY #48993 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #48994 /* ~Laisse la femme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48995 /* ~"Encore toi… À ce que je vois, tu ne connais toujours pas les bonnes manières."~ */
  IF ~~ THEN REPLY #48996 /* ~"Hmm… ce n'est pas ici que je voulais venir."~ */ GOTO 4
  IF ~~ THEN REPLY #48997 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48998 /* ~"Qu'est-ce que tu fais chez moi ? Tu ne connais donc pas les bonnes manières ? Ça ne se fait pas d'entrer comme ça chez les gens."~ */
  IF ~~ THEN REPLY #48999 /* ~"Je suis désolé. Je ne savais que quelqu'un vivait ici."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49000 /* ~"Eh bien, maintenant tu sais. Bon, va-t'en et ferme la porte derrière toi. J'ai beaucoup de travail à terminer et je ne veux pas qu'on m'interrompe."~ */
  IF ~~ THEN REPLY #49001 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49002 /* ~"Va où tu veux, mais laisse-moi tranquille."~ */
  IF ~~ THEN REPLY #49003 /* ~"Au revoir."~ */ EXIT
END
