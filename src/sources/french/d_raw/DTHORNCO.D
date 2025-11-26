// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORNCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORNCO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2943 /* ~Cette belle femme de cinquante ans se promène rêveusement, tout en rongeant distraitement ses ongles ; son regard est vague. Elle est vêtue d'une parure élégante mais négligée. Ses cheveux sont légèrement emmêlés. ~ */
  IF ~~ THEN REPLY #31262 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #31263 /* ~Laisse la femme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31261 /* ~"Hm ?" Elle sort son pouce de la bouche et lisse une mèche tombée devant ses yeux.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31264 /* ~"Tu ne serais pas Madame Peignépine par hasard ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31265 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #31266 /* ~"Ne fais pas attention à moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 19.0
  SAY #31267 /* ~Elle écarquille les yeux et regarde au loin. "Non. Non, ce n'est pas moi, monsieur."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31268 /* ~"Mais si, je crois que c'est bien toi. On m'a dit que tu étais le professeur des mages de la Salle des Fêtes."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31269 /* ~"Tu mens très mal, tu sais."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31270 /* ~"Qui es-tu, alors, si je peux me permettre ?"~ */ GOTO 17
  IF ~~ THEN REPLY #31271 /* ~"C'est toujours la même chose, j'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #31272 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 17.0 18.0 18.1
  SAY #31273 /* ~Dame Peignépine se renfrogne. "Et si j'étais cette femme ? Et puis après ?"~ */
  IF ~~ THEN REPLY #31274 /* ~"Je voulais recevoir une formation en arts magiques."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31030 /* ~J'ai rencontré Lady Peignépine, professeur des mages du Quartier des Gratte-Papier, dans l'un des nombreux sensoriums de la Salle des Fêtes. Elle refuse de me former… mais je ne sais pas pourquoi.~ */ GOTO 4
  IF ~~ THEN REPLY #31275 /* ~"Bon, j'ai des questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #31276 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 14.1 16.0
  SAY #31277 /* ~"Je vais donc réduire tes espoirs à néant, dans ce cas. Je veux plus enseigner la magie… maintenant va, et laisse-moi en paix."~ */
  IF ~~ THEN REPLY #31278 /* ~"Et pourquoi pas ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31279 /* ~"Avant de te laisser, j'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #31280 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #31281 /* ~"Comme si cela te regardait !"~ */
  IF ~~ THEN REPLY #31282 /* ~"Mais si… Je veux apprendre et tu peux m'apprendre. Je voudrais savoir ce que je dois faire pour te convaincre de me former."~ */ GOTO 8
  IF ~~ THEN REPLY #31283 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1
  SAY #31284 /* ~Elle secoue la tête. "Pas toujours… les mages ont des déficiences physiques, nos sorts ne font qu'y pallier. Lorsque la magie fait défaut, il reste le combat."~ */
  IF ~~ THEN REPLY #31285 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #31286 /* ~"Je comprends. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.3 3.1 4.1 6.0 13.0 13.1 14.2 16.1 17.3 19.1 20.1
  SAY #31287 /* ~"Très bien, demande ce que tu veux", dit-elle, apathique.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31288 /* ~"Tu ne serais pas Madame Peignépine par hasard ?"~ */ GOTO 2
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31289 /* ~"Qui-Sai ne me formera pas… Il dit que les sorts sont plus efficaces que le combat. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Pour mieux refuser de me faire bénéficier de son entraînement de guerrier, Qui-Sai m'a vanté les mérites des mages. Mais je suis allé parler à Dame Peignépine, qui forme les magiciens à la Salle des Fêtes, et elle m'a dit que les mages étaient faibles sur le plan physique et que leurs sorts n'étaient rien de plus que des béquilles. Voilà qui devrait me permettre de réfuter l'argument de Qui-Sai.~ */ GOTO 6
  IF ~~ THEN REPLY #31290 /* ~"J'ai des questions à te poser sur toi…"~ */ GOTO 13
  IF ~~ THEN REPLY #31291 /* ~"J'ai des questions sur cet endroit…"~ */ GOTO 13
  IF ~~ THEN REPLY #31292 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #31293 /* ~Elle pousse un soupir audible et se remet à ronger l'ongle de son pouce. "Je doute que tu puisses m'offrir quoi que ce soit que je ne pourrais pas me procurer par moi-même. Les pierres sensorielles me fournissent tout ce que ma richesse considérable ne peut pas acheter."~ */
  IF ~~ THEN REPLY #31294 /* ~"Les pierres sensorielles ?"~ */ GOTO 9
  IF ~~ THEN REPLY #31295 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #31296 /* ~"Mmm, oui… chaque pierre porte, enregistrée en elle, une expérience différente. Quand je suis arrivée ici pour la première fois, j'en ai peu usé. C'est aujourd'hui seulement que je réalise ce que j'ai manqué…"~ */
  IF ~~ THEN REPLY #31297 /* ~"Et qu'est-ce que tu as manqué ?"~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",2)
