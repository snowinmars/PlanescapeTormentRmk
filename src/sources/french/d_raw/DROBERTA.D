// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROBERTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DROBERTA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",0)
~ THEN BEGIN 0 // from:
  SAY #58513 /* ~Tu vois une femme élégante d'âge mûr. Elle arbore une mine renfrognée et paraît chercher quelque chose ou quelqu'un.~ */
  IF ~~ THEN REPLY #58514 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58515 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58516 /* ~Elle s'arrête et te fixe pendant un instant avant de répondre. "Qui es-tu et qu'est-ce que tu me veux ?"~ */
  IF ~~ THEN REPLY #58517 /* ~Mens : "Je m'appelle Adahn et j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Roberta_1","GLOBALLAW",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58518 /* ~"Je ne me souviens pas de mon nom."~ */ GOTO 17
  IF ~~ THEN REPLY #58519 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #58520 /* ~Elle te tend la main. "Bonjour à toi, matois. Je suis Roberta."~ */
  IF ~~ THEN REPLY #58521 /* ~Prends sa main et agenouille-toi : "Enchanté, Dame Roberta."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ GOTO 3
  IF ~~ THEN REPLY #58522 /* ~"Peu importe. Au revoir."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58523 /* ~"J'ai cru comprendre que tu avais des questions pour moi ?"~ */
  IF ~~ THEN REPLY #58524 /* ~"Oui, Madame."~ */ GOTO 4
  IF ~~ THEN REPLY #58525 /* ~"Peu importe, Madame. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.1 7.1 8.1 9.1 12.0 13.0 14.0 15.1 16.0 20.3 21.1
  SAY #58526 /* ~"À ton service. Pose tes questions."~ */
  IF ~~ THEN REPLY #58527 /* ~"Je cherche un deva. On m'a dit qu'il est à Maudith."~ */ GOTO 5
  IF ~  Global("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #58528 /* ~"Tu sembles troublée. Quelque chose ne va pas ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58529 /* ~"Y a-t-il quelque chose d'intéressant ici ?"~ */ GOTO 13
  IF ~~ THEN REPLY #58530 /* ~"Peux-tu m'en dire plus sur Maudith ?"~ */ GOTO 14
  IF ~~ THEN REPLY #58531 /* ~"Qui est le responsable ici ?"~ */ GOTO 15
  IF ~~ THEN REPLY #58532 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58533 /* ~Elle s'interrompt pour réfléchir. "Moi aussi j'ai entendu cette rumeur. Je ne sais malheureusement pas où se trouve cette créature. Tu devrais demander au bâtiment administratif, sur le square."~ */
  IF ~~ THEN REPLY #58534 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58536 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58538 /* ~Elle fronce les sourcils. "Oui… mon mari, Carl Perfidor, n'est pas là où il m'a dit qu'il serait. Ce n'est pas la première fois qu'il me ment à propos de ses allées et venues, et je commence à croire qu'il…" Elle s'interrompt un instant. "Je commence à croire qu'il est avec une autre femme, une catin."~ */
  IF ~~ THEN REPLY #58539 /* ~"Pourquoi crois-tu cela ?"~ */ GOTO 7
  IF ~~ THEN REPLY #58541 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58544 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58545 /* ~Elle soupire. "C'était un homme à femmes, avant qu'on se marie, particulièrement ce genre de femmes, et j'ai entendu des rumeurs…" Elle paraît en colère. "Si je m'aperçois qu'elles sont fondées, j'aurai une surprise pour lui."~ */
  IF ~~ THEN REPLY #58546 /* ~"Une surprise ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58548 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58550 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58552 /* ~"Oui." Elle soulève sa jupe, exhibant l'intérieur de sa cuisse. Tu aperçois une dague attachée à sa jambe. Elle la tire de son fourreau et te dédie un sourire cruel. "Je crois qu'il serait surpris s'il sentait un jour cette lame s'enfoncer dans son dos. Tu n'es pas d'accord avec moi ?" Elle range sa dague.~ */
  IF ~~ THEN REPLY #58555 /* ~"Alors, tu as l'intention de le tuer ?"~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",1)
~ JOURNAL #58565 /* ~Une certaine Roberta Perfidor veut la mort de son mari Carl. Apparemment, ce dernier a un goût très poussé pour les autres femmes et Roberta n'apprécie guère. Intéressant.~ */ GOTO 9
  IF ~~ THEN REPLY #58558 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58561 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58570 /* ~Son sourire disparaît au fur et à mesure qu'elle réfléchit à ce qu'elle vient de dire. Puis, finalement, elle soupire et rengaine sa lame. "Je le ferais si je pouvais… mais non, je suis stupide. Carl et moi, nous ne sommes plus… intimes. Je ne me rapprocherai jamais assez pour lui porter un tel coup." Elle détourne un instant le regard. "Seule une de ces *femmes* pourrait…"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58582 /* ~"Je connais une catin nommée Kiri qui a besoin d'argent. Peut-être qu'elle pourrait s'approcher assez pour faire ça…"~ */ GOTO 10
  IF ~~ THEN REPLY #58583 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58584 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.0
  SAY #58585 /* ~Elle te fixe un instant. "Je vois…" Elle regarde aux alentours, puis se penche pour te murmurer quelque chose. "Est-ce que tu accepterais de la voir et de lui proposer un… travail ? Je te paierai cinq cents pièces une fois le contrat rempli."~ */
  IF ~~ THEN REPLY #58586 /* ~"Ça ne fait pas beaucoup de jonc."~ */ GOTO 11
  IF ~~ THEN REPLY #58587 /* ~"Je ne crois pas. Au revoir."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~J'ai refusé d'aider Roberta Perfidor a tuer son mari Carl.~ */ EXIT
  IF ~~ THEN REPLY #58588 /* ~"Ce jonc ne me ferait pas de mal. Je parlerai à Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~J'ai accepté d'aider Roberta Perfidor à tuer son mari Carl. Il faut que je parle avec Kiri, la catin, pour voir si elle accepte le travail.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58591 /* ~Elle fronce les sourcils. "Hum. Tu as peut-être raison, mais c'est la somme que je suis prête à mettre. Vous pouvez tous deux être plus riches de cinq cents pièces… ou non. À toi de voir."~ */
  IF ~~ THEN REPLY #58592 /* ~"Non merci. Au revoir."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~J'ai refusé d'aider Roberta Perfidor a tuer son mari Carl.~ */ EXIT
  IF ~~ THEN REPLY #58593 /* ~"Ce jonc ne me ferait pas de mal. Je parlerai à Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~J'ai accepté d'aider Roberta Perfidor à tuer son mari Carl. Il faut que je parle avec Kiri, la catin, pour voir si elle accepte le travail.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.1 22.1
  SAY #58594 /* ~Elle sourit. "Excellent. Si elle accepte, qu'elle fasse comme elle veut, mais sans perdre de temps. Contacte-moi quand ce sera fait et tu recevras ton paiement."~ */
  IF ~~ THEN REPLY #58595 /* ~"J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58596 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #58597 /* ~Elle réfléchit un instant. "J'ai entendu dire qu'une jeune femme a récemment disparu. La fille d'un certain patron de bar. Je ne connais pas les détails de l'histoire. À part ça, rien qui sorte de l'ordinaire."~ */
  IF ~~ THEN REPLY #58598 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58599 /* ~"Je te remercie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.3
  SAY #58600 /* ~Elle te sourit et se met à rire. "Maudith est un tas de fumier, et nous sommes les excréments qui le forment." Elle hausse les épaules. "Rien de plus à dire sur le sujet."~ */
  IF ~~ THEN REPLY #58601 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58602 /* ~"Je te remercie. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #58603 /* ~"Tovus Giljaf. Tu le trouveras dans le bâtiment administratif de la place centrale."~ */
  IF ~~ THEN REPLY #58604 /* ~"Que peux-tu me dire sur Tovus ?"~ */ GOTO 16
  IF ~~ THEN REPLY #58605 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58606 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58607 /* ~"Tovus a parfois des réactions assez… vives." Elle s'interrompt pour réfléchir. "Je ne sais pas grand-chose de lui, hormis le fait que c'est un githzeraï et qu'il est magicien."~ */
  IF ~~ THEN REPLY #58608 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58609 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.1
  SAY #58610 /* ~Elle te regarde, l'air moyennement surpris. "Vraiment ? Es-tu par hasard un suppliant ? J'ai entendu dire qu'ils perdaient souvent la mémoire."~ */
  IF ~~ THEN REPLY #58611 /* ~"C'est quoi, un suppliant ?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58612 /* ~Elle s'interrompt pour réfléchir un instant. "Les suppliants… sont ceux qui sont morts et ont eu leur corps reconstitué sur le plan qui reflète le plus précisément leurs croyances. En règle générale, ils ne se souviennent plus de leur vie passée. Peut-être que c'est le cas pour toi."~ */
  IF ~~ THEN REPLY #58613 /* ~"C'est possible… Mais, cette nouvelle naissance, combien de fois peut-elle survenir ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58614 /* ~"Et bien… je ne suis pas une experte dans ce domaine, mais j'ai cru comprendre que cela ne se produisait qu'une fois. À la mort, l'esprit retourne alors vers le plan lui-même. À moins bien sûr que tu ne partes vers un autre plan. Si tel est le cas, la mort est synonyme d'oubli."~ */
  IF ~~ THEN REPLY #58615 /* ~"Je vois. Quoi qu'il en soit, je n'ai aucun nom à te donner."~ */ GOTO 2
  IF ~~ THEN REPLY #58616 /* ~"Je te remercie. Je dois te quitter maintenant. Au revoir."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",1)
~ THEN BEGIN 20 // from:
  SAY #58617 /* ~Tu aperçois Roberta. Elle sourit en te voyant approcher. "Bonjour à toi, matois. En quoi puis-je t'être utile ?"~ */
  IF ~  Global("Snuff_Carl","GLOBAL",1)
~ THEN REPLY #58618 /* ~"Est-ce que tu veux toujours qu'on s'occupe… de ton mari ?"~ */ GOTO 21
  IF ~  Global("Snuff_Carl","GLOBAL",2)
~ THEN REPLY #58619 /* ~"Est-ce que tu veux toujours qu'on s'occupe… de ton mari ?"~ */ GOTO 22
  IF ~  Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #58620 /* ~"Est-ce que tu veux toujours qu'on s'occupe… de ton mari ?"~ */ GOTO 23
  IF ~~ THEN REPLY #58621 /* ~"J'ai des questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58622 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58623 /* ~Elle te sourit. "Absolument. Pourquoi cette question ?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58624 /* ~"Je connais une catin nommée Kiri qui a besoin d'argent. Peut-être qu'elle pourrait s'approcher assez pour faire ça…"~ */ GOTO 10
  IF ~~ THEN REPLY #58625 /* ~"Simple curiosité. J'ai d'autres questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #58626 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #58627 /* ~Elle fronce les sourcils. Absolument. Mais tu avais pourtant refusé mon offre de cinq cents pièces pour toi et ta complice. Est-ce que ça veut dire que tu es revenu sur ta décision ?"~ */
  IF ~~ THEN REPLY #58628 /* ~"Non, pas vraiment. Au revoir"~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #58629 /* ~"Ce jonc ne me ferait pas de mal. Je parlerai à Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
~ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #58637 /* ~Elle fronce les sourcils. "Absolument. Tu as déjà accepté le contrat. A-t-il été rempli ?"~ */
  IF ~~ THEN REPLY #58638 /* ~"Non, pas encore. Je m'en occupe. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  !Dead("BDKIRI")
Global("Carl_Snuffed","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #58639 /* ~Tu aperçois Roberta. Pour une fois, elle paraît assez heureuse. Elle examine les alentours avec attention. "Salut. J'imagine que tu es venu réclamer ton argent ?" Elle te sourit.~ */
  IF ~~ THEN REPLY #58640 /* ~"Oui, la tâche que tu m'as demandé d'effectuer a été accomplie."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58641 /* ~Elle regarde à nouveau aux alentours avant de répondre. "Très bien. Voici les pièces que je t'ai promises." Un bref regard inquiet parcourt son visage. "Euh… ton amie s'est occupée de Carl de façon très… *méticuleuse*. Mes compliments à tous les deux." Elle te tend une lourde bourse. "Voici ta part, j'ai déjà payé Kiri."~ */
  IF ~~ THEN REPLY #58642 /* ~"Merci. J'ai eu plaisir à faire affaire avec toi."~ */ DO ~GivePartyGold(500)
AddexperienceParty(2000)
SetGlobal("Carl_Snuffed","GLOBAL",2)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 32
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Carl_Snuffed","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #58643 /* ~Tu aperçois Roberta. "Rebonjour, matois. Je peux t'aider ?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58644 /* ~"Oui, j'aimerais vois Tovus Giljaf. Tu penses que tu peux arranger ça ?"~ */ GOTO 33
  IF ~~ THEN REPLY #4773 /* ~"Non, c'est tout. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #58645 /* ~Tu aperçois Roberta. Lorsqu'elle te remarque, ses traits sont défigurés par la rage. "Toi ! Espèce de tas de fumier infesté de vers ! Regarde ce que je suis devenue, à cause de toi !" Son visage est si écarlate qu'elle semble prête à exploser.~ */
  IF ~~ THEN REPLY #58646 /* ~"À cause de moi ? Ce n'est pas moi qui ai comploté la mort de mon conjoint."~ */ GOTO 28
  IF ~~ THEN REPLY #58647 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #58648 /* ~Elle plisse les yeux et te crache pratiquement ses paroles à la face. "Tu as trahi la confiance que j'avais mise en toi ! Carl s'est longuement réjoui de ta trahison avant de m'envoyer ici ! Espèce de fils de garce !"~ */
  IF ~~ THEN REPLY #58649 /* ~"Puisqu'on parle de catins, est-ce que Kiri s'est aussi retrouvée ici ?"~ */ GOTO 29
  IF ~~ THEN REPLY #58650 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #58651 /* ~Elle crie. "Arrrrrrhhh ! Tu connais la réponse, espèce de bouc ! Tu veux me torturer en jouant à l'innocent !"~ */
  IF ~~ THEN REPLY #58652 /* ~"Disons que non, et raconte-moi ce qui lui est arrivé."~ */ GOTO 30
  IF ~~ THEN REPLY #58653 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #58654 /* ~"La traîtresse. Elle s'est prétendue maîtresse de Carl et a évité la prison !"~ */
  IF ~~ THEN REPLY #58655 /* ~"Elle est douée… Bien, je dois partir, maintenant. Au revoir."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #58656 /* ~Elle te regarde d'un air furieux, les yeux emplis de haine. "Oui… va-t'en, mais sache ceci : je ne resterai pas toujours dans ce trou, et je t'oublierai pas, pas plus que la catin !"~ */
  IF ~~ THEN REPLY #58657 /* ~Ignore-la et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.0
  SAY #58658 /* ~Elle s'incline légèrement. "Je peux faire quelque chose d'autre pour toi ?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58659 /* ~"Oui, j'aimerais vois Tovus Giljaf. Tu penses que tu peux arranger ça ?"~ */ GOTO 33
  IF ~~ THEN REPLY #58660 /* ~"Non, je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.0 32.0
  SAY #58661 /* ~Elle te sourit. "Tovus… je suis désolé, matois. Il est très occupé ces jours-ci, et je n'ai pas réussi à le contacter, moi non plus."~ */
  IF ~~ THEN REPLY #58662 /* ~"Merci. Au revoir."~ */ EXIT
END
