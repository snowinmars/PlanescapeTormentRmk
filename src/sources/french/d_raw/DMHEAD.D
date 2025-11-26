// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHEAD~

IF ~  Global("Mertwyn_Head","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #42384 /* ~Il n'y a, apparemment, aucun moyen d'ouvrir ce solide coffret en métal surmonté d'une poignée - il paraît avoir été soudé. Mais plusieurs fentes s'ouvrent sur l'un de ses flancs, même si elles ne laissent pas voir son contenu. Il en émane une odeur douceâtre de pourriture.

Tu l'étudies de plus près quand il tressaille entre tes mains. Quelque chose a bougé dedans ! Il en sort une voix d'homme : "Hé !… Il y a quelqu'un, par hasard ? Je m'appelle Mertwyn… Il y a quelqu'un ? Hé-ho ?"~ */
  IF ~~ THEN REPLY #42385 /* ~"Oui… Bonjour…"~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42386 /* ~Ignore la voix, range l'objet.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42387 /* ~"Louées soient les Puissances ! Tu n'aurais pas vu mon corps, par hasard ? C'est dur de le louper… Il se balade avec une stupide tête de bois sur les épaules… Il a dû finir par s'user les pieds maintenant, à force de me chercher !"~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #42388 /* ~"Oui, je l'ai vu… À la Salle des Fêtes."~ */ GOTO 2
  IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN REPLY #42389 /* ~"Non… Je ne crois pas…"~ */ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42390 /* ~"C'est mon jour de chance, alors ! Est-ce que tu accepterais de me ramener jusqu'à lui, mon bon monsieur ?"~ */
  IF ~~ THEN REPLY #42391 /* ~"Oui, si tu veux."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~J'ai accepté de ramener la tête de Mertwyn à la Salle des Fêtes, pour la réunir avec son corps.~ */ GOTO 3
  IF ~~ THEN REPLY #42392 /* ~"Qu'est-ce que tu m'offres ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42393 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0 8.0 9.0 10.0
  SAY #42394 /* ~"Formidable ! Merci beaucoup. Si ça ne te dérange pas, maintenant j'aimerais qu'on se taise jusqu'à ce que j'ai récupéré mon corps."~ */
  IF ~~ THEN REPLY #42395 /* ~"Mais j'avais des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #42396 /* ~"Très bien… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #42397 /* ~"Je n'en doute pas, compte tenu du fait que tu viens de tomber sur une tête qui parle enfermée dans une boîte en fer… mais il faudra attendre. Tu sais, c'est fatigant d'être détaché de son corps… Je te présente mes plus humbles excuses."~ */
  IF ~~ THEN REPLY #42398 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 9.1 10.1
  SAY #42399 /* ~"Eh… ma gratitude ?"~ */
  IF ~~ THEN REPLY #42400 /* ~"D'accord. Je vais te ramener."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~J'ai accepté de ramener la tête de Mertwyn à la Salle des Fêtes, pour la réunir avec son corps.~ */ GOTO 3
  IF ~~ THEN REPLY #42401 /* ~"Je voudrais un peu plus que ça."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #42402 /* ~"Eh bien, entre mon corps et moi-même, je suis sûr qu'on finira par trouver quelque chose qui te conviendra. Mais tu peux me ramener d'abord ?"~ */
  IF ~~ THEN REPLY #42403 /* ~"D'accord, je vais le faire."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~J'ai accepté de ramener la tête de Mertwyn à la Salle des Fêtes, pour la réunir avec son corps.~ */ GOTO 3
  IF ~~ THEN REPLY #42404 /* ~"Donne-moi quelque chose tout de suite."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #42405 /* ~"Eh… Eh bien, en fait, je *n'ai* pas grand-chose pour le moment. Je ne *suis* qu'une tête dans une boîte en fer scellée, tu sais."~ */
  IF ~~ THEN REPLY #42406 /* ~"D'accord… je le ferai."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~J'ai accepté de ramener la tête de Mertwyn à la Salle des Fêtes, pour la réunir avec son corps.~ */ GOTO 3
  IF ~~ THEN REPLY #42407 /* ~"Bon… Alors, reste à pourrir dans ta boîte, Mertywn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #42408 /* ~"Attends ! Attends, mon bon monsieur ! Écoute, je peux te donner *quelque chose*, mais pour ça je dois d'abord récupérer mon corps !"~ */
  IF ~~ THEN REPLY #42409 /* ~"D'accord, je vais le faire."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42410 /* ~"On verra ça plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #42411 /* ~"Oh, mon Dieu. Eh bien, ç'aurait été trop beau, hein ? En tout cas, il est sûrement en train d'aller et venir dans la Salle des Fêtes, au nord-est du Quartier des Gratte-Papier. Est-ce que, par hasard, tu accepterais de m'emmener là-bas, mon bon monsieur ?"~ */
  IF ~~ THEN REPLY #42412 /* ~"Oui, si tu veux."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~J'ai accepté de ramener la tête de Mertwyn à la Salle des Fêtes, pour la réunir avec son corps.~ */ GOTO 3
  IF ~~ THEN REPLY #42413 /* ~"Qu'est-ce que tu m'offres ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42414 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #42415 /* ~La tête emprisonnée de Mertwyn s'agite alors que tu soulèves la boîte. "Oh, rebonjour… Dis-moi, tu ne pourrais pas me conduire jusqu'à mon corps, par hasard ? Je t'assure que je t'en serais *très* reconnaissant…"~ */
  IF ~~ THEN REPLY #42416 /* ~"Oui, si tu veux."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42417 /* ~"Qu'est-ce que tu m'offres ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42418 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #42419 /* ~La tête emprisonnée de Mertwyn s'agite alors que tu soulèves la boîte. "Nous y sommes, mon bon monsieur ? Hmmm… Je ne *vois* pas mon corps…"~ */
  IF ~~ THEN REPLY #42420 /* ~"Non, mais j'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #42421 /* ~"Non, pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #42422 /* ~Soudain, la voix de Mertwyn résonne dans la boîte métallique. "Oh ! Oh ! Le voilà ! C'est mon corps ! Il est là, mon vieil ami… Là-bas…"~ */
  IF ~~ THEN EXTERN ~DMERTWYN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #42423 /* ~"Oh, allez… Ce n'est pas très gentil de ta part. De toute façon, à quoi peut te servir ma tête ?"~ */
  IF ~~ THEN REPLY #42424 /* ~Laisse le corps de Mertwyn prendre sa tête.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GiveGoldForce(200)
~ JOURNAL #56738 /* ~J'ai réuni la tête et le corps de Mertwyn ; tous deux ont été très heureux de se retrouver.~ */ EXTERN ~DMERTWYN~ 8
  IF ~~ THEN REPLY #42425 /* ~"Désolé, mais je vais te garder encore un peu. Au revoir."~ */ EXIT
END
