// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAYDEE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAYDEE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58535 /* ~Tu aperçois un ouvrier de l'entrepôt. Il semble assez concentré sur son travail et ne remarque pas ton approche.~ */
  IF ~~ THEN REPLY #58537 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58540 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58542 /* ~Il interrompt sa tâche et se tourne vers toi. "Je peux t'aider ?"~ */
  IF ~~ THEN REPLY #58543 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58547 /* ~"Non, pas vraiment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58549 /* ~Il fronce les sourcils. "J'ai un tas de boulot à faire, et j'ai pas de temps pour tes questions. Désolé." Il commence à se détourner de toi.~ */
  IF ~~ THEN REPLY #58551 /* ~"Juste une question rapide…"~ */ GOTO 3
  IF ~~ THEN REPLY #58553 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58554 /* ~Il soupire en se retournant pour te faire face. "Une petite question… tu sais combien de fois par jour j'entends ça ?" Il te regarde d'un air furieux.~ */
  IF ~~ THEN REPLY #58556 /* ~"Euh… non."~ */ GOTO 4
  IF ~~ THEN REPLY #58557 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58559 /* ~"Eh bien, laisse-moi te le dire : trop ! Chaque fois qu'un sale bige sait qu'il va me faire suer parce que je suis occupé mais qu'il n'a pas envie d'attendre pour poser ses satanées questions, il me dit qu'il ne m'en posera qu'une, et *petite*, encore !" Il te regarde l'air en colère. "Et tu sais quoi ?"~ */
  IF ~~ THEN REPLY #58560 /* ~"Euh… non. Quoi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #58562 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58563 /* ~Il hausse le ton et commence à gesticuler des bras. "Il se fout de moi ! Il sait très bien que sa question n'est pas si *petite* que ça ! Il sait qu'il va me falloir un vrai roman pour y répondre correctement. Mais il dit quand même qu'il n'y en aura que pour un instant ! Tu sais pourquoi ?"~ */
  IF ~~ THEN REPLY #58564 /* ~"Euh… non. Pourquoi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58566 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58567 /* ~"Parce qu'il me prend pour un CRÉTIN ! Il croit que je ne vais pas remarquer le temps incroyable qu'il faut pour répondre à sa question. Oh non ! Il a dit que c'était une petite question, alors ce n'est pas grave s'il faut une demi-heure pour y répondre ! Comme je suis un CRÉTIN, je ne m'en apercevrai pas, forcément !"~ */
  IF ~~ THEN REPLY #58568 /* ~"Peut-être que je ferais mieux de revenir plus tard…"~ */ GOTO 7
  IF ~~ THEN REPLY #58569 /* ~"Désolé de te déranger, je vois que tu es occupé…"~ */ GOTO 9
  IF ~~ THEN REPLY #58571 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #58572 /* ~"Pourquoi ? De toute façon, tu m'as déjà dérangé et tu as interrompu le fil de mes pensées ! Pose ta satanée question, prends-moi une heure de mon temps précieux et fiche le camp." Il te regarde d'un air furieux.~ */
  IF ~~ THEN REPLY #58573 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith."~ */ GOTO 8
  IF ~~ THEN REPLY #58574 /* ~"Je crois que je vais m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58575 /* ~"Ouais, J'ai aussi entendu ça. On dit qu'il est en prison. Si c'est le cas, il faut que tu ailles au bâtiment administratif, sur la place centrale, et que tu te poses des questions à son sujet. Maintenant fiche-moi la paix…" Il se détourne de toi.~ */
  IF ~~ THEN REPLY #58576 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #58577 /* ~Il s'interrompt pour te regarder d'un air furieux. "Occupé ? T'as vu mon planning de travail ? Tu sais pas ce qu'occupé veut dire, bige." Il grogne. "Ce satané truc arrête pas de changer, en plus, c'est ça qu'il y a de bien avec les plannings ! Chaque jour, on y ajoute ou en y enlève quelque chose, rien que pour le plaisir de le modifier."~ */
  IF ~~ THEN REPLY #58578 /* ~"Je vois. Je crois que je ferais mieux de partir…"~ */ GOTO 7
  IF ~~ THEN REPLY #58579 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58580 /* ~Tu aperçois un ouvrier de l'entrepôt en colère. Il semble concentré sur son travail, jusqu'à ce qu'il remarque ton approche. "Oh, encore toi. Laisse-moi deviner, tu as une *petite* question pour moi."~ */
  IF ~~ THEN REPLY #58581 /* ~"Non, je crois que je ferais mieux de partir. Au revoir."~ */ EXIT
END
