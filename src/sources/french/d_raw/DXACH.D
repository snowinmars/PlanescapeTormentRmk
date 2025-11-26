// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXACH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DXACH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #500 /* ~Tu vois le cadavre d'un homme. Le numéro '331' est gravé sur son crâne. Ses yeux et ses lèvres sont cousus. Un trou béant creuse sa gorge. Il sent le *pourri*.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #502 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #503 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #1354 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #1355 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 2
  IF ~~ THEN REPLY #1357 /* ~"Ça m'a fait plaisir de parler avec toi. Au revoir."~ */ GOTO 1
  IF ~~ THEN REPLY #1358 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.4
  SAY #501 /* ~Le cadavre regarde silencieusement dans le vide de ses yeux aveugles.~ */
  IF ~~ THEN REPLY #505 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #504 /* ~"Qu-qu…" Le zombi retrouve bizarrement sa voix. Il paraît inquiet. "Qui est-là ? Réponds-moi !"~ */
  IF ~~ THEN REPLY #507 /* ~"Tu ne me vois donc pas ?"~ */ GOTO 3
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #508 /* ~Improvise : "C'est moi. Tu ne reconnais donc pas ma voix ?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63307 /* ~Improvise : "C'est moi. Tu ne reconnais donc pas ma voix ?"~ */ GOTO 30
  IF ~~ THEN REPLY #519 /* ~"Qui es-tu ?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #506 /* ~"Xachariah ?"~ */ GOTO 4
  IF ~~ THEN REPLY #520 /* ~"Tu n'auras aucune réponse aujourd'hui, cadavre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #509 /* ~"Je suis aveugle, dans la mort comme dans la vie… Maintenant réponds-moi, qui es-tu ?"~ */
  IF ~  CheckStatGT(Player1,16,INT)
CheckStatLT(Player1,17,CHR)
~ THEN REPLY #510 /* ~Improvise : "C'est moi. Tu ne reconnais donc pas ma voix ?"~ */ GOTO 30
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #63308 /* ~Improvise : "C'est moi. Tu ne reconnais donc pas ma voix ?"~ */ GOTO 30
  IF ~~ THEN REPLY #511 /* ~"Qui es-tu ?"~ */ GOTO 31
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #521 /* ~"Xachariah ?"~ */ GOTO 4
  IF ~~ THEN REPLY #522 /* ~"Tu n'auras aucune réponse aujourd'hui, cadavre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 3.3 30.0 31.0
  SAY #512 /* ~"Quoi… toi !" Le zombi paraît surpris, mais rassuré. "Par le regard de la Dame…" Le ton de sa voix est émerveillé. "Tu n'es pas *mort*, matois ? Maudits soient ces yeux à demi morts… J'aimerais tant pouvoir te voir !"~ */
  IF ~~ THEN REPLY #515 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #516 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 47
  IF ~~ THEN REPLY #517 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #518 /* ~"Je ne peux pas te parler plus longtemps. Je dois partir. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1394 /* ~"Je ne peux pas te parler plus longtemps. Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #514 /* ~"Difficile de reconnaître sous ce linceul de peau répugnant ce vieux Xachariah l'Idiot ! C'est moi, matois. Bénis soient les Pouvoirs, je n'aurais jamais cru te revoir… mais mon ouïe me dit que toi aussi, tu as changé. As-tu fait de mauvais choix ?" Le trou dans la gorge de Xachariah siffle. "Toi aussi, tu es mort ?"~ */
  IF ~~ THEN REPLY #685 /* ~"C'est une longue histoire… mais je suis toujours en vie."~ */ GOTO 46
  IF ~~ THEN REPLY #686 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 47
  IF ~~ THEN REPLY #687 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 6
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #688 /* ~"Je n'ai plus le temps de parler, Xachariah. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1393 /* ~"Je n'ai plus le temps de parler, Xachariah. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 5.2
  SAY #513 /* ~"C'est la Morgue, matois. Tu le savais pas ?"~ */
  IF ~~ THEN REPLY #523 /* ~"Qu'est-ce qui t'a mis dans cet état ?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,12,INT)
