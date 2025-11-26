// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_DRINK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_DRINK~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67935 /* ~Quand tu l'interromps, cette personne se retourne vers toi, les yeux plissés et l'air mauvais. Son expression s'adoucit quelque peu lorsqu'elle t'aperçoit. Lèvres pincées, elle hoche la tête à ton attention et se détourne de nouveau.~ */
  IF ~~ THEN REPLY #67936 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67937 /* ~L'individu que tu interroges lève à peine le nez de son verre. "Je ne peux pas t'aider, je n'ai pas la réponse à tes questions. Laisse-moi tranquille. Au revoir."~ */
  IF ~~ THEN REPLY #67938 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67939 /* ~Il se tourne vers toi et te regarde méchamment." Tu vois pas que je suis occupé ? Si je voulais parler avec toi, je t'aurais adressé la parole." Il se détourne en secouant la tête.~ */
  IF ~~ THEN REPLY #67940 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67941 /* ~La personne que tu as abordée t'inspecte nerveusement. "Je ne peux pas t'empêcher de boire ici, mais il est hors de question que je réponde à tes questions." Elle se détourne et recommence à boire.~ */
  IF ~~ THEN REPLY #67942 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67943 /* ~Cet individu n'a plus rien à te dire.~ */
  IF ~~ THEN REPLY #67944 /* ~Pars.~ */ EXIT
END
