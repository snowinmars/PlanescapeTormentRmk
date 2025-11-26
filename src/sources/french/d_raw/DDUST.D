// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUST~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #300 /* ~L'Homme-Poussière ne t'a pas remarqué. Il a dû te confondre avec l'un des ouvriers cadavériques.~ */
  IF ~~ THEN REPLY #302 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #303 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #304 /* ~"C'est quoi cet endroit ?"~ */ GOTO 1
  IF ~~ THEN REPLY #305 /* ~"J'ai quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #306 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #307 /* ~L'Homme-Poussière saute, tourne brusquement la tête et te regarde. Il a l'air choqué.~ */
  IF ~~ THEN REPLY #310 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #312 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #1332 /* ~Va-t'en. Vite.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
  SAY #309 /* ~L'Homme-Poussière recule d'un pas, puis frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #313 /* ~"Alors très bien…"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #314 /* ~L'homme pâle est vêtu d'un habit long et sombre. Il sent légèrement le moisi. Son visage est sans expression et il semble absorbé dans son travail.~ */
  IF ~~ THEN REPLY #315 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #316 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #317 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #319 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #382 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #321 /* ~L'Homme-Poussière relève lentement la tête et se tourne vers toi. "Es-tu perdu ?"~ */
  IF ~~ THEN REPLY #322 /* ~"Oui."~ */ GOTO 5
  IF ~~ THEN REPLY #323 /* ~"Non."~ */ GOTO 6
  IF ~~ THEN REPLY #324 /* ~"Non, je ne suis pas perdu. J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #325 /* ~"Au revoir."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3 6.4 16.2 51.1
  SAY #326 /* ~"J'appelle un garde pour te guider vers la sortie. Attends."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #327 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #328 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #329 /* ~Va-t'en. Vite.~ */ GOTO 2
  IF ~~ THEN REPLY #1333 /* ~Attends.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #330 /* ~"Si tu n'es pas perdu, que fais-tu ici ?"~ */
  IF ~~ THEN REPLY #331 /* ~"Ça ne te regarde pas."~ */ GOTO 7
  IF ~~ THEN REPLY #332 /* ~"Je me suis réveillé sur une dalle de ta salle de préparation."~ */ GOTO 8
  IF ~~ THEN REPLY #333 /* ~"Je suis là pour voir quelqu'un."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #334 /* ~"J'étais là pour un enterrement, mais je crois qu'il y a eu erreur."~ */ GOTO 16
  IF ~~ THEN REPLY #337 /* ~Va-t'en. Vite.~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #335 /* ~"Si, ça me regarde. Les gardes réussiront peut-être à te délier la langue." L'Homme-Poussière recule d'un pas ; il semble prêt à appeler les gardes.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #344 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3887 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #3888 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #336 /* ~"Tu plaisantes ? Tu désires peut-être en faire profiter les gardes." L'Homme-Poussière recule d'un pas ; il semble prêt à appeler les gardes.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #358 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3885 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #3886 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #338 /* ~"À qui viens-tu rendre visite ?"~ */
  IF ~~ THEN REPLY #3922 /* ~"Ça ne te regarde pas."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #342 /* ~"Je suis là pour voir Dhall."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #343 /* ~"Je suis là pour voir Dhall."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33183 /* ~"Je suis là pour voir Deionarra."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33185 /* ~"Je suis là pour voir Deionarra."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33186 /* ~"Je suis là pour voir Soego."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33187 /* ~"Je suis là pour voir Soego."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33189 /* ~Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33190 /* ~Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"~ */ GOTO 21
  IF ~~ THEN REPLY #33191 /* ~"Euh, personne. Ce n'était pas ce que je voulais dire."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #345 /* ~"Dhall est dans la salle de réception à cet étage. Je te préviens… Dhall est très occupé et il ne se porte pas très bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."~ */
  IF ~~ THEN REPLY #347 /* ~"Très bien. Merci du renseignement."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #346 /* ~"Dhall doit être dans la salle de réception au premier étage. Il est très occupé et ne se porte pas très bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."~ */
  IF ~~ THEN REPLY #348 /* ~"Très bien. Merci du renseignement."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #349 /* ~"Deionarra ? Je sais qu'une femme est enterrée dans la Salle de Commémoration au rez-de-chaussée. C'est peut-être elle."~ */
  IF ~~ THEN REPLY #352 /* ~"Très probablement. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #350 /* ~"Deionarra ? Je sais qu'une femme est enterrée dans la Salle de Commémoration du nord-ouest. C'est peut-être elle."~ */
  IF ~~ THEN REPLY #353 /* ~"Très probablement. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #351 /* ~"Je crois que Soego est près de la porte d'entrée au rez-de-chaussée. Il sert de guide pendant les heures d'anti-pic."~ */
  IF ~~ THEN REPLY #354 /* ~"Très bien. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #355 /* ~"Je crois que Soego est près de la porte d'entrée. Il sert de guide pendant les heures d'anti-pic."~ */
  IF ~~ THEN REPLY #356 /* ~"Très bien. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #357 /* ~"Qui enterre-t-on ? Le service funèbre doit probablement avoir lieu ailleurs dans la Morgue."~ */
  IF ~~ THEN REPLY #359 /* ~"Tu ne comprends pas… L'erreur d'enterrement, c'était MOI."~ */ GOTO 8
  IF ~~ THEN REPLY #360 /* ~"Ça se pourrait. Où ont lieu ces autres services ?"~ */ GOTO 17
  IF ~~ THEN REPLY #361 /* ~"Tu peux m'indiquer la sortie ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #362 /* ~"Plusieurs chambres funéraires bordent le périmètre de la Morgue. Elles suivent la courbe du mur du rez-de-chaussée et du premier étage. Connais-tu l'identité du mort ?"~ */
  IF ~~ THEN REPLY #363 /* ~"Non."~ */ GOTO 18
  IF ~~ THEN REPLY #364 /* ~"Oui."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #365 /* ~"Alors vérifie auprès de l'un des guides à la porte d'entrée. Il sera en mesure de t'aider."~ */
  IF ~~ THEN REPLY #366 /* ~"Très bien. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #367 /* ~L'Homme-Poussière attend.~ */
  IF ~~ THEN REPLY #369 /* ~"Pardon… Ce n'est pas ce que je voulais dire. Je ne connais pas le nom du défunt."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #370 /* ~"Elle s'appelle Deionarra."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #371 /* ~Mensonge : "Il s'appelle… euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #372 /* ~Mensonge : "Il s'appelle… euh, Adahn."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #373 /* ~Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1335 /* ~Penche-toi comme pour lui murmurer quelque chose, puis brise-lui la nuque.~ */ GOTO 45
  IF ~~ THEN REPLY #1336 /* ~Enfuis-toi.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #374 /* ~"Je vois. Mais que veux-tu ?"~ */
  IF ~~ THEN REPLY #375 /* ~"Ça ne te regarde pas."~ */ GOTO 7
  IF ~~ THEN REPLY #376 /* ~"Je me suis réveillé sur une dalle de ta salle de préparation."~ */ GOTO 8
  IF ~~ THEN REPLY #377 /* ~"Je suis là pour voir quelqu'un."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #378 /* ~"J'étais là pour un enterrement, mais je crois qu'il y a eu erreur."~ */ GOTO 16
  IF ~~ THEN REPLY #379 /* ~Enfuis-toi.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #368 /* ~"Ce nom ne m'est pas familier. Vérifie auprès de l'un des guides, à la porte d'entrée… Il saura mieux te renseigner que moi."~ */
  IF ~~ THEN REPLY #380 /* ~"Très bien. C'est ce que je vais faire. Au revoir."~ */ GOTO 48
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #294 /* ~L'homme pâle est vêtu d'une robe longue et sombre. Il sent légèrement le moisi. Son visage est sans expression et il semble absorbé par sa tâche.~ */
  IF ~~ THEN REPLY #295 /* ~"Bonjour."~ */ GOTO 23
  IF ~~ THEN REPLY #297 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #381 /* ~Il se retourne lentement et ses yeux se mettent à clignoter à la vue de ta robe. "Bonjour, initié."~ */
  IF ~~ THEN REPLY #383 /* ~"Qui es-tu ?"~ */ GOTO 24
  IF ~~ THEN REPLY #384 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 25
  IF ~~ THEN REPLY #391 /* ~"J'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #392 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #393 /* ~"Je pourrais te retourner la question. Ton visage m'est inconnu. Qui es-tu ?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #450 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1337 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3904 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3905 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #394 /* ~"Voici la Morgue…" L'Homme-Poussière t'observe un instant ; comme s'il digérait tes paroles. "C'est quoi ton nom déjà… ?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #399 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #3906 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3907 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3908 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #400 /* ~L'Homme-Poussière attend patiemment que tu continues.~ */
  IF ~~ THEN REPLY #401 /* ~"Peux-tu me dire comment sortir d'ici ?"~ */ GOTO 27
  IF ~~ THEN REPLY #402 /* ~"Tu connais un certain Pharod ?"~ */ GOTO 28
  IF ~~ THEN REPLY #403 /* ~"J'ai perdu un journal. Tu ne l'aurais pas vu ?"~ */ GOTO 39
  IF ~~ THEN REPLY #404 /* ~"Tant pis. Excuse-moi de t'avoir dérangé."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #405 /* ~"Tu peux sortir tout simplement par la porte d'entrée, au rez-de-chaussée."~ */
  IF ~~ THEN REPLY #406 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #407 /* ~"Merci. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #408 /* ~"Ce nom…" L'Homme-Poussière hésite un instant. "Ce nom me *dit* quelque chose… Un Récupérateur portait le même. Dhall le Scribe le connaît peut-être."~ */
  IF ~~ THEN REPLY #409 /* ~"Un Récupérateur ?"~ */ GOTO 29
  IF ~~ THEN REPLY #410 /* ~"Dhall ?"~ */ GOTO 30
  IF ~~ THEN REPLY #411 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #425 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #412 /* ~"Les Récupérateurs sont ceux qui ramassent les cadavres dans les rues de Sigil et qui les portent à la Morgue…" L'Homme-Poussière fait une pause, puis fronce les sourcils. "Tu n'es pas du coin. Qui es-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #413 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3918 /* ~"Ça ne fait pas longtemps que je suis ici. J'essaie… de prendre mes repères."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3919 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3920 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #414 /* ~"Dhall est hautement respecté dans notre faction. Personne n'a médité autant que lui sur la nature de la Vraie Mort et personne n'en est plus digne que lui. Il a tant de sagesse à donner. Si tu ne le connais pas encore, tu devrais saisir une occasion de lui parler. Il ne séjournera plus longtemps dans l'ombre de cette existence."~ */
  IF ~~ THEN REPLY #415 /* ~"*Il ne traînera pas longtemps dans l'ombre de cette existence ?*"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #416 /* ~"Où est-ce que je peux trouver Dhall ?"~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #417 /* ~"Où est-ce que je peux trouver Dhall ?"~ */ GOTO 33
  IF ~~ THEN REPLY #418 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #33204 /* ~"Merci du renseignement. J'irai lui parler."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #419 /* ~Il acquiesce. "Dhall est malade. Il est âgé, même selon les standards githzeraïs. La mort succédera sans nul doute à la maladie dévastatrice qu'il a contracté. Il est chanceux."~ */
  IF ~~ THEN REPLY #420 /* ~"Les standards githzeraïs ?"~ */ GOTO 34
  IF ~~ THEN REPLY #421 /* ~"C'est quoi un *githzeraï* ?"~ */ GOTO 35
  IF ~~ THEN REPLY #422 /* ~"Il est chanceux ?"~ */ GOTO 36
  IF ~~ THEN REPLY #423 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #424 /* ~"Merci de m'avoir accordé un peu de temps. Je dois m'en aller."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #427 /* ~"Dhall est dans la salle de réception, dans l'aile nord-ouest, à cet étage. Je te préviens… Dhall est absorbé par ses affaires et la maladie qui le ronge occupe le reste de son temps."~ */
  IF ~~ THEN REPLY #428 /* ~"Dhall est malade ?"~ */ GOTO 31
  IF ~~ THEN REPLY #429 /* ~"Merci de m'avoir accordé un peu de temps. Je dois partir. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #426 /* ~"Dhall est très probablement dans la salle de réception au premier étage. Ne l'accapare pas trop. Il est très pris par ses affaires et la maladie qui le ronge occupe le reste de son temps."~ */
  IF ~~ THEN REPLY #430 /* ~"Dhall est malade ?"~ */ GOTO 31
  IF ~~ THEN REPLY #431 /* ~"Merci de m'avoir accordé un peu de temps. Je dois te laisser. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #432 /* ~"Oui, les githzeraïs ont une durée de vie plus longue que les humains."~ */
  IF ~~ THEN REPLY #433 /* ~"C'est quoi un *githzeraï* ?"~ */ GOTO 35
  IF ~~ THEN REPLY #437 /* ~"En quoi est-ce que Dhall a de la chance de mourir ? Il n'est pas apprécié ?"~ */ GOTO 36
  IF ~~ THEN REPLY #438 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #440 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #435 /* ~"Les githzeraïs sont…" L'Homme-Poussière fait une pause, puis fronce les sourcils et t'observe. "Tu n'es pas d'ici. Qui es-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #436 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3909 /* ~"Ça ne fait pas longtemps que je suis ici. J'essaie… de prendre mes repères."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3910 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3911 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #439 /* ~"Il est chanceux car il atteindra la Vraie Mort. Il n'aura plus à vivre dans l'ombre de cette existence."~ */
  IF ~~ THEN REPLY #441 /* ~"Et… c'est une bonne chose ?"~ */ GOTO 37
  IF ~~ THEN REPLY #442 /* ~"Je vois. Il a beaucoup de chance, en effet. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #443 /* ~"Je vois. Bon, je dois m'en aller. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #444 /* ~L'Homme-Poussière acquiesce. "Oui." Il fronce les sourcils puis te dévisage. "Tu n'es pas d'ici. Qui es-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #445 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #446 /* ~"Ça ne fait pas longtemps que je suis ici. J'essaie… de prendre mes repères."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3912 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3913 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #447 /* ~"Tu n'es pas l'un des nôtres. Que fais-tu ici ? Es-tu un membre des Anarchistes ? Un espion d'une autre faction ? Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #448 /* ~"Bon sang !"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #449 /* ~"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1339 /* ~"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #398 /* ~"Un journal ? Je n'en ai vu aucun."~ */
  IF ~~ THEN REPLY #451 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #452 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1419 /* ~L'homme pâle est vêtu d'un habit long et sombre. Il sent légèrement le moisi. Son visage est sans expression et il semble absorbé par sa tâche.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #1420 /* ~"Bonjour."~ */ EXTERN ~DMORTE~ 61
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #1421 /* ~"Bonjour."~ */ EXTERN ~DMORTE~ 63
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #1422 /* ~"Bonjour."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1423 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #1424 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1425 /* ~Avant que l'Homme-Poussière ait eu le temps de dire un mot, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d'un coup sec.~ */
  IF ~~ THEN REPLY #1426 /* ~"Je ne peux pas te laisser prévenir tes amis…"~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1427 /* ~Un *craquement* retentit ; le corps inerte de l'Homme-Poussière tombe dans tes bras.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1428 /* ~"Je préfère que ce soit toi que moi, Homme-Poussière."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1429 /* ~"Je préfère que ce soit toi que moi, Homme-Poussière."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1430 /* ~À ta grande surprise, cette action t'a paru instinctive, comme si tu l'avais déjà réalisée plusieurs fois… cela te rappelle vaguement quelque chose, mais le souvenir n'est pas assez fort pour refaire surface.~ */
  IF ~~ THEN REPLY #3882 /* ~Laisse le corps, continue.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #3883 /* ~Tu n'es pas assez rapide et l'Homme-Poussière évite ton mouvement. Il recule d'un pas, frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #3884 /* ~"Alors très bien…"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #3889 /* ~Tu te penches vers lui pour lui 'murmurer' quelque chose ; il se penche aussi. Quand il arrive à portée de mains, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d'un coup sec.~ */
  IF ~~ THEN REPLY #3890 /* ~"Je ne peux pas te laisser prévenir tes amis…"~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #3891 /* ~L'Homme-Poussière a l'air méfiant. Il s'apprête à dire quelque chose, puis secoue légèrement la tête et retourne à sa tâche.~ */
  IF ~~ THEN REPLY #3892 /* ~Éloigne-toi.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #3893 /* ~L'Homme-Poussière t'observe avec attention. "Tu n'es pas l'un des nôtres. Que fais-tu ici ? Es-tu membre des Anarchistes ? Ou un espion d'une autre faction ? Cela me semble être du ressort des gardes…"~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #3914 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3915 /* ~Brise-lui la nuque avant qu'il se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #3916 /* ~"Non, non… Ce n'est pas, euh… Je veux dire, je n'espionne personne… En fait, je me suis réveillé sur l'une des dalles… et…"~ */ GOTO 2
  IF ~~ THEN REPLY #3917 /* ~Va-t'en. Vite.~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #3894 /* ~L'Homme-Poussière hoche la tête, puis retourne à sa tâche.~ */
  IF ~~ THEN REPLY #3895 /* ~Éloigne-toi.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #3896 /* ~L'Homme-Poussière fronce les sourcils. "Ce nom ne me dit rien."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3898 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3899 /* ~"Je suis… nouveau ici. Je… J'essaie d'apprendre la routine."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3900 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3901 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #3897 /* ~L'Homme-Poussière fronce toujours les sourcils, mais il hoche légèrement la tête. "Très bien. Comment puis-je t'aider, initié ?"~ */
  IF ~~ THEN REPLY #3902 /* ~"J'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #3903 /* ~"Rien aujourd'hui. Au revoir."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66674 /* ~L'Homme-Poussière te dédie un regard dénué d'expression. "Tu es perdu ?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66675 /* ~"Non, je suis membre de la faction. Je fais juste le tour de la Morgue."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66676 /* ~"Oui."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66677 /* ~"Non."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66678 /* ~"Je ne suis pas perdu, non. Par contre, j'aurais quelques questions à te poser…"~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66679 /* ~"Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66681 /* ~L'Homme-Poussière te regarde fixement puis hoche la tête. "Très bien. Si tu a besoin d'aide, fais-le moi savoir."~ */
  IF ~~ THEN REPLY #66682 /* ~"Je n'y manquerai pas. Au revoir."~ */ EXIT
END
