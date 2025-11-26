// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0707")
~ THEN BEGIN 0 // from:
  SAY #53701 /* ~"On ne veut pas de toi ici, bige. Pars, ou tu risques de le regretter." ~ */
  IF ~~ THEN REPLY #53702 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0707")
~ THEN BEGIN 1 // from:
  SAY #53703 /* ~"Dernier avertissement, étranger. Tu repasses cette porte, ou tu vas avoir de sacrés problèmes."~ */
  IF ~~ THEN REPLY #53704 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0707")
~ THEN BEGIN 2 // from:
  SAY #53705 /* ~"Il a fallu que tu t'entêtes, pas vrai, bige ? Tu aurais dû partir tant que tu en avais encore l'occasion." Un éclair d'acier !~ */
  IF ~~ THEN REPLY #53706 /* ~Attaque.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66781 /* ~Les yeux de cet individu sont injectés de sang et il a la voix éraillée à force de crier des paroles haineuses en tête de la foule. Tu t'aperçois qu'on t'ignore totalement.~ */
  IF ~~ THEN REPLY #66784 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66782 /* ~"Merci, mon ami. Nous avons une ville à sauver…"~ */
  IF ~~ THEN REPLY #66783 /* ~"Bonne chance…"~ */ EXIT
END
