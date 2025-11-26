// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSALABSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSALABSH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48444 /* ~Cet homme grand et mince, vêtu d'une lourde robe rouge, a les traits anguleux et tirés. Il s'incline majestueusement en te voyant approcher. "Moi, c'est Salabesh, mais on m'appelle souvent Salabesh l'Onyx, futur maître des mages de la Salle des Fêtes. Tu veux faire affaire avec moi, c'est ça… ?"~ */
  IF ~~ THEN REPLY #48445 /* ~"Non… j'ai juste quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #48446 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #48447 /* ~"À quel sujet, hmmm ? Pas sur le Quartier ou quelque chose du genre, j'espère… Des tas d'autres personnes pourraient répondre à de telles questions et je pourrais te conduire vers l'une d'entre elles."~ */
  IF ~~ THEN REPLY #48448 /* ~"Pourquoi on t'appelle 'l'Onyx' ?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48449 /* ~"Qu'est-ce que tu voulais dire par 'futur maître des mages de la Salle des Fêtes' ?"~ */ JOURNAL #66221 /* ~J'ai fait la connaissance d'un certain Salabesh à l'extérieur de la Salle des Fêtes. Il m'a dit qu'il cherchait à obtenir le prestigieux poste de 'formateur des mages', mais il lui faut pour cela trouver le moyen de montrer qu'il est plus efficace que la formatrice actuelle.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67858 /* ~"As-tu demandé à devenir professeur de magie de la Salle des Fêtes ?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67859 /* ~"Alors, qu'est-il advenu de ton ambition de devenir professeur de magie de la Salle des Fêtes ?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48450 /* ~"Tu es un Maître des Maléfices ? Tu devrais peut-être - *hic !* - m'aider…"~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66247 /* ~"As-tu entendu parler d'un homme maudit du nom de Pestilent ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~J'ai appris que c'est à cause de Méli Sensdumeurtre que Pestilent dégage une odeur aussi atroce, et que je le trouverai à la Salle des Fêtes.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48451 /* ~"C'est toi le mage qui a maudit l'artiste du bas de la rue ?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 10
  IF ~~ THEN REPLY #48452 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.1 5.1 6.2 7.1 8.2 10.1 11.1 12.0 14.1 15.1 16.0 17.0 18.0
  SAY #48453 /* ~Salabesh sourit d'un air affecté. "Je ne suis pas surpris."~ */
  IF ~~ THEN REPLY #48454 /* ~"Pourquoi on t'appelle 'l'Onyx' ?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48455 /* ~"Qu'est-ce que tu voulais dire par 'futur maître des mages de la Salle des Fêtes' ?"~ */ JOURNAL #66221 /* ~J'ai fait la connaissance d'un certain Salabesh à l'extérieur de la Salle des Fêtes. Il m'a dit qu'il cherchait à obtenir le prestigieux poste de 'formateur des mages', mais il lui faut pour cela trouver le moyen de montrer qu'il est plus efficace que la formatrice actuelle.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67860 /* ~"As-tu demandé à devenir professeur de magie de la Salle des Fêtes ?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67861 /* ~"Alors, qu'est-il advenu de ton ambition de devenir professeur de magie de la Salle des Fêtes ?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48456 /* ~"Tu es un Maître des Maléfices ? Tu devrais peut-être - *hic !* - m'aider…"~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66249 /* ~"As-tu entendu parler d'un homme maudit du nom de Pestilent ?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~J'ai appris que c'est à cause de Méli Sensdumeurtre que Pestilent dégage une odeur aussi atroce, et que je le trouverai à la Salle des Fêtes.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48457 /* ~"C'est toi le mage qui a maudit l'artiste du bas de la rue ?"~ */ GOTO 10
  IF ~~ THEN REPLY #48458 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48459 /* ~"C'est une longue histoire que j'abrégerai pour économiser mon souffle. Quand j'étais jeune, on m'appelait Salabesh en Or, car on disait que j'avais un cœur en or… petit, dur et jaune. Eh bien, j'ai jeté un sort à l'imbécile qui a lancé *ça* pour qu'il parle avec son cul et défèque avec sa bouche. Un peu plus tard, on m'a surnommé 'l'Onyx' - sur le même principe que pour 'l'Or', mais en un peu moins intelligent, à mon avis. Quoi qu'il en soit, je me suis assagi depuis… et je suis moins enclin à jeter des sorts… Je ne suis pas sûr que je mérite encore ce surnom."~ */
  IF ~  GlobalLT("Know_Salabesh","AR0600",2)
