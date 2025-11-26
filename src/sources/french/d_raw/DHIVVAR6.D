// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49016 /* ~Tu vois une femme à l'air inquiet.~ */
  IF ~~ THEN REPLY #49017 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #49018 /* ~Laisse la femme tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49019 /* ~La femme soupire. "Mon mari est encore parti."~ */
  IF ~~ THEN REPLY #49020 /* ~"On dirait que c'est un homme occupé."~ */ GOTO 4
  IF ~~ THEN REPLY #49021 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49022 /* ~"J'attends que mon mari revienne. Ça fait un moment qu'il est parti et je suis de plus en plus inquiète."~ */
  IF ~~ THEN REPLY #49023 /* ~"Je suis sûr qu'il sera bientôt de retour."~ */ GOTO 3
  IF ~~ THEN REPLY #49024 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49025 /* ~"Tu dois avoir raison. Oh… regarde l'heure. Maintenant, si tu veux bien m'excuser, j'ai du travail à terminer."~ */
  IF ~~ THEN REPLY #49026 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49027 /* ~"Oui et moi aussi j'ai à faire… Alors, je t'en prie, laisse-moi tranquille."~ */
  IF ~~ THEN REPLY #49028 /* ~"Au revoir."~ */ EXIT
END
