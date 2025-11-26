// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2305 /* ~Tu vois une femme vêtue d'une robe noire, au visage pâle et grave. Elle regarde au loin. Elle n'a pas l'air de t'avoir remarqué.~ */
  IF ~~ THEN REPLY #2306 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #2307 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2308 /* ~Tu vois une femme Homme-Poussière vêtue d'une robe noire. Son visage est pâle et grave. Elle regarde au loin. Elle n'a pas l'air de t'avoir vu.~ */
  IF ~~ THEN REPLY #2313 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #2314 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2309 /* ~Elle se tourne lentement pour te faire face. "Oui ?"~ */
  IF ~~ THEN REPLY #2315 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #2316 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2310 /* ~Elle croise les bras dans son habit et attend.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2317 /* ~"Connais-tu un certain Pharod ?"~ */ JOURNAL #66588 /* ~Un des Hommes-Poussière m'a dit que, si je cherchais Pharod, je devais m'adresser à un certain Emoric, que je trouverai au bar de la Poussière accumulée. Cet établissement est situé au sud-ouest de la Morgue.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2318 /* ~"Je cherche un journal perdu. Tu n'en aurais pas vu un ?"~ */ GOTO 5
  IF ~~ THEN REPLY #2319 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2311 /* ~Elle secoue la tête.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2320 /* ~"Je cherche un journal perdu. Tu n'en aurais pas vu un ?"~ */ GOTO 5
  IF ~~ THEN REPLY #2321 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2312 /* ~Elle secoue la tête.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2322 /* ~"Tu sais où je peux trouver un certain Pharod ?"~ */ JOURNAL #66588 /* ~Un des Hommes-Poussière m'a dit que, si je cherchais Pharod, je devais m'adresser à un certain Emoric, que je trouverai au bar de la Poussière accumulée. Cet établissement est situé au sud-ouest de la Morgue.~ */ GOTO 6
  IF ~~ THEN REPLY #2323 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66589 /* ~"Pharod est un Récupérateur." La femme t'observe un instant. "Si tu souhaites en apprendre davantage à son sujet, je crois savoir que l'Initié Emoric, qui se trouve au bar de la Poussière accumulée, le cherche également. Peut-être pourra-t-il t'aider."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66591 /* ~"Où se trouve le bar de la Poussière accumulée ?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66592 /* ~"Je connais le bar dont tu me parles. Avant d'y aller, j'aurais encore quelques questions à te poser…"~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66593 /* ~"Le bar de la Poussière accumulée ? C'est bien en direction du sud-ouest, pas vrai ? Très bien, j'y vais de ce pas."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66590 /* ~"Va au sud-ouest au sortir de la Morgue. Il se trouve derrière le monument."~ */
  IF ~~ THEN REPLY #66594 /* ~"D'accord. J'ai encore quelques questions avant d'y aller…"~ */ GOTO 3
  IF ~~ THEN REPLY #66595 /* ~"Très bien. Dans ce cas, je le chercherai."~ */ EXIT
END