~ JOURNAL #31299 /* ~Lady Peignépine ne semble pas pouvoir se passer des pierres sensorielles et préfère passer ses journées à goûter les expériences des autres plutôt que de reprendre ses devoirs de professeur de magie. Je me demande comment la convaincre de reprendre l'enseignement…~ */ GOTO 10
  IF ~~ THEN REPLY #31298 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31300 /* ~Elle acquiesce, souriante. Ses yeux prennent un éclat vitreux, et elle s'entoure de ses bras. "On peut passer plusieurs vies, ici, parmi les pierres… une expérience merveilleuse après l'autre… les mots peinent à décrire leur magnificence. Je ne peux que te suggérer de juger par toi-même."~ */
  IF ~~ THEN REPLY #31301 /* ~"Tu as l'air… accro."~ */ GOTO 11
  IF ~~ THEN REPLY #31302 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #31303 /* ~"Absurde ! te grogne-t-elle. Je pourrais m'arrêter quand je veux ! J'ai *choisi* de jouir de leur magnificence. Pourquoi perdre du temps à instruire des apprentis ingrats et lents, alors que je peux rester ici, parmi ces précieuses pierres, à vivre cent vies par jour ?"~ */
  IF ~~ THEN REPLY #31304 /* ~"Je ne pense pas que les pierres soient là pour ça. Tu ne cherches pas à partager tes propres sensations ?"~ */ GOTO 12
  IF ~~ THEN REPLY #31305 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #31306 /* ~"Hpmh ! Ce que *tu* penses ne m'intéresse guère. Adieu."~ */
  IF ~~ THEN REPLY #31307 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2 7.3
  SAY #31308 /* ~Alors que tu poses ta question, tu constates qu'elle ne te regarde pas… ni ne t'accorde la moindre attention.~ */
  IF ~  GlobalLT("Thorncombe","GLOBAL",2)
