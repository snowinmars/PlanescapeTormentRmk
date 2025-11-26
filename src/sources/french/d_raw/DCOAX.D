// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOAX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOAX~

IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3017 /* ~Tu vois un golem… de fer. Il est incroyablement grand. S'il se tenait droit, il briserait le toit de la tour. Un tonnerre d'échos gronde dans le chemin pendant que le golem bat le métal à la forge. L'odeur de suie et de cendre remplit l'air.~ */
  IF ~~ THEN REPLY #3019 /* ~"Bonjour."~ */ JOURNAL #67791 /* ~J'ai trouvé le moyen de pénétrer dans la tour de siège du Bas Quartier. À l'intérieur se trouve un golem de fer, presque aussi grand que l'édifice qui l'abrite. Apparemment, il passe son temps à forger des armes.~ */ GOTO 3
  IF ~~ THEN REPLY #3018 /* ~Laisse le golem tranquille.~ */ EXIT
END

IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26210 /* ~Le golem de fer géant travaille toujours à sa forge. Des étincelles, de la cendre et des nuages chuintants de vapeur s'élèvent de dessous le sentier.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",4)
~ THEN REPLY #26277 /* ~"J'ai des questions à te poser…"~ */ GOTO 2
  IF ~  Global("Coaxmetal","GLOBAL",4)
PartyHasItem("Cube")
~ THEN REPLY #26279 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 59
  IF ~  Global("Coaxmetal","GLOBAL",4)
