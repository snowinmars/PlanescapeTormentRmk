// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38515 /* ~Cette femme-goule semble exercer plus d'autorité que celles qui l'entourent. Ses yeux ont l'air plus clairs et moins sauvages. "Je peux… t'aider, tas de viande ?"~ */
  IF ~~ THEN REPLY #38516 /* ~"Qui es-tu ? Qu'est-ce que tu fais ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38565 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #38566 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0
  SAY #38517 /* ~"Moi ? Je suis… Alaina. Et voici mes goules. Nous nous livrons à la reconnaisssssance et à la chassssse. Nous cherchons plus de territoires… nous cherchons plusssss de *nourriture*. Et maintenant que j'ai répondu à tes quesssstions… dis-moi ccccce que TU fais icccci ?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38518 /* ~"Je cherche une sphère en bronze."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38561 /* ~"Je cherche une carafe d'eau."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38562 /* ~"Je cherche une crypte pleine de pièges."~ */ GOTO 6
  IF ~~ THEN REPLY #38563 /* ~"Je me balade, c'est tout."~ */ GOTO 9
  IF ~~ THEN REPLY #38564 /* ~"Je ne sais pas."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0
  SAY #38519 /* ~"Une sssphère… en bronze ? On n'a rien trouvé… de tel. Explore cet endroit dans ssses moindres recoins et tu trouveras peut-être cccce que tu cherches."~ */
  IF ~~ THEN REPLY #38520 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38560 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.2 7.0 8.0 9.1 10.0 11.1 12.0
  SAY #38521 /* ~"Je répondrai… à ce que je pourrai."~ */
  IF ~~ THEN REPLY #38522 /* ~"Qui es-tu ? Qu'est-ce que tu fais ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38523 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38556 /* ~"Je cherche une sphère en bronze."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38557 /* ~"Je cherche une carafe d'eau."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38558 /* ~"Je cherche une crypte pleine de pièges."~ */ GOTO 6
  IF ~~ THEN REPLY #38559 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.1
  SAY #38524 /* ~"Ce ssssont les Nattttions Englouties. Un terrain de chasssse pour nous. CCC'est… là que les chassssseurs règnent. Qu'est-ccce que tu veux ?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38525 /* ~"Je cherche une sphère en bronze."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38526 /* ~"Je cherche une carafe d'eau."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38530 /* ~"Je cherche une crypte pleine de pièges."~ */ GOTO 6
  IF ~~ THEN REPLY #38543 /* ~"Je me balade, c'est tout."~ */ GOTO 9
  IF ~~ THEN REPLY #38551 /* ~"Je ne sais pas."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 4.1
  SAY #38527 /* ~"Nous n'avons pas trouvé la sssource d'eau ici, mais ça sssemble plus humide que l'esst. Cherche par-là et tu la trouveras peut-être."~ */
  IF ~~ THEN REPLY #38528 /* ~"J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38529 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.4 4.2
  SAY #38531 /* ~"Il y a des cryptes tout autour de nous et nous protégeons leursss habitants… Je ne te le dirai pas."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38532 /* ~"C'est très important pour moi de la trouver."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38536 /* ~"Il faut que je la trouve. C'est très important."~ */ GOTO 8
  IF ~~ THEN REPLY #38541 /* ~"Très bien. Alors, réponds à d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38542 /* ~"Très bien. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #38533 /* ~Le capitaine des goules te regarde froidement, tout en t'évaluant. "Cherche au sssud et à l'essst. Ne dérange pas les autres habitants de ccces cryptes ou tu *sssoufriras*."~ */
  IF ~~ THEN REPLY #38534 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38535 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #38537 /* ~Le capitaine des goules te regarde et la chaleur se lit dans ses yeux. "Ça m'est complètement *ÉGAL*, tas de viande. Je ne te dirai *RIEN*."~ */
  IF ~~ THEN REPLY #38538 /* ~"Bon, bon. Alors, réponds juste à d'autres questions."~ */ GOTO 3
  IF ~~ THEN REPLY #38539 /* ~"Réponds-moi ou tu mourras."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38540 /* ~"Merci quand même de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 4.3
  SAY #38544 /* ~"Ccce n'est… pas un bon endroit pour ssse promener. Ccc'est dangereux. Nous avons délimité les frontières de sssécurité avec des totems… Ne t'en écarte pas et tu ssseras en ssécurité. Attention aux habitants - ils sssont redoutables et opèrent en groupes."~ */
  IF ~~ THEN REPLY #38545 /* ~"Quel genre d'habitants ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38549 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38550 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #38546 /* ~"Cccet endroit a été envahi… par des trocopotocas, des créatures blanches à cornes d'un appétit et d'une cruauté sssans limites. Beaucoup de vargouilles sss'installent aussssi ici, leur nombre ne cesse d'augmenter à cause des imbécccciles qui ssss'aventurent ausssssi loin dans les catacombes."~ */
  IF ~~ THEN REPLY #38547 /* ~"Je vois… Tu peux répondre à d'autres questions ?"~ */ GOTO 3
  IF ~~ THEN REPLY #38548 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.4 4.4
  SAY #38552 /* ~"Tu sais pas, hein ? Tu devrais… peut-être partir. Ccc'est dangereux ici… pour des créatures comme toi."~ */
  IF ~~ THEN REPLY #38553 /* ~"Dangereux ? Dangereux comment ?"~ */ GOTO 10
  IF ~~ THEN REPLY #38554 /* ~"J'ai juste quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38555 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38567 /* ~"Te revoilà, hein ? Tu veux quoi ?"~ */
  IF ~~ THEN REPLY #38568 /* ~"Je voulais les réponses à certaines questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #38569 /* ~"Rien. Au revoir."~ */ EXIT
END
