// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROKAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROKAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45789 /* ~Tu vois un homme minuscule qui se dandine un peu en marchant. Il a un accent presque comique. "Par toutes les Puissances et leurs remises célestes, qu'est-ce que c'est que ça ?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DMICCAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45791 /* ~"Notre client ! Notre client ! Miccah ! Notre client est de retour !!"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45793 /* ~"Évidemment que tu vois en lui un client", répond le petit homme. "Tu en vois partout, et même dans les RUES ! Mais nous n'en avons jamais eu et nous n'en aurons jamais. Rien ne sert d'espérer…" Ses yeux s'agrandissent soudain en se posant sur toi. "Miccah ! Nous avons un client !"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45795 /* ~"Je le VOIS bien. Tu me prends pour un aveugle, ou quoi ? Évidemment que je l'ai vu !" Il se tourne vers toi. "En quoi pouvons-nous t'être utile aujourd'hui ?"~ */
  IF ~~ THEN REPLY #45796 /* ~"Parlons plutôt affaires."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45797 /* ~"Peux-tu me parler du quartier ?"~ */ GOTO 5
  IF ~~ THEN REPLY #45798 /* ~"Tu peux me parler de toi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #45799 /* ~"Qui est-ce ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45800 /* ~"Que peux-tu me dire au sujet des factions ?"~ */ GOTO 8
  IF ~~ THEN REPLY #45801 /* ~"Rien du tout, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45802 /* ~"Bien sûr que je suis prêt à l'accueillir ! Je suis toujours prêt à accueillir tous nos clients !" Il se tourne vers toi. "En quoi pouvons-nous t'être utile aujourd'hui ?"~ */
  IF ~~ THEN REPLY #45803 /* ~"Parlons plutôt affaires."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45804 /* ~"Peux-tu me parler du quartier ?"~ */ GOTO 5
  IF ~~ THEN REPLY #45805 /* ~"Tu peux me parler de toi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #45806 /* ~"Qui est-ce ?"~ */ GOTO 7
  IF ~~ THEN REPLY #45807 /* ~"Que peux-tu me dire au sujet des factions ?"~ */ GOTO 8
  IF ~~ THEN REPLY #45808 /* ~"Rien du tout, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45809 /* ~"Ah, tu t'intéresses au quartier ? Je pourrais t'en parler pendant des heures. Il y a tant de choses à voir…"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 9
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45811 /* ~"Moi ? C'est moi qui t'intéresse ? Miccah, c'est moi qui l'intéresse !"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 10
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45813 /* ~"Elle ? Elle ? C'est mon épouse dévouée depuis une quarantaine d'années, la lumière de ma vie, la plus grande…"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 11
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45815 /* ~"Les factions, hein ? Les factions ? Miccah, il veut que je lui parle des factions ! Eh bien, nous avons…"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 12
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45817 /* ~"J'avais l'intention de lui parler du marché, mais je vais plutôt aborder le sujet de la Maison de tolérance, juste pour te faire bisquer ! Et après, je lui parlerai de la Salle des Fêtes et je ne mentionnerai aucune des autres attractions !"

Ils cessent de s'occuper de toi et s'injurient copieusement.~ */
  IF ~~ THEN REPLY #45818 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #45819 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 10
  IF ~~ THEN REPLY #45820 /* ~"Alors, au revoir."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 11.0 11.1 11.2 12.0 12.1 12.2 13.0 13.1 13.2
  SAY #45821 /* ~Ils sont si occupés à s'insulter mutuellement qu'ils ne font même plus attention à toi. Les noms d'oiseaux se mettent à voler.~ */
  IF ~~ THEN REPLY #45822 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45823 /* ~"Je manque d'ambition, moi ? Si je n'avais pas mon boulet de bonne femme à traîner, tu verrais où j'en serais ! Mais non, au lieu d'être un grand aventurier, je ne suis qu'un petit marchand…" Ils se mettent à s'injurier copieusement et ne t'accordent plus la moindre attention.~ */
  IF ~~ THEN REPLY #45824 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #45825 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 10
  IF ~~ THEN REPLY #45826 /* ~"Alors, au revoir."~ */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45827 /* ~"… si elle n'était pas déjà là ! C'est la pire bibarde de toute la Ruche, mon bon monsieur, et ça fait des ANNÉES que ça dure ! Si l'Océan charriait de l'alcool, elle le boirait tout entier qu'elle aurait encore soif !"

Ils continuent de se chamailler sans t'accorder la moindre attention.~ */
  IF ~~ THEN REPLY #45828 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #45829 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 10
  IF ~~ THEN REPLY #45830 /* ~"Alors, au revoir."~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45831 /* ~"En tout cas, il y a une chose que je crois : je crois que l'existence que je mène doit être ma pénitence pour un crime terrible que j'ai commis dans une vie antérieure !"

Ils se mettent à s'insulter et ne t'accordent plus la moindre attention.~ */
  IF ~~ THEN REPLY #45832 /* ~"J'avais d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #45833 /* ~"Je voudrais acheter quelque chose…"~ */ GOTO 10
  IF ~~ THEN REPLY #45834 /* ~"Alors, au revoir."~ */ GOTO 10
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45835 /* ~"Elle n'aime que ce qui peut lui faire gonfler la panse. Le peu de goût qu'elle a se trouve uniquement concentré au niveau des papilles gustatives."~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 13
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45837 /* ~"Et comment pourrais-je ne pas apprécier la bouche et la silhouette d'une telle sirène ? dit-il avec une ironie presque palpable. Faut-il que je sois totalement dénué de discernement…"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 14
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45839 /* ~"C'est vraiment dur à croire ! Quand je pense à toutes les occasions que j'ai laissé filer ! Je pourrais mener une vie de rêve, à l'heure qu'il est !"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 15
END

IF ~~ THEN BEGIN 17 // from:
  SAY #45841 /* ~"Ferme-la ! Je suis bien plus viril que toi !" Il s'interrompt brusquement et observe sa femme d'un œil critique. "Peut-être pas, remarque… quand je vois la moustache que tu te payes…"~ */
  IF ~~ THEN EXTERN ~DMICCAH~ 16
END