!PartyHasItem("Cube")
~ THEN REPLY #26280 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 63
  IF ~~ THEN REPLY #26281 /* ~Laisse le golem tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.2 5.2 6.4 7.1 8.1 9.1 10.1 11.1 12.1 13.4 14.4 15.1 16.0 17.2 18.1 19.1 20.1 21.1 22.0 23.1 24.1 25.0 26.1 27.1 28.0 29.1 30.1 31.0 33.0 34.1 35.1 36.1 37.3 38.1 39.2 40.1 41.1 42.1 43.1 44.1 45.1 46.1 50.0 65.1
  SAY #26211 /* ~DEMANDE.~ */
  IF ~~ THEN REPLY #26283 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 4
  IF ~~ THEN REPLY #26284 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 17
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26285 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26286 /* ~"Pourquoi est-ce que tu fabriques des armes ?"~ */ GOTO 7
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26287 /* ~"Tu peux m'en dire plus sur ce que tu fais avec les armes ?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26288 /* ~"Tu peux faire quelque chose avec mes armes ?"~ */ GOTO 64
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #26290 /* ~"Qu'est-ce que tu sais sur la Guerre Sanglante ?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26291 /* ~"Est-ce que tu as entendu parler d'une guenaude noire dénommée Ravel ?"~ */ GOTO 26
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26292 /* ~"Est-ce que tu connais une citadelle appelée la Forteresse des Regrets ?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",2)
Global("Coaxmetal_Gives_Cage","GLOBAL",0)
~ THEN REPLY #26294 /* ~"J'ai besoin d'une lourde cage à oiseaux décorée en fer forgé. Tu en as une ?"~ */ DO ~GiveItemCreate("DrmCage",Protagonist,1,0,0)
SetGlobal("Coaxmetal_Gives_Cage","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26295 /* ~"Un autre jour, peut-être. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26296 /* ~"Un autre jour, peut-être. Au revoir."~ */ GOTO 51
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #26212 /* ~Tu entends le hurlement du métal sur le métal alors que le géant se tourne vers toi. Tu réalises alors que le golem est construit dans la tour de siège elle-même ; des poutres, des tuyaux et des armatures s'enfoncent dans le bas de son torse et dans les murs, la partie basse de son corps constituant la forge elle-même.~ */
  IF ~~ THEN REPLY #26297 /* ~"Tu *es* quoi ?"~ */ GOTO 4
  IF ~~ THEN REPLY #26298 /* ~"Laisse tomber… Je ne suis vraiment pas au bon endroit. Pardon de t'avoir dérangé."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #26213 /* ~JE SUIS UN FER QUI A UN BUT.~ */
  IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26299 /* ~"Quel but ?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26300 /* ~"C'est quoi ton but déjà ?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26301 /* ~"Oui, tu en as déjà parlé. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26302 /* ~"Je… je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 4.0 4.1
  SAY #26214 /* ~JE FORGE LES INSTRUMENTS AVEC LESQUELS LE MULTIVERS SERA DÉTRUIT.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26303 /* ~"Tu veux dire que tu fabriques des armes ? C'est ton but ?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",2)
~ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26304 /* ~"Et tout à l'heure, tu as dit que ton but était de fabriquer des armes… C'est ça ?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26305 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26306 /* ~"Bon, eh bien, je vais te laisser travailler. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 5.0 5.1 9.0
  SAY #26215 /* ~LE MÉTAL EST COMME LA CHAIR. TOUS DEUX TRANSPORTENT DU POTENTIEL DANS LEURS VEINES. LORSQU'IL EST TREMPÉ À LA CHALEUR ET À LA PRESSION, LE POTENTIEL FAIT SURFACE. MON OBJECTIF EST DE LAISSER CE POTENTIEL S'EXPRIMER.~ */
  IF ~~ THEN REPLY #26307 /* ~"Pour qui tu fabriques ces armes ?"~ */ GOTO 10
  IF ~~ THEN REPLY #26308 /* ~"Pourquoi est-ce que tu fais ça ?"~ */ GOTO 7
  IF ~  GlobalLT("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26309 /* ~"Tu peux faire quelque chose avec mes armes ?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",3)
~ GOTO 64
  IF ~  Global("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26310 /* ~"Tu peux faire quelque chose avec mes armes ?"~ */ GOTO 64
  IF ~~ THEN REPLY #26311 /* ~"J'ai une autre question."~ */ GOTO 2
  IF ~~ THEN REPLY #26312 /* ~"Bon, eh bien, je vais te laisser travailler. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 6.1
  SAY #26216 /* ~LE FER DE MON CORPS N'EXISTAIT AUTREFOIS QUE COMME EXPRESSIONS MINEURES DE LA DOULEUR. LAMES. LANCES. HACHES. FLÈCHES. RIVETS DANS CATAPULTES. J'AI ÉTÉ FORGÉ À PARTIR DE CES OUTILS DE GUERRE.~ */
  IF ~~ THEN REPLY #26313 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 8
  IF ~~ THEN REPLY #26314 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26315 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26217 /* ~CES EXPRESSIONS MINEURES DE LA DOULEUR ONT ÉTÉ MÉLANGÉES POUR FORGER CE CORPS. MON POTENTIEL A PU FAIRE SURFACE. MON OBJECTIF EST DE FAIRE SORTIR LE POTENTIEL D'AUTRES MÉTAUX.~ */
  IF ~~ THEN REPLY #26316 /* ~"Tu as dit que quelqu'un avait fait fondre ces armes et forgé ton corps. Qui ?"~ */ GOTO 9
  IF ~~ THEN REPLY #26317 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26318 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26218 /* ~L'ENTROPIE M'A SOULEVÉ DES CHAMPS DE BATAILLE PLANAIRES.~ */
  IF ~~ THEN REPLY #26319 /* ~"Et tu as dit que ton but, c'est désormais de fabriquer des armes ?"~ */ GOTO 6
  IF ~~ THEN REPLY #26320 /* ~"Je vois… J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26321 /* ~Eh bien, rappelle-moi de remercier… euh, l'entropie quand je le reverrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #26219 /* ~JE LES FORGE POUR LE BIEN DE L'ENTROPIE. ELLES REPRÉSENTENT LA DOULEUR QUI CHERCHE À S'EXPRIMER.~ */
  IF ~~ THEN REPLY #26322 /* ~"Pourquoi est-ce que l'entropie a besoin d'armes ?~ */ GOTO 11
  IF ~~ THEN REPLY #26323 /* ~"Je vois. J'ai d'autres questions."~ */ GOTO 2
  IF ~~ THEN REPLY #26324 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26220 /* ~AU-DELÀ DE CETTE TOUR, L'ORDRE RALLIE SES LÉGIONS. LE MULTIVERS PANSE SES BLESSURES. AVEC LE TEMPS, SA FORCE PEUT ÉGALER L'ENTROPIE.~ */
  IF ~~ THEN REPLY #26325 /* ~"Le multivers est ton ennemi ? Pourquoi ?"~ */ JOURNAL #26107 /* ~Le golem de la tour de siège affirme que le multivers lui-même est son ennemi… et que c'est pour cette raison qu'il travaille à la forge. Il cherche à fabriquer des armes capables de le détruire.~ */ GOTO 12
  IF ~~ THEN REPLY #26326 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26327 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26222 /* ~LE MULTIVERS RESPIRE. IL GRANDIT. IL STAGNE. IL FORGE SES CHAÎNES AUTOUR DES PLANS LIEN PAR LIEN. AVEC LE TEMPS, MÊME L'ENTROPIE PEUT ÊTRE TRANSFORMÉE.~ */
  IF ~~ THEN REPLY #26328 /* ~"Et tu es contre le fait d'enchaîner l'entropie ?"~ */ GOTO 13
  IF ~~ THEN REPLY #26329 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26330 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26223 /* ~LORSQU'UNE CHOSE SE PROTÈGE CONTRE SA PROPRE DESTRUCTION, ELLE MEURT SIMPLEMENT D'UNE MORT DIFFÉRENTE.~ */
  IF ~~ THEN REPLY #26331 /* ~"Alors, selon toi, l'immortalité n'est qu'une autre forme de mort ?"~ */ GOTO 34
  IF ~~ THEN REPLY #26332 /* ~"Qu'est-ce qui rend cette mort pire qu'une autre ?"~ */ GOTO 14
  IF ~~ THEN REPLY #26333 /* ~Vérité : "Sauf que la mort que tu sembles proposer est violente et absurde - dénuée de sens."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #26334 /* ~Vérité : "C'est vrai, alors qu'est-ce qui t'a fait défendre la cause de l'entropie ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #26335 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26336 /* ~"Très intéressant, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2 13.3
  SAY #26224 /* ~TOUTES LES CHOSES SE RETROUVENT DANS LA DÉCHÉANCE. LA GUERRE EST NÉCESSAIRE. LA MORT EST NÉCESSAIRE. LA DÉCHÉANCE EST NÉCESSAIRE.~ */
  IF ~~ THEN REPLY #26337 /* ~"Et quelles en sont les limites ?"~ */ GOTO 15
  IF ~~ THEN REPLY #26338 /* ~"Ces choses peuvent être nécessaires… dans certaines limites."~ */ GOTO 15
  IF ~~ THEN REPLY #26339 /* ~Ces choses ne sont *jamais* nécessaires. Les promouvoir et glorifier la destruction qu'elles entraînent est une erreur."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #26341 /* ~"C'est vrai. Sans ces choses, le marasme s'installe."~ */ GOTO 16
  IF ~~ THEN REPLY #26342 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26343 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #26225 /* ~IL N'Y A PAS DE LIMITE. LES LIMITES SONT UN DES LIENS DANS LA CHAÎNE DE L'ORDRE. LES LIMITES DOIVENT ÊTRE BRISÉES.~ */
  IF ~~ THEN REPLY #26344 /* ~"Même si la mort en est le résultat ?"~ */ GOTO 16
  IF ~~ THEN REPLY #26345 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26346 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3 15.0
  SAY #26226 /* ~TOUT DOIT TOMBER SUR LA LAME DE L'ENTROPIE. LE TEMPS APPROCHE OÙ IL SERA NÉCESSAIRE DE DÉTRUIRE LES MURS DE LA CRÉATION. L'ORDRE SERA ATTELÉ À L'ÉPÉE. SES CHAÎNES SERONT BRISÉES. LE MULTIVERS SERA DÉFAIT.~ */
  IF ~~ THEN REPLY #26347 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26348 /* ~"On dirait que ça va être une bataille terrible… On se verra peut-être là-bas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.1
  SAY #26227 /* ~CETTE TOUR EST UN MOTEUR DE SIÈGE. ELLE EST DESTINÉE À PERCER LES MURS ENTRE LES PLANS.~ */
  IF ~~ THEN REPLY #26349 /* ~"Percer les plans ? Comment ?"~ */ JOURNAL #26106 /* ~Apparemment, la Tour de Siège a le pouvoir de percer les murs mitoyens des plans et d'agir comme une véritable tour de siège, mais dans un sens extra-dimensionnel. Une légion d'envahisseurs se prépare sur un côté du mur interplanaire ; ils attendent que la tour de siège abaisse son pont et perce un trou dans le plan ciblé, puis ils entrent dans le nouveau plan par la tour de siège elle-même. Celle-ci devient une porte ordinaire par laquelle un plan peut être victime d'une armée d'envahisseurs. Je me demande quels dégâts provoque la tour dans les plans eux-mêmes en faisant ces trous dans le multivers…~ */ GOTO 20
  IF ~~ THEN REPLY #26350 /* ~"Si cette tour de siège peut voyager dans les plans, pourquoi est-ce que tu restes ici ?"~ */ GOTO 18
  IF ~~ THEN REPLY #26351 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26353 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #26228 /* ~LA TOUR EST PIÉGÉE DANS CETTE CITÉ. CETTE CITÉ EST UNE CAGE QU'ELLE NE PEUT PAS BRISER.~ */
  IF ~~ THEN REPLY #26354 /* ~"Comment est-ce que la tour de siège a atterri dans la cité ?"~ */ GOTO 19
  IF ~~ THEN REPLY #26355 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26356 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26229 /* ~UN JOUR LA TOUR ASSIÉGERA LES PLANS. JE NE SAIS PAS COMMENT JE SUIS PARVENU ICI. JE NE SAIS PAS COMMENT M'EN ÉCHAPPER.~ */
  IF ~~ THEN REPLY #26357 /* ~"Tu as dit que la tour pouvait percer les plans ? Comment ?"~ */ JOURNAL #26106 /* ~Apparemment, la Tour de Siège a le pouvoir de percer les murs mitoyens des plans et d'agir comme une véritable tour de siège, mais dans un sens extra-dimensionnel. Une légion d'envahisseurs se prépare sur un côté du mur interplanaire ; ils attendent que la tour de siège abaisse son pont et perce un trou dans le plan ciblé, puis ils entrent dans le nouveau plan par la tour de siège elle-même. Celle-ci devient une porte ordinaire par laquelle un plan peut être victime d'une armée d'envahisseurs. Je me demande quels dégâts provoque la tour dans les plans eux-mêmes en faisant ces trous dans le multivers…~ */ GOTO 20
  IF ~~ THEN REPLY #26358 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26359 /* ~"Désolé t'entendre ça, mais je ne crois pas pouvoir t'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0
  SAY #26230 /* ~LA TOUR EST ANCRÉE SUR UN PLAN. UNE BLESSURE EST FAITE DANS LE MULTIVERS LORSQUE LE PONT DE LA TOUR S'OUVRE. LES LÉGIONS PEUVENT PASSER D'UN PLAN À L'AUTRE PAR LA TOUR. LORSQUE LE PLAN A SERVI LES OBJECTIFS DE L'ENTROPIE, LA TOUR S'ANCRE DE NOUVEAU.~ */
  IF ~~ THEN REPLY #26366 /* ~"Qu'est-ce qui est arrivé aux légions qui ont utilisé la tour ?"~ */ GOTO 21
  IF ~~ THEN REPLY #26367 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26368 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #26231 /* ~L'ENTROPIE LES A DÉFAITES.~ */
  IF ~~ THEN REPLY #26369 /* ~"Et qu'est-ce qui est arrivé aux plans que la tour de siège a envahis ?"~ */ GOTO 22
  IF ~~ THEN REPLY #26370 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26371 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26232 /* ~L'ENTROPIE LES A DÉFAITS.~ */
  IF ~~ THEN REPLY #26372 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26373 /* ~"Très intéressant… C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.6
  SAY #26233 /* ~C'EST LA GUERRE QUI DÉTRUIRA LES PLANS.~ */
  IF ~~ THEN REPLY #26374 /* ~"Elle dure depuis combien de temps ?"~ */ GOTO 24
  IF ~~ THEN REPLY #26375 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26376 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26234 /* ~ELLE A TRAVERSE LES VIES DE NOMBREUX MÉTAUX.~ */
  IF ~~ THEN REPLY #26377 /* ~"Tu y as déjà combattu ?"~ */ GOTO 25
  IF ~~ THEN REPLY #26378 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26379 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26235 /* ~OUI. C'EST SUR CETTE FORGE QUE LES PROJECTILES HURLANTS QUI ONT DÉCHIRÉ LES CIELS FUMANTS DE L'AVERNE ONT ÉTÉ FABRIQUÉS. DES ARMES SI AFFÛTÉES QUE LE VENT LUI-MÊME A CONNU L'AGONIE.~ */
  IF ~~ THEN REPLY #26380 /* ~"Oh… hum, j'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26381 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 2.7
  SAY #26236 /* ~LA GUENAUDE NOIRE A CHERCHÉ À SCINDER CETTE CITÉ. SES PLUS GRANDS TRAVAUX ONT ÉTÉ DE DÉFAIRE. ELLE A SUIVI LE CHEMIN DE L'ENTROPIE.~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #26382 /* ~"Tu sais ce qui lui est arrivé ?"~ */ JOURNAL #26104 /* ~Le golem m'a expliqué que Ravel cherchait à détruire Sigil, et que l''ordre' l'avait punie en la mettant dans une cage. Ceci dit, il ne sait pas où se trouve la cage.~ */ GOTO 27
  IF ~~ THEN REPLY #26383 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26384 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #26237 /* ~L'ORDRE A POSÉ DES CHAÎNES AUTOUR D'ELLE. ELLE A ÉTÉ JETÉE EN CAGE.~ */
  IF ~~ THEN REPLY #26385 /* ~"Tu sais où est cette cage ?"~ */ GOTO 28
  IF ~~ THEN REPLY #26386 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26387 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #26238 /* ~JE NE CONNAIS PAS SA PRISON.~ */
  IF ~~ THEN REPLY #26388 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26389 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.8
  SAY #26239 /* ~C'EST UN LIEU D'OMBRES. UNE FORTERESSE QUE MÊME CETTE TOUR NE PEUT VIOLER.~ */
  IF ~~ THEN REPLY #26390 /* ~"Est-ce que tu peux m'en dire plus ?"~ */ JOURNAL #26096 /* ~Le golem connaissait l'existence de la Forteresse des Regrets… Il m'a dit qu'elle avait des murs impénétrables, même pour la tour de siège. Il m'a aussi dit que c'était un monument commémoratif oublié qui mourait maintenant à petit feu dans le "Plan Négatif".~ */ GOTO 30
  IF ~~ THEN REPLY #26391 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26392 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 51
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #26240 /* ~C'EST UN MÉMORIAL QUI S'EST OUBLIÉ. IL SE DÉLABRE À PRÉSENT DANS L'OBSCURITÉ, MOURANT À PETIT FEU DANS LES CIEUX DU PLAN D'ÉNERGIE NÉGATIVE.~ */
  IF ~~ THEN REPLY #26393 /* ~"Tu sais comment y aller ?"~ */ GOTO 31
  IF ~~ THEN REPLY #26394 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26395 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 51
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #26241 /* ~NON.~ */
  IF ~~ THEN REPLY #26396 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26397 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 51
END

IF ~~ THEN BEGIN 32 // from: 2.9
  SAY #26242 /* ~J'AI CET OBJET. LE FAISEUR DE RÊVES EST VENU ME TROUVER IL Y UN SIÈCLE. IL M'A PROMIS QUE MA CAPTIVITÉ DANS LA PRISON DE CETTE CITÉ PRENDRAIT FIN LORSQUE LA CAGE NE SERAIT PLUS EN MA POSSESSION.~ */
  IF ~~ THEN REPLY #26398 /* ~"Je… je vois. Est-ce que tu veux bien me la donner ?"~ */ JOURNAL #26103 /* ~Le golem m'a donné la cage de rêve. Je vais la rapporter à Xander et voir ce qu'il peut en faire.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #26243 /* ~OUI. PRENDS CETTE CAGE ET DÉTRUIS CEUX QUI CRÉENT CES MURS.~ */
  IF ~~ THEN REPLY #26399 /* ~Avant de partir, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26400 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 13.0
  SAY #26244 /* ~L'IMMORTALITÉ N'EST QU'UN MOT. TOUT CE QUI EXISTE PEUT MOURIR.~ */
  IF ~~ THEN REPLY #26401 /* ~"Tu veux dire que tu pourrais fabriquer une arme capable de tuer un immortel ?"~ */ GOTO 35
  IF ~~ THEN REPLY #26402 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26403 /* ~"Je… je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #26245 /* ~CHAQUE CHOSE VIVANTE A UNE ARME CONTRE LAQUELLE ELLE NE PEUT RIEN. LE TEMPS. LA MALADIE. LE FER. LA CULPABILITÉ.~ */
  IF ~~ THEN REPLY #26404 /* ~"Comment tu sais quelle arme utiliser ?"~ */ GOTO 36
  IF ~~ THEN REPLY #26405 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26406 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26246 /* ~IL FAUT CONNAÎTRE L'ENNEMI POUR FORGER UNE TELLE ARME.~ */
  IF ~~ THEN REPLY #26407 /* ~"Et comment je peux faire pour le connaître ?"~ */ GOTO 37
  IF ~~ THEN REPLY #26408 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26409 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26247 /* ~COMMENCE PAR UN FRAGMENT DE L'ENNEMI. UNE GOUTTE DE SANG. UNE PENSÉE CRISTALLISÉE. UN DE SES ESPOIRS. TOUTES CES CHOSES TE PERMETTENT DE SAVOIR COMMENT IL PEUT MOURIR.~ */
  IF ~~ THEN REPLY #26410 /* ~"Et si l'ennemi attaque de loin, depuis les ombres, et ne se montre jamais ?"~ */ GOTO 38
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #26411 /* ~"Hmmmm. Tu pourrais fabriquer une arme capable de me tuer ?"~ */ GOTO 45
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #26412 /* ~"Hmmmm. Tu pourrais fabriquer une arme capable de me tuer ?"~ */ GOTO 45
  IF ~~ THEN REPLY #26413 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26414 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #26248 /* ~C'EST ALORS LE FRAGMENT DE L'ENNEMI QUE TU DOIS UTILISER.~ */
  IF ~~ THEN REPLY #26416 /* ~"Comment ?"~ */ GOTO 39
  IF ~~ THEN REPLY #26417 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26418 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26249 /* ~LES ACTIONS DE TON ENNEMI T'EN ONT DIT BEAUCOUP. TON ENNEMI NE SOUHAITE PAS TE COMBATTRE DIRECTEMENT. C'EST UNE FAIBLESSE.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #26419 /* ~"Ou… si pour une raison ou pour une autre, il *ne peut pas* m'attaquer directement."~ */ DO ~SetGlobal("Know_Transcendent_Weakness","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #26420 /* ~"Comment est-ce que je peux l'exploiter ?"~ */ GOTO 42
  IF ~~ THEN REPLY #26421 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26422 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26250 /* ~LES DEUX POSSIBILITÉS SE VALENT. L'UNE OU L'AUTRE RÉVÈLE LA FAIBLESSE.~ */
  IF ~~ THEN REPLY #26423 /* ~"Comment est-ce que je peux l'exploiter ?"~ */ GOTO 41
  IF ~~ THEN REPLY #26425 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26426 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26251 /* ~LES ACTIONS DE TON ENNEMI T'ONT INDIQUÉ QU'IL NE SOUHAITAIT PAS TE COMBATTRE DIRECTEMENT. C'EST UNE FAIBLESSE.~ */
  IF ~~ THEN REPLY #26427 /* ~"Comment est-ce que je peux l'exploiter ?"~ */ JOURNAL #26102 /* ~Le golem m'a donné des conseils sur un ennemi embusqué… Il m'a expliqué que le fait que l'ennemi ne m'affronte pas directement était une faiblesse que je devais exploiter. Il m'a suggéré de ne pas combattre l'ennemi de cette façon, mais plutôt d'amener le combat sur son terrain.~ */ GOTO 43
  IF ~~ THEN REPLY #26429 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26430 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #26252 /* ~AFFRONTE DIRECTEMENT TON ENNEMI. AMÈNE LA BATAILLE À L'ENNEMI.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26431 /* ~"Tu as dit que l'immortalité n'était qu'un mot… que tout ce qui vit peut mourir. Tu pourrais fabriquer une arme capable de me tuer ?"~ */ GOTO 45
  IF ~~ THEN REPLY #26432 /* ~"Très bien. J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26433 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #26253 /* ~SI L'ENNEMI NE VEUT PAS T'AFFRONTER DIRECTEMENT, NE LUI CÈDE PAS. AMÈNE LA BATAILLE À L'ENNEMI.~ */
  IF ~~ THEN REPLY #26435 /* ~"Et s'il ne pouvait pas m'attaquer directement pour une raison extérieure à sa volonté ?"~ */ JOURNAL #26095 /* ~Le golem m'a donné un conseil sur un ennemi embusqué… Il m'a expliqué que le fait que l'ennemi ne m'affronte pas ou ne puisse pas m'affronter directement était une faiblesse que je devais exploiter. Il m'a suggéré de ne pas combattre l'ennemi de cette façon, mais plutôt d'amener le combat sur son terrain. Si pour une raison ou pour une autre, l'ennemi ne peut pas me combattre directement, il m'a conseillé d'en trouver la raison et de l'exploiter.~ */ GOTO 44
  IF ~~ THEN REPLY #26436 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26437 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #26254 /* ~S'IL N'EST PAS AUTORISÉ À T'AFFRONTER DIRECTEMENT, TROUVES-EN LA RAISON. LA RAISON RÉVÉLERA UNE FAIBLESSE.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26438 /* ~"Tu as dit que l'immortalité n'était qu'un mot… que tout ce qui vit peut mourir. Tu pourrais fabriquer une arme capable de me tuer ?"~ */ GOTO 45
  IF ~~ THEN REPLY #26439 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26440 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.1 37.2 42.0 44.0
  SAY #26255 /* ~OUI.~ */
  IF ~~ THEN REPLY #26441 /* ~"Vraiment ? Comment ?"~ */ GOTO 46
  IF ~~ THEN REPLY #26442 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #26443 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #26256 /* ~IL ME FAUDRAIT UNE GOUTTE DE TON SANG. C'EST TOUT.~ */
  IF ~~ THEN REPLY #26444 /* ~"Très bien…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal_Weapon","GLOBAL",1)
GiveItemCreate("BladeIm",Protagonist,1,0,0)
AddexperienceParty(10000)
~ GOTO 47
  IF ~~ THEN REPLY #26445 /* ~"Une autre fois, peut-être. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #26446 /* ~"Je vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #26257 /* ~L'OUTIL DE TA DESTRUCTION A ÉTÉ FORGÉ ET PRÉPARÉ. CE N'EST PAS ASSEZ.~ */
  IF ~~ THEN REPLY #26447 /* ~"Qu'est-ce que tu veux dire ?"~ */ JOURNAL #26088 /* ~Le golem de fer a forgé une arme capable, selon lui, de me tuer… à condition qu'elle soit utilisée dans un lieu spécifique, à l'intérieur d'une carapace qui m'isolerait des plans. Je lui ai demandé où je pourrai trouver un tel endroit et il m'a dit qu'il ne le savait pas.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #26258 /* ~LES MAGIES QUI PERMETTENT À TON CŒUR DE BATTRE ET À TA CHAIR DE SE CICATRISER SONT FORTES. TU DOIS ENFONCER LA LAME DANS TON CORPS UNIQUEMENT LORSQUE TU TE TROUVERAS DANS UNE ENVELOPPE QUI TE SÉPARERA DES PLANS.~ */
  IF ~~ THEN REPLY #26448 /* ~"Pourquoi ?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26259 /* ~LA RAISON NE M'EN EST PAS CONNUE. POURTANT L'ARME ET LE LIEU SONT NÉCESSAIRES À TA DESTRUCTION.~ */
  IF ~~ THEN REPLY #26450 /* ~"Où est-ce que je pourrais trouver une telle 'enveloppe' capable de me séparer des plans ?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #26260 /* ~JE NE SAIS PAS.~ */
  IF ~~ THEN REPLY #26454 /* ~"J'ai une autre question."~ */ GOTO 2
  IF ~~ THEN REPLY #26455 /* ~"Bon, il va falloir que je trouve cet endroit tout seul. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.11 29.2 30.2 31.1 65.3
  SAY #26261 /* ~ATTENDS. AVANT DE PARTIR, TU DOIS FAIRE QUELQUE CHOSE.~ */
  IF ~~ THEN REPLY #26456 /* ~"Quoi ?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26262 /* ~BRISE CETTE PRISON. LIBÈRE-MOI. MON OBJECTIF NE PEUT PAS ÊTRE ATTEINT DANS CETTE CAGE.~ */
  IF ~~ THEN REPLY #26459 /* ~"Je ne peux pas faire ça."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 53
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26460 /* ~"Comment est-ce que *je* pourrais te libérer ?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26457 /* ~"Comment est-ce que *je* pourrais te libérer ?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #26263 /* ~EXPLIQUE-TOI.~ */
  IF ~~ THEN REPLY #26458 /* ~"Si tu t'échappais de cette cité, tout ce que tu apporterais aux autres plans, ce serait la guerre et la destruction. D'innombrables planaires mourraient. Je ne pourrais pas laisser faire une chose pareille."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 54
  IF ~~ THEN REPLY #26461 /* ~"Ton but est ici, golem. Ton but est de me servir. Fournis-moi des armes et ne me parle plus de ta 'liberté'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_3","GLOBALGood",-2)
~ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #26264 /* ~C'EST POUR CELA QUE JE DOIS ÊTRE LIBÉRÉ. LE MULTIVERS RALLIE SES LÉGIONS. IL PANSE SES BLESSURES. AVEC LE TEMPS, IL AURA LA POSSIBILITÉ D'ÉGALER L'ENTROPIE. IL NE FAUT PAS LAISSER UNE TELLE CHOSE SE PRODUIRE.~ */
  IF ~~ THEN REPLY #26462 /* ~"Je ne suis pas d'accord."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_3","GLOBALLaw",2)
~ GOTO 55
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26463 /* ~"Hmmm. Je vois ce que tu veux dire… Comment est-ce que je peux te libérer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26464 /* ~"Hmmm. Je vois ce que tu veux dire… Comment est-ce que je peux te libérer ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 60
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0
  SAY #26265 /* ~ÉCOUTE. TU L'ENTENDS ?~ */
  IF ~~ THEN REPLY #26465 /* ~"Quoi ?"~ */ GOTO 56
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26466 /* ~"Il n'y a rien d'autre à ajouter. Je ne te libérerai pas, les plans n'ont pas besoin du chaos et de la souffrance que tu leur apporteras. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26093 /* ~Alors que je sortais de la tour de siège pour me rendre à la Forteresse, le golem m'a demandé de l'aider à s'évader de sa prison pour continuer sa croisade entropique à travers les plans. J'ai refusé. Il m'a jeté hors de la tour de siège et j'ai interdiction d'y remettre les pieds. C'était un bien maigre prix à payer pour éviter ce supplice aux plans.~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26467 /* ~"Il n'y a rien d'autre à ajouter. Ton but est ici et tu vas continuer à me servir. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Alors que je sortais de la tour de siège pour me rendre à la Forteresse, le golem m'a demandé de l'aider à s'évader de sa prison pour continuer sa croisade entropique à travers les plans. J'ai refusé ; sa mission était de ME servir et non de parcourir les plans à louer les vertus d'un soi-disant idéal. Il m'a jeté hors de la tour de siège et j'ai interdiction d'y remettre les pieds.~ */ GOTO 57
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #26266 /* ~LE SON DU MÉTAL NÉGLIGÉ. LA ROUILLE. LES ARMES SANS EXPRESSION. EXSANGUES SUR LES CHAMPS DE BATAILLE PLANAIRES. ELLES SOUFFRENT. LIBÈRE-MOI. LIBÈRE-LES.~ */
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26468 /* ~"Je ne peux pas te libérer. Les plans n'ont vraiment pas besoin d'autres épisodes de chaos et d'effusions de sang."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26090 /* ~Alors que je sortais de la tour de siège pour me rendre à la Forteresse, le golem m'a demandé de l'aider à s'évader de sa prison pour continuer sa croisade entropique à travers les plans. J'ai refusé. Il m'a jeté hors de la tour de siège et j'ai interdiction d'y remettre les pieds. C'était un bien maigre prix à payer pour éviter ce supplice aux plans.~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26469 /* ~"Il n'y a rien d'autre à ajouter. Ton but est ici, golem, et tu vas continuer à me servir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Alors que je sortais de la tour de siège pour me rendre à la Forteresse, le golem m'a demandé de l'aider à s'évader de sa prison pour continuer sa croisade entropique à travers les plans. J'ai refusé ; sa mission était de ME servir et non de parcourir les plans à louer les vertus d'un soi-disant idéal. Il m'a jeté hors de la tour de siège et j'ai interdiction d'y remettre les pieds.~ */ GOTO 57
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26470 /* ~"Comment est-ce que je pourrais les libérer ?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26471 /* ~"Comment est-ce que je pourrais les libérer ?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 55.1 55.2 56.0 56.1 59.1 59.2 59.3
  SAY #26267 /* ~L'ORDRE A POSÉ SES CHAÎNES AUTOUR DE TOI. TU ES MON ENNEMI ET L'ENNEMI DE TOUT CE QUI MEURT. TU SERAS BANNI DE CETTE TOUR JUSQU'À LA FIN DE L'ÉTERNITÉ.~ */
  IF ~~ THEN REPLY #26472 /* ~"S'il faut qu'il en soit ainsi, il en sera ainsi. Au revoir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal","GLOBAL",5)
AddexperienceParty(12000)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 52.1 54.1 56.2
  SAY #26268 /* ~DONNE-MOI LE CUBE PLANAIRE QUE TU PORTES. IL PEUT ME LIBÉRER DE CET ENDROIT.~ */
  IF ~~ THEN REPLY #26473 /* ~"D'accord, le voilà."~ */ DO ~DestroyPartyItem("Cube",TRUE)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
GiveItemCreate("EDag",Protagonist,1,0,0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26091 /* ~J'ai livré le Cube modrone au golem, et les ténèbres furent. Je ne sais pas ce qui s'est passé, mais la tour de siège est toujours là. J'ai l'étrange pressentiment que je ne pourrai plus jamais y mettre les pieds. Il m'a cependant laissé une arme bien étrange…~ */ EXIT
  IF ~~ THEN REPLY #26474 /* ~"Je ne peux pas te le laisser."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 1.1 58.1 60.1 61.1 62.1 63.0
  SAY #26269 /* ~C'EST LA PORTE QUI PERMETTRA À CETTE TOUR DE QUITTER CET ENDROIT. DONNE-MOI LE CUBE PLANAIRE.~ */
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26475 /* ~"D'accord, le voilà."~ */ DO ~DestroyPartyItem("Cube",TRUE)
GiveItemCreate("EDag",Protagonist,1,0,0)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26094 /* ~J'ai livré le Cube modrone au golem, et les ténèbres furent. Je ne sais pas ce qui s'est passé, mais la tour de siège est toujours là. J'ai l'étrange pressentiment que je ne pourrai plus jamais y mettre les pieds. Il m'a cependant laissé une arme bien étrange…~ */ EXIT
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26476 /* ~"Peut-être, mais je ne peux pas te laisser le cube. Il m'est trop précieux."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26477 /* ~"Impossible de te donner cet objet. Il est trop puissant pour être offert… Si je le trouve, je le garderai pour moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~~ THEN REPLY #26478 /* ~"Je ne te le donnerai pas. Tu ne dois pas être libre. Les plans n'ont pas besoin de nouveaux épisodes de chaos et d'effusions de sang."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ GOTO 57
END

IF ~~ THEN BEGIN 60 // from: 52.2 54.2 56.3
  SAY #26270 /* ~IL EXISTE UN CUBE PLANAIRE. IL PEUT ME LIBÉRER DE CET ENDROIT.~ */
  IF ~~ THEN REPLY #26479 /* ~"Mais… je n'ai pas de cube de ce genre."~ */ GOTO 61
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26480 /* ~"Je connais un cube de ce genre-là. Mais je ne te le donnerai pas."~ */ GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0 63.1
  SAY #26271 /* ~TROUVE LE CUBE ET APPORTE-LE-MOI.~ */
  IF ~~ THEN REPLY #26482 /* ~"Où est-ce que je vais trouver un truc pareil ?"~ */ GOTO 62
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26483 /* ~"Je connais un cube de ce genre-là. Mais je ne te le donnerai pas."~ */ GOTO 59
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #26272 /* ~JE NE SAIS PAS OÙ IL SE TROUVE. TROUVE-LE. APPORTE-LE-MOI.~ */
  IF ~~ THEN REPLY #26484 /* ~"Très bien… Je trouverai le cube et te le rapporterai."~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",4)
~ JOURNAL #26097 /* ~Le golem m'a demandé de lui apporter un cube planaire pour l'aider à s'échapper de la tour de siège. Il a refusé d'écouter mes autres questions et requêtes tant que je ne lui aurai pas apporté ce cube.~ */ EXIT
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26485 /* ~"Je connais un cube de ce genre-là. Mais je ne te le donnerai pas."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 1.2
  SAY #26273 /* ~OÙ EST LE CUBE PLANAIRE ?~ */
  IF ~~ THEN REPLY #26486 /* ~"Je ne l'ai pas. Si je l'avais, je ne te le donnerais pas."~ */ GOTO 59
  IF ~~ THEN REPLY #26487 /* ~"Je n'ai pas encore le cube, mais je voulais te poser quelques questions -"~ */ GOTO 61
  IF ~~ THEN REPLY #26488 /* ~"Je ne l'ai pas encore trouvé. Je reviendrai quand ce sera fait."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 2.5 6.2 6.3
  SAY #26274 /* ~MONTRE-MOI CE QUE TU AS RAPPORTÉ. J'ÉTUDIERAI SON POTENTIEL ET JE VERRAI SI SA DOULEUR PEUT S'EXPRIMER.~ */
  IF ~~ THEN REPLY #26489 /* ~"Très bien…"~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #26276 /* ~C'EST FAIT.~ */
  IF ~~ THEN REPLY #26490 /* ~"Je peux jeter un œil aux autres armes que tu as ?"~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #26491 /* ~"Très bien. J'ai une autre question…"~ */ GOTO 2
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26492 /* ~"Je vois. C'est tout ce que je voulais. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26493 /* ~"Je vois. C'est tout ce que je voulais. Au revoir."~ */ GOTO 51
END
