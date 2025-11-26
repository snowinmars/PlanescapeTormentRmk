// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHBDYGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHBDYGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Ce géant porte une armure rouge ouvragée énorme. Alors que tu approches, il t'observe attentivement, mais sans crainte.~ */
  IF ~~ THEN REPLY #31238 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #31239 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2894 /* ~Une voix tonitruante sort de son heaume : "Bienvenue, citoyen. Je suis Terre-à-sûr…garde du corps de Diligence, Quatrième Magistrat du Quartier. Mais je dois partir, mes fonctions m'appellent à ses côtés.~ */
  IF ~~ THEN REPLY #31240 /* ~"Une seconde… J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #31241 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #31235 /* ~Il fait volte-face et commence à s'éloigner.~ */
  IF ~~ THEN REPLY #31242 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31236 /* ~Cet homme gigantesque porte une armure rouge ornementée toute aussi gigantesque. Tu peux voir à travers les fentes de son heaume qu'il t'observe d'un regard suspicieux.~ */
  IF ~~ THEN REPLY #31243 /* ~"Bonjour…"~ */ GOTO 4
  IF ~~ THEN REPLY #31244 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31237 /* ~Il lève soudainement son arme. "C'est bien ce que je pensais : c'est toi !" Il se précipite sur toi pour t'attaquer, tout en appelant d'autres gardes à la rescousse.~ */
  IF ~~ THEN REPLY #31245 /* ~Défends-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #31246 /* ~Sauve-toi.~ */ DO ~Enemy()
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
