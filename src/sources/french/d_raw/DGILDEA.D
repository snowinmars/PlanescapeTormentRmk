// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILDEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILDEA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58500 /* ~Tu aperçois une jeune femme. Elle paraît s'ennuyer ferme, mais redresse la tête en te voyant approcher. "Bonjour, matois. Puis-je t'aider ?"~ */
  IF ~~ THEN REPLY #58501 /* ~"Bonjour."~ */ EXIT
  IF ~~ THEN REPLY #58502 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #58503 /* ~Elle sourit. "Je suis Gildea. Tu veux voir mes marchandises ?"~ */
  IF ~~ THEN REPLY #58504 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58505 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58506 /* ~"Non, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58507 /* ~Elle secoue la tête. "Je suis une simple commerçante. Je n'ai pas de réponses à te donner."~ */
  IF ~~ THEN REPLY #58508 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58509 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #58510 /* ~Tu aperçois Gildea la commerçante. Elle te sourit. "Rebonjour. Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #58511 /* ~"Montre-moi tes marchandises."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58512 /* ~"Rien, au revoir."~ */ EXIT
END
