// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSYBIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSYBIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36172 /* ~Tu aperçois une silhouette cachée dans l'ombre, dans le coin de la pièce. Alors que tu t'approches, une jeune femme s'avance. Elle est vêtue d'une tunique ample qui, avec ses cheveux courts et sa maigre silhouette, la fait ressembler à un garçon. "Je n'irais pas là-bas si j'étais toi." Elle indique de la tête la porte du mur sud.~ */
  IF ~~ THEN REPLY #36189 /* ~"Pourquoi ? Qu'est-ce qu'il y a derrière la porte ?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 1
  IF ~~ THEN REPLY #36190 /* ~"Qui es-tu ?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 2
  IF ~~ THEN REPLY #36191 /* ~Ignore la fille, continue ton chemin.~ */ DO ~KillFloatMessage("Sybil")
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 14.0
  SAY #36173 /* ~Elle grimace au son de ta voix, mettant un doigt sur ses lèvres pour t'indiquer de te taire. Elle s'interrompt un instant, puis répond à voix basse. "Un tas de fous furieux, voilà ce qu'il y a. On dirait qu'il y a une sorte de rassemblement. Impossible de passer dans l'Allée tant qu'ils sont là."~ */
  IF ~~ THEN REPLY #36192 /* ~"Des fous furieux ?"~ */ GOTO 3
  IF ~~ THEN REPLY #36193 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #36194 /* ~"Merci de l'avertissement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.0 14.1
  SAY #36174 /* ~"Je m'appelle Sybil." Elle murmure tranquillement, puis crache dans sa paume et te tend la main pour la serrer.~ */
  IF ~~ THEN REPLY #36195 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #36196 /* ~"Merci du conseil, Sybil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #36175 /* ~"Est-ce qu'il y a un écho ici ? Oui, fous furieux. Ils appartiennent au gang des Chiens Affamés Aboyants, une bande de sicaires Xaositectes azimutés qui polluent cette partie de la Ruche."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36197 /* ~"Des Xaositectes ? Je suis membre de leur faction… Ils me laisseront passer."~ */ GOTO 4
  IF ~~ THEN REPLY #36198 /* ~"Ils sont combien là-dedans ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36199 /* ~"Merci de l'avertissement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36176 /* ~"Tu comprends pas, hein ? Les Chiens sont encore plus fous que les Chaoteux. Que tu sois membre d'une faction ou non, si tu entres là, tu es un homme mort."~ */
  IF ~~ THEN REPLY #36200 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #36201 /* ~"Ils sont combien là-dedans ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36202 /* ~"Merci de l'avertissement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 10.1 11.0 12.2
  SAY #36177 /* ~"J'ai compté environ une douzaine d'entre eux. Mais je regardais à travers une craquelure dans la porte, donc il pourrait y en avoir un peu plus."~ */
  IF ~~ THEN REPLY #36203 /* ~"Environ une douzaine ? Ça va être une partie de plaisir."~ */ GOTO 6
  IF ~~ THEN REPLY #36204 /* ~"On dirait qu'on va devoir se battre pour passer."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36205 /* ~"Il y a un autre moyen d'atteindre l'Allée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #36206 /* ~"Merci de l'avertissement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36178 /* ~"Écoute, tu peux jouer au héros si tu veux, mais laisse-moi en dehors de ça. Je reste ici. Si par miracle tu ne te fais pas piétiner les entrailles par ces animaux, on se reverra peut-être." Elle se tourne et se dissimule dans l'ombre du coin.~ */
  IF ~~ THEN REPLY #36207 /* ~"Finalement… Il ne vaut peut-être mieux pas que j'entre là-dedans."~ */ GOTO 7
  IF ~~ THEN REPLY #36208 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 6.0 12.0 13.0
  SAY #36179 /* ~"Il y a peut-être un autre moyen de passer à côté de ces animaux sans se battre. Il y a une autre porte qui mène là-bas. D'après ce que j'ai pu voir, il y a des piles de cageots en bois le long du même mur dans le couloir. Il est peut-être possible de se faufiler depuis *cette* porte jusqu'à la sortie de l'autre côté de la pièce. Il n'y a qu'un problème…"~ */
  IF ~~ THEN REPLY #36209 /* ~"Lequel ?"~ */ GOTO 8
  IF ~~ THEN REPLY #36210 /* ~"Il y a toujours un problème… Ce serait pas drôle sinon."~ */ GOTO 8
  IF ~~ THEN REPLY #36211 /* ~"Peu importe. J'ai déjà assez de problèmes moi-même."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #36180 /* ~"La porte est verrouillée… J'ai essayé de l'ouvrir. Je pense que la clé est sur l'un des sicaires d'en haut. Mais je ne suis pas assez enfumée pour aller la chercher." Elle croise les bras sur sa poitrine et te regarde, attendant quelque chose.~ */
  IF ~~ THEN REPLY #36212 /* ~"Si la clé est là-haut… je la trouverai. Au revoir."~ */ DO ~SetGlobal("Sybil_Quest","GLOBAL",1)
