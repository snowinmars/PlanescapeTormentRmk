// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCHLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCHLP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Tu vois un homme plus âgé debout, à l'extrémité d'un petit groupe de gens rassemblés autour de ce qui ressemble à une guillotine.~ */
  IF ~~ THEN REPLY #3167 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #13656 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13657 /* ~Il te lance un regard rapide et commence à se détourner. Changeant d'avis, il se retourne vers toi. Ses yeux inspectent ton corps l'examinant de près tout en secouant la tête. "Un sacré gâchis, mon vieux. J'ai jamais vu quelqu'un d'aussi amoché. Qu'est-ce que t'as fait ? T'as combattu tout seul les hordes de Baator ?"~ */
  IF ~~ THEN REPLY #13658 /* ~"J'ai des questions à te poser."~ */ GOTO 2
  IF ~~ THEN REPLY #13659 /* ~"Ça ne te regarde pas, vieil homme."~ */ GOTO 7
  IF ~~ THEN REPLY #13660 /* ~"J'ai connu quelques combats, comme en témoignent mes cicatrices."~ */ GOTO 8
  IF ~~ THEN REPLY #13661 /* ~"Que se passe-t-il ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #13662 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 8.0
  SAY #13663 /* ~Il se renfrogne. "Est-ce que tu vois le mot 'sage' tatoué sur mon corps ?" Il te regarde comme s'il attendait vraiment une réponse.~ */
  IF ~~ THEN REPLY #13664 /* ~"Je… eh bien, non. Je pensais juste qu'un homme de ton âge aurait acquis une grande sagesse qu'il pourrait transmettre aux moins chanceux que lui…"~ */ GOTO 3
  IF ~~ THEN REPLY #13665 /* ~"Écoute, il me faut juste quelques réponses. Tu peux me les donner ?"~ */ GOTO 7
  IF ~~ THEN REPLY #13666 /* ~"Oh, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #13667 /* ~Sa moue se transforme en sourire tandis qu'il commence à glousser. "T'es un drôle de type. 'Grande sagesse', à d'autres." Il s'interrompt un moment. "D'accord, tu t'es acheté quelques réponses. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #13668 /* ~"Tout d'abord, qu'est-ce qui se passe ici ?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.3 3.0 8.1
  SAY #13669 /* ~Il fait un signe par-dessus son épaule. "Tu vois le fendeur ? Un bougre va y perdre la tête. Un spectacle pas ordinaire."~ */
  IF ~~ THEN REPLY #13670 /* ~"Quel crime a-t-il commis ?"~ */ GOTO 5
  IF ~~ THEN REPLY #13671 /* ~"Oh. Je voulais te demander autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #13672 /* ~"Je vois. Eh bien, je te remercie de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #13673 /* ~"J'sais pas exactement. Il a peut-être tué un bougre, peut-être que quelqu'un l'a empaillé et l'a envoyé au fendeur. Difficile de savoir dans ce bled."~ */
  IF ~~ THEN REPLY #13674 /* ~"Empaillé ?"~ */ GOTO 6
  IF ~~ THEN REPLY #13675 /* ~"J'ai d'autres questions à te poser."~ */ GOTO 9
  IF ~~ THEN REPLY #13676 /* ~"Oh… Je te remercie. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #13677 /* ~Il te sourit et glousse. "T'es nouveau par ici, hein ? 'Empaillé'. Trahi, berné, poignardé dans le dos, pour ainsi dire. Ça arrive à Maudith."~ */
  IF ~~ THEN REPLY #13678 /* ~"Je vois. Parle-moi d'autre chose…"~ */ GOTO 9
  IF ~~ THEN REPLY #13679 /* ~"Hum. Je dois partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.1
  SAY #13680 /* ~Il devient menaçant puis te fait un geste grossier. "Va caguer, bige !" Il te tourne le dos.~ */
  IF ~~ THEN REPLY #13681 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2
  SAY #13682 /* ~Il acquiesce. "Je vois ça… Alors, que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #13683 /* ~"J'ai des questions à te poser."~ */ GOTO 2
  IF ~~ THEN REPLY #13684 /* ~"Tu pourrais me dire ce qui se passe."~ */ GOTO 4
  IF ~~ THEN REPLY #13685 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1 5.1 6.0 10.0 11.0 12.0 13.1 14.0
  SAY #13686 /* ~"Certainement." Il attend tes questions.~ */
  IF ~~ THEN REPLY #13687 /* ~"Je cherche un deva. J'ai entendu dire qu'il était quelque part à Maudith."~ */ GOTO 10
  IF ~~ THEN REPLY #13688 /* ~"Que peux-tu me dire sur Maudith ?"~ */ GOTO 11
  IF ~~ THEN REPLY #13689 /* ~"Qui est le responsable ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #13690 /* ~"Quelles sont les nouvelles locales ?"~ */ GOTO 13
  IF ~~ THEN REPLY #13691 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #13692 /* ~"La chanson dit qu'il y a un deva en ville… J'sais pas où il est. Un deva dans la ville attirerait certainement l'attention." Il s'interrompt pour réfléchir. "J'ai pas de réponse pour toi. Continue de demander. Quelqu'un l'aura probablement vu."~ */
  IF ~~ THEN REPLY #13693 /* ~"Une autre question."~ */ GOTO 9
  IF ~~ THEN REPLY #13694 /* ~"Merci de ton aide. Je dois partir, maintenant."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #13695 /* ~Il s'interrompt pour réfléchir, puis regarde autour de lui. "Maudith est un trou pourri, purement et simplement. Un matois doit y surveiller ses arrières… C'est tout ce que je dirai."~ */
  IF ~~ THEN REPLY #13696 /* ~"Très bien. Je voudrais te demander autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #13697 /* ~"Merci de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #13698 /* ~"Il doit s'agir de Tovus Giljaf. Tu peux le trouver au bureau de l'administration. Un conseil. Ne fourre pas ton nez dans ses affaires. Ce ne serait pas la meilleure chose à faire et tu pourrais y perdre ta tête." Il indique la guillotine derrière lui.~ */
  IF ~~ THEN REPLY #13699 /* ~"Je m'en souviendrai. Une dernière chose…"~ */ GOTO 9
  IF ~~ THEN REPLY #13700 /* ~"Je vois. Je dois partir, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #13701 /* ~Il semble plongé un instant dans ses pensées. "Bon… La chanson dit que la fille de Barlouche a disparu. Il est un peu azimuté à cause de ça. Sinon, je ne vois rien de bien particulier à mentionner.~ */
  IF ~~ THEN REPLY #13702 /* ~"Qui est ce Barlouche ?"~ */ GOTO 14
  IF ~~ THEN REPLY #13703 /* ~"J'ai une autre question à te poser."~ */ GOTO 9
  IF ~~ THEN REPLY #13704 /* ~"Merci de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #13705 /* ~"C'est le tenancier de la Porte du Traître. Un trou à vinasse local pour les bibards. C'est par là, je crois." Il indique une vague direction.~ */
  IF ~~ THEN REPLY #13706 /* ~"Parle-moi d'autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #13707 /* ~"Je dois partir, maintenant. Au revoir."~ */ EXIT
END
