// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38437 /* ~Cette femme-goule semble exercer plus d'autorité que celles qui l'entourent. Ses yeux ont l'air plus clairs et moins sauvages. "Je peux… t'aider, tas de viande ?"~ */
  IF ~~ THEN REPLY #38438 /* ~"Qui es-tu ? Qu'est-ce que tu fais ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38439 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #38440 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #38441 /* ~"Moi ? Je suis… Alaina. Et voici mes goules. Nous nous livrons à la reconnaisssssance et à la chassssse. Nous cherchons plus de territoires… plusssss de *nourriture*. Et maintenant que j'ai répondu à tes quesssstions… dis-moi ccccce que TU fais icccci ?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38442 /* ~"Je cherche une sphère en bronze."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38443 /* ~"Je cherche une carafe d'eau."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38444 /* ~"Je cherche une crypte pleine de pièges."~ */ GOTO 5
  IF ~~ THEN REPLY #38445 /* ~"Je me balade, c'est tout."~ */ GOTO 6
  IF ~~ THEN REPLY #38446 /* ~"Je ne sais pas."~ */ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.1 8.1
  SAY #38447 /* ~"Ce ssssont les Nattttions Englouties. Un terrain de chasssse pour noussss. CCC'est… là que les chassssseurs règnent. Qu'est-ccce que tu veux ?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38448 /* ~"Je cherche une sphère en bronze."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38449 /* ~"Je cherche une carafe d'eau."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38450 /* ~"Je cherche une crypte pleine de pièges."~ */ GOTO 5
  IF ~~ THEN REPLY #38451 /* ~"Je me balade, c'est tout."~ */ GOTO 6
  IF ~~ THEN REPLY #38452 /* ~"Je ne sais pas."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.2
  SAY #38453 /* ~"Une sssphère… en bronze ? On n'a rien trouvé… de tel. Explore cet endroit dans ssses moindres recoins et tu trouveras peut-être cccce que tu cherches."~ */
  IF ~~ THEN REPLY #38454 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #38455 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.3
  SAY #38456 /* ~"Nous n'avons pas trouvé la sssource d'eau ici, mais ça sssemble plus humide vers l'esst. Cherche par-là et tu la trouveras peut-être."~ */
  IF ~~ THEN REPLY #38457 /* ~"J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #38458 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 8.4
  SAY #38459 /* ~"Il y a des cryptes tout autour de nous et nous protégeons leursss habitants… Je ne te le dirai pas."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38460 /* ~"C'est très important pour moi de la trouver."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38461 /* ~"Il faut que je la trouve. C'est très important."~ */ GOTO 10
  IF ~~ THEN REPLY #38462 /* ~"Très bien. Alors, réponds à d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #38463 /* ~"Très bien. Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #38464 /* ~"Ccce n'est… pas un bon endroit pour ssse promener. Ccc'est dangereux. Nous avons délimité les frontières de sssécurité avec des totems… Ne t'en écarte pas et tu ssseras en ssécurité. Attention aux habitants - ils sssont redoutables et opèrent en groupes."~ */
  IF ~~ THEN REPLY #38465 /* ~"Quel genre d'habitants ?"~ */ GOTO 11
  IF ~~ THEN REPLY #38466 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #38467 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4
  SAY #38468 /* ~"Tu sais pas, hein ? Tu devrais… peut-être partir. Ccc'est dangereux ici… pour des créatures de viande."~ */
  IF ~~ THEN REPLY #38469 /* ~"Dangereux ? Dangereux comment ?"~ */ GOTO 11
  IF ~~ THEN REPLY #38470 /* ~"J'ai juste quelques questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #38471 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 4.0 5.2 6.1 7.1 9.0 10.0 11.0 12.0
  SAY #38472 /* ~"Je répondrai… à ce que je pourrai."~ */
  IF ~~ THEN REPLY #38473 /* ~"Qui es-tu ? Qu'est-ce que tu fais ici ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38474 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 2
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38475 /* ~"Je cherche une sphère en bronze."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38476 /* ~"Je cherche une carafe d'eau."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38477 /* ~"Je cherche une crypte pleine de pièges."~ */ GOTO 5
  IF ~~ THEN REPLY #38478 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #38479 /* ~Le capitaine des goules te regarde froidement, tout en t'évaluant. "Cherche au sssud et à l'essst. Ne dérange pas les autres habitants de ccces cryptes ou tu *sssoufriras*."~ */
  IF ~~ THEN REPLY #38480 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #38481 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #38482 /* ~Le capitaine des goules te regarde et ses yeux semblent s'embraser. "Ça m'est complètement *ÉGAL*, tas de viande. Je ne te dirai *RIEN*."~ */
  IF ~~ THEN REPLY #38483 /* ~"Bon, bon. Alors, réponds juste à d'autres questions."~ */ GOTO 8
  IF ~~ THEN REPLY #38484 /* ~"Réponds-moi ou tu mourras."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38485 /* ~"Merci quand même de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.0
  SAY #38486 /* ~"Cccet endroit a été envahi… par des trocopotocas, des créatures blanches à cornes d'un appétit et d'une cruauté sssans limites. Beaucoup de vargouilles sss'installent aussssi ici, leur nombre ne cesse d'augmenter à cause des imbécccciles qui ssss'aventurent ausssssi loin dans les catacombes."~ */
  IF ~~ THEN REPLY #38487 /* ~"Je vois… Tu peux répondre à d'autres questions ?"~ */ GOTO 8
  IF ~~ THEN REPLY #38488 /* ~"Merci du renseignement. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38489 /* ~"Te revoilà, hein ? Tu veux quoi ?"~ */
  IF ~~ THEN REPLY #38490 /* ~"Je voulais les réponses à certaines questions…"~ */ GOTO 8
  IF ~~ THEN REPLY #38491 /* ~"Rien. Au revoir."~ */ EXIT
END