~ JOURNAL #36033 /* ~Je suis tombé sur une fille du nom de Sybil sur le Terrain des Sicaires. Apparemment, elle s'est fait coincer sur le Terrain par un gang de Xaositectes qui avait une assemblée dans la pièce qui donnait sur l'Allée des Longs Soupirs. Elle m'a parlé d'une autre porte donnant sur la pièce, qui permettrait de se faufiler près des sicaires tout en évitant une altercation. J'ai accepté de trouver la clé de cette porte, que l'un des sicaires des étages supérieurs du Terrain est supposé avoir sur lui.~ */ GOTO 17
  IF ~~ THEN REPLY #36213 /* ~"Peu importe. Je vais tenter ma chance avec les fous."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #36181 /* ~"Qu'est-ce que j'ai l'air de faire ? Je me cache. Je suis venue chercher… de la nourriture." Tu remarques qu'alors qu'elle parle, sa main se déplace instinctivement vers la bourse de sa ceinture. "Mais seulement les idiots aboyants de la pièce d'à côté sont arrivés et ont décidé de faire la fête à l'entrée. Je suis coincée ici, et ne peux pas sortir."~ */
  IF ~~ THEN REPLY #36214 /* ~"Les idiots aboyants ?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36215 /* ~"Tu cherches à manger, hein ? Qu'est-ce qu'il y a dans ta bourse ?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #36216 /* ~"Tu mens. Tu es une voleuse."~ */ GOTO 12
  IF ~~ THEN REPLY #36217 /* ~"Merci de l'avertissement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #36182 /* ~"Est-ce qu'il y a un écho ici ? Oui, des idiots aboyants. Ils appartiennent au gang des Chiens Affamés Aboyants, une bande de sicaires Xaositectes azimutés qui polluent cette partie de la Ruche."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36218 /* ~"Des Xaositectes ? Je suis membre de leur faction… Ils me laisseront passer."~ */ GOTO 11
  IF ~~ THEN REPLY #36219 /* ~"Ils sont combien là-dedans ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36220 /* ~"Merci de l'avertissement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36183 /* ~"Tu comprends pas, hein ? Les Chiens sont encore plus fous que les Chaoteux. Que tu sois membre d'une faction ou non, si tu entres là, tu es un homme mort."~ */
  IF ~~ THEN REPLY #36221 /* ~"Ils sont combien là-dedans ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36222 /* ~"Merci de l'avertissement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 9.2
  SAY #36184 /* ~Elle semble sur le point de répondre quand brusquement elle s'arrête. Elle te regarde un instant, puis hausse les épaules. "D'accord, d'accord… je suis une voleuse. Il faut bien gagner sa vie. Qu'est-ce que ça peut te faire ? T'es visiblement pas de l'Harmonium, et tu ne fais pas non plus partie de ces sauvages."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #36223 /* ~"C'est vrai… Et je ne suis pas d'ici, non plus. Tu connais un autre moyen d'atteindre l'allée ?"~ */ GOTO 7
  IF ~~ THEN REPLY #36224 /* ~"Je pourrais toujours te livrer aux sicaires… Ils me feraient peut-être passer en retour du service."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sybil_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #36225 /* ~"Ils sont combien là-dedans ?"~ */ GOTO 5
  IF ~~ THEN REPLY #36226 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #36185 /* ~"Ha ! Tu ferais pas ça. Ces brutes auront tôt fait de te cogner le crâne. En plus… je peux t'aider."~ */
  IF ~~ THEN REPLY #36227 /* ~"M'aider ? Comment ?"~ */ GOTO 7
  IF ~~ THEN REPLY #36228 /* ~"Je n'ai pas besoin de l'aide de quelqu'un comme toi, espèce de vermine. Je vais te livrer aux sicaires."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #36229 /* ~"Peu importe. Je vais tenter ma chance avec les fous."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #36186 /* ~"Encore toi ?" Sybil semble agacée, mais aussi soulagée de te voir. "Par Baator, matois ! Tu crois pouvoir faire encore plus de bruit ? Je t'entends depuis l'autre bout du corridor."~ */
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36230 /* ~"Qu'est-ce qu'il y a derrière la porte ?"~ */ GOTO 1
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36231 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  Global("Sybil_Quest","GLOBAL",1)
PartyHasItem("KeySybil")
!Dead("Sentry")
~ THEN REPLY #36232 /* ~"Est-ce que c'est la clé dont tu parlais ?"~ */ GOTO 15
  IF ~  Dead("Sentry")
