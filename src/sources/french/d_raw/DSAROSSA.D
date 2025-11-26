// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROSSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROSSA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from: 1.1 2.0 3.0 7.0 11.0 12.0 16.0
  SAY #8415 /* ~"Tu penses pouvoir me menacer sans qu'il ne t'en coûte rien ? Imbécile !" Elle prononce trois syllabes étranges, et il te semble qu'on t'a enlevé une partie du cœur. Après quoi, elle appelle : "Gardes ! GARDES !"~ */
  IF ~~ THEN REPLY #8416 /* ~Attaque-la.~ */ DO ~Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8417 /* ~Pars.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #8418 /* ~"Je te conseille de déguerpir. Tu n'arriveras à rien en te battant avec nos gardes. Va-t'en."~ */
  IF ~~ THEN REPLY #8419 /* ~"Je voudrais que tu répondes à quelques questions pour moi."~ */ GOTO 2
  IF ~~ THEN REPLY #8420 /* ~"Si tu ne réponds pas à mes questions, tu auras affaire à moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8421 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8422 /* ~"Je ne répondrai pas à tes questions tant que les gardes auront besoin de toi. Un point c'est tout."~ */
  IF ~~ THEN REPLY #8423 /* ~"Si tu ne réponds pas à mes questions, tu le paieras, ma fille."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8424 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  GlobalGT("SarossaStatChange","GLOBAL",3)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN BEGIN 3 // from:
  SAY #8425 /* ~"Bon. Es-tu revenu pour implorer mon pardon ou as-tu décidé de continuer à me provoquer ?"~ */
  IF ~~ THEN REPLY #8426 /* ~"Je suis là pour te tuer."~ */ GOTO 0
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8427 /* ~"Je suis là pour te présenter mes excuses, Sarossa."~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8428 /* ~"Je suis là pour te présenter mes excuses, Sarossa."~ */ GOTO 13
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN REPLY #8429 /* ~"Je suis là pour te présenter mes excuses, Sarossa."~ */ GOTO 14
  IF ~~ THEN REPLY #8430 /* ~"Ni l'un ni l'autre. Au revoir… Pour l'instant."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 25 22 even though they appear after this state */
~  Global("Sarossa_Saros_Anger","AR0503",0)
GlobalGT("G_Test2","GLOBAL",8)
GlobalLT("G_Test2","GLOBAL",12)
!Global("G_Test2","GLOBAL",10)
~ THEN BEGIN 4 // from:
  SAY #8431 /* ~"Comment oses-tu m'adresser la parole alors que tu as envoyé mon propre frère entre les mains du bourreau ? Je vais enlever toute volonté de ton esprit pour la douleur que tu as causée à notre famille."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8432 /* ~"Saros était ton frère ?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8433 /* ~"Pardonne-moi, Sarossa. Il était coupable et aucun lien de parenté ne peut rien y changer."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8434 /* ~"Saros était ton frère ?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8435 /* ~"Pardonne-moi, Sarossa. Il était coupable et aucun lien de parenté ne peut rien y changer."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8437 /* ~"Lui et Thildon étaient tous les deux coupables, bien que de crimes différents. Tous deux ont dû affronter la loi."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~~ THEN REPLY #8438 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.4 42.0 42.4
  SAY #8436 /* ~"C'était mon frère. Aurais-tu agi différemment si tu l'avais su ?"~ */
  IF ~~ THEN REPLY #8439 /* ~Vérité : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8440 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8440 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Mensonge : "Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8441 /* ~"Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_1","GLOBALLaw",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 9.0 9.1 9.2 9.3 42.1
  SAY #8442 /* ~"Tu le crois vraiment, n'est-ce pas ? J'adore mon frère, mais tu es intègre et ça, je ne peux pas te l'enlever."~ */
  IF ~~ THEN REPLY #8443 /* ~"Bien. Alors, réponds à quelques questions, s'il te plaît."~ */ GOTO 18
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8444 /* ~"Alors, me rendras-tu la partie de moi-même que tu m'as volée ?"~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8445 /* ~"Alors, me rendras-tu la partie de moi-même que tu m'as volée ?"~ */ GOTO 13
  IF ~  Global("SarossaStatChange","GLOBAL",6)