~ THEN REPLY #524 /* ~"Qu'est-ce que tu peux me dire sur la Morgue ?"~ */ DO ~SetGlobal("Vaxis_Exposed","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #525 /* ~"Qu'est-ce que tu peux me dire sur ma vie antérieure ?"~ */ GOTO 16
  IF ~~ THEN REPLY #526 /* ~"Qu'est-ce que tu peux me dire sur mes précédents compagnons ?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #527 /* ~"Je dois partir. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1392 /* ~"Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.0 9.1 10.2 11.1 12.1 13.0 14.0 15.0 16.2 17.1 18.1 19.3 22.1 23.5 24.2 25.0 26.2 27.4 28.1 29.1 32.1 33.2 35.0 36.1 40.0 46.1 47.1 48.0 49.1
  SAY #528 /* ~"Hein ?"~ */
  IF ~  Global("Xachariah_Ring","GLOBAL",1)
~ THEN REPLY #63484 /* ~"Je veux récupérer cet objet maintenant, Xachariah…"~ */ GOTO 34
  IF ~~ THEN REPLY #637 /* ~"Qu'est-ce qui t'a mis dans cet état ?"~ */ GOTO 8
  IF ~~ THEN REPLY #638 /* ~"Qu'est-ce que tu peux me dire sur la Morgue ?"~ */ GOTO 9
  IF ~~ THEN REPLY #639 /* ~"Qu'est-ce que tu peux me dire sur ma vie antérieure ?"~ */ GOTO 16
  IF ~~ THEN REPLY #640 /* ~"Qu'est-ce que tu peux me dire sur mes précédents compagnons ?"~ */ GOTO 23
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1391 /* ~"Je dois partir. Au revoir, Xachariah."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #641 /* ~"Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.1
  SAY #529 /* ~Il baisse la voix comme s'il avait honte. "C'est dur, de marcher sur tes traces, matois, et j'en ai vu, des horreurs. Je me suis mis à boire, à boire sans cesse. Une fois que j'étais saoul comme un cochon, j'ai vendu mon corps aux Hommes-Poussière. Le destin a décidé de frapper un homme à terre, et je suis mort peu après."~ */
  IF ~~ THEN REPLY #531 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #545 /* ~"J'en ai assez entendu. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1390 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.2
  SAY #533 /* ~"Un lieu de mort dirigé par les Morts… Quelque chose ne tourne pas rond ici…"~ */
  IF ~~ THEN REPLY #534 /* ~"Comme quoi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #536 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #537 /* ~"Je n'ai plus le temps de parler avec toi. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1389 /* ~"Je n'ai plus le temps de parler avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #535 /* ~"Tu veux connaître le soltif ? Y'a un zombi qui prétend être un zombi, mais qui n'en est pas un. Je ne tiens pas à savoir pourquoi, mais c'est une chose étrange."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #538 /* ~"Autre chose ?"~ */ GOTO 11
  IF ~~ THEN REPLY #539 /* ~"De quel zombi il s'agit ?"~ */ GOTO 12
  IF ~~ THEN REPLY #540 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #546 /* ~"Je n'ai plus le temps de parler avec toi. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1388 /* ~"Je n'ai plus le temps de parler avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #541 /* ~"Autre chose. Ce vieux githzeraï… celui qui garde la salle de préparation… Dhall. Il t'a sauvé de l'incinération plusieurs fois. Tu as de la chance qu'il soit ton ami."~ */
  IF ~  CheckStatGT(Player1,17,INT)
~ THEN REPLY #542 /* ~"Qu'est-ce que Dhall a fait pour me sauver, exactement ?"~ */ GOTO 13
  IF ~~ THEN REPLY #543 /* ~"Je sais. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #544 /* ~"Je n'ai plus le temps de parler avec toi. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1387 /* ~"Je n'ai plus le temps de parler avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #547 /* ~"Même si mes yeux pouvaient les voir, je ne pourrais pas les compter. Voici comment tu le reconnaîtras : sa voix sonne faux pour un zombi. Il ne répond pas comme les autres."~ */
  IF ~  CheckStatGT(Player1,15,INT)
