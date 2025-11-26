// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25492 /* ~L'homme est drapé d'un habit marron, sale, et en loques. Une grande capuche cache presque entièrement son visage.~ */
  IF ~~ THEN REPLY #25493 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #25596 /* ~Laisse-le tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25494 /* ~Tu vois ses yeux se plisser derrière son capuchon, et il recule d'un pas. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #25495 /* ~"Que fais-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #25593 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #25594 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25595 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 20.0
  SAY #25496 /* ~"Je cherche des corps, voilà c'que j'fais. Mais à voir comme les gens sont en bonne santé, on croirait que les Pouvoirs Morts ont fichu le camp des Plans." Ses yeux s'éclairent d'une soudaine lueur : "On a eu une épidémie le mois dernier, et c'était quelque chose… des corps puants jusqu'au ciel, et plein de jonc à se faire."~ */
  IF ~~ THEN REPLY #25497 /* ~"Pourquoi cherches-tu des corps ?"~ */ GOTO 3
  IF ~~ THEN REPLY #25590 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #25591 /* ~"J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25592 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #25498 /* ~Il paraît surpris. "Ben, on traîne les types à la morgue. Là-bas, on discute avec les Hommes-Poussière, on marchande un peu et on récolte un peu d'jonc."~ */
  IF ~~ THEN REPLY #25499 /* ~"Pourquoi est-ce que les Hommes-Poussière achètent les corps ?"~ */ GOTO 4
  IF ~~ THEN REPLY #25587 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #25588 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25589 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25500 /* ~"Ils récupèrent les morts… c'est leur boulot. Ils nous paient pour ramasser le plus de corps possible. Puis ils donnent au corps du type la place qu'il lui faut ou ils le font incinérer. Ils prennent ça très au sérieux, leur philosophie d'azimuté, mais moi ça me rapporte du jonc." Il fait un clin d'œil.~ */
  IF ~~ THEN REPLY #25501 /* ~"Où sommes-nous ?"~ */ GOTO 5
  IF ~~ THEN REPLY #25585 /* ~"J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25586 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 20.1
  SAY #25502 /* ~Il se renfrogne. "T'es dans la Ruche, bien sûr. Le coin le plus sale de tout Sigil. D'où tu viens, matois ? T'es du primaire, ou d'ailleurs ?"~ */
  IF ~~ THEN REPLY #25503 /* ~"Non. Pourquoi cherches-tu des corps ?"~ */ GOTO 3
  IF ~~ THEN REPLY #25504 /* ~"Non. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25584 /* ~"Non. C'est tout c'que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 20.2
  SAY #25505 /* ~Il lève les sourcils. "Alors moi aussi j'en ai : Qu'est-ce que tu veux savoir, et combien t'es prêt à payer pour le savoir ?"~ */
  IF ~~ THEN REPLY #25506 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 7
  IF ~~ THEN REPLY #25579 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25580 /* ~"Je cherche un certain Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25581 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25582 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 7
  IF ~~ THEN REPLY #25583 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #25507 /* ~"Regarde autour de toi, matois… Je m'fais pas assez de jonc pour aller cracher l'soltif gratos. Faudra m'payer un peu, si tu veux la chanson."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25508 /* ~Donne-lui deux pièces.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25575 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25576 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25577 /* ~"T'auras rien et tu vas répondre à mes questions."~ */ GOTO 19
  IF ~~ THEN REPLY #25578 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 19.1
  SAY #25509 /* ~Il pouffe. "Même les Hommes-Poussière paieraient plus que ça, matois. Tu dois pas avoir besoin d'savoir grand-chose."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25510 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25560 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25567 /* ~"T'auras rien et tu vas répondre à mes questions."~ */ GOTO 19
  IF ~~ THEN REPLY #25574 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 19.2
  SAY #25511 /* ~Il étudie les pièces se trouvant dans sa main pendant un instant. "Hé". Il les empoche rapidement. "Pose tes questions."~ */
  IF ~~ THEN REPLY #25512 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25556 /* ~"Je cherche un certain Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25557 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25558 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25559 /* ~"Peu importe. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.2 12.2 13.1 14.1 15.0 16.0 18.0
  SAY #25513 /* ~"Je… on… gagne notre vie en ramassant les morts dans les rues de Sigil et en traînant leurs derrières puants jusqu'à la morgue. Pas la meilleure façon d'gagner sa vie, mais faut un début à tout. C'est tout c'que tu veux savoir, matois ?" Il te regarde bizarrement.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25514 /* ~"Je cherche un certain Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25553 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25554 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25555 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 15.1 16.1 18.1
  SAY #25515 /* ~Il plisse soudainement les yeux. "Pharod… qu'est-ce que tu veux savoir sur lui ?"~ */
  IF ~~ THEN REPLY #25516 /* ~"Tu sembles méfiant d'un seul coup … pourquoi ?"~ */ GOTO 12
  IF ~~ THEN REPLY #25548 /* ~"Tu sais où il est ?"~ */ GOTO 14
  IF ~~ THEN REPLY #25549 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25550 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25551 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25552 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 11.0 14.0
  SAY #25517 /* ~"Pharod, hein !" Il crache, en ricanant dédaigneusement. "Le Square du Chiffonnier, c'est le territoire de Partagetombe - mon patron - tu vois. Pharod et ses chiens sont venus il y a quelque temps et ont essayé de nous chasser. Nous avons résisté, bien sûr et maintenant ils se cachent tous. Nous en attrapons encore un de temps à autre autour du Square. En général, nous les échangeons vite à la Morgue contre du jonc, ces maudits bougres."~ */
  IF ~~ THEN REPLY #25518 /* ~"Parle-moi de Partagetombe."~ */ GOTO 13
  IF ~~ THEN REPLY #25543 /* ~"Sais-tu où est Pharod ?"~ */ GOTO 14
  IF ~~ THEN REPLY #25544 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25545 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25546 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25547 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25519 /* ~"C'est mon patron… il a pas mal de Récupérateurs dans sa poche, crois-moi. J'resterais loin de lui, si j'étais toi, sauf si t'as *vraiment* une bonne raison d'parler au gars… J'lui ai jamais parlé en face, moi-même."~ */
  IF ~~ THEN REPLY #25520 /* ~"Sais-tu où est Pharod ?"~ */ GOTO 14
  IF ~~ THEN REPLY #25539 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25540 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25541 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25542 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1 12.1 13.0
  SAY #25521 /* ~"Je sais où il n'est pas, ce sale rat… il n'est pas dans ce que la plupart des Récupérateurs appellent leur guitoune, à savoir le Square du Chiffonnier, mais la chanson dit qu'il n'en est pas loin."~ */
  IF ~~ THEN REPLY #25522 /* ~"Est-ce que tous les Récupérateurs partagent ton avis sur Pharod ?"~ */ GOTO 12
  IF ~~ THEN REPLY #25523 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25524 /* ~"Je cherche aussi un journal que j'ai perdu."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25537 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25538 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.1 11.3 12.3 13.2 14.2 16.2 18.2
  SAY #25525 /* ~Il ne fait que secouer la tête, intrigué.~ */
  IF ~~ THEN REPLY #25526 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25527 /* ~"Je cherche aussi un certain Pharod."~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25528 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25536 /* ~"Alors, au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 9.3 10.2 11.4 12.4 13.3 14.3 15.2 18.3
  SAY #25529 /* ~"La sage-femme ? Une chic femme pour sûr, elle t'aide quand tu es malade ou si t'as besoin. Elle vit dans une cabane le long de la plate-forme dans le Square du Chiffonnier, si tu as besoin de la voir."~ */
  IF ~~ THEN REPLY #25530 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25531 /* ~"Je cherche un certain Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25532 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 15
  IF ~~ THEN REPLY #25533 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 9.4 10.3 11.5 12.5 13.4 14.4 15.3 16.3 18.4
  SAY #25534 /* ~"Bien, fais gaffe à toi, matois. Si j'te trouve dans la rue, j'ferai attention à ton cadavre."~ */
  IF ~~ THEN REPLY #25535 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2 8.1 19.3
  SAY #25561 /* ~"Pose tes questions. J'peux pas jurer que j'peux t'aider, mais on sait jamais."~ */
  IF ~~ THEN REPLY #25562 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25563 /* ~"Je cherche un certain Pharod."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25564 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25565 /* ~"Que sais-tu de Mebbeth ?"~ */ GOTO 16
  IF ~~ THEN REPLY #25566 /* ~"Peu importe. Au revoir."~ */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 7.3 8.2
  SAY #25568 /* ~"J'sais rien, lascar, et je te suggère d'aller chercher tes réponses ailleurs."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #25569 /* ~Saisis-le, secoue-le un peu.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25570 /* ~Donne-lui deux pièces.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25571 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25572 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25573 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #25597 /* ~L'homme recule d'un pas, te scrutant avec méfiance sous son capuchon. "Encore, hein ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #25598 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 2
  IF ~~ THEN REPLY #25599 /* ~"Où sommes-nous ?"~ */ GOTO 5
  IF ~~ THEN REPLY #25600 /* ~"J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25601 /* ~"Rien. Au revoir."~ */ EXIT
END
