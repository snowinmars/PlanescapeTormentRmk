// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTGU~

IF ~~ THEN BEGIN 0 // from:
  SAY #385 /* ~Tu vois un homme au visage sévère, vêtu d'un habit sombre. Il t'observe, méfiant.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #388 /* ~"Bonjour."~ */ EXTERN ~DMORTE~ 77
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #389 /* ~"Bonjour."~ */ EXTERN ~DMORTE~ 79
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #390 /* ~"Bonjour."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4119 /* ~"Bonjour."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4120 /* ~Fais comme si tu étais du coin ; passe devant lui en l'ignorant.~ */ GOTO 1
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4146 /* ~Essaie de l'ignorer et passe ton chemin.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY #386 /* ~L'Homme-Poussière fronce les sourcils sur ton passage… Il semble sur le point de t'interpeller, puis se rétracte. Ton allure lui a peut-être fait tenir sa langue.~ */
  IF ~~ THEN REPLY #387 /* ~Continue d'avancer.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY #1407 /* ~L'Homme-Poussière fronce les sourcils sur ton passage. "Toi - que veux-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1409 /* ~"J'ai dû me perdre dans toutes ces salles. Il n'y a pas de guides chargés de diriger les visiteurs ?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #1410 /* ~"J'ai… j'ai dû me perdre."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #1411 /* ~"Ça ne regarde que moi. Tu ferais mieux de t'occuper de TES affaires, Homme-Poussière."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1412 /* ~Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1413 /* ~Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1408 /* ~"Je ne fais que chercher la sortie. Je ne veux causer de tord à personne."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4147 /* ~"Rien. Je m'étais perdu, mais je me dirige maintenant vers la sortie."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.5 12.0 12.5 19.1 19.6
  SAY #1414 /* ~L'Homme-Poussière fronce les sourcils. Il semble sceptique. "Des guides te mèneront dans l'antichambre. N'erre pas dans la Morgue sans escorte."~ */
  IF ~~ THEN REPLY #1415 /* ~"Merci de ton aide. Je vais aller parler au guide."~ */ EXIT
  IF ~~ THEN REPLY #1416 /* ~"J'irai là où bon me semblera… et tu ferais mieux de t'occuper de tes affaires, Homme-Poussière."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.6 12.1 12.6 19.2 19.7
  SAY #1417 /* ~"Tu as l'air perdu." Les yeux de l'Homme-Poussière se plissent, et sa main descend jusqu'au poignard sur le côté. "Attends ici. Je vais appeler les autres gardes pour qu'ils te guident." Il semble prêt à appeler quelqu'un.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1418 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2536 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 7
  IF ~~ THEN REPLY #4148 /* ~"Appelle tes amis, Homme-Poussière… J'ai hâte de les rencontrer."~ */ GOTO 11
  IF ~~ THEN REPLY #4149 /* ~Enfuis-toi.~ */ GOTO 11
  IF ~~ THEN REPLY #4150 /* ~Attends.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 12.2 19.3
  SAY #4121 /* ~Les yeux de l'Homme-Poussière se plissent. Sa main retombe sur le poignard placé sur son flanc. Il semble prêt à appeler un autre garde.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4151 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4152 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 7
  IF ~~ THEN REPLY #4153 /* ~"Appelle tes amis, Homme-Poussière… J'ai hâte de les rencontrer."~ */ GOTO 11
  IF ~~ THEN REPLY #4154 /* ~Enfuis-toi.~ */ GOTO 11
  IF ~~ THEN REPLY #4155 /* ~Attends.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.3 12.4 19.4
  SAY #4122 /* ~Tu te penches vers lui pour lui 'murmurer' quelque chose ; il se penche aussi. Quand il arrive à portée de mains, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d'un coup sec.~ */
  IF ~~ THEN REPLY #4156 /* ~"Je ne peux pas te laisser prévenir tes amis…"~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 14.0
  SAY #4123 /* ~Avant que l'Homme-Poussière ait eu le temps de dire un mot, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d'un coup sec.~ */
  IF ~~ THEN REPLY #4157 /* ~"Je ne peux pas te laisser prévenir tes amis…"~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #4124 /* ~Un *craquement* retentit ; le corps inerte de l'Homme-Poussière tombe dans tes bras.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4158 /* ~"Je préfère que ce soit toi que moi, Homme-Poussière."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4159 /* ~"Je préfère que ce soit toi que moi, Homme-Poussière."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #4125 /* ~À ta grande surprise, cette action t'a paru instinctive, comme si tu l'avais déjà réalisée plusieurs fois… cela te rappelle vaguement quelque chose, mais le souvenir n'est pas assez fort pour refaire surface.~ */
  IF ~~ THEN REPLY #4160 /* ~Cache le corps dans la pénombre et continue d'avancer.~ */ DO ~Kill(Myself)
