// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGDRIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGDRIX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37412 /* ~Tu aperçois un grand homme dans une armure plaquée. L'armure est de conception inhabituelle, avec des pointes sur les épaules, les coudes et les avant-bras. Il salue de la tête à ton approche. "Bonjour, citoyen."~ */
  IF ~~ THEN REPLY #37413 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #37414 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37415 /* ~"En quoi puis-je t'aider, citoyen ?" Il te regarde d'un air amical.~ */
  IF ~~ THEN REPLY #37416 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37417 /* ~"À mon avis, tu ne peux rien pour moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 7.2 8.1 9.0 11.0 12.0
  SAY #37418 /* ~Il sourit. "Certainement, citoyen."~ */
  IF ~~ THEN REPLY #37419 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37420 /* ~"Je cherche un certain Lothar, ou le Maître des Os…"~ */ GOTO 7
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37421 /* ~"J'avais un crâne, mais on me l'a volé. Tu sais qui aurait pu faire le coup ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #37422 /* ~"Je voudrais acheter des armes."~ */ GOTO 11
  IF ~~ THEN REPLY #37423 /* ~"Je voudrais acheter des objets magiques."~ */ GOTO 11
  IF ~~ THEN REPLY #37459 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37424 /* ~Il te fait une légère révérence. "Je suis Drixel, garde de l'Harmonium, citoyen. J'aide à maintenir le calme sur ce marché."~ */
  IF ~~ THEN REPLY #37425 /* ~"Parle-moi de l'Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37426 /* ~"J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37427 /* ~Il parle d'un ton sec. "Nos croyances sont simples : nous sommes la Lumière. Nous sommes la Voie. Nous sommes l'Ordre. Nous sommes la Vérité." Son visage se durcit. "Je ne me suis même pas posé de questions pour les rejoindre. Tu vois, certains biges parlent de se battre contre le chaos pour restaurer l'ordre et l'harmonie, mais n'ont pas le courage de faire quoi que ce soit. À l'Harmonium, nous agissons. Nous faisons respecter l'ordre dans les rues de Sigil et sur les plans." Il te fait un signe de tête neutre.~ */
  IF ~~ THEN REPLY #37428 /* ~"Continue."~ */ GOTO 5
  IF ~~ THEN REPLY #37429 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37430 /* ~Il est encore plus hardi alors qu'il parle. "Et nous ne faisons pas respecter l'ordre avec des mots. Nous combattons durement. Les gueusards, les chevaliers de la gueuserie, les Indés, les Anarchistes, les Xaositectes, les fiélons tanar'ris… tous devraient se méfier de l'ombre de l'Harmonium. Le chaos ne peut exister que dans une atmosphère de tolérance !"~ */
  IF ~~ THEN REPLY #37431 /* ~"Qu'est-ce que tu peux me dire sur les autres factions ?"~ */ GOTO 6
  IF ~~ THEN REPLY #37432 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37433 /* ~Il paraît s'ennuyer, puis hausse les épaules. "Rien. Elles ne font pas partie de la Vérité qu'est l'Harmonium. Je ne les ai pas étudiées."~ */
  IF ~~ THEN REPLY #37434 /* ~"J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 2.1 10.0
  SAY #37435 /* ~Il te regarde d'un air stupéfait, commence à dire quelque chose, s'arrête, puis recommence. "Ah, bien… personne ne sait précisément où est Lothar, citoyen. Il n'a enfreint aucune loin que nous connaissions, donc l'Harmonium le laisse en paix. Et… je suggère que tu fasses de même."~ */
  IF ~~ THEN REPLY #37436 /* ~"Pourquoi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #37437 /* ~"Il faut quand même que je le trouve."~ */ GOTO 9
  IF ~~ THEN REPLY #37438 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37439 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37440 /* ~Il te regarde d'un air ennuyé. "Parce que, bige. Ne va pas ennuyer quelqu'un d'aussi puissant que Lothar sans de très bonnes raisons et de nombreux amis pour t'épauler ! Voilà pourquoi."~ */
  IF ~~ THEN REPLY #37441 /* ~"Il faut quand même que je le trouve."~ */ GOTO 9
  IF ~~ THEN REPLY #37442 /* ~"Je vois… J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37443 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #37444 /* ~Il te fixe pendant quelques temps avant de répondre.  "Très bien. Tu trouveras l'entrée de sa guitoune dans un bâtiment en ruines dans le Quartier." Il te regarde comme pour voir à travers toi.~ */
  IF ~~ THEN REPLY #37445 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37446 /* ~Il te fixe pendant quelques temps avant de répondre. "On dirait le travail de Lothar, le Maître des Os." Il regarde alentour nerveusement, puis te parle doucement. "Enfin, pas Lothar lui-même, mais l'un de ses acolytes. Lothar garde les mains propres."~ */
  IF ~~ THEN REPLY #37448 /* ~"Où est-ce que je peux trouver ce 'Lothar' ?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #37449 /* ~Il indique le marché. "Il y a plein de marchands ici, citoyen. Tu peux trouver ce que tu cherches chez eux."~ */
  IF ~~ THEN REPLY #37450 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37452 /* ~"Merci, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #37454 /* ~Drixel te fait une légère révérence. "Bonjour à toi à nouveau, citoyen. Que puis-je faire pour toi ?"~ */
  IF ~~ THEN REPLY #37455 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #37456 /* ~"Peu importe. Au revoir."~ */ EXIT
END
