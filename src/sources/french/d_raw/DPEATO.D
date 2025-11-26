// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPEATO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPEATO~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58706 /* ~Tu aperçois un jeune homme portant des habits sales. Il te regarde approcher avec méfiance.~ */
  IF ~~ THEN REPLY #58707 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #58708 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58709 /* ~"Qu'est-ce que tu veux ?" Il regarde nerveusement aux alentours.~ */
  IF ~~ THEN REPLY #58710 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58711 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0 5.0 6.1 7.0 8.1 9.1 10.3 11.2 12.2 13.2 15.2 16.1 17.0 19.0
  SAY #58712 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #58713 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #58714 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58715 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~~ THEN REPLY #58716 /* ~"Je cherche un deva et j'ai entendu dire qu'il était ici."~ */ GOTO 14
  IF ~~ THEN REPLY #58717 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58718 /* ~Il hésite avant de répondre. "Qu'est-ce que ça peut te faire ?"~ */
  IF ~~ THEN REPLY #58719 /* ~"J'aime bien savoir à qui je parle."~ */ GOTO 4
  IF ~~ THEN REPLY #58720 /* ~"Baisse le ton, ou je vais te faire taire à coups de poing."~ */ GOTO 5
  IF ~~ THEN REPLY #58721 /* ~"Peu importe, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58722 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #58723 /* ~"Je m'appelle Peato." Il te regarde d'un air las.~ */
  IF ~~ THEN REPLY #58724 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58725 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58726 /* ~Manifestement furieux, il commence à dire quelque chose, mais son attitude change du tout au tout lorsqu'il remarque tes cicatrices. "Désolé, je m'appelle Peato."~ */
  IF ~~ THEN REPLY #58727 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58728 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #58729 /* ~Il sourit d'un air narquois. "Je me suis fait surprendre en train *d'emprunter* quelques petites choses chez un marchand. Il l'a mal pris et m'a fait jeter ici."~ */
  IF ~~ THEN REPLY #58730 /* ~"Alors, tu es un voleur."~ */ GOTO 7
  IF ~~ THEN REPLY #58731 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58732 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58733 /* ~Il te regarde l'air furieux. "J'imagine qu'on peut dire ça."~ */
  IF ~~ THEN REPLY #58734 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58735 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58736 /* ~"Va caguer, bige. Je t'ai assez vu." Il grogne et se regarde de haut en bas. "Est-ce que j'ai l'air d'un rabatteur ?"~ */
  IF ~~ THEN REPLY #58737 /* ~"Non, tu as l'air de quelqu'un qui a de sérieux problèmes de santé."~ */ GOTO 9
  IF ~~ THEN REPLY #58738 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58739 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58740 /* ~Il te regarde d'un air troublé. "De quoi est-ce que tu parles ? J'ai pas de problèmes de santé."~ */
  IF ~~ THEN REPLY #58741 /* ~"Tu en auras si tu ne réponds pas à ma question."~ */ GOTO 10
  IF ~~ THEN REPLY #58742 /* ~"Peu importe, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58743 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58744 /* ~Il réagit au quart de tour, puis s'interrompt et change d'avis. "On est dans une prison. Elle est faite de trois anneaux, l'extérieur, le central et l'intérieur."~ */
  IF ~~ THEN REPLY #58745 /* ~"Dis-m'en un peu plus sur l'anneau extérieur."~ */ GOTO 11
  IF ~~ THEN REPLY #58746 /* ~" Dis-m'en un peu plus sur l'anneau central."~ */ GOTO 12
  IF ~~ THEN REPLY #58747 /* ~" Dis-m'en un peu plus sur l'anneau intérieur."~ */ GOTO 13
  IF ~~ THEN REPLY #58748 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58749 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #58750 /* ~"Tu te trouves dans l'anneau extérieur. Les biges qui sont ici ont commis des crimes mineurs : petits vols, agressions et autres délits de droit commun."~ */
  IF ~~ THEN REPLY #58751 /* ~" Dis-m'en un peu plus sur l'anneau central."~ */ GOTO 12
  IF ~~ THEN REPLY #58752 /* ~" Dis-m'en un peu plus sur l'anneau intérieur."~ */ GOTO 13
  IF ~~ THEN REPLY #58753 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58754 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 13.1
  SAY #58755 /* ~"L'anneau central est réservé aux prisonniers assez dangereux. On y retrouve les hommes de main, les fiers à bras et les biges qui ont tué par accident ou par passion."~ */
  IF ~~ THEN REPLY #58756 /* ~"Dis-m'en un peu plus sur l'anneau extérieur."~ */ GOTO 11
  IF ~~ THEN REPLY #58757 /* ~" Dis-m'en un peu plus sur l'anneau intérieur."~ */ GOTO 13
  IF ~~ THEN REPLY #58758 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58759 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1
  SAY #58760 /* ~"L'anneau intérieurs est réservé aux prisonniers vraiment dangereux ou menaçants. On y trouve les violeurs, les meurtriers et les ennemis du gouvernement."~ */
  IF ~~ THEN REPLY #58761 /* ~"Dis-m'en un peu plus sur l'anneau extérieur."~ */ GOTO 11
  IF ~~ THEN REPLY #58762 /* ~" Dis-m'en un peu plus sur l'anneau central."~ */ GOTO 12
  IF ~~ THEN REPLY #58763 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58764 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.3
  SAY #58765 /* ~"Tu veux parler de Trias." Il fronce les sourcils et détourne un instant le regard. "Oui, Il est ici-bas. Malheureusement pour nous."~ */
  IF ~~ THEN REPLY #58766 /* ~"Pourquoi dis-tu ça ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #58767 /* ~"Les gardes nous font travailler pour agrandir la prison. On creuse les nouvelles salles lorsqu'elles sont nécessaires. Pendant une de ces excavations, ceux qui ont creusé sont tombés sur une zone nouvelle et sur Trias." Il s'interrompt et fronce les sourcils. "Peu après, la peste s'est propagée ici."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58768 /* ~"Oui. Je me souviens avoir entendu parler de ça. C'était vraiment grave ?"~ */ GOTO 16
  IF ~~ THEN REPLY #58769 /* ~"La peste ?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #58770 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58771 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.0
  SAY #58772 /* ~"Très grave… une centaine de morts, un tas d'autres infectés." Il s'interrompt. "Mais on dirait que les autorités contrôlent la situation, désormais. Il n'y a pas eu de nouveaux cas récemment."~ */
  IF ~~ THEN REPLY #58773 /* ~"Je vois. Où puis-je trouver Trias ?"~ */ GOTO 17
  IF ~~ THEN REPLY #58774 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58775 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58776 /* ~Il secoue la tête. "Je ne sais pas, je ne suis jamais allé au nouveau site d'excavation. Continue de fouiner dans le coin et tu trouveras."~ */
  IF ~~ THEN REPLY #58777 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58778 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY #58779 /* ~Il hoche la tête. "Oui, et une mauvaise. Elle nous a frappés juste après que sa salle a été ouverte. Elle s'est propagée comme un incendie de forêt."~ */
  IF ~~ THEN REPLY #58780 /* ~"Comment ça s'est passé ?"~ */ GOTO 16
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #58781 /* ~Tu aperçois Peato, le voleur. "Rebonjour. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #58782 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #58783 /* ~"Rien, au revoir."~ */ EXIT
END
