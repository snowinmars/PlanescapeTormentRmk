// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUJOG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUJOG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53212 /* ~Ce grand garde braille des ordres aux civils rassemblés autour de lui. Il te regarde d'un air méchant à travers les fentes de son casque tandis que tu l'interromps. "Qu'est-ce que tu veux, cagueur ? Et grouille-toi, on a du boulot par ici."~ */
  IF ~~ THEN REPLY #53213 /* ~"Que se passe-t-il ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #53214 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53215 /* ~"À ton avis, espèce de bougre ?! On va piller cet entrepôt. Tu veux d'l'action ou pas ? Parce que ça va pas être la pagaille organisée… On va faire ça *comme il faut*, et c'est moi qui donne les ordres."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53216 /* ~"La ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau dans l'Outreterre. Réfléchis : une fois Maudith occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53217 /* ~"La ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau dans l'Outreterre. Réfléchis : une fois Maudith occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53218 /* ~"La ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau dans l'Outreterre. Réfléchis : une fois Maudith occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53219 /* ~"Tu ne fais qu'envenimer les choses. Tu devrais emmener ces personnes et aider à défendre les murs - au lieu de piller - pour que la ville glisse à nouveau dans l'Outreterre."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53220 /* ~"Tu ne fais qu'envenimer les choses. Tu devrais emmener ces personnes et aider à défendre les murs - au lieu de piller - pour que la ville glisse à nouveau dans l'Outreterre."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53221 /* ~"Un instant : il n'y aura pas de pillages tant que je serai ici."~ */ GOTO 3
  IF ~~ THEN REPLY #53222 /* ~"J'ai autre chose à faire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3
  SAY #53223 /* ~Le garde lève la visière de son casque pour pouvoir cracher à tes pieds. "Hah ! Fiche le camp, bougre, on a du pillage à faire."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53224 /* ~"La ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau dans l'Outreterre. Réfléchis : une fois Maudith occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53225 /* ~"La ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau dans l'Outreterre. Réfléchis : une fois Maudith occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53226 /* ~"La ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau dans l'Outreterre. Réfléchis : une fois Maudith occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53227 /* ~"Un instant : il n'y aura pas de pillages tant que je serai ici."~ */ GOTO 3
  IF ~~ THEN REPLY #53228 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5 2.3
  SAY #53229 /* ~Tu sens son dédain, même au travers du casque à visière. "Ah bon ? Bien, dans ce cas…" Il brandit une arme énorme. "Alors, il suffit d'y remédier."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53230 /* ~"Attends : la ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau sur l'Outreterre. Réfléchis : une fois Maudith entièrement occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53231 /* ~"Attends : la ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau sur l'Outreterre. Réfléchis : une fois Maudith entièrement occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53232 /* ~"Attends : la ville s'écroule à cause du chaos qui y sévit - si nous arrivons à calmer les choses, cela permettra à la ville de glisser à nouveau sur l'Outreterre. Réfléchis : une fois Maudith entièrement occupée par les monstres, combien de temps penses-tu que tu vivras pour apprécier tes pillages ?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53693 /* ~"Tu ne fais qu'envenimer les choses. Tu devrais emmener ces personnes et aider à défendre les murs - au lieu de piller - pour que la ville glisse à nouveau dans l'Outreterre."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53694 /* ~"Tu ne fais qu'envenimer les choses. Tu devrais emmener ces personnes et aider à défendre les murs - au lieu de piller - pour que la ville glisse à nouveau dans l'Outreterre."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53233 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 1.4 2.0 2.1 2.2 3.0 3.1 3.2 3.4
  SAY #53234 /* ~"Mais… ah, damnation. T'as raison." Il crie à l'attention des pillards rassemblés autour de lui : "Alors ! Vous avez entendu le bonhomme, on y va ! Et si quelqu'un parle de ça une fois qu'on aura mis la ville sens dessus dessous… il est mort ! Maintenant, on y va ! En route !" Il se retourne vers toi. "En ce qui *te concerne* : t'as l'air d'avoir sur les épaules une tête plus pleine qu'on dirait."~ */
  IF ~~ THEN REPLY #53235 /* ~"Merci. Au revoir."~ */ DO ~AddexperienceParty(150000)
EscapeArea()
~ JOURNAL #53236 /* ~Je suis parvenu à convaincre un groupe de citoyens (qui étaient dirigés par un garde, en plus !) de cesser leurs pillages et d'aider à défendre la ville.~ */ EXIT
END
