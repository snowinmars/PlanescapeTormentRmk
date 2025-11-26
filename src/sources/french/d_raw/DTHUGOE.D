// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGOE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGOE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30170 /* ~Ce personnage louche t'observe dans l'ombre. Sa poitrine est couverte d'une sorte de patchwork d'armure, ornée de grosses pointes, et un long couteau pend à ses côtés. Tu remarques qu'il lui manque l'oreille droite.~ */
  IF ~~ THEN REPLY #30184 /* ~"Bonjour."~ */ JOURNAL #28824 /* ~J'ai rencontré un tieffelin à une oreille qui rôdait dans la pénombre, près du grand passage voûté, dans la section nord de la Ruche. Quelque chose dans son regard m'a dit qu'il valait mieux ne pas trop le chatouiller.~ */ GOTO 1
  IF ~~ THEN REPLY #30185 /* ~Continue ta route.~ */ JOURNAL #28824 /* ~J'ai rencontré un tieffelin à une oreille qui rôdait dans la pénombre, près du grand passage voûté, dans la section nord de la Ruche. Quelque chose dans son regard m'a dit qu'il valait mieux ne pas trop le chatouiller.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30171 /* ~Il te toise froidement.~ */
  IF ~~ THEN REPLY #30186 /* ~"J'ai dit *B-O-N-J-O-U-R*. Qu'est-ce qui ne va pas… Ton autre oreille ne fonctionne pas ?"~ */ GOTO 2
  IF ~~ THEN REPLY #30187 /* ~"J'ai des questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #30188 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #30172 /* ~Le tieffelin à une oreille te regarde méchamment, menaçant. "Va caguer, bige… ou j'me servirai d'tes tripes comme jarretière."~ */
  IF ~~ THEN REPLY #30189 /* ~"Si tu cherches des porte-jarretelles… j'en ai justement une paire. Ta mère les a laissés dans mon lit la nuit dernière."~ */ GOTO 13
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30190 /* ~"Comment tu as perdu cette oreille ?"~ */ GOTO 3
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30191 /* ~"Tu n'aurais pas perdu cette oreille en volant un vieil homme ici, à la Ruche ?"~ */ GOTO 4
  IF ~~ THEN REPLY #30192 /* ~Ignore ses menaces et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #30173 /* ~"Qu'est-ce que t'as dit ?" Sa main droite se dirige vers la poignée de son couteau.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #30193 /* ~"Simple curiosité. Derrière chaque cicatrice se cache une bonne histoire… Et comme tu peux le voir, je parle en connaissance de cause."~ */ GOTO 6
  IF ~~ THEN REPLY #30194 /* ~"Je crois que tu l'as perdue en volant un vieil homme ici, à la Ruche."~ */ GOTO 4
  IF ~~ THEN REPLY #30195 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1 6.1 7.1 8.1 9.1 10.1 11.2
  SAY #30174 /* ~"J'sais pas d'quoi tu parles, bige." Il te fixe méchamment. "J'suggère qu'tu ôtes ta carcasse tordue d'ma vue avant qu'j'y grave mon nom !"~ */
  IF ~~ THEN REPLY #30196 /* ~"Sans problème. Donne-moi juste la fourchette que tu lui as volée et je m'en irai."~ */ GOTO 5
  IF ~~ THEN REPLY #30197 /* ~"Je ne crois même pas que tu serais capable *d'épeler* ton nom, bougre béjaune."~ */ GOTO 13
  IF ~~ THEN REPLY #30198 /* ~"Écoute… pourquoi tu n'avoues pas pendant qu'il te reste encore une oreille ?"~ */ GOTO 13
  IF ~~ THEN REPLY #30199 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #30175 /* ~En un mouvement trop rapide pour être suivi, il retire son couteau de sa gaine et commence à l'agiter de manière menaçante devant toi. "Pourquoi tu viens pas l'prendre, hein bige ?"~ */
  IF ~~ THEN REPLY #30200 /* ~"Si c'est ce que tu veux… alors, que la fête commence."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30201 /* ~"Pourquoi tu ne ranges pas cette lame avant de te faire mal ?"~ */ GOTO 13
  IF ~~ THEN REPLY #30202 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #30176 /* ~"Ouais, on dirait qu't'as eu ton lot d'balafres." Il glousse, puis parcourt des doigts les cicatrices sur le côté de sa tête. "Au moins t'as toujours tes deux oreilles."~ */
  IF ~~ THEN REPLY #30203 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 7
  IF ~~ THEN REPLY #30204 /* ~"C'est parce que je n'attaque pas les vieillards aux dents aiguisées."~ */ GOTO 4
  IF ~~ THEN REPLY #30205 /* ~"C'est vrai. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30177 /* ~"Y'a un bail, j'ai pelé un bon à rien de suppliant…" Son visage devient maussade alors qu'il commence à raconter l'histoire. "Cette vermine a pas voulu en entendre parler…"~ */
  IF ~~ THEN REPLY #30206 /* ~"Continue…"~ */ GOTO 8
  IF ~~ THEN REPLY #30207 /* ~"Laisse-moi deviner… il t'a arraché l'oreille, alors tu lui as filé un coup de gourdin et piqué sa fourchette. C'est ça ?"~ */ GOTO 4
  IF ~~ THEN REPLY #30208 /* ~"Intéressant… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30178 /* ~"Alors j'ai du d'venir méchant avec cet idiot… et pendant qu'on s'battait, il m'a attrapé l'oreille avec les dents et l'a mordue !"~ */
  IF ~~ THEN REPLY #30209 /* ~"Et après, qu'est-ce qui s'est passé ?"~ */ GOTO 9
  IF ~~ THEN REPLY #30210 /* ~"Alors, c'est *toi* qui a volé la fourchette de Nestor."~ */ GOTO 4
  IF ~~ THEN REPLY #30211 /* ~"Intéressant… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #30179 /* ~"Qu'est-ce que tu crois qui s'est passé ? Cet azimuté m'a arraché l'oreille, alors j'l'ai cogné sur la tête jusqu'à c'qu'il soit dans l'livre des morts ! Mais j'suis pas content d'l'avoir fait…" Il regarde nerveusement aux alentours avant de continuer. "J'crois qu'son esprit me hante."~ */
  IF ~~ THEN REPLY #30212 /* ~"Te hante ?"~ */ GOTO 10
  IF ~~ THEN REPLY #30213 /* ~"Le vieil homme n'est pas mort, imbécile. Je lui ai parlé au refuge et il m'a dit qu'il voulait récupérer sa fourchette."~ */ GOTO 4
  IF ~~ THEN REPLY #30214 /* ~"Intéressant… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30180 /* ~Il approuve de la tête et trace un demi-cercle sur son cœur. "Ouais, ben vrai. J'entends quelquefois sa voix dans ma tête, m'maudissant et m'disant qu'il m'attend. Ça m'fout la trouille, ouais."~ */
  IF ~~ THEN REPLY #30215 /* ~"Je peux peut-être t'aider à faire reposer son esprit en paix… à l'empêcher de te 'hanter'."~ */ GOTO 11
  IF ~~ THEN REPLY #30216 /* ~"Le vieil homme n'est pas mort, imbécile. Je lui ai parlé au refuge et il m'a dit qu'il voulait récupérer sa fourchette."~ */ GOTO 4
  IF ~~ THEN REPLY #30217 /* ~"Intéressant… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #30181 /* ~Il recule d'un pas et incline la tête. "Tu peux faire ça ? Comment ?"~ */
  IF ~~ THEN REPLY #30218 /* ~"En T'EXPÉDIANT dans le livre des morts, espèce d'enfumé."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_OE_1","GLOBALGood",-1)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #30219 /* ~Mensonge : "Je peux agir sur les morts. Tout ce qu'il me faut pour les apaiser, c'est un objet qui leur a appartenu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_OE_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #30220 /* ~"Donne-moi ce que tu lui as volé et je veillerai à ce qu'il s'en aille."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_OE_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #30221 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #30182 /* ~Il te regarde avec suspicion pendant un instant, puis hausse les épaules, résigné. "D'accord, matois… voilà. J'crois pas qu'ça vaille grand-chose de toute façon." Il te tend une petite fourchette en acier. "Débarrasse-moi juste de cet esprit, d'accord ?"~ */
  IF ~~ THEN REPLY #30222 /* ~"N'aie pas peur… l'esprit ne te gênera plus. Au revoir."~ */ DO ~GiveItem("NesFork",[PC])
AddexperienceParty(200)
EscapeArea()
~ JOURNAL #28823 /* ~J'ai réussi à convaincre le tieffelin à une oreille de me donner la fourchette de Nestor. Il m'a dit qu'il était possédé et qu'il entendait des voix. Il est sûrement aussi fou que le vieux.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 4.1 4.2 5.1 11.0
  SAY #30183 /* ~"T'as vraiment la langue bien pendue, bige. J'crois qu'j'vais la couper et t'la faire manger !" Il se jette sur toi, couteau brandi.~ */
  IF ~~ THEN REPLY #30223 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