~ THEN REPLY #548 /* ~"T'as remarqué autre chose d'étrange à la Morgue ?"~ */ GOTO 11
  IF ~~ THEN REPLY #554 /* ~"Hmmm. Intéressant. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #549 /* ~"Je vais me mettre à la recherche de ce zombi. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1386 /* ~"Je vais me mettre à la recherche de ce zombi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #550 /* ~"Il a retardé ta crémation jusqu'à ce que tu te réveilles sur ta dalle. J'ignore pourquoi." ~ */
  IF ~~ THEN REPLY #552 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #553 /* ~"Je dois partir. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1385 /* ~"Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #555 /* ~"Il pensait qu'il était nécessaire d'éviter que… Je n'arrive pas à me souvenir pourquoi c'était nécessaire."~ */
  IF ~~ THEN REPLY #557 /* ~"Hmmm. Méfiant… J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #556 /* ~"Je vois. Je me demande si *c'était* nécessaire. Il faudrait que j'en parle avec Dhall … Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1384 /* ~"Je vois. Je me demande si *c'était* nécessaire. Il faudrait que j'en parle avec Dhall … Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #558 /* ~Sa voix retombe, comme s'il avait honte. "Quand nos chemins se sont séparés, matois, plus guère de vie ne restait en moi. Il est difficile de suivre tes pas et j'ai vu bien des horreurs. J'ai commencé à boire et j'étais presque hébété par l'alcool. Une fois saoul, j'ai vendu mon corps aux Hommes-Poussière. Le sort m'a frappé au plus bas et je mourus peu de temps après."~ */
  IF ~~ THEN REPLY #559 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #560 /* ~"Je dois partir. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1383 /* ~"Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.2 7.3
  SAY #561 /* ~"Pourquoi ? Tu t'es oublié ?"~ */
  IF ~~ THEN REPLY #562 /* ~"D'une certaine manière… oui."~ */ GOTO 17
  IF ~~ THEN REPLY #563 /* ~"Non… Je voulais juste voir si tu étais vraiment la personne que tu prétendais être."~ */ GOTO 20
  IF ~~ THEN REPLY #564 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #565 /* ~"Je dois partir. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1382 /* ~"Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 21.0 22.0
  SAY #566 /* ~"Tu étais bizarre, toujours méfiant et à la recherche de quelque chose… Je parie que tu as eu bien des ennemis dans ta vie. Et pour sûr, ceux qui se sont frottés à toi ont fini dans les chapitres noirs du livre des morts."~ */
  IF ~~ THEN REPLY #569 /* ~"Autre chose ? Autre chose de plus précis…"~ */ GOTO 18
  IF ~~ THEN REPLY #570 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #571 /* ~"Je dois partir. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1381 /* ~"Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #567 /* ~"Tu pouvais être terriblement cruel… comme cette fois où tu m'as fait signer ce contrat, ou quand tu as abandonné cette gamine pleurnicharde sur l'Averne. Nous avons aussi eu de sacrés moments, parfois. Aucun d'entre nous n'a jamais pensé à déserter le navire, fiston."~ */
  IF ~~ THEN REPLY #572 /* ~"Je… je vois. Quoi d'autre ? Il y a autre chose que tu pourrais me dire pour m'aider ?"~ */ GOTO 19
  IF ~~ THEN REPLY #573 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #574 /* ~"Je dois partir. Au revoir."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1380 /* ~"Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #568 /* ~"Dans ton âme, tu as vu ce qu'il t'arrivait, comme un territoire que l'on prend lors d'une guerre. Pour toi, tout était semblable à une bataille. Tu étais le salaud le plus cruel que j'aie jamais rencontré. Rien ne comptait plus que d'atteindre ton but. La pauvre Deionarra, pleurante et suppliante, ne t'a pas ému. Le gith t'avait mis en garde contre tes stratégies. Le pauvre Xachariah voulait juste tenir le coup jusqu'à ce que nous arrivions sur les Plans. Tu agissais comme si tu étais invincible, mais nous n'étions que des humains. Maintenant, nous sommes certainement tous inscrits dans le livre des morts…~ */
  IF ~  GlobalLT("Xachariah_Ring","GLOBAL",2)