~ THEN REPLY #36233 /* ~"J'ai réglé le problème des sicaires qui bloquaient la sortie. Tu devrais pouvoir partir maintenant."~ */ GOTO 16
  IF ~~ THEN REPLY #36234 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #36187 /* ~"Comment je le saurais ? Pourquoi tu ne vas pas au coin de la rue pour essayer d'ouvrir la porte avec ? Je reste ici à regarder par l'entrebâillement de la porte. Si tu arrives en entier jusqu'à l'Allée, je te rejoins aussitôt."~ */
  IF ~~ THEN REPLY #36235 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  Global("Sybil_Quest","GLOBAL",2)
Global("Current_Area","GLOBAL",401)
~ THEN BEGIN 16 // from: 14.3
  SAY #36188 /* ~"Je dois avouer, matois… Je suis impressionnée. Je croyais vraiment que ces animaux allaient te mettre en pièces. Je crois que je devrais te remercier." Elle s'interrompt un instant et retire une petite gemme verte de sa bourse. "Tiens… de la part des Chiens. À bientôt, matois."~ */
  IF ~~ THEN REPLY #36236 /* ~"Au revoir, Sybil."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
~ JOURNAL #36032 /* ~Grâce à mes efforts, Sybil a réussi à s'échapper du Terrain des Sicaires. Je ne peux pas m'empêcher de penser qu'elle aura vite fait de rencontrer d'autres problèmes.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0
  SAY #50008 /* ~"Si tu réussis à vivre assez longtemps pour trouver la clé, la porte se trouve dans une pièce au sud-est. Je guetterai dans l'ombre. Si tu parviens à rejoindre l'Allée sans encombres, je serai juste derrière toi."~ */
  IF ~~ THEN REPLY #50009 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sybil_Quest","GLOBAL",0)
Dead("Sentry")
~ THEN BEGIN 18 // from:
  SAY #50010 /* ~"Je dois avouer, matois… que je suis impressionnée. J'étais persuadée que ces animaux te mettraient en pièces. Eh bien, je crois que je dois te remercier." Elle s'arrête un moment, puis attrape sa bourse et en sort une petite pierre précieuse verte. "Tiens… je l'ai trouvée sur les Chiens. À bientôt, matois."~ */
  IF ~~ THEN REPLY #50011 /* ~"Au revoir, Sybil."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
EscapeArea()
~ EXIT
END