~ THEN REPLY #8446 /* ~"Alors, me rendras-tu la partie de moi-même que tu m'as volée ?"~ */ GOTO 14
  IF ~~ THEN REPLY #8447 /* ~Vérité : "Pardon de vous avoir causé du chagrin, à toi et aux tiens."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 8
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8448 /* ~Mensonge : "Pardon de vous avoir causé du chagrin, à toi et aux tiens."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8448 /* ~Mensonge : "Pardon de vous avoir causé du chagrin, à toi et aux tiens."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Mensonge : "Pardon de vous avoir causé du chagrin, à toi et aux tiens."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Mensonge : "Pardon de vous avoir causé du chagrin, à toi et aux tiens."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8449 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.5 30.1
  SAY #8450 /* ~"Tu penses vraiment pouvoir tromper quelqu'un qui peut lire dans le cœur des hommes ? Imbécile." Elle prononce une seule syllabe, qui semble perturber l'atmosphère, arrache une partie de ton être pour le plonger dans l'éther. "Dégage, chair déchiquetée, et ne m'adresse plus la parole."~ */
  IF ~~ THEN REPLY #8451 /* ~"Je reviendrai. Tu vas le payer."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ GOTO 0
  IF ~~ THEN REPLY #8452 /* ~"Au revoir, Sarossa. Je n'oublierai pas."~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5 6.4
  SAY #8453 /* ~Ses yeux deviennent vagues, comme si elle apercevait quelque chose au-delà de tes cinq sens. "Je te pardonne, du moment que tu gardes présent à l'esprit que toutes tes actions ont des conséquences, que tu t'en rendes compte ou non, et que tu peux causer de la peine par ton ignorance. Puissent ces mots t'être utiles."~ */
  IF ~~ THEN REPLY #8454 /* ~"Merci. Peux-tu répondre à quelques questions pour moi ?"~ */ GOTO 18
  IF ~~ THEN REPLY #8455 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 4.3 42.2 42.3
  SAY #8456 /* ~"C'était mon frère, et c'est maintenant au tour de mon père de mourir. J'espère que ton cœur peut supporter d'entendre toute la peine que ça cause au monde."~ */
  IF ~~ THEN REPLY #8457 /* ~"Je ne peux pas mettre de côté ma foi en la loi au profit d'un seul individu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_2","GLOBALLaw",1)