~ THEN REPLY #63234 /* ~"Autre chose ?"~ */ GOTO 32
  IF ~~ THEN REPLY #576 /* ~"Deionarra ?"~ */ GOTO 26
  IF ~~ THEN REPLY #577 /* ~"Le 'gith' ? Qu'est-ce que tu veux dire ?"~ */ GOTO 24
  IF ~~ THEN REPLY #578 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #579 /* ~"Je vois… Je dois partir maintenant. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1379 /* ~"Je vois… Je dois partir maintenant. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #580 /* ~"Que te dire pour te prouver mon identité… Voyons, il reste d'autres souvenirs. Souviens-toi quand nous nous sommes frayés un chemin à travers l'Averne et nous avons rencontré ce groupe d'abishaï dans ce trou plein d'asticots."~ */
  IF ~~ THEN REPLY #581 /* ~Mensonge : "Oui."~ */ GOTO 21
  IF ~~ THEN REPLY #582 /* ~"Non."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #583 /* ~"Eh bien, je suis content que l'un de nous au moins s'en souvienne, parce que je suis sûr de ne pas m'en souvenir moi-même. Qui es-tu, matois, et que cherches-tu en furetant dans les souvenirs des morts ?"~ */
  IF ~~ THEN REPLY #584 /* ~J'espère découvrir qui je suis, Xachariah. Je l'ai oublié, et je crois que tu me connaissais. Que peux-tu me dire de ma vie antérieure ?~ */ GOTO 17
  IF ~~ THEN REPLY #586 /* ~"Laisse tomber. J'ai d'autres questions."~ */ EXIT
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #587 /* ~"Rien… Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1378 /* ~"Rien… Je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #588 /* ~"Hum… Cet épisode ne s'est peut-être pas passé comme je m'en souviens. Souviens-toi quand Deionarra a failli entrer dans le livre des morts en tentant de t'empêcher d'entrer dans Maudith."~ */
  IF ~~ THEN REPLY #590 /* ~"Non, pas vraiment… mais ce n'est pas grave. Alors, que peux-tu me dire de ma vie antérieure ?"~ */ GOTO 17
  IF ~~ THEN REPLY #591 /* ~"Peu importe… J'ai d'autres questions."~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #592 /* ~"Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1377 /* ~"Je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.3 7.4
  SAY #589 /* ~"Quelle drôle d'équipe… Un homme à moitié mort qui n'aurait pas pu entrer dans le livre des morts (si laid que les Pouvoirs du mal n'en auraient pas voulu), la fille gémissante d'un avocat, un gith en exil, un crâne à la langue de chacal et un archer aveugle à moitié saoul comme moi."~ */
  IF ~~ THEN REPLY #593 /* ~"Gith ?"~ */ GOTO 24
  IF ~~ THEN REPLY #594 /* ~"La fille gémissante d'un avocat ?"~ */ GOTO 26
  IF ~~ THEN REPLY #595 /* ~"Un crâne flottant ?"~ */ GOTO 28
  IF ~~ THEN REPLY #596 /* ~"Tu étais un archer aveugle ?"~ */ GOTO 49
  IF ~~ THEN REPLY #597 /* ~"Tu sais ce qui est arrivé à mon journal ?"~ */ GOTO 29
  IF ~~ THEN REPLY #598 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #599 /* ~"Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1376 /* ~"Je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.2 23.0 27.0
  SAY #600 /* ~"Gith sinistre… hostile et silencieux, comme tous ceux de leur espèce. Je ne lui faisais pas un brin confiance. Tu vois, matois, ces gith chétifs n'ont que deux choses en tête : éviter l'esclavage et tuer les illithids à tête de calmar. Le reste ne compte pas. Il n'avait rien à fiche de nous, à part toi."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #601 /* ~"Comment ça ?"~ */ GOTO 25
  IF ~~ THEN REPLY #602 /* ~"À propos de certains de mes compagnons…"~ */ GOTO 27
  IF ~~ THEN REPLY #603 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #604 /* ~"Hmmm. Intéressant. Merci, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1375 /* ~"Hmmm. Intéressant. Merci, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.0
  SAY #605 /* ~"L'un des soltifs que j'ai jamais pu expliquer, matois. Tu peux peut-être m'éclairer ?"~ */
  IF ~~ THEN REPLY #606 /* ~"Je ne sais pas moi-même. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #607 /* ~"Je ferais peut-être mieux de trouver. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1374 /* ~"Je ferais peut-être mieux de trouver. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.1 23.1 27.1
  SAY #608 /* ~"Cette gamine bagarreuse qui se comportait comme un soldat avait juré de te suivre jusqu'à Baator et de revenir. Et par les Puissances, c'est ce qu'elle a fait ! Elle était si obsédée par l'idée qu'elle pouvait te perdre. Elle tenait peu à moi ou au gith. Elle était folle d'amour pour toi, ce qui prouve qu'elle était azimutée. Je ne comprends pas pourquoi les femmes sont attirées par ta sale gueule, mais ça leur fait bouillir le sang. C'était une gamine riche du Quartier des Gratte-Papier. Tu voulais obtenir quelque chose d'elle, et le seul prix à payer était qu'elle t'accompagne."~ */
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #609 /* ~"Qu'est-ce que je lui voulais ?"~ */ GOTO 25
  IF ~~ THEN REPLY #610 /* ~"À propos de certains de mes compagnons…"~ */ GOTO 27
  IF ~~ THEN REPLY #614 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #611 /* ~"J'en ai assez entendu. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1373 /* ~"J'en ai assez entendu. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.1 28.0 29.0 33.1 49.0
  SAY #612 /* ~"Quoi ? Lequel ?"~ */
  IF ~~ THEN REPLY #613 /* ~"Le gith."~ */ GOTO 24
  IF ~~ THEN REPLY #615 /* ~"La fille gémissante d'un avocat."~ */ GOTO 26
  IF ~~ THEN REPLY #616 /* ~"Le crâne flottant."~ */ GOTO 28
  IF ~~ THEN REPLY #617 /* ~"Tu… tu étais un… archer aveugle ?"~ */ GOTO 49
  IF ~~ THEN REPLY #618 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #619 /* ~"J'en ai assez entendu. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1372 /* ~"J'en ai assez entendu. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.2 27.2
  SAY #620 /* ~"Ce crâne malpoli cherchait la bagarre ! Il faisait le beau et se moquait de ma condition !"~ */
  IF ~~ THEN REPLY #622 /* ~"À propos de certains de mes compagnons…"~ */ GOTO 27
  IF ~~ THEN REPLY #623 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #624 /* ~"J'en ai assez entendu. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  GlobalGT("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #1371 /* ~"J'en ai assez entendu. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.4
  SAY #625 /* ~"Le carnet que tu avais cousu sur ta propre chair et qui contient plus de pages que je n'aie eu d'années dans ma vie ? ! Tant mieux si tu as perdu ce livre macabre ! Tu y gribouillais toujours quelque chose. Son odeur était affreuse. Tu avais toujours peur que quelqu'un te le prenne. Tu écrivais jusqu'à ce que la peau se décolle de tes doigts. Je me demandais si tu voulais vider ton cerveau en écrivant. Nous attendions parfois des jours pendant que tu écrivais. Je détestais ce livre infernal. Il semblait te tenir à cœur, mais pas de manière positive. La dernière fois que je l'ai vu, il était en ta possession. Si te ne l'as pas avec toi, matois, je ne sais pas où sur les Plans il pourrait bien être."~ */
  IF ~~ THEN REPLY #626 /* ~"À propos de mes compagnons…"~ */ GOTO 27
  IF ~~ THEN REPLY #627 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #628 /* ~"Merci du tuyau. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1370 /* ~"Merci du tuyau. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.1 2.2 3.0 3.1
  SAY #629 /* ~"Ça me dit quelque chose… mais si tu es celui auquel je pense, alors… qui…" Le zombi se tait pendant un moment. "Qui suis-je ?"~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #631 /* ~"Xachariah ?"~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #632 /* ~"Je ne connais pas ton nom. Je reviendrai peut-être si je le trouve. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.3 3.2
  SAY #630 /* ~"Je…" Le zombi se tait. "… mon nom… m'a échappé. Je… ne sais plus… qui je suis."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #634 /* ~"Xachariah ?"~ */ GOTO 4
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #635 /* ~"Je ne connais pas ton nom. Je reviendrai peut-être quand je l'aurai trouvé. Au revoir."~ */ EXIT
  IF ~  Global("Xachariah_Name","GLOBAL",1)
