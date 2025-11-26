// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLSCRIBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLSCRIBE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51723 /* ~L'homme sourit d'un air penaud et s'incline légèrement à ton approche. "Pendant un instant, en te voyant entrer, je t'ai pris pour l'un des hommes de mon employeur. Quel soulagement de voir que je me suis trompé !"~ */
  IF ~~ THEN REPLY #51724 /* ~"Pourquoi ? Qu'est-ce que tu fais là ?"~ */ GOTO 2
  IF ~~ THEN REPLY #51725 /* ~"C'est bien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51726 /* ~L'homme acquiesce d'un air coupable. "Oui, oui, je suis toujours là." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #51727 /* ~"Pourquoi ?"~ */ GOTO 2
  IF ~~ THEN REPLY #51728 /* ~"Oui, j'ai remarqué. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51729 /* ~"Je ne pouvais plus supporter mon travail au sous-hall sept des Archives, alors je me suis enfui. Si j'étais rentré chez moi, mon employeur aurait envoyé un messager… Ce… ce tyran ! C'est pour ça que je me cache ici, bien sûr. Je compte flâner encore un peu avant de rejoindre mon petit bureau étriqué."~ */
  IF ~~ THEN REPLY #51730 /* ~"Alors, au revoir."~ */ EXIT
END
