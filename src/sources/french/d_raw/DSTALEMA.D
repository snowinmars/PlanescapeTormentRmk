// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTALEMA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTALEMA~

IF ~  Global("Stale_Mary","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 0 // from:
  SAY #2991 /* ~Cette femme-zombi à l'odeur de moisi a l'air exceptionnellement vieille ; elle est quasiment momifiée. Sa peau ressemble à du cuir moisissant de couleur vert-de-gris et l'un de ses yeux est tombé, laissant un trou noir dans son visage. Sa voix est basse et grasse : "Bon-bon-bonjour."~ */
  IF ~~ THEN REPLY #2992 /* ~"Bonjour…"~ */ DO ~SetGlobal("Stale_Mary","GLOBAL",1)
SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22185 /* ~"Bonjour et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22189 /* ~Elle se montre du doigt et parle de nouveau. "Suh-suh-stuhl Muhhhrie." On dirait que ses cordes vocales sont plongées dans une substance indéfinissable qui les empêche de fonctionner correctement.~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22191 /* ~"Salie Marie ? J'ai quelques questions…"~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22192 /* ~"Salie Marie ? J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22193 /* ~"Je dois partir maintenant. Au revoir, Marie."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #22195 /* ~Le cadavre remue lentement la tête en guise de réponse.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22196 /* ~"J'ai des questions…"~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22197 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #22198 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 4.2 45.0
  SAY #22200 /* ~Elle secoue la tête, attendant ta question.~ */
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #22201 /* ~"Hargrimm m'a dit que je devais *apprendre* à t'écouter… tu sais ce qu'il voulait dire ?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #22202 /* ~"Marie, il faut que je parle au Roi Silencieux. Peux-tu m'aider ?"~ */ GOTO 4
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22203 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22205 /* ~"Où suis-je ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22207 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22209 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22210 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22211 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #22212 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 3.3 3.4 3.5 3.6 3.7
  SAY #22214 /* ~Elle grogne et marmonne une phrase bégayante, incompréhensible.~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #22215 /* ~"Je m'excuse, mais je ne te comprends pas. Est-ce qu'il y aurait une autre façon de communiquer ?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #22216 /* ~"Je ne te comprends pas. Peux-tu parler plus clairement ?"~ */ GOTO 5
  IF ~~ THEN REPLY #22217 /* ~"Euh… J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #22218 /* ~"Peu importe… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #22219 /* ~Elle secoue la tête tristement, haussant douloureusement et lentement les épaules.~ */
  IF ~~ THEN REPLY #22221 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 14.1 14.5
  SAY #22223 /* ~Le cadavre fait un pas vers toi, levant le bras pour te toucher.~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22224 /* ~Recule d'un pas.~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22226 /* ~Recule d'un pas.~ */ GOTO 8
  IF ~~ THEN REPLY #22227 /* ~Laisse-la te toucher.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #22228 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #22229 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3
  SAY #22268 /* ~Elle grogne doucement en guise de réponse, s'approchant une nouvelle fois pour te toucher le bras.~ */
  IF ~~ THEN REPLY #22269 /* ~Laisse-la te toucher.~ */ GOTO 9
  IF ~~ THEN REPLY #22270 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.4
  SAY #22271 /* ~Elle grogne doucement en guise de réponse, s'approchant une nouvelle fois pour te toucher le bras. Malgré les ravages du temps, des vestiges d'humanité subsistent dans son regard. Il est clair qu'elle ne te veut aucun mal.~ */
  IF ~~ THEN REPLY #22272 /* ~Laisse-la te toucher.~ */ GOTO 9
  IF ~~ THEN REPLY #22273 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 7.0 8.0
  SAY #22274 /* ~Sa main presque décharnée caresse doucement ton avant-bras et elle se met à parler : "Ecuuuuut." (Écoute.)~ */
  IF ~~ THEN REPLY #22275 /* ~"Comment tu as fait ?"~ */ GOTO 10
  IF ~~ THEN REPLY #22276 /* ~"Comment se fait-il que j'arrive à te comprendre ?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22277 /* ~Elle te touche une fois de plus. "Nuuuu paaaaalllllléééé tuu lllle peeeeeeeeuu. Méééé cccuuuuum iiiiiilll fffooooo." (Nous parler tu le peux. Mais comme il faut.)~ */
  IF ~~ THEN REPLY #22278 /* ~"Peux-tu m'apprendre ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22279 /* ~Elle sourit, la peau durcie de son visage craquant comme du cuir épais. "Uuuuii." (Oui.)~ */
  IF ~~ THEN REPLY #22280 /* ~"Alors fais-le s'il te plaît…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
ApplySpell(Protagonist,SPECIAL_ADD_STORIES_BONES_TELL)
SetGlobal("Speak_With_Dead","GLOBAL",1)
GiveExperience(Protagonist,3750)
~ JOURNAL #21911 /* ~Salie Marie a partagé sa connaissance du langage des morts avec moi. Je peux maintenant tenir une conversation avec des cadavres qui ne sont pas morts depuis trop longtemps et que les anciens pensionnaires peuvent encore utiliser pour s'exprimer.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22282 /* ~Elle finit de t'apprendre comment communiquer avec les morts, une technique qu'elle appelle 'Histoires-Os-Conter'.~ */
  IF ~~ THEN REPLY #22283 /* ~"Puis-je parler à n'importe quel corps mort ?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #22284 /* ~"Queeezz uunnn. Auttttrrrr trrooo morrrrrr. Dooaaa uuuttissser teeennnnniik" (Quelques-uns. Autres trop morts. Dois utiliser technique.)~ */
  IF ~~ THEN REPLY #22285 /* ~"Merci. J'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22286 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 2.0 13.0 15.1 16.2 17.4 18.3 19.2 20.3 21.1 22.2 23.5 24.2 25.2 26.1 27.2 28.3 29.2 30.2 31.2 32.2 33.2 34.2 35.1 36.1 37.3 38.1 39.0 40.1 41.2 42.2 43.1 44.0 45.1 46.0 52.2 54.0
  SAY #22287 /* ~Elle secoue la tête, attendant ta question.~ */
  IF ~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Good_Mary_2","GLOBAL",0)
~ THEN REPLY #50859 /* ~"Mon compagnon est retenu par un homme dangereux qui réclame un crâne "plus puissant" en échange de sa libération. Qu'est-ce que je dois faire, Marie ?"~ */ GOTO 52
  IF ~  Global("Hargrimm_Clue","AR1500",1)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23858 /* ~"Hargrimm m'a dit que je devais *apprendre* à t'écouter… tu sais ce qu'il voulait dire ?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,15,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22288 /* ~"Marie, il faut que je parle au Roi Silencieux. Peux-tu m'aider ?"~ */ GOTO 42
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22289 /* ~"Marie, il faut que je parle au Roi Silencieux. Peux-tu m'aider ?"~ */ GOTO 43
  IF ~  Global("DN_Appeal","AR1500",1)
CheckStatLT(Protagonist,9,CHR)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22290 /* ~"Marie, il faut que je parle au Roi Silencieux. Peux-tu m'aider ?"~ */ GOTO 44
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #64163 /* ~"Comment se fait-il que tu parles à ces autres zombis ? Je ne peux pas les comprendre comme je te comprends toi…"~ */ GOTO 6
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #22291 /* ~"Pourquoi est-ce que j'ai été fait prisonnier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #22292 /* ~"Où suis-je ?"~ */ GOTO 15
  IF ~~ THEN REPLY #22293 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #22294 /* ~"Qui vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #22295 /* ~"Je voudrais te questionner sur quelqu'un en particulier…"~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #22296 /* ~"Tu n'aurais pas vu une petite sphère en bronze quelque part par ici ?"~ */ GOTO 39
  IF ~~ THEN REPLY #22297 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.7
  SAY #22298 /* ~"Saaaall duuuuu Raaaa Siiiilennnnnsss." (Salles du Roi Silencieux.)~ */
  IF ~~ THEN REPLY #22299 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22300 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22301 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.8 37.0 41.0
  SAY #22302 /* ~"Guuuuuid leee auuuuuut zzooombii. Veiiilllll suuu zimmmmobiiii." (Guide les autres zombis. Veille sur les immobiles.)~ */
  IF ~~ THEN REPLY #22303 /* ~"Parle-moi des autres zombis."~ */ GOTO 18
  IF ~~ THEN REPLY #22304 /* ~"Les immobiles ?"~ */ GOTO 38
  IF ~~ THEN REPLY #22305 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22306 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.9 18.2 19.1 20.2 21.0 22.1
  SAY #22307 /* ~"Zzzohhhmmmb. Ssskeeelllt. Guh-guh-gooooolll. Rrrrahhhh." (Zombis. Squelettes. Goules. Rats.)~ */
  IF ~~ THEN REPLY #22308 /* ~"Parle-moi des zombis."~ */ GOTO 18
  IF ~~ THEN REPLY #22309 /* ~"Parle-moi des squelettes."~ */ GOTO 20
  IF ~~ THEN REPLY #22310 /* ~"Parle-moi des goules."~ */ GOTO 21
  IF ~~ THEN REPLY #22311 /* ~"Parle-moi des rats."~ */ GOTO 22
  IF ~~ THEN REPLY #22312 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22313 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0 38.0
  SAY #22314 /* ~"Foooo taaaavaaa duu Raaaa Siiiilennnnnsss." (Font travail du Roi Silencieux.)~ */
  IF ~~ THEN REPLY #22315 /* ~"Quel type de travail ?"~ */ GOTO 19
  IF ~~ THEN REPLY #22316 /* ~"Parle-moi du Roi Silencieux."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #22317 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #22318 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22319 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22320 /* ~"Reeeeconnstrr ceeeuu quuuu aaaa éttteee deeeetrrr. Veiiilllll suuu vreee morrrr." (Reconstruisent ce qui a été détruit. Veillent sur les vrais morts.)~ */
  IF ~~ THEN REPLY #22321 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #22322 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #22323 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22324 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #22325 /* ~"Hhhhuhhhg-rrrrm, leeeurr chfff, nuuu dunnn llll paaruuul duu Raaa Silllleeenns. Ssskeeelllts nuu guiiiid daaaa nuuuutr travvaa." (Hargrimm, leur chef, nous donne la parole du Roi Silencieux. Les squelettes nous guident dans notre travail.)~ */
  IF ~~ THEN REPLY #22326 /* ~"Parle-moi d'Hargrimm."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22327 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~~ THEN REPLY #22328 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #22329 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22330 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.2 22.0
  SAY #22331 /* ~"Feeeeen… tuuujuuuu feeeeen." (Faim… toujours faim.)~ */
  IF ~~ THEN REPLY #22332 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #22333 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22334 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #22335 /* ~"Paaaatiii. Gooool shassseeee." (Partis. Goules chassé.)"~ */
  IF ~~ THEN REPLY #22336 /* ~"Parle-moi des goules."~ */ GOTO 21
  IF ~~ THEN REPLY #22337 /* ~"Qui d'autre vit dans cet endroit ?"~ */ GOTO 17
  IF ~~ THEN REPLY #22338 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22339 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.10 24.1 25.1 26.0 27.1 28.2 29.1 30.1 31.1 32.1 33.1 34.1 35.0 36.0 37.2 41.1
  SAY #22340 /* ~"Uuuiii ?" (Oui ?)~ */
  IF ~~ THEN REPLY #22341 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #22342 /* ~"Parle-moi du Roi Silencieux."~ */ GOTO 24
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #22343 /* ~"Parle-moi d'Hargrimm."~ */ GOTO 27
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #22344 /* ~"Parle-moi de Soego."~ */ GOTO 36
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #22345 /* ~"Parle-moi d'Acaste."~ */ GOTO 35
  IF ~~ THEN REPLY #22346 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22347 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.0 18.1 19.0 20.1 23.1
  SAY #22348 /* ~"Raaa Sss-ssilllleeenns." (Roi Silencieux.)~ */
  IF ~~ THEN REPLY #22349 /* ~"Oui, que peux-tu me dire sur lui ?"~ */ GOTO 25
  IF ~~ THEN REPLY #22350 /* ~"Peu importe. Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22351 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22352 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #22353 /* ~"Raaa Sss-ssilllleeenns." (Roi Silencieux.)~ */
  IF ~~ THEN REPLY #22354 /* ~"Que sais-tu sur lui ?"~ */ GOTO 26
  IF ~~ THEN REPLY #22355 /* ~"Peu importe. Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22356 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22357 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #22358 /* ~"Raaa Sss-ssilllleeenns." (Roi Silencieux.)~ */
  IF ~~ THEN REPLY #22359 /* ~"Peu importe… parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22360 /* ~"Peu importe… J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22361 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0 23.2 40.0
  SAY #22362 /* ~"Hhhhuhhhg-rrrrm, lllehhhd ddde squuuullee, nuuu dunnn llll paaruuul duu Raaa Silllleeenns. Unnnkkeee, ssuuuciiiuu." (Hargrimm, chef des squelettes, nous donne la parole du Roi Silencieux. Inquiet. Soucieux.)~ */
  IF ~~ THEN REPLY #22363 /* ~"Pourquoi est-il inquiet ?"~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #22364 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22365 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22366 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #22367 /* ~"Suhhhguh. Uhhhcuhhhstuh." (Soego. Acaste.)~ */
  IF ~~ THEN REPLY #22368 /* ~"Pourquoi est-il inquiet pour Soego ?"~ */ GOTO 29
  IF ~~ THEN REPLY #22369 /* ~"Pourquoi est-il inquiet pour Acaste ?"~ */ GOTO 32
  IF ~~ THEN REPLY #22370 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22371 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22372 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 34.0
  SAY #22373 /* ~"Suhhguh prrrrchhhh mooooor." (Soego prêche la mort.)~ */
  IF ~~ THEN REPLY #22374 /* ~"Il prêche la mort ?"~ */ GOTO 30
  IF ~~ THEN REPLY #22375 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22376 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22377 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #22378 /* ~"Wuhhhnnnzzz kkke nuuuhh muuuurriiiuu." (Veut que nous mourions.)~ */
  IF ~~ THEN REPLY #22379 /* ~"Pourquoi est-ce qu'il veut que vous mouriez ?"~ */ JOURNAL #22385 /* ~Salie Marie m'a expliqué que Hargrimm, le grand prêtre du Roi Silencieux, était inquiet au sujet de l'Homme-Poussière Soego. Depuis quelque temps, Soego essaie d'inciter les autres morts-vivants des Nations Mortes à abandonner leur 'non-vie' et à accepter la Vraie Mort.~ */ GOTO 31
  IF ~~ THEN REPLY #22380 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22382 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22383 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #22386 /* ~"Iiiii Huuumm-pussssiiiiirrr." (Lui Homme-Poussière.)~ */
  IF ~~ THEN REPLY #22388 /* ~"Pourquoi est-ce que Hargrimm s'inquiète pour Acaste ?"~ */ GOTO 32
  IF ~~ THEN REPLY #22390 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22391 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22393 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 28.1 31.0
  SAY #22395 /* ~"Uhhhcuhhhstuhhh… cuuuhlrrr." (Acaste… colère.)~ */
  IF ~~ THEN REPLY #22397 /* ~"En colère ?"~ */ GOTO 33
  IF ~~ THEN REPLY #22399 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22400 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22401 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22402 /* ~"Uhhhcuhhhstuhhh vuuuh tuuuhh tuuu ll muuunnd." (Acaste veut tuer tout le monde.)~ */
  IF ~~ THEN REPLY #22403 /* ~"Pourquoi veut-elle tuer tout le monde ?"~ */ GOTO 34
  IF ~~ THEN REPLY #22404 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22405 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22406 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #22407 /* ~"Ffuuunn… cuuullllee." (Faim. Colère.)~ */
  IF ~~ THEN REPLY #22409 /* ~"Pourquoi est-ce que Hargrimm s'inquiète pour Soego ?"~ */ JOURNAL #22413 /* ~Salie Marie m'a expliqué que Hargrimm, le grand prêtre du Roi Silencieux, était inquiet au sujet d'Acaste. C'est une goule qui veut tuer et dévorer tout ce qu'elle trouvera dans les Nations Mortes.~ */ GOTO 29
  IF ~~ THEN REPLY #22410 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22411 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22412 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4
  SAY #22408 /* ~"Ffuuunn… cuuullllee." (Faim. Colère.)~ */
  IF ~~ THEN REPLY #22414 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22416 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22418 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 23.3
  SAY #22419 /* ~"Iiiii Huuumm-pussssiiiiirrr." (Lui Homme-Poussière.)~ */
  IF ~~ THEN REPLY #22420 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22422 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22423 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 23.0
  SAY #22424 /* ~"Saa-aah-*saah* Muhriii." (Salie Marie.)~ */
  IF ~~ THEN REPLY #22426 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #22428 /* ~"Comment as-tu atterri ici ?"~ */ GOTO 41
  IF ~~ THEN REPLY #22430 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22429 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22432 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 16.1
  SAY #22434 /* ~"vhuh muuuhhh." (Les vrais morts.)~ */
  IF ~~ THEN REPLY #22436 /* ~"Parle-moi des autres zombis."~ */ GOTO 18
  IF ~~ THEN REPLY #22438 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22439 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 14.11
  SAY #22440 /* ~"Nuuhhhh, dusssssssuuh." (Non, désolée.)~ */
  IF ~~ THEN REPLY #22442 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22443 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 14.6
  SAY #22445 /* ~Elle hausse les épaules. "Duummuuh Hhhhuhhhg-rrrrm." (Demande à Hargrimm.)~ */
  IF ~~ THEN REPLY #22447 /* ~"Parle-moi d'Hargrimm."~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #22449 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22451 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.1
  SAY #22453 /* ~"Muhhhhr luhhhnnntuhhhmmm. Muhhhhmuhrrr diipuhhhnnn." (Mort longtemps. Mémoire disparue.)~ */
  IF ~~ THEN REPLY #22454 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #22455 /* ~"Parle-moi de quelqu'un d'autre."~ */ GOTO 23
  IF ~~ THEN REPLY #22457 /* ~"J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22459 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 14.2
  SAY #22460 /* ~"Uuihhh." (Oui.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Oui ? Comment ?"~ */ DO ~AddexperienceParty(3750)
~ GOTO 47
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22462 /* ~"Oui ? Comment ?"~ */ GOTO 47
  IF ~~ THEN REPLY #22464 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22465 /* ~"Peu importe pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 14.3
  SAY #22467 /* ~"Puukuuh ?" (Pourquoi ?)~ */
  IF ~~ THEN REPLY #22468 /* ~"Il faut que je quitte cet endroit."~ */ GOTO 44
  IF ~~ THEN REPLY #22471 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22472 /* ~"Peu importe pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 14.4 43.0
  SAY #22474 /* ~"Nuhhh." (Non.)~ */
  IF ~~ THEN REPLY #22478 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22479 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",0)
!CreatureInArea("AR1501")
~ THEN BEGIN 45 // from:
  SAY #22480 /* ~Tu aperçois Salie Marie. Lorsque enfin elle s'aperçoit de ta présence, elle grogne doucement : "Buh-jjjuuuuhr…"~ */
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #22481 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #22482 /* ~"J'avais quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #60478 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Stale_Mary","GLOBAL",1)
Global("Speak_With_Dead","GLOBAL",1)
!CreatureInArea("AR1501")
~ THEN BEGIN 46 // from:
  SAY #22483 /* ~Tu aperçois Salie Marie. Lorsque enfin elle s'aperçoit de ta présence, elle grogne doucement : "Buh-jjjuuuuhr…" (Bonjour.)~ */
  IF ~~ THEN REPLY #22484 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #22485 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.0 42.1
  SAY #22486 /* ~Elle indique le premier des trois portails, le long du mur nord. "F-f-feeehm yyyeeuuh. Puuhnh uh Raah Suhhhlunnh. Muhhhuuushh luuhhhn ahhhlllk-ku-kuuuhh nuuuheehhh. Mhu-bhu-buhhh suuuhhhlhmuuung taannh kuuh juuuvhhhuuu." (Ferme les yeux. Pense au Roi Silencieux. Marche le long de l'alcôve nord-ouest. Mais seulement tant que je vivrai.)~ */
  IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Merci, Marie. Au revoir."~ */ DO ~SetGlobal("Alcove_Portal","AR1500",1)
~ JOURNAL #22488 /* ~Salie Marie m'a dit que pour me rendre à la salle du trône du Roi Silencieux, je pouvais utiliser un portail situé dans ses salles. Je dois fermer les yeux et penser au Roi Silencieux avant de m'avancer dans l'alcôve située dans le coin nord-ouest. Le portail devrait fonctionner tant que Salie Marie est vivante.~ */ EXIT
  IF ~  GlobalGT("Alcove_Portal","AR1500",0)
~ THEN REPLY #22487 /* ~"Merci, Marie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #24104 /* ~"Longgteeeemps." (Longtemps.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 81
END

IF ~~ THEN BEGIN 49 // from:
  SAY #24106 /* ~Salie Marie parle, d'une voix grave. "Moooi noon pluus." (Moi non plus.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 87
END

IF ~~ THEN BEGIN 50 // from:
  SAY #24107 /* ~"Uuihhh." (Oui.)~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 95
END

IF ~~ THEN BEGIN 51 // from:
  SAY #24109 /* ~Salie Marie émet un faible gloutonnement.~ */
  IF ~~ THEN EXTERN ~DHARGRI~ 97
END

IF ~~ THEN BEGIN 52 // from: 14.0
  SAY #50845 /* ~"T-t-tannn na-namiii ? Pr-priiinn meu caaaahn…" (Ton ami ? Prends mon crâne.) Salie Marie se tient la tête entre les mains…~ */
  IF ~~ THEN REPLY #50846 /* ~"Que je prenne… ton crâne ? Mais ça te tuera."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_1","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #50847 /* ~"Euh… d'accord. Merci…"~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50848 /* ~"Attends… j'avais d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #50849 /* ~"On en discutera plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #50850 /* ~Marie secoue lentement la tête de gauche à droite et ses lèvres fendues te dédient un sourire empreint de tristesse. "M-tuuu ? N-n-nnn. Uiii djja meuuu." (Me tuer ? Non. Je suis déjà morte). Elle garde les mains sur les tempes, attendant ta réponse.~ */
  IF ~~ THEN REPLY #50851 /* ~"Merci, Marie. Je vais apporter ton crâne à Lothar."~ */ DO ~Kill(Myself)
~ GOTO 55
  IF ~~ THEN REPLY #50852 /* ~"Non, Marie, je ne peux pas. Je trouverai un autre moyen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mary_2","GLOBALGood",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #50854 /* ~Marie acquiesce. "Uuu a-ban k-keuuu." (Tu as bon cœur.)~ */
  IF ~~ THEN REPLY #50855 /* ~"J'avais d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #50856 /* ~"Au revoir, Marie."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1 53.0
  SAY #50857 /* ~Dans un effroyable bruit qui t'inspire le dégoût, Salie Marie s'arrache la tête des épaules et, peu après qu'elle t'ai donné son crâne, son corps en décomposition s'affaisse dans une odeur nauséabonde.~ */
  IF ~~ THEN REPLY #50858 /* ~Range la tête et pars.~ */ EXIT
END

IF ~  CreatureInArea("AR1501")
~ THEN BEGIN 56 // from:
  SAY #58912 /* ~Marie indique de la tête la porte à double battant située à l'extrémité sud de la salle du trône. "P-P-aaaaahhr maiiiinnnttnnnnahhhnn. Oooon paaaarleeeraa pluuuu taaard…" (Pars, maintenant. On parlera plus tard.)~ */
  IF ~~ THEN REPLY #58913 /* ~Pars.~ */ EXIT
END