~ THEN REPLY #636 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.0
  SAY #642 /* ~"En partant, tu as laissé quelque chose, matois… tu as laissé Dak'kon, sans maître, et le crâne, sans ami. Et moi ? Tu as tué quelque chose en moi qui n'a jamais refait surface. Bien du sang a coulé dans mon estomac et mes selles. C'était comme un morceau de plomb froid dans mes intestins."~ */
  IF ~~ THEN REPLY #645 /* ~"Quoi ?"~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",1)
~ GOTO 33
  IF ~~ THEN REPLY #646 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #648 /* ~"Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1369 /* ~"Je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #643 /* ~"Je… je ne sais pas. Mais il m'a changé. Changé en profondeur. J'agonisais quand tu l'as mis en moi, et je ne m'en suis pas soucié plus que ça sur le moment."~ */
  IF ~~ THEN REPLY #649 /* ~"Je peux le reprendre ?"~ */ GOTO 34
  IF ~~ THEN REPLY #650 /* ~"À propos de mes autres compagnons…"~ */ GOTO 27
  IF ~~ THEN REPLY #651 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #652 /* ~"Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1368 /* ~"Je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 7.0 33.0
  SAY #644 /* ~"Il est enterré profondément. Sans scalpel ni couteau et sans mes indications, tu ne réussiras pas à le déloger. Tu as un scalpel ou un couteau ?"~ */
  IF ~  PartyHasItem("Scalpel")
