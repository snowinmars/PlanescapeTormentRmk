// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTHGG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTHGG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66596 /* ~Tu aperçois un Homme-Poussière au teint pâle qui monte la garde à l'entrée. Il a le regard perdu dans le vide, mais se tourne vers toi lorsque tu t'approches. "Oui ?"~ */
  IF ~~ THEN REPLY #66597 /* ~"J'ai quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #66598 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.4 4.0 5.1 6.0 7.0
  SAY #66599 /* ~Il hoche la tête et attend.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66600 /* ~"J'aimerais entrer à la Morgue."~ */ GOTO 2
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66601 /* ~"Je suis un Homme-Poussière initié ; j'aimerais entrer à la Morgue."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #66602 /* ~"Je cherche un certain Pharod. Sais-tu où on peut le trouver ?"~ */ JOURNAL #66588 /* ~Un des Hommes-Poussière m'a dit que, si je cherchais Pharod, je devais m'adresser à un certain Emoric, que je trouverai au bar de la Poussière accumulée. Cet établissement est situé au sud-ouest de la Morgue.~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #66603 /* ~"Je cherche un journal égaré. Tu n'en aurais pas vu un, des fois ?"~ */ GOTO 7
  IF ~~ THEN REPLY #66604 /* ~"Laisse tomber, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66605 /* ~"Que viens-tu faire à la Morgue ?"~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #66606 /* ~"Je suis venu rendre hommage à Deionarra qui se trouve dans la Salle de Commémoration du nord-ouest."~ */ GOTO 3
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #66607 /* ~"Je suis venu voir Dhall."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66608 /* ~"Je suis venu pour la veillée mortuaire ; j'espérais qu'un Homme-Poussière pourrait me dire dans quelle salle de la Morgue elle se tient."~ */ GOTO 3
  IF ~~ THEN REPLY #66609 /* ~"Je n'ai rien à faire ici, mais je veux quand même entrer."~ */ GOTO 4
  IF ~~ THEN REPLY #66610 /* ~"En fait, j'ai juste quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #66611 /* ~"Laisse tomber, je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2
  SAY #66612 /* ~Il hoche la tête. "Très bien. Suis-moi."~ */
  IF ~~ THEN REPLY #66613 /* ~"D'accord…"~ */ DO ~TeleportParty("AR0201",[1190.2578],10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #66614 /* ~Il secoue la tête. "Tu n'as pas le droit d'entrer."~ */
  IF ~~ THEN REPLY #66615 /* ~"Très bien. J'aurais encore quelques questions à te poser…" ~ */ GOTO 1
  IF ~~ THEN REPLY #66616 /* ~"Dans ce cas, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #66617 /* ~"Pharod est un Récupérateur." L'homme t'observe un instant. "Si tu souhaites en apprendre davantage à son sujet, je crois savoir que l'Initié Emoric, qui se trouve au bar de la Poussière accumulée, le cherche également. Peut-être pourra-t-il t'aider."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66618 /* ~"Où se trouve le bar de la Poussière accumulée ?"~ */ GOTO 6
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66619 /* ~"Je connais le bar dont tu me parles. Avant d'y aller, j'aurais encore quelques questions à te poser…"~ */ GOTO 1
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66620 /* ~"Le bar de la Poussière accumulée ? C'est bien en direction du sud-ouest, pas vrai ? Très bien, j'y vais de ce pas."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #66621 /* ~"Va au sud-ouest après la sortie de la Morgue. Il se trouve derrière le monument."~ */
  IF ~~ THEN REPLY #66622 /* ~"D'accord. J'ai encore quelques questions avant d'y aller…"~ */ GOTO 1
  IF ~~ THEN REPLY #66623 /* ~"Très bien. Dans ce cas, je le chercherai."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #66624 /* ~Il secoue la tête. "Non."~ */
  IF ~~ THEN REPLY #66625 /* ~"J'ai d'autres questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #66626 /* ~"Très bien. Merci."~ */ EXIT
END
