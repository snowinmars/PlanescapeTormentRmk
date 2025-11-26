// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUDGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUDGE~

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #54119 /* ~Cet homme au visage amer hausse un sourcil tandis que tu t'approches. Il parle avec le ton d'un homme arrogant, suralimenté, de la noblesse. "Prends garde, tu as interrompu un processus officiel. Et surveille ton langage : je suis un magistrat puissant ici et je ne te souhaite pas de partager…" Il indique l'officiel s'apprêtant à être exécuté. "… le destin *pénible* de cet homme."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54120 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #54121 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #54122 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #54123 /* ~"Vous ne pouvez pas exécuter cet homme - ce n'est qu'un bouc émissaire. C'est *mal*. C'est ce genre de choses qui a causé le glissement de Maudith dans les Carcères… et c'est ce que nous devons arrêter pour remettre la ville sur l'Outreterre."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #54124 /* ~"Vous ne pouvez pas exécuter cet homme - ce n'est qu'un bouc émissaire. C'est *mal*. C'est ce genre de choses qui a causé le glissement de Maudith dans les Carcères… et c'est ce que nous devons arrêter pour remettre la ville sur l'Outreterre."~ */ GOTO 4
  IF ~~ THEN REPLY #54125 /* ~"Un 'processus officiel' ? J'en doute. Tu n'exécuteras pas cet homme."~ */ GOTO 1
  IF ~~ THEN REPLY #54126 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.5 4.3 6.5
  SAY #54127 /* ~"Oh ?" Il baisse un sourcil et hausse l'autre. "Alors tu voudrais te mettre en travers de la justice ? Et *comment* entends-tu arrêter cette exécution ?"~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN EXTERN ~DVHAIL~ 155
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54128 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57330 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57333 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57336 /* ~"Vous ne pouvez pas exécuter cet homme - ce n'est qu'un bouc émissaire. C'est *mal*. C'est ce genre de choses qui a causé le glissement de Maudith dans les Carcères… et c'est ce que nous devons arrêter pour remettre la ville sur l'Outreterre."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57339 /* ~"Vous ne pouvez pas exécuter cet homme - ce n'est qu'un bouc émissaire. C'est *mal*. C'est ce genre de choses qui a causé le glissement de Maudith dans les Carcères… et c'est ce que nous devons arrêter pour remettre la ville sur l'Outreterre."~ */ GOTO 4
  IF ~~ THEN REPLY #57341 /* ~"En tuant le bourreau… et toi, s'il le faut."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Judge_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #57343 /* ~"Pas grave. Je n'en ai pas l'intention. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57345 /* ~Le juge blêmit. "P-p-peut-être avons-nous été un p-peu rapides dans notre jugement, Rectifieur. Gardes ! Libérez cet homme !" Il sourit docilement à Vhailor. "Merci de votre aide opportune, monsieur."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 156
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY #57347 /* ~Les deux juges sursautent. "Que… tu *oses* ? Gardes ! Capturez cet homme ! Tuez-le si nécessaire !"~ */
  IF ~~ THEN REPLY #57348 /* ~Attaque le juge.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57350 /* ~Attaque les gardes.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"CrstGrd")
~ EXIT
  IF ~~ THEN REPLY #57352 /* ~Attaque le bourreau.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"Execute")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4 1.5 6.4
  SAY #57353 /* ~"*Tort* ? Tu oublies un peu vite que je suis magistrat. C'est moi qui décide de ce qui est juste ou injuste dans cette ville !"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57354 /* ~"Mais s'il est exécuté, ça ne fera qu'augmenter le chaos qui a envoyé cette ville dans les Carcères. Nous devons arrêter cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57357 /* ~"Mais s'il est exécuté, ça ne fera qu'augmenter le chaos qui a envoyé cette ville dans les Carcères. Nous devons arrêter cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57359 /* ~"Mais s'il est exécuté, ça ne fera qu'augmenter le chaos qui a envoyé cette ville dans les Carcères. Nous devons arrêter cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #57361 /* ~"Quand bien même, tu n'exécuteras pas cet homme."~ */ GOTO 1
  IF ~~ THEN REPLY #57363 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.3 1.1 1.2 1.3 1.4 4.0 4.1 4.2 6.0 6.1 6.2 6.3
  SAY #57364 /* ~Le juge fronce les sourcils, qu'il a épais, dessinant ainsi un V blanc et broussailleux. Son regard va de toi à l'officiel, puis revient à toi. "Ta plaidoirie est à la fois astucieuse et convaincante… Je te remercie, ton aide tombe à pic. La ville et l'accusé l'apprécient. Il n'y aura plus d'exécutions décidées à la hâte. Gardes ! Libérez cet homme."~ */
  IF ~~ THEN REPLY #57365 /* ~"Merci. Au revoir."~ */ DO ~AddexperienceParty(225000)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #57378 /* ~"Encore ? Et qu'y a-t-il, cette fois-ci ?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57379 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57380 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57381 /* ~"Cet homme n'est qu'un bouc émissaire. Si vous l'exécutez, ça ne fera qu'accroître le chaos qui a projeté cette ville dans les Carcères… Nous devons mettre fin à cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57382 /* ~"Vous ne pouvez pas exécuter cet homme - ce n'est qu'un bouc émissaire. C'est *mal*. C'est ce genre de choses qui a causé le glissement de Maudith dans les Carcères… et c'est ce que nous devons arrêter pour remettre la ville sur l'Outreterre."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57383 /* ~"Vous ne pouvez pas exécuter cet homme - ce n'est qu'un bouc émissaire. C'est *mal*. C'est ce genre de choses qui a causé le glissement de Maudith dans les Carcères… et c'est ce que nous devons arrêter pour remettre la ville sur l'Outreterre."~ */ GOTO 4
  IF ~~ THEN REPLY #57384 /* ~"Je ne peux pas accepter ça… tu n'exécuteras pas cet homme."~ */ GOTO 1
  IF ~~ THEN REPLY #57385 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #57386 /* ~Cet homme au visage amer hausse un sourcil lorsque tu approches. "Tu ne pourras rien faire d'autre que m'énerver… je te suggère de partir."~ */
  IF ~~ THEN REPLY #57387 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #57389 /* ~"Encore ?" Le juge soupire, exaspéré. "Tu ne pourras rien faire d'autre que m'énerver… je te suggère de partir."~ */
  IF ~~ THEN REPLY #57390 /* ~Pars.~ */ EXIT
END