~ THEN REPLY #647 /* ~"Oui."~ */ GOTO 36
  IF ~  !PartyHasItem("Scalpel")
~ THEN REPLY #653 /* ~"Non… mais je devais pouvoir arracher les sutures."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from:
  SAY #654 /* ~"Eh bien, reviens quand tu en auras trouvé un et on tentera de sortir cet anneau."~ */
  IF ~~ THEN REPLY #655 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #656 /* ~"Je vais aller en chercher un. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0 34.1
  SAY #657 /* ~"Coupe 10 cm en dessous du sternum et tâte." ~ */
  IF ~~ THEN REPLY #658 /* ~Fais-le.~ */ GOTO 37
  IF ~~ THEN REPLY #659 /* ~"Peu importe, Xachariah… J'ai quelques questions à te poser à la place…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #660 /* ~"Impossible pour le moment, je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1367 /* ~"Impossible pour le moment, je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #661 /* ~"Un peu plus à gauche… encore…" Ta main saisit un objet. ~ */
  IF ~~ THEN REPLY #663 /* ~Arrache-le.~ */ DO ~GiveItemCreate("XacLiver",Protagonist,0,0,0)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #662 /* ~Tu sors un foie de zombi. "Par le regard de la Dame ! Pardon, matois… je croyais que les Hommes-Poussière nous avaient ôté tous les organes avant de nous sortir du livre des morts. Essaye encore. Peut-être à droite."~ */
  IF ~~ THEN REPLY #664 /* ~Refais-le.~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #665 /* ~"Et voilà… un peu plus sur la droite, reviens… encore…" Tu sens quelque chose de froid et dur, un peu plus gros que ce à quoi tu t'attendais. "Je crois que c'est ça. Sors-le."~ */
  IF ~~ THEN REPLY #666 /* ~Arrache-le.~ */ DO ~SetGlobal("Xachariah_Ring","GLOBAL",2)
