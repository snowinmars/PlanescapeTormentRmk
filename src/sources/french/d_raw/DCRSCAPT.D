// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSCAPT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSCAPT~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #60328 /* ~Tu vois un homme à l'air menaçant portant une armure impressionnante. Il dirige plusieurs autres gardes pour assurer la défense de la cité. "Je n'ai pas le temps de parler !" grogne-t-il. "Si tu veux te rendre utile, débarrasse-nous de ce maudit deva ou anéantis quelques-uns de ces gehreleths ! Ne me fais pas perdre mon temps !" Il se retourne vers ses hommes.~ */
  IF ~~ THEN REPLY #60329 /* ~"Qu'est-ce qui se passe ?"~ */ GOTO 1
  IF ~~ THEN REPLY #60330 /* ~"Très bien. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60331 /* ~"Qu'est-ce qui se passe ? D'où tu sors ? Ce maudit deva est sorti du sol et nous a entraînés dans les Carcères, voilà ce qui se passe ! Et maintenant, nous allons devoir nous battre contre les gehreleths qui ont décidé de s'en prendre à nous. Nous sommes sur les dents, bige, alors débarrasse le plancher !" Il te pousse violemment et refuse de répondre à d'autres questions.~ */
  IF ~~ THEN REPLY #60332 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 2 // from: 0.1
  SAY #60333 /* ~"Bige, tu es en travers de mon chemin… Débarrasse le bordel laissé par le deva si tu veux faire quelque chose pour cette cité ! MAIS ARRÊTE DE ME DÉRANGER !"~ */
  IF ~~ THEN REPLY #60334 /* ~"Très bien, très bien…"~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 3 // from:
  SAY #60335 /* ~Tu vois un homme nerveux à l'allure militaire et vêtu de l'uniforme des gardes de Maudith - mais il semble encore plus autoritaire. Il te jette un regard méprisant. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #60336 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #60337 /* ~"J'aimerais voir un responsable."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60338 /* ~"Une femme nommée Dame Roberta complote le meurtre de son mari, Carl. Je crois qu'il est l'un des assistants du maire."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60340 /* ~"Je souhaite me constituer prisonnier pour le meurtre de Carl Perfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60341 /* ~"L'un des officiels de cette ville m'a demandé de tuer un autre officiel. J'ai pensé qu'il était utile de t'avertir."~ */ GOTO 9
  IF ~~ THEN REPLY #60342 /* ~"Je veux que tu m'arrêtes."~ */ GOTO 10
  IF ~~ THEN REPLY #60343 /* ~"Je cherche un deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60344 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 4 // from: 5.0 7.0 11.0 12.0 13.0 14.0
  SAY #60345 /* ~"Quoi ?"~ */
  IF ~~ THEN REPLY #60346 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #60347 /* ~"J'aimerais voir un responsable."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60348 /* ~"Une femme nommée Dame Roberta complote le meurtre de son mari, Carl. Je crois qu'il est l'un des assistants du maire."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60349 /* ~"Je souhaite me constituer prisonnier pour le meurtre de Carl Perfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60350 /* ~"L'un des officiels de cette ville m'a demandé de tuer un autre officiel. J'ai pensé qu'il était utile de t'avertir."~ */ GOTO 9
  IF ~~ THEN REPLY #60351 /* ~"Je veux que tu m'arrêtes."~ */ GOTO 10
  IF ~~ THEN REPLY #60352 /* ~"Je cherche un deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60353 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #60354 /* ~"C'est Maudith. Qu'est-ce que tu veux savoir ? Cette cité est en proie à la trahison à cause d'un fou, en proie à plus d'intrigues que les Carcères ne comptent de gehreleths, ici on peut faire plus confiance à un étranger qu'à sa propre famille. C'est une cité de tromperies et de rêves de vengeance. Regarde autour de toi, bige, et juges-en par toi-même."~ */
  IF ~~ THEN REPLY #60355 /* ~"Très bien. Alors, réponds encore à quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #60356 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1
  SAY #60357 /* ~"Le responsable ? À quel sujet ?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60358 /* ~"Une femme nommée Dame Roberta complote le meurtre de son mari, Carl. Je crois qu'il est l'un des assistants du maire."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60359 /* ~"Je souhaite me constituer prisonnier pour le meurtre de Carl Perfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60360 /* ~"L'un des officiels de cette ville m'a demandé de tuer un autre officiel. J'ai pensé qu'il était utile de t'avertir."~ */ GOTO 9
  IF ~~ THEN REPLY #60361 /* ~"Je veux que tu m'arrêtes."~ */ GOTO 10
  IF ~~ THEN REPLY #60362 /* ~"Je cherche un deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60363 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 4.2 6.0
  SAY #60364 /* ~"Vraiment ? Nous en prendrons soin, mon ami. Accepte les remerciements des citoyens de Maudith."~ */
  IF ~~ THEN REPLY #60365 /* ~"Parfait. J'avais quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #60366 /* ~"Génial. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 6.1
  SAY #60367 /* ~"Vraiment. Dis-le. Tout bien réfléchi, tu vas plutôt le dire à la cellule où tu vas être enfermé. Tu vas coopérer ?"~ */
  IF ~~ THEN REPLY #60368 /* ~"Je ne ferai pas d'histoires."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #60369 /* ~"Tu plaisantes ? Pas question."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.4 6.2
  SAY #60370 /* ~Ses yeux s'écarquillent derrière son casque. "Cite-moi un nom. Qui planifie quoi ?"~ */
  IF ~~ THEN REPLY #60371 /* ~"Siabha envisage d'assassiner An'izius."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~J'ai informé le capitaine de la garde de Maudith que Siabha comptait assassiner An'Izius. Il a été très heureux de l'apprendre et m'a promis qu'il allait l'arrêter. J'espère que j'ai fait le bon choix…~ */ GOTO 12
  IF ~~ THEN REPLY #60372 /* ~"An'izius m'a demandé de monter un coup contre Siabha, qui m'a demandé de faire la même chose contre An'izius. Ils sont tous les deux corrompus."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60373 /* ~"An'izius essaie d'assassiner Siabha."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~J'ai informé le capitaine de la garde de Maudith qu'An'Izius comptait assassiner Siabha. Il a été très heureux de l'apprendre et m'a promis qu'il allait arrêter le githyanki. J'espère que j'ai fait le bon choix…~ */ GOTO 14
  IF ~~ THEN REPLY #60374 /* ~"Oublie ce que j'ai dit."~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.5 4.5 6.3
  SAY #60375 /* ~"Pour quel crime ? Si tu veux être arrêté sur un point de droit, adresse-toi à l'un de mes gardes. J'ai à faire." Il surveille les environs en t'ignorant.~ */
  IF ~~ THEN REPLY #60376 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.6 4.6 6.4
  SAY #60377 /* ~Il hoche la tête vers toi. "Dis-moi, pourquoi est-ce que tu chercherais un deva ici ? Autant que je sache, ça fait bien longtemps qu'il n'y a pas eu de deva à Maudith. Et si c'était le cas, il serait retourné sous terre effrayé par les trahisons et le mal qui règne ici." Il rit.~ */
  IF ~~ THEN REPLY #60378 /* ~"Bon, d'accord. Réponds encore à quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #60379 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 15.0
  SAY #60380 /* ~Ses yeux se froncent. "Ça fait un moment que je veux l'enfermer dans une de mes cellules. Je lui réserve un châtiment spécial. J'enverrai un détachement. Merci, étranger."~ */
  IF ~~ THEN REPLY #60381 /* ~"N'y pense plus. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #60382 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 15.1
  SAY #60383 /* ~"Tous les deux, hein ? Bien. Cela devrait consolider mon emprise sur cette cité. Ils seront partis avant même que tu t'en rendes compte. Merci, étranger."~ */
  IF ~~ THEN REPLY #60384 /* ~"N'y pense plus. J'ai d'autres questions…"~ */ JOURNAL #60386 /* ~J'ai informé le capitaine de la garde de Maudith que Siabha et An'Izius cherchaient à s'impliquer respectivement dans des crimes montés de toute pièce. Le capitaine a été très heureux de l'apprendre. J'espère avoir bien agi.~ */ GOTO 4
  IF ~~ THEN REPLY #60385 /* ~"D'accord. Au revoir."~ */ JOURNAL #60386 /* ~J'ai informé le capitaine de la garde de Maudith que Siabha et An'Izius cherchaient à s'impliquer respectivement dans des crimes montés de toute pièce. Le capitaine a été très heureux de l'apprendre. J'espère avoir bien agi.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 15.2
  SAY #60390 /* ~"Ce salaud de githyanki a quand même réussi à se faire avoir, hein ? Il va joyeusement rejoindre nos prisonniers. J'enverrai un détachement pour lui. Je te remercie, étranger."~ */
  IF ~~ THEN REPLY #60391 /* ~"N'y pense plus. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #60392 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #60394 /* ~Il te fixe. "Je m'en souviendrai. Tu vas me donner cette information ou je l'arrache de ton cou balafré."~ */
  IF ~~ THEN REPLY #60395 /* ~"Siabha envisage d'assassiner An'izius."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~J'ai informé le capitaine de la garde de Maudith que Siabha comptait assassiner An'Izius. Il a été très heureux de l'apprendre et m'a promis qu'il allait l'arrêter. J'espère que j'ai fait le bon choix…~ */ GOTO 12
  IF ~~ THEN REPLY #60396 /* ~"An'izius m'a demandé de monter un coup contre Siabha, qui m'a demandé de faire la même chose contre An'izius. Ils sont tous les deux corrompus."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60397 /* ~"An'izius essaie d'assassiner Siabha."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~J'ai informé le capitaine de la garde de Maudith qu'An'Izius comptait assassiner Siabha. Il a été très heureux de l'apprendre et m'a promis qu'il allait arrêter le githyanki. J'espère que j'ai fait le bon choix…~ */ GOTO 14
  IF ~~ THEN REPLY #60398 /* ~"Il faudra que tu me l'arraches de force."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
