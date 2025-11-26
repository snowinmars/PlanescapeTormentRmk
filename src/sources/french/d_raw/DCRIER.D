// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRIER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRIER~

IF ~  Global("Crier","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26006 /* ~Des coulées de larmes ont laissé des empreintes sur le visage couvert de poussière de cet homme. On dirait un genre de moine ou un saint homme, mais la saleté qui recouvre son corps ne permet pas de distinguer ses traits. Il chante et balance la tête d'avant en arrière ; on dirait une sorte de rituel.~ */
  IF ~~ THEN REPLY #26007 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #26008 /* ~Laisse le saint homme tranquille.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #26523 /* ~Tu aperçois le Crieur d'Es-Annon. Il sanglote toujours en psalmodiant le nom de la cité morte et des larmes lui coulent sur les joues.~ */
  IF ~  Global("Crier_Quest","GLOBAL",0)
~ THEN REPLY #26524 /* ~"Il faut que je te demande quelque chose : pourquoi est-ce que tu pleures une ville ?"~ */ GOTO 8
  IF ~  Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #26526 /* ~"Je n'ai encore trouvé aucune pierre tombale sur laquelle graver le nom d'Es-Annon."~ */ GOTO 3
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #26527 /* ~"J'ai veillé à ce que le nom d'Es-Annon ne tombe pas dans l'oubli. Il est gravé sur le monument de la pierre noire à l'extérieur de la Morgue."~ */ DO ~SetGlobal("Crier","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26530 /* ~Je me suis assuré que le nom d'Es-Annon était gravé sur la façade du Mémorial Homme-Poussière. Je suis reparti le dire au Crieur et son flot de larmes s'est arrêté. Il a enfin l'air apaisé et m'a remercié.~ */ GOTO 23
  IF ~~ THEN REPLY #26528 /* ~Laisse le Crieur tranquille.~ */ EXIT
END

IF ~  Global("Crier","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #26525 /* ~Tu aperçois le Crieur d'Es-Annon. Il semble détendu et son regard reflète une paix que tu ne lui connaissais pas jusqu'ici. "Merci, mon ami. Bientôt, je partirai à la recherche de mes frères et je leur dirai que notre deuil est terminé."~ */
  IF ~~ THEN REPLY #26531 /* ~"Très bien. Je te souhaite bonne chance pour ce voyage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #26529 /* ~Le Crieur secoue la tête. "C'est ce que je craignais. Les Crieurs d'Es-Annon sont les seuls capables de supporter ce fardeau. Tu n'as plus besoin de chercher, l'ami…"~ */
  IF ~~ THEN REPLY #26532 /* ~"Non. Je vais continuer à chercher une pierre tombale et je reviendrai quand le nom d'Es-Annon y sera inscrit."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26533 /* ~L'homme interrompt sa psalmodie délirante et te regarde les yeux bordés de larmes. Il ouvre sa bouche desséchée pour parler, mais il n'arrive qu'à émettre qu'un grognement atrophié.~ */
  IF ~~ THEN REPLY #26534 /* ~"Qu'est-ce qui ne va pas ? Pourquoi est-ce que tu pleures ?"~ */ GOTO 5
  IF ~~ THEN REPLY #26535 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #26536 /* ~"Je…" Sa voix est si rauque qu'on dirait qu'il n'a pas bu depuis des jours. Alors que tu le regardes, une larme coule le long de son visage. "Je… je suis le Crieur d'Es-Annon."~ */
  IF ~~ THEN REPLY #26537 /* ~"Es-Annon ? Qui c'est ?"~ */ DO ~SetGlobal("Crier","GLOBAL",1)
~ JOURNAL #26540 /* ~J'ai rencontré un 'Crieur d'Es-Annon' dans les rues de la Ruche. D'après lui, Es-Annon était une cité qui a été détruite il y a bien longtemps, et lui et les autres survivants voyagent maintenant à travers les plans, pleurant le sort de leur cité devant qui veut bien les écouter. Leur souhait est qu'on se souvienne d'Es-Annon.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26541 /* ~"Qu… *Qui* est Es-Annon ?!" L'homme rejette la tête en arrière et son rire sonne âpre, brutal et vaincu. "Es-Annon… c'est pas un homme, mais une cité !"~ */
  IF ~~ THEN REPLY #26542 /* ~"Pourquoi est-ce que tu pleures pour une cité ?"~ */ GOTO 7
  IF ~~ THEN REPLY #26543 /* ~"J'ai bien peur de t'avoir blessé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26544 /* ~"Nous pleurons son nom, car Es-Annon ne doit pas être oubliée. Tous les Crieurs d'Es-Annon portent ce fardeau."~ */
  IF ~~ THEN REPLY #26545 /* ~"Tu pleures une *cité* ? Mais pourquoi ?"~ */ GOTO 8
  IF ~~ THEN REPLY #26546 /* ~"Je vois, je te laisse à tes pensées. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.0 7.0
  SAY #26547 /* ~"Parce que son nom est tout ce qu'il reste. Ses avenues de lumière, ses grands parcs en spirale… lorsqu'elle a été dévastée et réduite au souvenir, seule une soixantaine d'habitants ont survécu. Notre devoir était de veiller à ce que son nom ne tombe pas dans l'oubli à travers les plans. Beaucoup de Crieurs d'Es-Annon sont morts pour le salut du souvenir… beaucoup…"~ */
  IF ~~ THEN REPLY #26549 /* ~"Si ça vous met tous en danger, toi et les autres, pourquoi vous n'arrêtez pas ?"~ */ GOTO 9
  IF ~~ THEN REPLY #26550 /* ~"Je pleure la disparition de ta cité et de tes citoyens. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26551 /* ~"Les larmes que j'ai versées, la poussière qui me couvre… ces choses ne sont rien comparées à ce qui m'attend si je renonce à ma fonction sacrée. Nous DEVONS tout faire pour que son nom reste dans les mémoires. Nous sommes les témoins vivants de son passage."~ */
  IF ~~ THEN REPLY #26552 /* ~"Mais dans ce cas, qu'est-ce qui se passera si vous mourez tous ?"~ */ GOTO 10
  IF ~~ THEN REPLY #26553 /* ~"Je pleure la disparition de ta cité et de tes citoyens. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26555 /* ~Une larme jaillit de l'œil du Crieur. Même son visage recouvert d'une épaisse croûte de poussière ne peut pas masquer son air de désespoir. "Je ne SAIS pas. Nous les Crieurs d'Es-Annon ne pouvons nous lamenter à jamais… déjà, la poussière s'accroche à nos robes, la salive sèche dans nos bouches, nos corps dépérissent et meurent."~ */
  IF ~~ THEN REPLY #26556 /* ~"Est-ce que je peux t'aider ?"~ */ GOTO 11
  IF ~~ THEN REPLY #26557 /* ~"Je pleure la disparition de ta cité et de tes citoyens. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26558 /* ~"C'est gentil de demander…" Le Crieur secoue la tête. "À moins de pouvoir immortaliser Es-Annon, aucune aide n'est possible."~ */
  IF ~~ THEN REPLY #26560 /* ~"C'est vraiment à toi de pleurer le nom d'Es-Annon ?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26562 /* ~"Doit-il être immortalisé par un homme ? Une pierre tombale ne suffirait pas ?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26561 /* ~"Doit-il être immortalisé par un homme ? Une pierre tombale ne suffirait pas ?"~ */ GOTO 16
  IF ~~ THEN REPLY #26563 /* ~"Je pleure la disparition de ta cité et de tes citoyens. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26564 /* ~"Cela a-t-il une importance ? Un autre homme peut pleurer le nom, mais lui aussi mourra." Une larme se forme au coin de son œil et commence à couler le long de sa joue. "Il n'y a rien à faire. Lorsque les Crieurs d'Es-Annon mourront, Es-Annon aussi mourra."~ */
  IF ~~ THEN REPLY #26565 /* ~"Et c'est peut-être ce qui doit arriver. Si la cité a disparu, comme tu le dis, c'est qu'elle était destinée à être oubliée."~ */ GOTO 13
  IF ~~ THEN REPLY #26567 /* ~"On dirait que le fait de se souvenir d'Es-Annon met ce qu'il reste de son peuple en danger. Ça en vaut vraiment la peine ?"~ */ GOTO 13
  IF ~~ THEN REPLY #26568 /* ~"Et une pierre tombale ?"~ */ GOTO 16
  IF ~~ THEN REPLY #26569 /* ~"Je pleure la disparition de ta cité et de tes citoyens. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #26570 /* ~La saleté incrustée sur le visage de l'homme se fendille et il gronde. "Tu ne sais rien ! Tu n'as rien vu de sa beauté ! Rien de sa splendeur ! Abandonnerais-tu ce souvenir, ce souvenir si parfait, si tu le possédais ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26571 /* ~"Les choses sont destinées à mourir. À être oubliées. C'est le conseil que je te donne, Crieur d'Es-Annon… Si tu emportes la cité dans ta tombe, qui auras-tu servi ?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26573 /* ~"Les choses sont destinées à mourir. À être oubliées. C'est le conseil que je te donne, Crieur d'Es-Annon… Si tu emportes la cité dans ta tombe, qui auras-tu servi ?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26574 /* ~"Les choses sont destinées à mourir. À être oubliées. C'est le conseil que je te donne, Crieur d'Es-Annon… Si tu emportes la cité dans ta tombe, qui auras-tu servi ?"~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #26575 /* ~"Je ne laisserais pas bêtement un tel souvenir mourir en mettant ses derniers gardiens en danger. Ce serait mieux si tu passais le restant de tes jours à te souvenir d'Es-Annon avec tes frères."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #26576 /* ~"Je ne laisserais pas bêtement un tel souvenir mourir en mettant ses derniers gardiens en danger. Ce serait mieux si tu passais le restant de tes jours à te souvenir d'Es-Annon avec tes frères."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #26577 /* ~"Je ne laisserais pas bêtement un tel souvenir mourir en mettant ses derniers gardiens en danger. Ce serait mieux si tu passais le restant de tes jours à te souvenir d'Es-Annon avec tes frères."~ */ DO ~SetGlobal("Crier_Answer","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #26578 /* ~"Et une pierre tombale ?"~ */ GOTO 16
  IF ~~ THEN REPLY #26579 /* ~"Bon, peu importe. Je te laisse à tes pensées. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.2 13.3 13.4 13.5
  SAY #26580 /* ~Le Crieur se tait et tu regardes une larme isolée se former au coin de son œil. Au bout d'un moment, il parle et sa voix est aussi mouvante que du sable, emplie d'émotion. "Il y a… du vrai dans ce que tu dis."~ */
  IF ~~ THEN REPLY #26581 /* ~"C'est une vérité difficile à entendre et à accepter."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #26582 /* ~La larme au coin de son œil s'évanouit soudain - c'est si rapide que tu n'es pas certain qu'elle ait existé. "Mais je suis prêt à l'accepter. Et je ferai en sorte que mes frères l'acceptent aussi."~ */
  IF ~  Global("Crier_Answer","GLOBAL",1)
~ THEN REPLY #26583 /* ~"Très bien. Bon, eh bien, au revoir."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26585 /* ~J'ai convaincu le Crieur d'Es-Annon d'abandonner son pèlerinage. Il n'avait plus besoin de parcourir les plans dans l'espoir de perpétuer la mémoire de quelque chose qui tomberait de toute façon dans l'oubli. Il a approuvé et doit en parler à ses pairs.~ */ EXIT
  IF ~  Global("Crier_Answer","GLOBAL",2)
~ THEN REPLY #26584 /* ~"Très bien. Bon, eh bien, au revoir."~ */ DO ~AddexperienceParty(750)
SetGlobal("Crier","GLOBAL",2)
EscapeArea()
~ JOURNAL #26586 /* ~J'ai convaincu le Crieur d'Es-Annon d'abandonner son pèlerinage. Je lui ai dit que lui et les autres Crieurs risquaient de mettre la mémoire d'Es-Annon en péril en voyageant à travers les plans. Il a approuvé et doit en parler à ses pairs.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 11.2 12.2 13.6
  SAY #26587 /* ~Le Crieur ferme à moitié les yeux. "Une pierre… tombale ?"~ */
  IF ~~ THEN REPLY #26588 /* ~"C'est une pierre qui commémore le nom d'un homme, sa vie et un panégyrique. Si cela sert un homme, est-ce que ça ne peut pas servir une cité morte ?"~ */ GOTO 17
  IF ~~ THEN REPLY #26589 /* ~"Ça n'a pas d'importance. Oublie ce que j'ai dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26590 /* ~"Les pierres peuvent faire ça ?"~ */
  IF ~~ THEN REPLY #26591 /* ~"Oui. Et leur durée de vie est plus longue que celle des hommes. Si son nom était gravé sur une pierre, la mémoire d'Es-Annon serait-elle honorée ?"~ */ GOTO 18
  IF ~~ THEN REPLY #26592 /* ~"Ça n'a pas d'importance. Oublie ce que j'ai dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26593 /* ~L'homme s'interrompt. "Est-ce que d'autres verraient son nom ?"~ */
  IF ~~ THEN REPLY #26594 /* ~"Oui. Et tout le monde pourrait la voir bien après ta mort."~ */ GOTO 19
  IF ~~ THEN REPLY #26595 /* ~"Ça n'a pas d'importance. Oublie ce que j'ai dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26596 /* ~L'homme acquiesce. "Si cela était possible…" Il se tourne vers toi. "Où on peut trouver ce genre de pierre ?"~ */
  IF ~~ THEN REPLY #26597 /* ~"Je pourrais aller en chercher une. Et si j'en trouvais une, je pourrais veiller à ce que le nom d'Es-Annon y soit gravé."~ */ GOTO 20
  IF ~~ THEN REPLY #26598 /* ~"En échange de quelques pièces de cuivre, je pourrais me mettre à la recherche d'une pierre tombale et y faire graver le nom d'Es-Annon."~ */ GOTO 21
  IF ~~ THEN REPLY #26599 /* ~"Ça n'a pas d'importance. Oublie ce que j'ai dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26600 /* ~"Tu… tu… le ferais ? Je…" Des larmes lui viennent aux yeux. "Tu libérerais tous les Crieurs d'Es-Annon. Nous sommes encore une vingtaine… le poids du souvenir s'effacerait après TANT d'années…"~ */
  IF ~~ THEN REPLY #26601 /* ~"Oui, tout à fait. Je reviendrai quand le nom sera gravé."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ JOURNAL #26539 /* ~J'ai accepté de chercher une pierre tombale sur laquelle graver le nom d'Es-Annon pour le Crieur.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26602 /* ~"Tu… tu… le ferais ? Je…" Des larmes lui viennent de nouveau aux yeux. "Tu libérerais tous les Crieurs d'Es-Annon. Nous ne sommes plus qu'une soixantaine… le poids du souvenir s'effacerait après TANT d'années… et tu ne demanderais en échange que quelques pièces de cuivre ?"~ */
  IF ~~ THEN REPLY #26603 /* ~"Oui."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
GivePartyGold(5)
IncrementGlobalOnceEx("GLOBALEvil_Crier_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #26604 /* ~"Peu importe, je le ferai gratuitement. Je reviendrai quand le nom sera gravé."~ */ DO ~SetGlobal("Crier_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Crier_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26605 /* ~"Tu les auras." Le Crieur fouille dans sa robe et en tire cinq pièces de cuivre qu'il compte et te tend. "C'est tout ce que j'ai. J'espère que cela sera suffisant."~ */
  IF ~~ THEN REPLY #26606 /* ~"Ça fera l'affaire. Très bien, je reviendrai quand le nom d'Es-Annon sera gravé sur la pierre."~ */ JOURNAL #26608 /* ~En échange d'une petite somme de cuivre, j'ai accepté de trouver une pierre tombale sur laquelle graver le nom d'Es-Annon pour le Crieur.~ */ EXIT
  IF ~~ THEN REPLY #26607 /* ~"Non, ça ne suffit pas - Es-Annon n'aura pas de pierre tombale. Au revoir."~ */ DO ~Enemy()
IncrementGlobalOnceEx("GLOBALEvil_Crier_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crier_1","GLOBALLaw",-1)
Attack(Protagonist)
~ JOURNAL #26609 /* ~J'ai accepté de trouver une pierre tombale sur laquelle graver le nom d'Es-Annon pour le Crieur moyennant une certaine somme de cuivre… mais une fois que l'imbécile m'a donné ses dernières pièces, j'ai ri de sa naïveté et lui ai dit que je ne lui rendrai pas un service aussi idiot. Il faut qu'il soit stupide pour faire confiance à qui que ce soit dans la Ruche.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.2
  SAY #26611 /* ~Soudain, un léger bruissement emplit l'air et les yeux de l'homme sèchent. Une des larmes qui coulait sur sa joue disparaît tout simplement. "Alors la mémoire d'Es-Annon est servie. Je parlerai à mes compagnons Crieurs de la pierre que tu as décrite. Tu as toute ma gratitude."~ */
  IF ~  Global("Evil_Crier_1","GLOBAL",0)
~ THEN REPLY #26612 /* ~"Hum… ça a coûté quelques pièces de cuivre pour faire graver le nom de la cité sur la pierre. Tu crois que tu peux me rembourser ?"~ */ DO ~GivePartyGold(5)
IncrementGlobalOnceEx("Evil_Crier_1","GLOBAL",-1)
~ GOTO 24
  IF ~~ THEN REPLY #26613 /* ~"Ce n'était rien. Au revoir… J'espère que toi et tes frères passerez le restant de vos jours en paix."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26615 /* ~Il acquiesce et fouille dans sa robe. "Tout ce que j'ai est à toi." Il compte cinq pièces qu'il te tend. "Prends ça de la main à la main avec toute ma gratitude."~ */
  IF ~~ THEN REPLY #26616 /* ~"Ce n'était rien… vraiment. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #26617 /* ~"De rien. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END
