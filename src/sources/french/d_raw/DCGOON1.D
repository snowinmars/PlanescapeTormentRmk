// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0706")
~ THEN BEGIN 0 // from:
  SAY #53695 /* ~"Écoute, bige, tu ferais mieux de te tirer… et c'est un conseil d'ami."~ */
  IF ~~ THEN REPLY #53696 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0706")
~ THEN BEGIN 1 // from:
  SAY #53697 /* ~"Tu n'as pas dû entendre. Tire-toi d'ici. Je ne te le répéterai pas."~ */
  IF ~~ THEN REPLY #53698 /* ~"Entendu. Je m'en vais.".~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0706")
~ THEN BEGIN 2 // from:
  SAY #53699 /* ~"Je t'ai laissé une chance, bige. Tu aurais dû partir tant que tu en avais l'occasion." Il t'attaque !~ */
  IF ~~ THEN REPLY #53700 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66759 /* ~"Tu as l'intention de nous sauver ou de rester là bouche bée ? Allez, bouge-toi !"~ */
  IF ~~ THEN REPLY #66760 /* ~"Très bien. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66761 /* ~L'homme aux cheveux grisonnants te lance un regard méprisant. "Qu'est-ce tu veux, bige ? Tu vois pas qu'on est occupé à nettoyer l'engeance qui nous a amené dans les Carcères ? Quand on aura fini, on retournera en Outreterre en moins de deux, tu verras."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #66769 /* ~"Mais ce n'est pas ainsi que ça fonctionne. En fait, cette foule poussée par le chaos ne fait qu'asseoir plus encore la position de Maudith dans les Carcères. Pardonnez-lui, du moins pour l'instant, et œuvrez de concert pour lutter contre le mal qui envahit la ville. Alors, vous aurez une chance. Qu'en dis-tu ?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #66771 /* ~"Mais ce n'est pas ainsi que ça fonctionne. En fait, cette foule poussée par le chaos ne fait qu'asseoir plus encore la position de Maudith dans les Carcères. Pardonnez-lui, du moins pour l'instant, et œuvrez de concert pour lutter contre le mal qui envahit la ville. Alors, vous aurez une chance. Qu'en dis-tu ?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #66772 /* ~"Pourquoi crois-tu que le fait de le tuer résoudra vos problèmes ? Tu n'as pas l'impression que cette foule ne fait qu'accroître plus encore le chaos qui règne ici ? Pourquoi ne pas convaincre ces gens d'aider à défendre Maudith contre les monstres. Et puis, la meilleure façon de se venger des politiques n'est-elle pas de leur montrer qu'ils n'ont aucun pouvoir ?"~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66773 /* ~"Pourquoi crois-tu que le fait de le tuer résoudra vos problèmes ? Tu n'as pas l'impression que cette foule ne fait qu'accroître plus encore le chaos qui règne ici ? Pourquoi ne pas convaincre ces gens d'aider à défendre Maudith contre les monstres. Et puis, la meilleure façon de se venger des politiques n'est-elle pas de leur montrer qu'ils n'ont aucun pouvoir ?"~ */ GOTO 5
  IF ~~ THEN REPLY #66774 /* ~"Stop ! Il n'y aura pas de lynchage tant que je serai là."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #66775 /* ~"J'ai autre chose à faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.3
  SAY #66776 /* ~"Mais il… il… flûte ! Bon, d'accord, si tu veux." Il hausse le ton afin que la foule puisse l'entendre. "Laissez-le aller ! Nous devons nous occuper de la ville!"~ */
  IF ~~ THEN REPLY #66777 /* ~"Merci, mon ami. Bonne chance."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
SetGlobal("Lynch_Mob","GLOBAL",1)
AddexperienceParty(150000)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.4
  SAY #66778 /* ~"Ferme-la, bige ! On a à faire, nous!" Il se tourne vers ses compagnons. "Chopez-le !"~ */
  IF ~~ THEN REPLY #66779 /* ~Attaque.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66780 /* ~Observe.~ */ EXIT
END