~ THEN REPLY #31309 /* ~"Bonjour ? J'ai une question…"~ */ GOTO 7
  IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN REPLY #31310 /* ~"Madame Peignépine ? Voici ma question…"~ */ GOTO 7
  IF ~~ THEN REPLY #31311 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.1 17.1 18.2
  SAY #31312 /* ~Dame Peignépine ricane. "Et tu es le vestige balafré d'un homme, un cadavre à peine doté d'un semblant de vie. Maintenant, va-t'en."~ */
  IF ~~ THEN REPLY #31313 /* ~"Continue à me parler comme ça et *tu* vas le payer de ta vie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thorn_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #31314 /* ~"Attends… J'avais espéré suivre une formation en arts magiques."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31315 /* ~"Pas tout de suite. J'ai des questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #31316 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #31317 /* ~Elle éclate d'un rire moqueur. "Va plastronner devant quelqu'un qui se laissera impressionner. Quant à moi, je risque bientôt de trouver cela plus insultant qu'amusant… et tu auras sans doute envie d'être ailleurs, à ce moment-là."~ */
  IF ~~ THEN REPLY #31318 /* ~"Au contraire : finissons-en tout de suite, arrogante sorcière."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31319 /* ~"Je… je ne voulais pas que les choses prennent cette tournure. Permets-moi de m'excuser…"~ */ GOTO 16
  IF ~~ THEN REPLY #31320 /* ~"Je m'en vais parce que j'en ai marre de toi, et c'est la seule raison. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #31321 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #31322 /* ~Elle secoue la tête avec un soupir audible. "J'accepterais volontiers tes excuses, si tu voulais bien me laisser en paix."~ */
  IF ~~ THEN REPLY #31323 /* ~"Mais je pensais suivre une formation en arts magiques."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31326 /* ~J'ai rencontré Lady Peignépine, professeur des mages du Quartier des Gratte-Papier, dans l'un des nombreux sensoriums de la Salle des Fêtes. Elle refuse de me former… mais je ne sais pas pourquoi.~ */ GOTO 4
  IF ~~ THEN REPLY #31324 /* ~"Tout à l'heure ; j'ai des questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #31325 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2
  SAY #31327 /* ~Elle sourit nerveusement. "Personne d'important, je peux te l'assurer."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31328 /* ~"Mais je crois que c'est toi. Tu es Madame Peignépine, le professeur des mages de la Salle des Fêtes."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31329 /* ~"Tu mens très mal, tu sais."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31330 /* ~"Tu peux me dire comment tu t'appelles ?"~ */ GOTO 18
  IF ~~ THEN REPLY #31331 /* ~"C'est toujours la même chose, j'ai des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #31332 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #31333 /* ~"Oh… Je m'appelle, euh… Adhana ?"~ */
  IF ~  GlobalGT("Adahn","GLOBAL",0)
~ THEN REPLY #31334 /* ~"Bon, ça suffit. Je crois qu'on sait tous les *deux* qui tu es, Madame Peignépine."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31335 /* ~"En fait, tu es Madame Peignépine, le professeur des mages de la Salle des Fêtes. Pas vrai ?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31336 /* ~"Tu mens très mal, tu sais."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #31337 /* ~Cette femme continue d'errer dans le Sensorium, allant d'une pierre à l'autre. Elle te jette un coup d'œil à ton approche, mais ne paraît pas te reconnaître.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31338 /* ~"Tu ne serais pas Madame Peignépine par hasard ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31339 /* ~"J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #31340 /* ~"Ne fais pas attention à moi. Au revoir."~ */ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN BEGIN 20 // from:
  SAY #31341 /* ~Dame Peignépine te regarde en biais, comme si elle essayait de se souvenir de toi. Elle se renfrogne soudain. "Toi ! J'espère que tu n'es pas venu ici dans l'espoir futile de me ramener dans la salle d'entraînement… parce que c'est hors de question."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #31342 /* ~"Je me demandais juste si tu savais que Salabesh appréciait ta décision et se proposait de devenir le nouveau professeur des mages."~ */ GOTO 21
  IF ~~ THEN REPLY #31343 /* ~"En fait, j'ai juste des questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #31344 /* ~"Non, pas du tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31345 /* ~"Salabesh ?! Cette espèce de gros rustre… la magie de cet idiot ne lui permettrait même pas de sortir d'un sac pourri ! De quelle *décision* parles-tu ?"~ */
  IF ~~ THEN REPLY #31346 /* ~"La décision de rester dans les sensoriums et de ne plus former des mages moins expérimentés."~ */ JOURNAL #31349 /* ~J'ai parlé à Lady Peignépine de l'intention de Salabesh de la remplacer à son poste de professeur de magie à la Salle des Fêtes… ils n'ont pas l'air de trop s'apprécier tous les deux, et il ne lui a pas fallu longtemps pour retourner à la chambre de formation des mages et ainsi contrecarrer les projets de Salabesh.~ */ GOTO 22
  IF ~~ THEN REPLY #31347 /* ~"Rien, oublie ce que j'ai dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31350 /* ~"Quoi ? ! Mais… je…"~ */
  IF ~~ THEN REPLY #31351 /* ~"Oui, Madame Peignépine ?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #31352 /* ~Elle te regarde fixement. "Stupide. Totalement stupide. Si tu revois Salabesh, dis-lui de ne plus s'en soucier. Je retourne de ce pas aux salles d'entraînement."~ */
  IF ~~ THEN REPLY #31353 /* ~"Je t'y verrai peut-être, Madame Peignépine. Au revoir."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",4)