~ GOTO 6
  IF ~~ THEN REPLY #8458 /* ~"Certainement. Je l'ai déjà fait et il y a des chances pour que je recommence."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_4","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8459 /* ~"Si j'avais su que c'était ton frère, je ne l'aurais pas mêlé à tout ça."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8460 /* ~"Cette pensée ne me réconforte guère. Mais je crois que ce genre de chagrin mène souvent à de meilleures choses. Même si l'on n'en voit pas tout de suite les bénéfices, on apprend à reconnaître les bonnes choses lorsque la peine s'atténue."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 3.1 6.1
  SAY #8461 /* ~"Alors, demande pardon."~ */
  IF ~~ THEN REPLY #8462 /* ~Vérité : "Je n'avais pas le droit de te parler comme ça. J'ai parlé et agi sans réfléchir. Je tâcherai de faire plus attention à l'avenir."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8463 /* ~Mensonge : "Je n'avais pas le droit de te parler comme ça. J'ai parlé et agi sans réfléchir. Je tâcherai de faire plus attention à l'avenir."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8464 /* ~"Non."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.2 5.3 6.6 6.7 10.1 13.1 30.2 30.3
  SAY #8465 /* ~"Ne me mens pas, demi-homme, ou je t'arracherai la vie." Elle crache une autre syllabe bizarroïde et tu es soudain pris de convulsions, comme si on t'arrachait une autre partie de l'esprit. "Va-t'en, maintenant. Je n'ai pas envie de te parler."~ */
  IF ~~ THEN REPLY #8466 /* ~Attaque-la.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8467 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 13.2 14.2
  SAY #8468 /* ~"Si tu n'as pas de chagrin, moi non plus. Va-t'en. Maintenant."~ */
  IF ~~ THEN REPLY #8469 /* ~Attaque-la.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8470 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.2
  SAY #8471 /* ~"Alors, demande pardon."~ */
  IF ~~ THEN REPLY #8472 /* ~Vérité : "Je n'avais pas le droit de te parler comme ça. J'ai parlé et agi sans réfléchir. Je tâcherai de faire plus attention à l'avenir."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8473 /* ~Mensonge : "Je n'avais pas le droit de te parler comme ça. J'ai parlé et agi sans réfléchir. Je tâcherai de faire plus attention à l'avenir."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8474 /* ~"Non."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 3.3 6.3
  SAY #8475 /* ~"Alors, demande pardon."~ */
  IF ~~ THEN REPLY #8476 /* ~Vérité : "Je n'avais pas le droit de te parler comme ça. J'ai parlé et agi sans réfléchir. Je tâcherai de faire plus attention à l'avenir."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8477 /* ~Mensonge : "Je n'avais pas le droit de te parler comme ça. J'ai parlé et agi sans réfléchir. Je tâcherai de faire plus attention à l'avenir."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8478 /* ~"Non."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 10.0 13.0 14.0
  SAY #8479 /* ~Sa bouche prononce de nouveau les mêmes syllabes, et tu sens tout ton être chamboulé, comme si l'on avait ajouté des éléments à l'essence de ta personne. "Tu es libre, demi-homme. Que veux-tu ?"~ */
  IF ~~ THEN REPLY #8480 /* ~"Pourquoi me traites-tu toujours de demi-homme ?"~ */ JOURNAL #67281 /* ~Sarossa, la sorcière de la Grande Fonderie, m'a dit qu'elle m'appelait demi-homme car elle ne parvenait pas à percevoir mon âme. Elle ignore si cela signifie que je n'en ai pas ou alors que je me suis transcendé, mais elle continue tout de même de m'appeler ainsi.~ */ GOTO 17
  IF ~~ THEN REPLY #8481 /* ~"Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 18
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8482 /* ~"Parle-moi de ta famille."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8483 /* ~"Parle-moi de ta famille."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8484 /* ~"Parle-moi de ta famille."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8485 /* ~"Parle-moi de ta famille."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8487 /* ~"Tout le monde semble avoir un talent spécial. Parle-moi du tien."~ */ GOTO 22
  IF ~~ THEN REPLY #8488 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.4 6.8 14.1 30.4
  SAY #8486 /* ~"Tu ne respectes que toi, n'est-ce pas ? Je ne supporte cela chez personne, même chez les sujets les plus doués. Adieu, demi-homme. GARDES !"~ */
  IF ~~ THEN REPLY #8489 /* ~Attaque-la.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8490 /* ~Pars.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 18.0
  SAY #8491 /* ~"Je te surnomme demi-homme parce que je ne vois pas ton esprit. Tous les autres mortels qui traversent ma vie me montrent leur esprit comme une étincelle lumineuse ou un charbon ardent. Tu ne montres rien. Je te surnomme demi-homme parce que je ne vois pas ton esprit comme je vois celui des autres. Que ce soit parce que tu n'as pas d'âme, ou parce que tu as transcendé, je ne puis le dire. D'une manière ou d'une autre, tu n'es qu'un demi-homme. Quant à savoir ce qu'est l'autre moitié, je ne puis le dire."~ */
  IF ~~ THEN REPLY #8492 /* ~"Je vois. Alors, réponds à d'autres questions pour moi."~ */ GOTO 18
  IF ~~ THEN REPLY #8493 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.0 8.0 15.1 17.0 19.4 20.4 21.4 22.2 23.4 24.0 24.1 25.0 26.0 28.2 29.0 31.0 32.1 35.0 36.0 37.0 38.0 41.0 43.0
  SAY #8494 /* ~"Quelles réponses cherches-tu, demi-homme ?"~ */
  IF ~~ THEN REPLY #8495 /* ~"Pourquoi me traites-tu de demi-homme ?"~ */ JOURNAL #67281 /* ~Sarossa, la sorcière de la Grande Fonderie, m'a dit qu'elle m'appelait demi-homme car elle ne parvenait pas à percevoir mon âme. Elle ignore si cela signifie que je n'en ai pas ou alors que je me suis transcendé, mais elle continue tout de même de m'appeler ainsi.~ */ GOTO 17
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8496 /* ~"Il faut que je te parle de ton père."~ */ GOTO 39
  IF ~~ THEN REPLY #8497 /* ~"Qui es-tu ?"~ */ GOTO 38
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8498 /* ~"Parle-moi de ta famille."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8499 /* ~"Parle-moi de ta famille."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8500 /* ~"Parle-moi de ta famille."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8501 /* ~"Parle-moi de ta famille."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8502 /* ~"Tout le monde semble avoir un talent spécial. Parle-moi du tien."~ */ GOTO 22
  IF ~~ THEN REPLY #8503 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 18.3
  SAY #8504 /* ~"Mon frère Saros est un enfant de la Grande Fonderie, mais je crois bien qu'il n'a jamais embrassé la philosophie des Adorateurs de la Source. Mon père est un régisseur, et ses voyages l'ont mené bien loin de la Grande Fonderie, dans des endroits que la plupart des mortels ne rêvent même pas d'atteindre."~ */
  IF ~~ THEN REPLY #8505 /* ~"Dis-m'en plus sur ton frère."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8506 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8507 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8508 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 26
  IF ~~ THEN REPLY #8509 /* ~"Je vois. Peux-tu répondre à d'autres questions ?"~ */ GOTO 18
  IF ~~ THEN REPLY #8510 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 15.5 18.4 18.6
  SAY #8511 /* ~Sa voix est empreinte d'une pointe d'amertume. "Mon frère, comme tu le sais, attend son exécution. Mon père, quant à lui, voyage beaucoup dans le multivers, à la recherche de réponses à des questions que de nombreux mortels se posent encore."~ */
  IF ~~ THEN REPLY #8512 /* ~"Dis-m'en plus sur ton frère."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8513 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8514 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8515 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 26
  IF ~~ THEN REPLY #8516 /* ~"Je vois. Peux-tu répondre à d'autres questions ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 15.4 18.5
  SAY #8517 /* ~"Fort heureusement, l'expérience a considérablement assagi mon frère Saros. Mon père est un régisseur, un homme que les voyages ont mené bien loin de la Grande Fonderie, dans des endroits que la plupart des mortels ne rêvent même pas d'atteindre."~ */
  IF ~~ THEN REPLY #8518 /* ~"Dis-m'en plus sur ton frère."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8519 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8520 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8521 /* ~"Dis-m'en plus sur ton père."~ */ GOTO 26
  IF ~~ THEN REPLY #8522 /* ~"Je vois. Peux-tu répondre à d'autres questions ?"~ */ GOTO 18
  IF ~~ THEN REPLY #8523 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 22 // from: 15.6 18.7 32.0
  SAY #8524 /* ~"Je ne sais pas. C'est comme si ça avait toujours fait partie de moi. Je ne peux que supposer que mes vies passées et mes convictions dans cette vie m'ont conféré une compréhension particulière de la nature des mortels. J'ai le don de déceler du potentiel dans chaque être. En lisant le vrai nom gravé sur tel ou tel être mortel, et en écorchant quelque peu ce nom, je peux changer la nature de ce potentiel, et ainsi changer la nature de son propriétaire."~ */
  IF ~~ THEN REPLY #8525 /* ~"Peux-tu m'apprendre ce talent ?"~ */ GOTO 28
  IF ~~ THEN REPLY #8526 /* ~"Tu peux me changer ?"~ */ GOTO 28
  IF ~~ THEN REPLY #8527 /* ~"Intéressant. Réponds à d'autres questions pour moi."~ */ GOTO 18
  IF ~~ THEN REPLY #8528 /* ~"Le cosmos fonctionne bizarrement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 21.0
  SAY #8529 /* ~"Saros est un être impétueux et impulsif, qui se laisse facilement emporter par son caractère. Il aime prouver qu'il est l'égal de tout ce qui vit dans les plans, il est plein de fougue. Je crois qu'il se considère plus Sensat qu'Homme-Dieu, ce qui renforce d'autant plus mon impression que les Sensats sont les êtres les plus immatures de toutes les factions de Sigil."~ */
  IF ~~ THEN REPLY #8530 /* ~"Pourquoi est-ce que ce sont les plus immatures ?"~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8531 /* ~"Parle-moi de ton père."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8532 /* ~"Parle-moi de ton père."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8533 /* ~"Parle-moi de ton père."~ */ GOTO 26
  IF ~~ THEN REPLY #8534 /* ~"Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 18
  IF ~~ THEN REPLY #8535 /* ~"Merci… Et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 23.1
  SAY #8536 /* ~"Mon père est un régisseur des Adorateurs de la Source et, tout au long de sa vie, il est resté fidèle à sa conviction selon laquelle nous sommes ici dans un but précis. Tout ce que j'espère, c'est qu'il est encore fidèle à cette conviction et qu'il reste persuadé que ses enfants l'aiment."~ */
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8537 /* ~"Alors, je lui ferai part de tes espérances. Peux-tu répondre à d'autres questions pour moi ?"~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",2)
~ THEN REPLY #8538 /* ~"Ça a l'air d'être un homme bien. Réponds à d'autres questions pour moi, s'il te plaît."~ */ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",1)
~ THEN REPLY #8539 /* ~"Ça a l'air d'être un homme bien. Au revoir."~ */ EXIT
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8540 /* ~"Alors, je lui ferai part de tes espérances. Au revoir."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
!Dead("Sandoz")
~ THEN BEGIN 25 // from: 19.2 20.2 21.2 23.2
  SAY #8541 /* ~"Grâce à tes paroles, mon père Sandoz est vivant et se porte bien. Tout ce que j'espère, c'est que, quelle que soit la force qui l'a mis dans cet état - car je ne peux pas croire qu'il s'y soit mis tout seul - elle paiera pour ses méfaits. Que puis-je d'autre pour toi ?"~ */
  IF ~~ THEN REPLY #8542 /* ~"Tu peux répondre à quelques questions pour moi."~ */ GOTO 18
  IF ~~ THEN REPLY #8543 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