~ THEN REPLY #66250 /* ~"Tu l'as maudit *pour quoi* ?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 14
  IF ~~ THEN REPLY #48460 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48461 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4 2.4 10.0 14.0
  SAY #48462 /* ~"T'aider ?" Salabesh sourit d'un air moqueur. "J'en doute." Avant même que tu aies le temps de répondre, il soupire en secouant la tête. "Eh bien… *peut-être* que je le peux. Bon, dis-moi ce qui ne va pas ?"~ */
  IF ~~ THEN REPLY #48463 /* ~"Méli Sensdumeurtre m'a maudit."~ */ GOTO 5
  IF ~~ THEN REPLY #48464 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48465 /* ~"Méli Sensdumeurtre ? Hah ! Ce crétin ne réussira *jamais* à l'emporter sur moi ! Oh, pourtant, on en a eu, des belles batailles, tous les deux…" Salabesh fronce les sourcils. "Mais j'ai dépassé tout ça depuis longtemps. Ça ne m'intéresse plus, tu sais. Je ne vois vraiment pas ce que je pourrais faire pour toi… Après tout, c'est *sa* malédiction. Ce n'est pas comme ce qu'on trouve sur certains objets et qu'on peut lever avec quelques simples formules magiques… *il* va falloir qu'il la lève lui-même et de son plein gré."~ */
  IF ~~ THEN REPLY #48466 /* ~"Alors, est-ce que tu pourrais m'apprendre une malédiction que je pourrais utiliser sur lui ?"~ */ GOTO 6
  IF ~~ THEN REPLY #48467 /* ~"Alors j'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48468 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48469 /* ~"Hmm. Bon… D'habitude, je ne fais pas ça. Je garde mes maléfices pour moi, tu vois. Et puis, même un seul maléfice, il faut du temps, un bon bout de temps, pour l'apprendre - plus que je n'en ai à perdre."~ */
  IF ~~ THEN REPLY #48470 /* ~"Je pourrais te payer pour le dérangement…"~ */ GOTO 7
  IF ~~ THEN REPLY #48471 /* ~"Tu as peut-être tout simplement peur que tes malédictions ne soient plus assez puissantes contre lui…"~ */ GOTO 8
  IF ~~ THEN REPLY #48472 /* ~"Alors j'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48473 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48474 /* ~"Non, non… C'est juste que je n'en ai pas envie." Salabesh te regarde droit dans les yeux. "Bon, maintenant, laisse tomber avant que je m'énerve."~ */
  IF ~~ THEN REPLY #48475 /* ~"Tu as peut-être tout simplement peur que tes malédictions ne soient plus assez puissantes contre lui…"~ */ GOTO 8
  IF ~~ THEN REPLY #48476 /* ~"Très bien. J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48477 /* ~"Laisse tomber, Salabesh. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48478 /* ~"*Quoi* ?! C'est ridicule… Bon, écoute bien, sale balafré, Salabesh l'Onyx est le seul et unique *MAÎTRE* des Malédictions ! Franchement, il suffirait d'une seule phrase de ma part pour neutraliser les malédictions de ce nigaud !"~ */
  IF ~~ THEN REPLY #48479 /* ~"Instruis-moi, alors…"~ */ GOTO 7
  IF ~~ THEN REPLY #48480 /* ~Pince-toi les lèvres, prends un air sceptique.~ */ DO ~SetGlobal("Know_Salabesh_Curse","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #48481 /* ~"Je n'en doute pas. J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48484 /* ~"D'accord, d'accord… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #48485 /* ~"Voilà ! Tu m'as *obligé* à le faire !" Salabesh débite une courte série de syllabes compliquées… de formules magiques, que tu mémorises pour les réutiliser contre Méli. "Voilà ! Va voir ce que *ça* lui a fait et reviens me dire, à ce moment-là, que Salabesh l'Onyx n'est pas *le* Maître des Malédictions !"~ */
  IF ~~ THEN REPLY #48486 /* ~"Merci, Salabesh ; c'est ce que je vais faire. Au revoir."~ */ JOURNAL #48487 /* ~Salabesh l'Onyx m'a enseigné une petite malédiction que je devrais pouvoir utiliser contre Méli Sensdumeurtre.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.6 2.6
  SAY #48488 /* ~"Oh…" Salabesh plisse les yeux et pince les lèvres. "*Lui*. Oui, je lui ai jeté un sort et il le méritait bien ! Se moquer d'un mage qui passait par-là… quel imbécile est capable de ça ? C'est lui qui l'a *voulu* ! Après tout, je *suis* Salabesh l'Onyx, Maître des Sorts. Mais ne t'inquiète pas… ce sort est inoffensif. Il améliore les excuses, c'est tout."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #48489 /* ~"Maître des Malédictions ? Tu pourrais peut-être - *hoquet !* - m'aider, alors…"~ */ GOTO 4
  IF ~~ THEN REPLY #48490 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48491 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1
  SAY #48492 /* ~"C'est une position prestigieuse d'être maître officiel dans l'une des salles d'entraînement de la Salle des Fêtes. J'envisage, un jour, de devenir maître des mages, mais pour le moment, c'est Madame Peignépine qui occupe ce poste. Si seulement je pouvais prouver que je peux être un meilleur maître…"~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",2)