Deactivate(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4 4.0 5.0 12.3 14.1 19.5
  SAY #4126 /* ~Tu n'es pas assez rapide et l'Homme-Poussière évite ton mouvement. Il recule d'un pas, frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #4161 /* ~"J'espère que tu as fait la paix avec tes dieux, Homme-Poussière…"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 4.3 4.4 5.2 5.3 5.4 14.2 14.3
  SAY #4127 /* ~L'Homme-Poussière frappe trois fois dans ses mains. En réponse, une cloche en fer résonne dans toute la Morgue.~ */
  IF ~~ THEN REPLY #4162 /* ~"J'espère que tu as fait la paix avec tes dieux, Homme-Poussière…"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 0.3
  SAY #4128 /* ~L'Homme-Poussière fronce les sourcils quand tu lui parles. "Que veux-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4163 /* ~"J'ai dû me perdre dans toutes ces salles. Il n'y a pas de guides chargés de diriger les visiteurs ?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4164 /* ~"J'ai… j'ai dû me perdre."~ */ GOTO 4
  IF ~~ THEN REPLY #4165 /* ~"Ça ne regarde que moi. Tu ferais mieux de t'occuper de TES affaires, Homme-Poussière."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4166 /* ~Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4167 /* ~Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4168 /* ~"Je ne fais que chercher la sortie. Je ne veux causer de tord à personne."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4169 /* ~"Rien. Je m'étais perdu, mais je me dirige maintenant vers la sortie."~ */ GOTO 4
END

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #4129 /* ~Tu vois un homme au visage sévère, vêtu d'un habit sombre. Il regarde droit devant lui. Il ne semble pas te voir.~ */
  IF ~~ THEN REPLY #4170 /* ~"Bonjour."~ */ GOTO 14
  IF ~~ THEN REPLY #4171 /* ~Approche.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4130 /* ~Le garde Homme-Poussière sursaute au son de ta voix et il recule d'un pas. "Tu n'es pas un zombi… qui es-tu… comment es-tu entré ?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4172 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4173 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 10
  IF ~~ THEN REPLY #4174 /* ~"Je vais t'expliquer… En fait, tout a commencé quand je me suis réveillé d'entre les morts ; j'étais sur l'une des dalles… Il y avait ce crâne qui parlait, et…"~ */ GOTO 11
  IF ~~ THEN REPLY #4175 /* ~Enfuis-toi.~ */ GOTO 11
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY #4131 /* ~Tu vois un homme au visage sévère, vêtu d'un habit sombre. Il te voit et il hoche la tête.~ */
  IF ~~ THEN REPLY #4176 /* ~"Bonjour."~ */ GOTO 16
  IF ~~ THEN REPLY #4177 /* ~Réponds à son salut, continue à marcher.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #4132 /* ~"Bonjour, initié."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4178 /* ~"Tu peux peut-être m'aider. Je crois que je suis perdu. Peux-tu me dire par où aller ?"~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4179 /* ~"J'ai… j'ai dû me perdre."~ */ GOTO 17
  IF ~~ THEN REPLY #4180 /* ~"Continue, camarade initié."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #4133 /* ~"Les guides sont dans l'antichambre. Ils sauront t'aider, initié."~ */
  IF ~~ THEN REPLY #4181 /* ~"Merci. Je vais les rencontrer."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY #61284 /* ~Tu planques le corps flasque dans l'ombre.~ */
  IF ~~ THEN REPLY #61285 /* ~Continue.~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #66691 /* ~Tu aperçois un homme à l'air sévère vêtu d'une robe noire. Il te jette un regard méfiant. "Toi, là ! Qu'est-ce que tu viens faire ici ?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66692 /* ~"Je suis un nouvel initié de la faction des Hommes-Poussière. Je fais le tour de la Morgue."~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66693 /* ~"J'ai l'impression que je me suis perdu. Y a-t-il des guides pour aider les visiteurs, ici ?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66694 /* ~"Je… crois bien que je me suis perdu." ~ */ GOTO 4
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66695 /* ~"Mes affaires ne regardent que moi, et tu ferais bien de t'occuper des TIENNES, Homme-Poussière."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66696 /* ~Penche-toi vers lui comme si tu voulais lui murmurer quelque chose à l'oreille et brise-lui la nuque.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66697 /* ~Penche-toi vers lui comme si tu voulais lui murmurer quelque chose à l'oreille et brise-lui la nuque.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66698 /* ~"Mes affaires me disent de m'en aller sans attendre. Je ne veux pas causer de problème."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66699 /* ~"Rien. J'étais perdu, mais je m'en vais, maintenant."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #66700 /* ~Le garde te fixe un instant puis acquiesce. "Prends garde à ne pas gêner ceux qui travaillent."~ */
  IF ~~ THEN REPLY #66701 /* ~"Très bien. Dans ce cas, je m'en vais."~ */ EXIT
END
