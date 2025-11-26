// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSUS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9977 /* ~Tu vois un homme d'âge mûr, vêtu de hardes. Remarquant que tu l'observes, il tente de t'éviter, mais tu modifies ta route afin de l'intercepter.~ */
  IF ~~ THEN REPLY #9978 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #9979 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9980 /* ~Il donne l'impression de vouloir prendre la fuite, et de se raviser. Il darde des regards à la ronde, sans jamais poser les yeux sur toi, mais il te paraît cependant prêt à détaler sur-le-champ. "J'ai rien pour toi ! Et je t'ai rien fait non plus ! Laisse-moi… s'il te plaît !"~ */
  IF ~~ THEN REPLY #9981 /* ~"Calme-toi. Je veux juste te poser des questions. D'accord ?"~ */ GOTO 2
  IF ~~ THEN REPLY #9982 /* ~"Excuse-moi, je ne voulais pas te déranger. Poursuis ton chemin."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9983 /* ~Il te regarde pour la première fois et, à ta vue, il paraît encore plus inquiet. "Je… je t'aiderais si je pouvais, juré, mais je sais rien du tout… rien de rien, juré ! Je t'en prie, laisse-moi tranquille."~ */
  IF ~~ THEN REPLY #9984 /* ~"Comment peux-tu savoir que tu ne peux pas m'aider si tu n'écoutes même pas ma question ?"~ */ GOTO 3
  IF ~~ THEN REPLY #9985 /* ~"Très bien. Va-t'en."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9986 /* ~Il darde à nouveau des regards à la ronde, comme s'il s'attendait à être attaqué de tous les côtés, puis il se tord les mains avant de te jeter un coup d'œil anxieux et de reporter son attention sur les rues alentour. "Euh… je ne veux pas d'ennuis, tu vois ? Alors je prends soin de ne rien savoir, d'accord ? Comme ça, je sais que je ne peux pas t'aider. Je t'en prie, laisse-moi !" Il a l'air si désespéré que tu t'attends à le voir fondre en larmes.~ */
  IF ~~ THEN REPLY #9987 /* ~"Très bien. Excuse-moi, je ne voulais pas te déranger."~ */ GOTO 4
  IF ~~ THEN REPLY #9988 /* ~"Hmph. Tu ne sais rien, mon œil ! Il me faut des réponses, et c'est toi que j'ai choisi pour me les donner. Ou est-ce que tu préfères que je t'éclate la figure ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Suspicious_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #9989 /* ~"Écoute, je ne voulais pas te faire peur. Est-ce que je peux faire quelque chose pour toi ? Tu as l'air inquiet."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Suspicious_1","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #9990 /* ~Une expression de soulagement joue fugitivement sur ses traits, et c'est en dardant encore des regards prudents à la ronde qu'il se détourne et prend la fuite.~ */
  IF ~~ THEN REPLY #9991 /* ~"Je crois que je commence à comprendre la signification du mot 'azimuté'."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #9992 /* ~Il darde des regards à la ronde, laisse échapper une plainte, se cache le visage dans les mains et tombe à genoux, secoué de sanglots. Il ne risque pas de t'apprendre quoi que ce soit.~ */
  IF ~~ THEN REPLY #9993 /* ~"Je crois que je commence à comprendre la signification du mot 'azimuté'."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #9994 /* ~Une expression de soulagement joue fugitivement sur ses traits tandis qu'il se recule. Il darde des regards prudents à la ronde, puis te dévisage "Tu serais prêt à m'aider ? Moi, un inconnu ? Ça cache quelque chose, bige !"~ */
  IF ~~ THEN REPLY #9995 /* ~"Oui, je t'aiderai. Sans condition. Dis-moi seulement de quoi tu as besoin."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9996 /* ~Il te toise prudemment, puis il jette un regard alentour. Quand il te fait de nouveau face, il perd l'espace d'un instant son air de bête traquée. "Merci. À part toi, personne ici n'offrirait d'aider quelqu'un comme moi. Je… ne crois pas qu'on puisse m'aider. Non… Merci quand même… Je dois partir."~ */
  IF ~~ THEN REPLY #9997 /* ~"Je comprends. Au revoir."~ */ GOTO 4
END