Dead("Sandoz")
~ THEN BEGIN 26 // from: 19.3 20.3 21.3 23.3
  SAY #8544 /* ~"Il a pris sa propre vie, comme tu le sais. Je n'ai que mépris pour ceux qui agissent de la sorte. Si la vie est un test, le fait de passer directement à la fin ne peut pas apporter de vraies réponses. Je renie mon père. Pouah !"~ */
  IF ~~ THEN REPLY #8545 /* ~"Bien. Réponds à d'autres questions pour moi."~ */ GOTO 18
  IF ~~ THEN REPLY #8546 /* ~"Euh… Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0
  SAY #8547 /* ~"Non. Il était toujours impulsif, prêt à montrer sa bravoure contre ce cruel cosmos, et voilà qu'il ne le peut plus. Je n'accuserai personne ici, et je n'en parlerai même pas. Si tu veux en savoir plus, viens me voir plus tard. Au revoir."~ */
  IF ~~ THEN REPLY #8548 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.0 22.1
  SAY #8549 /* ~"Je n'ai pas encore trouvé comment apprendre ça aux autres. C'est comme apprendre les couleurs à un aveugle ou les sons à un sourd. Mais je peux te transformer… si tu en paies le prix."~ */
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",0)
~ THEN REPLY #8550 /* ~"Quel est le prix ?"~ */ GOTO 30
  IF ~~ THEN REPLY #8551 /* ~"Je trouve que ce n'est pas très juste."~ */ GOTO 31
  IF ~~ THEN REPLY #8552 /* ~"Laisse tomber. Réponds à d'autres questions pour moi."~ */ GOTO 18
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",1)
~ THEN REPLY #8553 /* ~"Quel est le prix ?"~ */ GOTO 43
  IF ~~ THEN REPLY #61301 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0
  SAY #8554 /* ~"Pourquoi ce sont les plus immatures ? Parce que, tout comme les enfants, ils ne comprennent pas qu'il y a plus au-delà du monde des sens, au-delà de ce que l'on peut voir, entendre, goûter, toucher et sentir. Regarde autour de toi. Tu es dans les Plans Extérieurs. C'est une croyance solide, mais ça ne signifie pas que cette matière apparemment rude peut être appréhendée par les sens. C'est de la croyance, et aucune caractéristique physique ne peut l'atteindre."~ */
  IF ~~ THEN REPLY #8555 /* ~"Je vois. Parle-moi d'autre chose."~ */ GOTO 18
  IF ~~ THEN REPLY #8556 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #8557 /* ~"Dis-moi. Es-tu d'accord avec la philosophie des Hommes-Dieux ?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #8558 /* ~Vérité : "Oui."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