GiveItemCreate("XacHeart",Protagonist,1,0,0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #667 /* ~Tu tiens un objet noirci, de la taille d'un poing et très lourd pour sa taille. "C'est ça. Euh… Il est plus gros que je l'aurais cru. Et… qu'est-ce que c'est ? On dirait… un cœur."~ */
  IF ~~ THEN REPLY #668 /* ~"Je crois, oui. Merci, Xachariah. J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #669 /* ~"Je dois partir maintenant. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1366 /* ~"Je dois partir maintenant. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 4.3 5.3 6.4 7.6 8.1 9.2 10.3 11.2 12.2 13.1 14.1 15.1 16.3 17.2 18.2 19.4 21.2 22.2 23.6 24.3 25.1 26.3 27.5 28.2 29.2 32.2 33.3 36.2 40.1 46.2 47.2 48.1 49.2
  SAY #670 /* ~"Avant de partir, j'aimerais que tu me rendes un petit service, matois."~ */
  IF ~~ THEN REPLY #672 /* ~"Quoi ?"~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 42
  IF ~~ THEN REPLY #671 /* ~"J'ai déjà assez de services à rendre et de quêtes à entreprendre comme ça… Je dois partir, Xachariah. Au revoir."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 45
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #673 /* ~Sa voix retombe, comme s'il avait honte. "J'ai commis des erreurs, parfois très graves. L'une des plus tragiques est certainement d'avoir signé le contrat des Hommes-Poussière. Si je n'avais pas bu autant de bibe, je ne l'aurais pas fait. Je le regrette, et j'ai pensé que tu pourrais m'aider."~ */
  IF ~~ THEN REPLY #675 /* ~"Comment ça ?"~ */ GOTO 43
  IF ~~ THEN REPLY #676 /* ~"J'ai déjà assez de services à rendre et de quêtes à entreprendre comme ça… Je dois partir, Xachariah. Au revoir."~ */ GOTO 45
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #677 /* ~"J'ai l'impression que ce corps va résister encore longtemps… et chaque jour est trop long pour moi. Étripe-moi, matois, en souvenir du bon vieux temps. L'idée de moisir dans cette Morgue pendant des années en compagnie de ces blafards me donne des frissons. Tu ne pourrais pas m'inscrire à nouveau dans le livre des morts ? Ma place est là-bas."~ */
  IF ~~ THEN REPLY #679 /* ~"Si c'est ce que tu veux…"~ */ DO ~Kill(Myself)
~ GOTO 44
  IF ~~ THEN REPLY #680 /* ~"Xachariah, je ne vais pas te tuer. Encore. Au revoir."~ */ GOTO 45
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #678 /* ~Tu l'étripes et Xachariah tombe sur le sol dans un bruit sourd. Un sifflement faible s'échappe de son corps, sa poitrine se soulève une fois, puis dans un dernier râle, le cadavre s'éteint. ~ */
  IF ~~ THEN REPLY #681 /* ~"Repose en paix, Xachariah."~ */ DO ~SetGlobal("Xachariah_Gutted","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1 43.1
  SAY #682 /* ~"Eh ben, tant pis. Je ne te suis plus d'aucune aide, je pense."~ */
  IF ~~ THEN REPLY #684 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 5.0
  SAY #683 /* ~"Eh ben, matois, aucun doute, tu as l'air bien mort. Mais comment peux-tu me parler ? Ta voix est aussi claire que du cristal."~ */
  IF ~~ THEN REPLY #689 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 47
  IF ~~ THEN REPLY #690 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #691 /* ~"Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1365 /* ~"Je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 4.1 5.1 46.0
  SAY #692 /* ~"Je ne suis que d'une aide très modeste dans le lieu le plus dépourvu de vie qui existe. Si seulement je pouvais passer la Frontière Éternelle et avoir un plan qui serait ma maison, mais j'ai gaspillé mon âme et je me retrouve ici."~ */
  IF ~~ THEN REPLY #693 /* ~"Ça fait quoi d'être un zombi ?"~ */ GOTO 48
  IF ~~ THEN REPLY #695 /* ~"J'ai des questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #696 /* ~"Je dois partir. Au revoir, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #1364 /* ~"Je dois partir. Au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #694 /* ~"C'est un travail honnête…" La suture de la bouche de Xachariah se défait, ses lèvres se rétractent et forment presque un sourire. "… Cela m'importe peu."~ */
  IF ~~ THEN REPLY #697 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #698 /* ~"Eh bien, au revoir, Xachariah."~ */ DO ~SetGlobal("Xachariah_Request","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #633 /* ~"Eh bien, au revoir, Xachariah."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 23.3 27.3
  SAY #63625 /* ~"C'est ce que j'étais. Tu as vraiment oublié, n'est-ce pas ? Tous les hommes ne voient pas uniquement avec leurs yeux, matois… certains discernent mieux les choses. Je pouvais sentir le cœur de mes ennemis - de *tes* ennemis - et mes flèches faisaient toujours mouche. Ah ! c'était il y a longtemps…"~ */
  IF ~~ THEN REPLY #63626 /* ~"À propos de certains de mes compagnons…"~ */ GOTO 27
  IF ~~ THEN REPLY #63627 /* ~"J'ai d'autres questions…"~ */ GOTO 7
  IF ~  Global("Xachariah_Request","GLOBAL",0)
~ THEN REPLY #63628 /* ~"Hmmm. Intéressant. Merci, Xachariah."~ */ GOTO 41
  IF ~  Global("Xachariah_Request","GLOBAL",1)
~ THEN REPLY #63629 /* ~"Hmmm. Intéressant. Merci, Xachariah."~ */ EXIT
END