SetGlobal("Thorncombe","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0603cut1",FALSE)
~ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31354 /* ~Dame Peignépine fronce les sourcils. "Je n'ai pas le temps de discuter maintenant… retrouve-moi à la salle d'entraînement des mages plus tard, si tu le désires. Adieu."~ */
  IF ~~ THEN REPLY #31355 /* ~Pars.~ */ EXIT
END

IF ~  GlobalGT("Thorncombe","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #31356 /* ~Dame Peignépine te fait un signe de tête, mais tu ne sais pas vraiment si elle t'a reconnu. Elle a brossé ses vêtements et sa chevelure, et ressemble de nouveau à une aristocrate vieillissante, mais attirante… mais paraît toujours distante et facilement distraite. "Bienvenue… es-tu ici pour t'entraîner aux arts de la magie ?"~ */
  IF ~  Global("Thorncombe","GLOBAL",5)
Class(Protagonist,MAGE)
~ THEN REPLY #31357 /* ~"Oui… Montre-moi les sorts que tu enseignes."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~  Global("Thorncombe","GLOBAL",5)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #64643 /* ~"Oui… Je souhaite une fois de plus m'engager sur la voie des mages. Peux-tu me guider ?"~ */ GOTO 32
  IF ~  Global("Thorncombe","GLOBAL",4)
~ THEN REPLY #31358 /* ~"Oui."~ */ GOTO 30
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #68458 /* ~"Non, mais j'aimerais acheter quelques sorts."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31359 /* ~"Non, mais j'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #31360 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4
  SAY #31364 /* ~"Mon temps et mon attention sont réservés à mes étudiants. Je te suggère de parler avec l'un d'entre eux… ou, mieux, avec quelqu'un de moins occupé."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31362 /* ~"Attends : Qui-Sai ne me formera pas… Il dit que les sorts sont plus efficaces que le combat. Qu'est-ce que tu en penses ?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Pour mieux refuser de me faire bénéficier de son entraînement de guerrier, Qui-Sai m'a vanté les mérites des mages. Mais je suis allé parler à Dame Peignépine, qui forme les magiciens à la Salle des Fêtes, et elle m'a dit que les mages étaient faibles sur le plan physique et que leurs sorts n'étaient rien de plus que des béquilles. Voilà qui devrait me permettre de réfuter l'argument de Qui-Sai.~ */ GOTO 27
  IF ~~ THEN REPLY #31363 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31365 /* ~Elle secoue la tête. "Pas toujours… les mages ont des déficiences physiques, nos sorts ne font qu'y pallier. Lorsque la magie fait défaut, il reste le combat."~ */
  IF ~~ THEN REPLY #31366 /* ~"Je comprends. Merci et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #31367 /* ~Tu réponds à la dernière de ses questions et elle approuve, satisfaite. "Tu es donc mage de profession, si je comprends bien ?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #31369 /* ~"Eh oui."~ */ GOTO 35
  IF ~  !Class(Protagonist,MAGE)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31370 /* ~"Non… pas du tout."~ */ GOTO 29
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31371 /* ~"Non, pas encore… même si j'ai suivi la formation."~ */ GOTO 29
  IF ~~ THEN REPLY #31372 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.2
  SAY #31373 /* ~Elle ferme les yeux et pousse un long et discret soupir. "Que t'attends-tu à ce que je t'apprenne, alors ? Ne me fais plus perdre mon temps ou celui de mes élèves ! Adieu."~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31374 /* ~"Attends… Tu pourrais *faire* de moi un mage ?"~ */ GOTO 32
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31375 /* ~"Attends… Je voudrais reparler de la voie des mages. Tu peux m'aider ?"~ */ GOTO 32
  IF ~~ THEN REPLY #31376 /* ~"Au revoir, Madame Peignépine."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY #31377 /* ~"Très bien. Réponds à ces questions, si tu le peux…" Elle commence alors à tester ton intelligence et tes capacités de raisonnement avec une longue série de tests logiques et d'énigmes…~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #31378 /* ~Réponds à ses questions de ton mieux.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Thorncombe","GLOBAL",5)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #31379 /* ~Réponds à ses questions de ton mieux.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #31380 /* ~"Je suis désolé, mais tu n'as tout simplement pas l'intelligence nécessaire pour saisir les concepts fondamentaux de la magie. Je te souhaite de réussir, toutefois, quelle que soit la voie que tu choisiras pour ta vie. Adieu."~ */
  IF ~~ THEN REPLY #31381 /* ~"Euh… très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1 29.0 29.1
  SAY #31382 /* ~"Je pourrais *essayer*, c'est sûr. Abandonnerais-tu vraiment ta profession actuelle ?"~ */
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31383 /* ~"Oui, je voudrais abandonner l'épée pour la sorcellerie, et reprendre les Arts."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31384 /* ~"Oui, je voudrais arrêter de voler pour reprendre les Arts."~ */ GOTO 33
  IF ~  Class(Protagonist,FIGHTER)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31385 /* ~"Oui, je voudrais abandonner l'épée pour la sorcellerie. Apprends-moi les Arts."~ */ GOTO 36
  IF ~  Class(Protagonist,THIEF)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31386 /* ~"Oui, je voudrais arrêter de voler et reprendre les Arts."~ */ GOTO 36
  IF ~~ THEN REPLY #31387 /* ~"Non, je ne préfère pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #31388 /* ~"Très bien. Nous allons voir ensemble l'étendue de ta connaissance de l'Art… nous te remettrons à nouveau sur son chemin."~ */
  IF ~~ THEN REPLY #31389 /* ~Écoute et apprends.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31390 /* ~"Je suis très impressionnée ! Si les pierres sensorielles ne m'avaient déjà révélé l'impossible bien des fois, je n'aurais pas cru que tu pouvais te rappeler l'Art aussi rapidement. Es-tu prêt à voir quels sorts je peux t'enseigner ?"~ */
  IF ~~ THEN REPLY #31391 /* ~"Oui, s'il te plaît, montre-moi."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31392 /* ~"Pas pour le moment, mais je reviendrai plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.0
  SAY #31393 /* ~"Es-tu prêt à voir quels sorts je peux t'enseigner ?"~ */
  IF ~~ THEN REPLY #31394 /* ~"Oui, s'il te plaît, montre-moi."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31395 /* ~"Pas pour le moment, mais je reviendrai plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2 32.3
  SAY #31396 /* ~"Très bien. Je t'enseignerai ce que je pourrai." Elle s'arrête un instant, perdue dans ses pensées. "Mais avoir le don pour l'Art ne suffit pas. Il est nécessaire que tu aies un moyen de l'exprimer : les sorts. Les sorts sont la plupart du temps contenus dans un livre, bien que j'aie rencontré des mages qui conservaient les leurs sur des parchemins de papyrus, des tablettes de pierre… sur de la soie brodée… des peaux de bêtes…" Ses yeux semblent se voiler, et elle commence à ronger l'ongle de son pouce.~ */
  IF ~~ THEN REPLY #31397 /* ~"Madame Peignépine ? Tu disais ?"~ */ JOURNAL #39474 /* ~J'ai été formé au métier de magicien par Madame Peignépine, chargée de l'apprentissage des mages à la Salle des Fêtes.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31398 /* ~"Hmm ? Oh ! Pardonne-moi… comme je le disais, l'Art nécessite un livre - ou un équivalent - avant de pouvoir jeter des sorts. Tu sais lire, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #31399 /* ~"Je ne sais pas."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
  IF ~~ THEN REPLY #31400 /* ~"Oui."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #31401 /* ~"Nous allons donc te tester une fois de plus." Elle tire un parchemin d'une sacoche de cuir qu'elle porte sur sa hanche. "Peux-tu lire ceci pour moi ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #31402 /* ~Examine le parchemin.~ */ GOTO 39
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #31403 /* ~Examine le parchemin.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #31404 /* ~Les inscriptions du parchemin semblent s'animer sous tes yeux, chaque symbole devenant flou lorsque tu essaies de le lire. Presque instinctivement, tu considères la page dans son entier… et les symboles s'assemblent : le parchemin énumère des syllabes occultes, des composants, et des gestes mystiques utilisés pour contrôler le flux du mana… un charme de base, dans ce cas précis, te semble-t-il.~ */
  IF ~~ THEN REPLY #31405 /* ~"C'est un charme mineur, non ? On dirait un sort capable de te rendre plus attrayant aux yeux des autres, plus charismatique."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #31406 /* ~Les inscriptions du parchemin semblent s'animer sous tes yeux, chaque symbole devenant flou lorsque tu essaies de le lire.~ */
  IF ~~ THEN REPLY #31407 /* ~Étudie les symboles, essaie de les déchiffrer.~ */ GOTO 41
  IF ~~ THEN REPLY #31408 /* ~"J'abandonne, Madame Peignépine… Qu'est-ce que ça veut dire ?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #31409 /* ~Tu étudies les symboles avec attention. Mais tu as beau te concentrer, les inscriptions du parchemin semblent se brouiller, se tordre et se tortiller comme un nid de serpents. Essayer de les suivre te fait mal aux yeux.~ */
  IF ~~ THEN REPLY #31410 /* ~Continue d'étudier les symboles, essaie de comprendre leur signification.~ */ GOTO 42
  IF ~~ THEN REPLY #31411 /* ~"J'abandonne, Madame Peignépine… Qu'est-ce que ça veut dire ?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0 42.0
  SAY #31412 /* ~Tu continues d'étudier les symboles pendant quelques minutes. Dame Peignépine t'observe sans mot dire. Elle finit par se laisser distraire et par promener son regard sur la pièce.~ */
  IF ~~ THEN REPLY #31413 /* ~Continue d'étudier les symboles, essaie de comprendre leur signification.~ */ GOTO 42
  IF ~~ THEN REPLY #31414 /* ~"J'abandonne, Madame Peignépine… Qu'est-ce que ça veut dire ?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.1 41.1 42.1
  SAY #31415 /* ~Tu t'apprêtes à renoncer et à tourner les talons quand tu considères la page dans son entier… et les symboles s'assemblent alors. Le parchemin énumère des syllabes occultes, des composants, et des gestes mystiques utilisés pour contrôler le flux du mana… un charme de base, dans ce cas précis, te semble-t-il.~ */
  IF ~~ THEN REPLY #31416 /* ~"C'est un charme mineur, non ? On dirait un sort capable de te rendre plus attrayant aux yeux des autres, plus charismatique."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.0 43.0
  SAY #31417 /* ~Dame Peignépine s'écarquille les yeux. "Qui es-tu pour vouloir me berner ?! Elle t'arrache le parchemin des mains. "M'as-tu menti ? Es-tu un mage ou non ? Ou un fiélon, peut-être ? Réponds-moi !"~ */
  IF ~~ THEN REPLY #31418 /* ~"Qu'est-ce qui ne va pas ?"~ */ JOURNAL #31420 /* ~Lady Peignépine m'a fait passer un test… un sort de charme mineur, écrit sur un parchemin dans la langue de l'Art. J'ai pu le déchiffrer sans difficulté. J'ai dû apprendre à lire la magie par le passé.~ */ GOTO 45
  IF ~~ THEN REPLY #31419 /* ~"Non, pas à ma connaissance. Il y a un problème ?"~ */ JOURNAL #31420 /* ~Lady Peignépine m'a fait passer un test… un sort de charme mineur, écrit sur un parchemin dans la langue de l'Art. J'ai pu le déchiffrer sans difficulté. J'ai dû apprendre à lire la magie par le passé.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #31421 /* ~"Je ne m'attendais pas à cela… hmm…" Elle te regarde attentivement, longuement. "Ce que tu vois est écrit dans la langue de l'*Art*. Si tu n'étais pas mage, tu n'y apercevrais qu'un brouillard de symboles sans aucune signification." Pourtant, comme si cela était aussi clair que le ciel amorien, tu l'as déchiffré. Comment est-ce possible ?"~ */
  IF ~~ THEN REPLY #31422 /* ~"Je ne sais pas… Je *savais* simplement ce que ça disait."~ */ GOTO 46
  IF ~~ THEN REPLY #31423 /* ~"Je crois que je l'ai su, mais j'ai oublié… C'est en voyant les symboles que ça m'est revenu."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0 45.1
  SAY #31424 /* ~"Ou peut-être est-ce un don naturel… qu'importe." Elle te sourit. "Tu viens de t'épargner des saisons, voire des *années* d'apprentissage. Bien… tu peux lire les sorts, mais possèdes-tu un livre pour les noter ?"~ */
  IF ~~ THEN REPLY #31425 /* ~"Un livre de sorts ? Non…"~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #31426 /* ~"Et ça, qu'est-ce que c'est ?" Elle désigne ton journal.~ */
  IF ~~ THEN REPLY #31427 /* ~"C'est mon journal. J'y entre ce que trouve d'intéressant… les gens que je rencontre et autres."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31428 /* ~"Tu y inscriras tes sorts, dans ce cas." Elle fronce les sourcils. "Il est en piteux état… mais cela suffira." Elle reste coite un instant, en regardant ton journal. Elle paraît perdue dans ses pensées et commence à ronger l'ongle de son pouce.~ */
  IF ~~ THEN REPLY #31430 /* ~"Madame Peignépine… ?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #31432 /* ~Elle se tourne vers toi : "Mm ? Oh… oui. Bien, tant que tes sorts restent dans ce livre, ils n'ont aucun pouvoir - ce ne sont que des mots. L'Art exige que tu étudies les sorts - que tu les *mémorises* - pour utiliser leur pouvoir. Cela nécessite un esprit clair ; il est donc souhaitable que tu te reposes avant de le faire. Comprends-tu ?"~ */
  IF ~~ THEN REPLY #31433 /* ~"Oui, continue."~ */ GOTO 50
  IF ~~ THEN REPLY #31434 /* ~"Je crois comprendre ces rudiments, Madame Peignépine."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #31435 /* ~"Excellent. Bien, choisis les sorts que tu désires mémoriser *avant* de dormir ; c'est primordial. Lorsque tu t'éveilleras, ils seront frais dans ton esprit, riches en mana, et prêts à être jetés."~ */
  IF ~~ THEN REPLY #31436 /* ~"Combien de sorts je peux lancer ?"~ */ GOTO 51
  IF ~~ THEN REPLY #31437 /* ~"Je crois comprendre ces rudiments, Madame Peignépine."~ */ GOTO 56
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #31438 /* ~"Un seul, peut-être deux, avant de devoir te reposer à nouveau… comme tu n'es qu'un mage débutant, il y a peu de place dans ton esprit pour plus de puissance. Utilise tes sorts avec sagesse, jusqu'à ce que tu sois plus compétent dans le domaine de l'Art… mais, même ensuite, je te conseille de les utiliser sagement. Lorsque tu acquerras plus d'expérience, ta capacité à mémoriser les sorts grandira."~ */
  IF ~~ THEN REPLY #31439 /* ~"D'accord, continue…"~ */ GOTO 52
  IF ~~ THEN REPLY #31440 /* ~"Je crois comprendre ces rudiments, Madame Peignépine."~ */ GOTO 56
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #31441 /* ~"Tu ne peux jeter que les sorts que tu as mémorisés. Donc, si tu désires utiliser l'Art pour disons, identifier deux objets magiques différents, il faudra que tu mémorises le sort d'Identification… combien de fois ?"~ */
  IF ~~ THEN REPLY #31442 /* ~"Une fois."~ */ GOTO 53
  IF ~~ THEN REPLY #31443 /* ~"Deux fois."~ */ GOTO 54
  IF ~~ THEN REPLY #31444 /* ~"Euh…"~ */ GOTO 53
  IF ~~ THEN REPLY #31445 /* ~"Je crois comprendre ces rudiments, Madame Peignépine."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.2
  SAY #31446 /* ~"Deux fois ! Pour jeter *deux fois* un sort, il faut que tu mémorises *deux fois* le sort."~ */
  IF ~~ THEN REPLY #31447 /* ~"Je comprends. Et pour lancer plus de sorts ?"~ */ JOURNAL #31449 /* ~Lady Peignépine m'a enseigné les règles fondamentales de l'Art. Elle dit qu'avant de me reposer, il faut que je choisisse les sorts que j'ai envie de mémoriser en consultant le livre des sorts et en les sélectionnant. Si je veux être capable de lancer un sort plusieurs fois, il faut que je le mémorise plusieurs fois. Chaque fois que je me reposerai, je me réveillerai le lendemain matin en ayant mémorisé les sorts, prêt à les lancer. Elle m'a expliqué que je ne pourrai lancer qu'un petit nombre de sorts par jour, jusqu'à ce que je maîtrise bien leur utilisation. Je pourrai peut-être rencontrer d'autres maîtres dans la cité susceptibles eux aussi de m'apprendre à lancer des sorts.~ */ GOTO 55
  IF ~~ THEN REPLY #31448 /* ~"Je crois comprendre ces rudiments, Madame Peignépine."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY #31450 /* ~Dame Peignépine acquiesce, souriante. "Oui, deux fois, c'est exact."~ */
  IF ~~ THEN REPLY #31451 /* ~"Et pour lancer plus de sorts ?"~ */ JOURNAL #31449 /* ~Lady Peignépine m'a enseigné les règles fondamentales de l'Art. Elle dit qu'avant de me reposer, il faut que je choisisse les sorts que j'ai envie de mémoriser en consultant le livre des sorts et en les sélectionnant. Si je veux être capable de lancer un sort plusieurs fois, il faut que je le mémorise plusieurs fois. Chaque fois que je me reposerai, je me réveillerai le lendemain matin en ayant mémorisé les sorts, prêt à les lancer. Elle m'a expliqué que je ne pourrai lancer qu'un petit nombre de sorts par jour, jusqu'à ce que je maîtrise bien leur utilisation. Je pourrai peut-être rencontrer d'autres maîtres dans la cité susceptibles eux aussi de m'apprendre à lancer des sorts.~ */ GOTO 55
  IF ~~ THEN REPLY #31452 /* ~"Je crois comprendre ces rudiments, Madame Peignépine."~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 53.0 54.0
  SAY #31453 /* ~"Garde les yeux et les oreilles grand ouverts pour apprendre - même les gens ordinaires peuvent avoir quelque magie à t'enseigner. Les parchemins, les livres et même des objets plus surprenants peuvent offrir des sorts inscrits. Si tu trouves un, examine-le avec attention et copie le sort dans ton livre, si tu le souhaites."~ */
  IF ~~ THEN REPLY #31454 /* ~"J'ai compris."~ */ GOTO 56
  IF ~~ THEN REPLY #31455 /* ~"Je crois comprendre ces rudiments, Madame Peignépine."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 49.1 50.1 51.1 52.3 53.1 54.1 55.0 55.1
  SAY #31456 /* ~"Prends ces parchemins, dans ce cas… des charmes mineurs, pour te mettre en bouche." Elle sourit d'un air rusé. "Reviens lorsque tu en sauras plus sur le multivers et ses voies… tu ne peux plus t'entraîner ici gratuitement, mais je pourrai te vendre des sorts plus puissants lorsque tu seras capable de les utiliser."~ */
  IF ~~ THEN REPLY #31457 /* ~"Merci, Madame Peignépine. Au revoir."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
  IF ~~ THEN REPLY #31458 /* ~"Alors, je reviendrai plus tard. Au revoir."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
END