SetGlobal("Sarossa_ChangeUp","GLOBAL",1)
~ JOURNAL #67283 /* ~J'ai dit à Sarossa la sorcière que je croyais en la philosophie des Hommes-Dieux et elle a amélioré mes facultés de discernement. Je me sens désormais plus sage.~ */ GOTO 32
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8559 /* ~Mensonge : "Oui."~ */ JOURNAL #67282 /* ~J'ai menti à Sarossa en lui disant que je croyais en les Hommes-Dieux et cette sorcière m'a vidé de mon énergie d'un seul mot.~ */ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8559 /* ~Mensonge : "Oui."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Mensonge : "Oui."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Mensonge : "Oui."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8560 /* ~"Non."~ */ GOTO 33
  IF ~~ THEN REPLY #8561 /* ~"Je n'en sais pas suffisamment pour t'en parler."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY #8562 /* ~"Non. Ce n'est pas juste. Mais c'est mon don, et ce sont mes tests, et je suis libre de choisir ce que je veux faire de mes dons. Bon. En quoi puis-je t'être utile ?"~ */
  IF ~~ THEN REPLY #8563 /* ~"Réponds à quelques questions."~ */ GOTO 18
  IF ~~ THEN REPLY #8564 /* ~"Tu ne peux pas, en tout cas pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #8565 /* ~"Dans ce cas, je ne vois aucun inconvénient à partager mon don avec toi." Elle prononce une syllabe étrange, qui te secoue jusqu'aux entrailles et raffermit ta chair.~ */
  IF ~~ THEN REPLY #8566 /* ~"Comment as-tu fait ça ?"~ */ GOTO 22
  IF ~~ THEN REPLY #8567 /* ~"Merci ! Réponds à quelques questions pour moi, s'il te plaît."~ */ GOTO 18
  IF ~~ THEN REPLY #8568 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #8569 /* ~"Tu n'aimes pas cette philosophie ? Pourquoi ?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #8570 /* ~"Parce que j'ai déjà rejoint les Hommes-Poussière."~ */ GOTO 35
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #8571 /* ~"Parce que j'ai déjà rejoint les Sensats."~ */ GOTO 35
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #8572 /* ~"Parce que j'ai déjà rejoint les Anarchistes."~ */ GOTO 35
  IF ~~ THEN REPLY #8573 /* ~"Je crois qu'elle est pire que celle des Hommes-Poussière. Au moins, ils ne font pas de sermon - ils acceptent et passent à autre chose."~ */ GOTO 35
  IF ~~ THEN REPLY #8574 /* ~"J'y réfléchis encore. À toi de me convaincre."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.6 33.4
  SAY #8575 /* ~"Va parler à Keldor de Durian. C'est un régisseur chargé du recrutement. Tu le trouveras dans la Chambre des Orateurs de la Grande Fonderie. Au revoir."~ */
  IF ~~ THEN REPLY #8576 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 33.2 33.3
  SAY #8577 /* ~"Dans ce cas, je n'essaierai pas de t'éloigner de tes croyances. Que puis-je d'autre pour toi ?"~ */
  IF ~~ THEN REPLY #8578 /* ~"Tu peux répondre à quelques questions."~ */ GOTO 18
  IF ~~ THEN REPLY #8579 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 36 // from:
  SAY #8580 /* ~Tu aperçois une jeune femme. Lorsque tu t'approches d'elle, ses yeux se mettent à fixer les tiens. Tu as l'impression désagréable qu'elle ne fait pas qu'examiner la couleur de tes yeux. Son regard est bien plus profond que ça. "Bonjour, étranger. Comment ça va, aujourd'hui ?"~ */
  IF ~~ THEN REPLY #8581 /* ~"Bien. Je voudrais que tu répondes à quelques questions pour moi."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8582 /* ~"Es-tu Sarossa ? Il faut que je te parle de ton père."~ */ GOTO 39
  IF ~~ THEN REPLY #8583 /* ~"Bien. Au revoir."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 37 // from:
  SAY #8584 /* ~"Bonjour, homme blessé. Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #8585 /* ~"Des réponses."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8586 /* ~"Il faut que je te parle de ton père."~ */ GOTO 39
  IF ~~ THEN REPLY #8587 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 18.2
  SAY #8588 /* ~"Je suis Sarossa, fille de Sandoz, l'un des régisseurs des Hommes-Dieux."~ */
  IF ~~ THEN REPLY #8589 /* ~"Peux-tu répondre à quelques questions pour moi ?"~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8590 /* ~"Il faut que je te parle de ton père."~ */ GOTO 39
  IF ~~ THEN REPLY #8591 /* ~"Je vois. Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.1 36.1 37.1 38.1
  SAY #8592 /* ~"Qu'est-ce que tu veux savoir sur lui ?"~ */
  IF ~~ THEN REPLY #8593 /* ~"Il s'est enfermé dans sa tour et il menace de se tuer. Parle-moi de lui et je trouverai peut-être un moyen de l'en empêcher."~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8594 /* ~"Tu mens ! Mon père est en voyage ! Il ne doit pas revenir avant plusieurs jours !"~ */
  IF ~~ THEN REPLY #8595 /* ~"Et bien, va demander à Keldor si tu ne me crois pas. Pour que ton père vive, j'ai besoin de ton aide."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 41
  IF ~~ THEN REPLY #8596 /* ~"Tu ne me crois pas ? Très bien. Assumes-en la responsabilité. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #8597 /* ~"Je vais te dire ce qu'il faut." Elle s'arrête et te regarde fixement. "Tu dis la vérité, n'est-ce pas ? Je ne lis aucune tromperie dans ton cœur à ce sujet. Fort bien. Voici ce que je veux que tu dises à mon père : toute vie est un test. Nul ne peut en atteindre directement la fin. Ce n'est pas la solution. Seuls la Garde Fatale et les Hommes-Poussière croient en une décadence totale - et tu as toujours méprisé les membres de ces factions. Souviens-t'en."~ */
  IF ~~ THEN REPLY #8598 /* ~"Je transmettrai le message. Mais d'abord, je voudrais te poser des questions."~ */ GOTO 18
  IF ~~ THEN REPLY #8599 /* ~"Je transmettrai le message. Au revoir."~ */ EXIT
