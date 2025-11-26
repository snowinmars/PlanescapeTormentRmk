// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCROG~

IF ~  !Global("Curst_Rogue_Paid","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #10037 /* ~Tu vois un individu louche. Il paraît errer au hasard, mais il te semble qu'il a un but. À mesure que tu l'observes, tu en viens à songer qu'il surveille peut-être un bâtiment voisin.~ */
  IF ~~ THEN REPLY #10038 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #10039 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10040 /* ~Il te rend ton salut fort poliment. "Bonjour à toi aussi." Puis il se détourne pour s'éloigner.~ */
  IF ~~ THEN REPLY #10041 /* ~"Un moment, s'il te plaît. Je voulais te poser une question."~ */ GOTO 2
  IF ~~ THEN REPLY #10042 /* ~Laisse-le partir.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10043 /* ~Il s'arrête et se tourne vers toi, un sourire cordial aux lèvres. "Certes, que puis-je pour toi ?" Tu notes qu'il laisse pendre ses bras d'une drôle de façon. À ton œil exercé, il paraît prêt à tirer une arme dissimulée.~ */
  IF ~~ THEN REPLY #10044 /* ~"Tu étais en train de surveiller ce bâtiment, là ?"~ */ GOTO 3
  IF ~~ THEN REPLY #10045 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith."~ */ GOTO 9
  IF ~~ THEN REPLY #10046 /* ~"Peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10047 /* ~Il te regarde, étonné. "Et bien, en fait, non. Pourquoi ? Tu crois qu'il s'y passe quelque chose d'intéressant ?" Il se tourne pour examiner le bâtiment que tu lui as indiqué.~ */
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #10048 /* ~"Allez. Ne me prends pas pour un imbécile. Tu surveilles quelque chose !"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #10049 /* ~"Oh vraiment."~ */ EXTERN ~DANNAH~ 78
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #10050 /* ~"Peu importe, j'ai fait erreur. Mais, j'ai vraiment une question à te poser. Je cherche un deva qui pourrait être en ville."~ */ GOTO 9
  IF ~~ THEN REPLY #10051 /* ~"Excuse-moi, j'ai fait erreur. Il faut que j'y aille."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10052 /* ~Il te toise, comme pour mesurer ta valeur, puis il fait une sorte de tour de passe-passe et te jette un regard innocent. Baissant les yeux, tu remarques alors l'éclat doré des pièces que contient sa manche. "Je t'assure que tu te méprends, l'ami. C'est une belle journée, et j'en profite, voilà tout."~ */
  IF ~~ THEN REPLY #10053 /* ~"Oui, tu as sûrement raison. Toutes mes excuses… mon ami."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #10054 /* ~"Non, je suis presque sûr que c'est ce que tu étais en train de faire."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10055 /* ~Il s'avance, te donne une tape amicale dans le dos, et tu sens le poids de ta bourse augmenter. "Je te salue donc, l'ami. Au plaisir de te revoir."~ */
  IF ~~ THEN REPLY #10056 /* ~"Au revoir."~ */ DO ~GivePartyGold(25)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #10057 /* ~Il fronce les sourcils. "Dans ce cas, je devrais faire… deux fois plus d'efforts de te convaincre du contraire. Sache toutefois que je n'irai pas plus loin." Un autre tour de passe-passe, et tu vois des pièces d'or luire dans ses deux manches.~ */
  IF ~~ THEN REPLY #10058 /* ~"Oui, c'est ça. Je te crois, tu faisais juste une promenade."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10059 /* ~"Non, je sais ce que j'ai vu."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10060 /* ~Il s'avance, te donne une tape amicale dans le dos, et tu sens le poids de ta bourse augmenter. "Je te salue donc, l'ami. Au plaisir de te revoir."~ */
  IF ~~ THEN REPLY #10061 /* ~"Au revoir."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #10062 /* ~Il fronce les sourcils, un autre tour de passe-passe, et tu vois, à la place de l'or, un éclat d'acier. "Je déplore que l'on n'ait pas pu trouver un terrain d'entente."~ */
  IF ~~ THEN REPLY #10063 /* ~"Pas aussi dommage que tu le crois."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.2 11.1
  SAY #10064 /* ~Il te dévisage, perplexe. "Tiens donc… Je trouve cela curieux. Ce n'est pas le genre d'endroit où l'on s'attendrait à croiser un deva. Mais admettons… Va à l'auberge de la Porte du Traître. J'ai cru comprendre que l'on y négocie ce genre d'informations."~ */
  IF ~~ THEN REPLY #10065 /* ~"Merci, c'est ce que je vais faire."~ */ EXIT
  IF ~~ THEN REPLY #10066 /* ~"Où se trouve cet endroit ?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #10067 /* ~"Navré, l'ami, je n'y ai jamais mis les pieds et donc je l'ignore. Mais elle se trouve par ici. Jette un coup d'œil alentour."~ */
  IF ~~ THEN REPLY #10068 /* ~"Merci et au revoir."~ */ EXIT
END

IF ~  Global("Curst_rogue_paid","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #10069 /* ~Le type louche a l'air gêné de te revoir. "Tiens, mais c'est mon vieil ami. Tu as décidé de me rendre une nouvelle visite ? J'apprécie l'intention, mais, là, j'essaie de travailler, tu sais."~ */
  IF ~~ THEN REPLY #10070 /* ~"Je suis là pour de l'argent, pas pour faire la conversation."~ */ GOTO 12
  IF ~~ THEN REPLY #10072 /* ~"Je cherche un deva. J'ai entendu dire qu'il y en avait un ici, à Maudith."~ */ GOTO 9
  IF ~~ THEN REPLY #10073 /* ~"Excuse-moi, je ne voulais pas te déranger, je venais juste dire bonjour."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #10071 /* ~Il fronce les sourcils et adopte un ton grave. "Écoute, l'ami, tu m'as percé à jour, et je t'ai payé pour avoir la paix. Chacun son métier. Tenons-nous-en là, et restons amis."~ */
  IF ~~ THEN REPLY #10074 /* ~"Très bien. Alors, je m'en vais."~ */ EXIT
  IF ~~ THEN REPLY #10075 /* ~"Pas question. Donne-moi l'or ou je me charge de toi."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #10076 /* ~"Je déplore que l'on n'ait pas pu trouver un terrain d'entente."~ */
  IF ~~ THEN REPLY #10077 /* ~"Pas aussi dommage que tu le crois."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
