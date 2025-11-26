// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADMINAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DADMINAS~

IF ~  Global("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61498 /* ~Tu vois un homme d'âge mûr, vêtu avec élégance. Il te regarde approcher d'un air blasé.~ */
  IF ~~ THEN REPLY #61499 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #61500 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61501 /* ~Il hoche la tête. "Et moi, matois, je suis Carl Perfidor, assistant administratif. Je peux faire quelque chose pour toi ?"~ */
  IF ~~ THEN REPLY #61502 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith."~ */ GOTO 2
  IF ~~ THEN REPLY #61503 /* ~"Non, je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #61504 /* ~Il fronce les sourcils. "Tu veux parler de Trias. Oui, il est ici. Et en prison, pour être précis. Pourquoi veux-tu le voir ?"~ */
  IF ~~ THEN REPLY #61505 /* ~"Il me faut une raison ?"~ */ GOTO 3
  IF ~~ THEN REPLY #61506 /* ~"Affaire personnelle."~ */ GOTO 4
  IF ~~ THEN REPLY #61507 /* ~"J'ai quelques questions auquel il est le seul à pouvoir répondre."~ */ GOTO 5
  IF ~~ THEN REPLY #61508 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61509 /* ~Il s'esclaffe. "Oui, en effet. Bon, pourquoi veux-tu voir Trias ?"~ */
  IF ~~ THEN REPLY #61510 /* ~"Affaire personnelle."~ */ GOTO 4
  IF ~~ THEN REPLY #61511 /* ~"J'ai quelques questions auquel il est le seul à pouvoir répondre."~ */ GOTO 5
  IF ~~ THEN REPLY #61512 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #61513 /* ~Il sourit et secoue la tête. "Rien de ce qui concerne Trias ne l'est. Pourquoi veux-tu le voir ?"~ */
  IF ~~ THEN REPLY #61514 /* ~"J'ai quelques questions auquel il est le seul à pouvoir répondre."~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #61515 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 4.0
  SAY #61516 /* ~Il te dévisage longuement. "Je vois. Eh bien, nul n'a le droit de voir Trias sans la permission de Tovus Giljaf." Il te sourit. "Et nul ne voit Tovus sans avoir reçu une invitation de sa part. Je t'invite donc à partir."~ */
  IF ~~ THEN REPLY #61517 /* ~"Tu peux tout de même me laisser voir Tovus, non ?"~ */ GOTO 6
  IF ~~ THEN REPLY #61518 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61519 /* ~Il rit. "Oui, mais il est hors de question que je te laisse entrer, à moins que Tovus ne te convoque. Maintenant, va-t'en."~ */
  IF ~~ THEN REPLY #61520 /* ~"Je pourrais toujours te faire dégager et aller le voir."~ */ GOTO 7
  IF ~~ THEN REPLY #61521 /* ~"C'est important. Il doit bien y avoir un moyen pour que je voie Tovus ?"~ */ GOTO 8
  IF ~~ THEN REPLY #61522 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61523 /* ~Il te toise, puis hoche la tête. "Oh oui, tu es tout à fait impressionnant et tu pourrais sans doute me passer sur le corps. Mais le fait est que la garde de la ville est susceptible de tenir tête et que Tovus est lui-même un jeteur de sorts accompli. Ce serait de la folie de t'y frotter…"~ */
  IF ~~ THEN REPLY #61524 /* ~"C'est important. Il doit bien y avoir un moyen pour que je voie Tovus ?"~ */ GOTO 8
  IF ~~ THEN REPLY #61525 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #61526 /* ~Il secoue la tête. "Pour passer la porte, il faut avoir une convocation de la part de Tovus ou mon aval. Il ne t'a pas convoqué et je n'ai pas l'intention de te laisser entrer." Il s'esclaffe. "À moins, bien sûr, que tu ne me rendes un grand service. Et je ne vois rien à te demander pour l'instant."~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61527 /* ~"Et si je te disais que ta femme, Roberta, essaie de te faire tuer ?"~ */ DO ~SetGlobal("Roberta_Betrayed","GLOBAL",1)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY #61528 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61529 /* ~Il te dévisage, puis renifle avec dédain. "Absurde. Pourquoi ferait-elle une chose pareille?"~ */
  IF ~~ THEN REPLY #61530 /* ~"Elle t'a fait surveiller. Elle est au courant pour les catins, et elle veut te voir mort."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61531 /* ~Tu sembles avoir retenu son attention. Il boit tes paroles. "Et pourrais-je savoir qui serait censé agir, dans ce cas précis ? Toi ?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61532 /* ~"Non, Roberta pensait engager une catin pour s'en charger. Sans doute une fille appelée Kiri."~ */ GOTO 11
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61533 /* ~" Non, Roberta pensait engager une catin pour s'en charger, vu que personne d'autre ne peut t'approcher."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #61534 /* ~Il te dévisage longuement. "Attends ici. Je serai de retour dans l'heure…" Il s'apprêtait à sortir quand  il marque un temps d'arrêt. "Oh, et ton information a intérêt à être exacte. Sinon, tu finiras en prison avec Trias." Il sourit. "Tu pourras alors lui parler tout ton saoul, si tu y tiens encore." Il s'éloigne.~ */
  IF ~~ THEN REPLY #61535 /* ~"J'attendrai."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #61536 /* ~Tu vois Carl Perfidor. Il a l'air inquiet. "Merci d'avoir attendu, matois. Il apparaît que ton information était exacte. Je t'en remercie."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61537 /* ~"Alors, que vont devenir Roberta et Kiri ?"~ */ GOTO 14
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61538 /* ~"Alors, que va devenir Roberta ?"~ */ GOTO 15
  IF ~~ THEN REPLY #61539 /* ~"Alors, je peux voir Tovus, à présent ?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.0 15.0
  SAY #61540 /* ~Il secoue la tête. "Non. Tovus Giljaf ne voit personne qu'il n'ait pas convoqué. Je te conseille donc de partir avant que je te fasse arrêter pour avoir comploté l'assassinat d'un dirigeant de la ville !" Il sourit. "À moins que tu ne désires passer le restant de ta vie en cellule avec Roberta ?"~ */
  IF ~~ THEN REPLY #61541 /* ~"Non, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #61542 /* ~Il te dévisage, surpris. "Que t'importe ?" Il hausse les épaules. "Oh, et puis après tout… Roberta a avoué son crime et sera envoyée en prison. Kiri, en revanche… j'ai d'autres projets pour elle." Il sourit.~ */
  IF ~~ THEN REPLY #61543 /* ~"Alors, je peux voir Tovus, à présent ?"~ */ GOTO 13
  IF ~~ THEN REPLY #61544 /* ~"Je vois. Bon, je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #61545 /* ~Il te dévisage, surpris. "Que t'importe ?" Il hausse les épaules. "Oh, et puis après tout… Roberta a avoué son crime et sera envoyée en prison." Il sourit.~ */
  IF ~~ THEN REPLY #61546 /* ~"Alors, je peux voir Tovus, à présent ?"~ */ GOTO 13
  IF ~~ THEN REPLY #61547 /* ~"Je vois. Bon, je dois partir. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61548 /* ~Tu vois un homme d'âge mûr, vêtu avec élégance. Il te regarde approcher en souriant.~ */
  IF ~~ THEN REPLY #61549 /* ~"Bonjour."~ */ GOTO 17
  IF ~~ THEN REPLY #61550 /* ~Ignore l'homme.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61551 /* ~Il hoche la tête. "Bonjour, matois. Je suis l'assistant administratif. Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #61552 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith.~ */ GOTO 18
  IF ~~ THEN REPLY #61553 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61554 /* ~"Un moment, s'il te plaît…" Il feuillette des papiers, puis s'arrête sur une page. "Ah ! Nous y voilà… Ce doit être Trias. Hum…" Il fronce les sourcils et secoue la tête.~ */
  IF ~~ THEN REPLY #61555 /* ~"Il y a un problème ?"~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61556 /* ~"Je le crains… Nul ne peut voir Trias sans la permission expresse de Tovus Giljaf.~ */
  IF ~~ THEN REPLY #61557 /* ~"Alors j'aimerais voir Tovus."~ */ GOTO 20
  IF ~~ THEN REPLY #61558 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61559 /* ~Il fronce les sourcils et secoue la tête. "Je crains que ce ne soit impossible. Personne ne voit Tovus sauf convocation de sa part."~ */
  IF ~~ THEN REPLY #61560 /* ~"Je dois le voir, c'est important."~ */ GOTO 21
  IF ~~ THEN REPLY #61561 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #61562 /* ~Il t'adresse un regard irrité. "Je regrette, matois, mais nul ne voit Tovus sauf convocation de sa part. Va, je te prie."~ */
  IF ~~ THEN REPLY #61563 /* ~"Je ne peux même pas prendre rendez-vous pour plus tard ?"~ */ GOTO 22
  IF ~~ THEN REPLY #61564 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61565 /* ~Il te foudroie du regard. "Non. Tu ne peux pas voir Tovus aujourd'hui, ni demain, ni un autre jour, sauf s'il te convoque. Tu ne peux pas prendre rendez-vous avec lui aujourd'hui, ni demain, ni un autre jour, parce qu'il ne prend pas de rendez-vous. Si tu veux le voir, tu attendras que LUI veuille TE voir, parce qu'IL t'aura convoqué." Il marque une pause pour reprendre son souffle et te sourit. "Suis-je assez clair ?"~ */
  IF ~~ THEN REPLY #61566 /* ~"Très, au revoir."~ */ EXIT
END