~ THEN REPLY #48493 /* ~"Tu pourrais toujours avancer le fait qu'elle est accro aux pierres sensorielles. Elle n'a plus l'air d'avoir envie d'enseigner…"~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",3)
~ JOURNAL #48496 /* ~J'ai dit à Salabesh que Madame Peignépine passait tout son temps dans le sensorium et qu'elle ne souhaitait plus enseigner. Salabesh ne demande qu'à prendre sa place, mais je ne suis pas sûr qu'il fasse un bon professeur. Peut-être vaut-il mieux que j'aille en parler avec Madame Peignépine, afin de lui laisser une chance de revenir sur sa décision.~ */ GOTO 12
  IF ~~ THEN REPLY #48494 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48495 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #48497 /* ~Les lèvres de Salabesh forment un vilain sourire narquois. "Vraiment ? Elle n'a plus l'envie d'enseigner ? Excellent…" Il se frotte les mains avec impatience. "Dans ce cas, je vais demander à être le nouveau professeur de magie."~ */
  IF ~~ THEN REPLY #48498 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #48499 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #48500 /* ~Tu vois Salabesh l'Onyx. Il s'incline brièvement, mais avec grâce. "Hum. Te voilà une nouvelle fois devant moi…"~ */
  IF ~~ THEN REPLY #48501 /* ~"Oui. J'avais des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #48502 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0
  SAY #66236 /* ~"Oh, oui… tu as bien entendu." Salabesh pousse un petit gloussement. "C'est pour cette raison qu'on m'appelle le Maître des Malédictions, tu sais."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66237 /* ~"Maître des Malédictions ? Tu pourrais peut-être - *hoquet !* - m'aider, alors…"~ */ GOTO 4
  IF ~~ THEN REPLY #66238 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #66239 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.5
  SAY #66240 /* ~"Pesti… comment ?" Salabesh réfléchit un instant, puis son visage s'illumine. "Oh, oui… c'est Méli Sensdumeurtre qui l'a maudit, si ma mémoire est bonne. Pourquoi ? Tu cherches à le libérer de cette malédiction ? Bonne chance… Méli est le seul à pouvoir le faire, tu sais."~ */
  IF ~  Global("Jumble","GLOBAL",0)
~ THEN REPLY #66241 /* ~"Où puis-je trouver ce Méli Sensdumeurtre ?"~ */ GOTO 16
  IF ~~ THEN REPLY #66243 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #66244 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66242 /* ~"À la Salle des Fêtes, j'imagine. C'est un petit homme grassouillet au sourire sadique. Il n'ouvre jamais la bouche ; tu auras du mal à le faire parler."~ */
  IF ~~ THEN REPLY #66245 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #66246 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.2 2.2
  SAY #67852 /* ~Salabesh devient maussade. "Non… il y a peu, j'ai mis en colère la direction de la Salle des Fêtes, et je crois que j'ai intérêt à attendre avant de faire ma requête. De plus, je suis sûr que "Madame" Peignépine ne va pas sortir de sitôt du sensorium…" Il a un petit ricanement mauvais.~ */
  IF ~~ THEN REPLY #67853 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #67854 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.3 2.3
  SAY #67855 /* ~"Pfff ! Cette femme sans cervelle a choisi de quitter le sensorium et de reprendre ses cours ! J'ai laissé passer ma chance. Je refuse d'en parler davantage !" Salabesh multiplie les jurons à mi-voix.~ */
  IF ~~ THEN REPLY #67856 /* ~"J'ai une autre question à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #67857 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
