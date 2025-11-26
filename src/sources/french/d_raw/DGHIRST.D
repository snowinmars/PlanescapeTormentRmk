// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIRST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIRST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #58302 /* ~Tu aperçois une créature grande et fluette, aux longs bras et à la tête allongée. Plusieurs crocs sortent de sa bouche démesurée et ses doigts s'achèvent par de longues griffes. Elle te regarde approcher sans détourner les yeux.~ */
  IF ~~ THEN REPLY #58304 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58305 /* ~Ignore la créature.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58308 /* ~La créature se penche en avant et te renifle, puis tend une main griffue et te pince. Elle se lèche les babines. "T'es un peu dur, mais tu dois tout de même avoir bon goût."~ */
  IF ~~ THEN REPLY #58312 /* ~"J'ai des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #58313 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 6.0 7.0 8.2 9.1 10.1 11.0 12.0 13.1 14.0 16.1 17.0 18.0
  SAY #58314 /* ~Il te dédie un sourire plein de crocs. "Une conversation avant le dîner est toujours la bienvenue. Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #58315 /* ~"Tu vas me dévorer ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58316 /* ~"Qui es-tu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #58317 /* ~"Qu'est-ce que tu es ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58318 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #58319 /* ~"Que peux-tu me dire au sujet des Carcères ?"~ */ GOTO 12
  IF ~~ THEN REPLY #58320 /* ~"Que peux-tu me dire sur ces catacombes ?"~ */ GOTO 18
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #58321 /* ~"Il y a un contrebandier dans les environs qui veut ta mort.~ */ GOTO 13
  IF ~~ THEN REPLY #58322 /* ~"Je dois partir maintenant, au revoir.~ */ GOTO 15
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58323 /* ~Son sourire s'élargit davantage. "Ouais, dès qu'j'en aurai fini avec tes questions stupides."~ */
  IF ~~ THEN REPLY #58324 /* ~"Tu peux toujours essayer, mais tu mourras d'un beau mal de ventre quand je t'étriperai."~ */ GOTO 4
  IF ~~ THEN REPLY #58325 /* ~"Je ne te veux pas de mal."~ */ GOTO 5
  IF ~~ THEN REPLY #58326 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.1
  SAY #58327 /* ~Il hausse les épaules et lève les bras de résignation. "J'en prends le risque."~ */
  IF ~~ THEN REPLY #58328 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58329 /* ~Attaque la créature.~ */ DO ~Enemy()
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58330 /* ~Il hausse les épaules et lève les bras de résignation. "C'est bien dommage, car j'ai bien l'intention de te tuer."~ */
  IF ~~ THEN REPLY #58331 /* ~"Pourquoi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58332 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58333 /* ~Il hausse à nouveau les épaules. "Y'a pas de raison particulière… t'es juste au mauvais endroit, au mauvais moment." Il s'interrompt. "Ou au bon endroit, au bon moment." Il grimace. "Ça dépend sous quel angle on voit la chose…"~ */
  IF ~~ THEN REPLY #58334 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58335 /* ~"Je suis difficile à tuer, mais tu peux essayer si tu veux."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #58336 /* ~Il se cure le nez et te regarde. "Ghrist…" Il continue à te fixer en explorant sa cavité nasale.~ */
  IF ~~ THEN REPLY #58337 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58338 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58339 /* ~Il lève un bras et se gratte paresseusement l'aisselle. "Gehreleth… Farastu."~ */
  IF ~~ THEN REPLY #58340 /* ~"Qu'est-ce qu'un gehreleth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #58341 /* ~"Qu'est-ce qu'un farastu ?"~ */ GOTO 16
  IF ~~ THEN REPLY #58342 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58343 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58344 /* ~Il baille et une vague d'air fétide te submerge. "Je cherche un deva. Bon à manger. Moelle délicieuse."~ */
  IF ~~ THEN REPLY #58345 /* ~"Tu veux dévorer Trias ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58346 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58347 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58348 /* ~Il te jette un regard las. "Non, un deva. Je me moque des trias."~ */
  IF ~~ THEN REPLY #58349 /* ~"Le deva s'appelle Trias."~ */ GOTO 11
  IF ~~ THEN REPLY #58350 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58351 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58352 /* ~Il hausse les épaules et se gratte le dos. "Trias, shmias. Quel que soit le nom qu'tu lui donnes, pour moi, c'est d'la viande."~ */
  IF ~~ THEN REPLY #58353 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58354 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #58355 /* ~Il ouvre la gueule et commence à se curer les dents avec une griffe. Il mange la moitié de ses mots en te répondant. "Chez moi. Chez moi, pas chez toi. T'es pas l'bienvenu ici."~ */
  IF ~~ THEN REPLY #58356 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58357 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #58358 /* ~Il te regarde dans air absent et hoche la tête. "Je sais… j'ai essayé d'le manger l'autre jour. Il s'est enfui. J'ai essayé d'l'attraper, mais son repère est piégé." Il hausse les épaules. "J'suis patient. Il fera bien une erreur un jour ou l'autre."~ */
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",3)
~ THEN REPLY #58359 /* ~"Il m'a envoyé ici pour te tuer."~ */ GOTO 14
  IF ~~ THEN REPLY #58360 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58361 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58362 /* ~Il se mouche dans sa main et jette la morve de côté. Il s'essuie les doigts en répondant. "Oh… raison de plus pour le tuer… et toi aussi."~ */
  IF ~~ THEN REPLY #58363 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58364 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #58365 /* ~Il te dédie un large rictus. "Bien. Assez de questions, il est temps de manger." Il te saute dessus.~ */
  IF ~~ THEN REPLY #58366 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0 8.1
  SAY #58367 /* ~Il rote et une odeur nauséabonde envahit l'atmosphère. Il se montre paresseusement du doigt. "Je suis un gehreleth, de la famille des farastus."~ */
  IF ~~ THEN REPLY #58368 /* ~"Quelles sont les autres familles ?"~ */ GOTO 17
  IF ~~ THEN REPLY #58369 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58370 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58371 /* ~Il examine longuement ses griffes, puis hausse les épaules. "T'as pas besoin d'savoir, puisque je serai le dernier gehreleth que tu verras."~ */
  IF ~~ THEN REPLY #58372 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58373 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #58374 /* ~Il regarde alentour pendant un instant, puis hausse les épaules. "Rien. Je cherche un deva."~ */
  IF ~~ THEN REPLY #58375 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58376 /* ~"Au revoir."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