END

IF WEIGHT #7 ~  False()
Global("G_Test2","GLOBAL",11)
~ THEN BEGIN 42 // from:
  SAY #8600 /* ~"Comment oses-tu m'adresser la parole alors que tu as envoyé mon propre frère entre les mains du bourreau ? Je vais enlever toute volonté de ton esprit pour la douleur que tu as causée à notre famille."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8601 /* ~"Saros était ton frère ?"~ */ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8602 /* ~"Pardonne-moi, Sarossa. Il était coupable et aucun lien de parenté ne peut rien y changer."~ */ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8603 /* ~"Saros était ton frère ?"~ */ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8604 /* ~"Pardonne-moi, Sarossa. Il était coupable et aucun lien de parenté ne peut rien y changer."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8605 /* ~"Lui et Thildon étaient tous les deux coupables, bien que de crimes différents. Tous deux ont dû affronter la loi."~ */ GOTO 5
  IF ~~ THEN REPLY #8606 /* ~"Je ne peux pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 28.3
  SAY #61302 /* ~"J'ai déjà prononcé les mots qui changeront ton cœur. Le reste de toi devra apprendre à suivre."~ */
  IF ~~ THEN REPLY #61303 /* ~"Entendu. Alors réponds à quelques autres questions."~ */ GOTO 18
  IF ~~ THEN REPLY #61304 /* ~"Au revoir."~ */ EXIT
END
