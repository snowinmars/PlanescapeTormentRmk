// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERTWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERTWYN~

IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2960 /* ~Il est évident que cet homme a un sérieux *problème*… cela se voit à sa façon de tituber, de se cogner, de regarder dans le vide. Alors que tu t'approches de lui, tu comprends enfin le problème auquel il doit faire face : il n'a pas de tête. La chose qui repose sur ses épaules n'est qu'une prothèse en bois sculptée avec talent… une fausse tête.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #2961 /* ~"Bonjour… ?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42316 /* ~"Bonjour… ?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42317 /* ~"Ce doit être le corps de Mertwyn…"~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42318 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 17.0 17.1
  SAY #42320 /* ~Le corps décapité arrête ses fouilles quelques instants et marque une pause. Ses mains commencent à tâtonner, comme s'il cherchait à savoir où tu te trouves exactement.~ */
  IF ~~ THEN REPLY #42321 /* ~Laisse-le te toucher.~ */ GOTO 2
  IF ~~ THEN REPLY #42322 /* ~Attrape sa main.~ */ GOTO 3
  IF ~~ THEN REPLY #42323 /* ~Écarte-toi de lui.~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42324 /* ~Au bout de quelques instants, son doigt frôle ton avant-bras. Il saisit ton bras, remonte jusqu'à ton épaule, puis jusqu'à ta tête. En palpant ton visage et ta tête, ses mains descendent dans ton cou, comme pour chercher quelque chose. Enfin, il attrape ta main et la secoue vigoureusement pour te saluer. Tu remarques que sa peau est froide et légèrement moite.~ */
  IF ~~ THEN REPLY #42325 /* ~"Tu me comprends ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42326 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #42327 /* ~Soudain, le corps décapité saute, puis te serre fermement la main… Il semble relativement amical. Il a de la poigne, mais sa peau est froide et légèrement moite.~ */
  IF ~~ THEN REPLY #42328 /* ~"Où est ta tête ? Est-ce que tu me comprends, au moins ?"~ */ GOTO 4
  IF ~~ THEN REPLY #42329 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #42330 /* ~Le corps effectue différents gestes des mains, puis attend une réponse. Il semble te poser une question.~ */
  IF ~~ THEN REPLY #42331 /* ~"Quoi ? Je ne comprends pas…"~ */ GOTO 5
  IF ~~ THEN REPLY #42332 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42333 /* ~Le corps décapité tape du pied un moment tout en grattant le menton de sa fausse tête. Soudain, il lève un doigt, comme s'il lui venait une idée. Son doigt te désigne, désigne les yeux de sa tête de bois, puis te désigne de nouveau. Des deux mains, il indique ensuite sa tête de bois, hausse les épaules et te désigne.~ */
  IF ~~ THEN REPLY #42334 /* ~"Euh, non… Je n'ai pas vu ta tête."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.2 5.0
  SAY #42335 /* ~Le corps décapité hausse les épaules d'un air découragé et se détourne pour s'en aller.~ */
  IF ~~ THEN REPLY #42336 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #42337 /* ~Le corps se dirige vers toi en traînant des pieds, puis tend la main vers la boîte métallique contenant la tête de Mertwyn.~ */
  IF ~~ THEN REPLY #42338 /* ~Laisse le corps de Mertwyn prendre sa tête.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GivePartyGold(200)
~ JOURNAL #56738 /* ~J'ai réuni la tête et le corps de Mertwyn ; tous deux ont été très heureux de se retrouver.~ */ GOTO 8
  IF ~~ THEN REPLY #42339 /* ~Empêche le corps d'attraper sa tête.~ */ EXTERN ~DMHEAD~ 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #42340 /* ~"Ah, c'est mieux ; je te remercie, mon bon monsieur ! J'imagine que mon corps était un peu agité sans moi." Le corps étreint énergiquement la boîte métallique. "Oui, moi aussi, tu m'as manqué…" Le corps met la boîte sous son bras et te salue. "Et quant à toi, mon bon monsieur… tu mérites bien *une* récompense pour le dérangement. Voyons ce que j'ai à t'offrir…" Le corps fouille ses poches, puis, n'y trouvant rien, sa tunique. Enfin, il te tend plusieurs poignées de pièces de cuivre.~ */
  IF ~~ THEN REPLY #42341 /* ~"Merci, Mertwyn. J'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #42342 /* ~"Merci beaucoup. Au revoir, Mertwyn."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.0 12.1 13.0 14.2 15.1 16.0 18.0
  SAY #42343 /* ~"Certainement. Demande-moi tout ce que tu veux !"~ */
  IF ~~ THEN REPLY #42344 /* ~"Qu'est-ce qui t'est arrivé pour finir… comme ça ?"~ */ GOTO 10
  IF ~~ THEN REPLY #42345 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #42346 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 14
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42347 /* ~"Qu'est-ce que tu sais sur Ravel Puits-de-Rébus ?"~ */ GOTO 16
  IF ~~ THEN REPLY #42348 /* ~"Peu importe, Mertwyn. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42349 /* ~"En fait, je ne sais pas vraiment… Le corps m'a déposé dans une des salles de cours, et ce que je sais, c'est qu'ensuite, quelqu'un s'est enfui avec moi ! La dernière chose dont je me souvienne, c'est que tu m'as recueilli…"~ */
  IF ~~ THEN REPLY #42350 /* ~"Ce que je voulais dire c'était… Comment as-tu perdu ta *tête* ?"~ */ GOTO 11
  IF ~~ THEN REPLY #42351 /* ~"J'avais une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #42352 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #42353 /* ~Le corps se raidit. "Oh, nous n'aimons pas parler de ça. C'est vraiment horrible… Ce qui est fait est fait ; inutile d'y revenir. Mais ce que je peux te dire, c'est que si je suis dans cette boîte, c'est parce que ma tête n'est pas aussi présentable que mon corps, si tu vois ce que je veux dire."~ */
  IF ~~ THEN REPLY #42354 /* ~"J'avais une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #42355 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #42356 /* ~"Je vais et viens dans la Salle des Fêtes. Tu vois : ça et là. Je ne suis pas un Sensat, vois-tu, mais j'aime observer les allées et venues de ces gens de toutes sortes."~ */
  IF ~~ THEN REPLY #42357 /* ~"Un Sensat ?"~ */ GOTO 13
  IF ~~ THEN REPLY #42358 /* ~"J'avais une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #42359 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.1 15.0
  SAY #42360 /* ~Le corps balance doucement la boîte métallique, faisant 'dodeliner' la tête qu'elle renferme. "Oui… Tu sais, la Société des Sensations. Ils courent dans tous les sens, toujours en quête de nouvelles expériences, se figurant qu'ils finiront pas tomber sur un grand point noir du multivers s'ils tiennent la cadence assez longtemps." Le corps hausse les épaules.~ */
  IF ~~ THEN REPLY #42361 /* ~"J'avais une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #42362 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY #42363 /* ~Mertwyn semble troublé. "Tout le monde ne connaît pas la Salle des Fêtes ? Hmmm… Eh bien, c'est le quartier de la faction des Sensats, et plus important encore, peut-être, c'est là que se trouvent leurs sensoriums."~ */
  IF ~~ THEN REPLY #42364 /* ~"Parle-moi de ces sensoriums…"~ */ GOTO 15
  IF ~~ THEN REPLY #42365 /* ~"Un Sensat ?"~ */ GOTO 13
  IF ~~ THEN REPLY #42366 /* ~"J'avais une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #42367 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42368 /* ~"Le portier qui est là te donnerait de meilleures explications que moi… mais il y a des chambres qui abritent de nombreuses pierres enchantées, qui tour à tour renferment les diverses expériences et sensations qui y ont été enregistrées. Les sensoriums publics sont ouverts à tout le monde, mais l'entrée est payante, bien que bon marché. Les sensoriums privés ne sont ouverts qu'aux membres de la Société des Sensations, aux Sensats."~ */
  IF ~~ THEN REPLY #42369 /* ~"Un Sensat ?"~ */ GOTO 13
  IF ~~ THEN REPLY #42370 /* ~"J'avais une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #42371 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY #42372 /* ~"Ravel ? Je ne me souviens pas de cette femme…"~ */
  IF ~~ THEN REPLY #42373 /* ~"Alors j'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #42374 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #42375 /* ~L'homme décapité continue à tituber, se cognant aux murs, piliers et autres obstacles. Sa fausse tête en bois se balance de manière précaire sur ses épaules, alors qu'il va et vient en traînant des pieds.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #42376 /* ~"Bonjour… ?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42377 /* ~"Bonjour… ?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42378 /* ~"Ce doit être le corps de Mertwyn…"~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42379 /* ~Laisse-le.~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #42381 /* ~Le corps de Mertwyn se tient là, tapotant tranquillement des doigts la boîte métallique qui renferme sa tête. À ton approche, il penche la boîte vers toi. "Rebonjour, mon bon monsieur !"~ */
  IF ~~ THEN REPLY #42382 /* ~"Bonjour. J'ai quelques questions, Mertwyn…"~ */ GOTO 9
  IF ~~ THEN REPLY #42383 /* ~"Je ne faisais que passer, Mertwyn. Au revoir."~ */ EXIT
END
