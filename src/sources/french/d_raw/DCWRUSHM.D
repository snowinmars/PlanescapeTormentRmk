// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #4513 /* ~Cet homme propre et bien habillé marche d'un pas décidé.~ */
  IF ~~ THEN REPLY #25733 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #25734 /* ~Laisse-le passer.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25735 /* ~Il s'arrête et te regarde. Ton aspect semble légèrement le repousser. "Est-ce que je… ah… te connais ?"~ */
  IF ~~ THEN REPLY #25736 /* ~"Non, mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #25737 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 23
  IF ~~ THEN REPLY #25738 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #25739 /* ~"Je n'ai vraiment pas le temps - je dois y aller. Alors si ça ne te dérange pas…"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25740 /* ~"Juste une seule question, alors ?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25741 /* ~"Juste une seule question, alors ?"~ */ GOTO 20
  IF ~~ THEN REPLY #25742 /* ~"Si, ça me *dérange*. Maintenant réponds à mes questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25743 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25744 /* ~Il se mord la lèvre, puis acquiesce. "Je ne vais pas te refuser ça. Mais parle vite, je t'en prie !"~ */
  IF ~~ THEN REPLY #25745 /* ~"Où sommes-nous ?"~ */ GOTO 4
  IF ~~ THEN REPLY #25746 /* ~"Qu'est-ce qu'il y a d'intéressant ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #25747 /* ~"Où est-ce que je peux trouver du travail par ici ?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25748 /* ~"J'ai juste besoin qu'on m'indique la bonne direction…"~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25749 /* ~"Qu'est-ce que tu sais sur Ravel Puits-de-Rébus ?"~ */ GOTO 21
  IF ~~ THEN REPLY #25750 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25751 /* ~Il te regarde bizarrement un instant. "Eh bien, c'est le Quartier des Gratte-Papier. Tu es peut-être… perdu ? Oh, peu importe. Je dois partir ! Au revoir…"~ */
  IF ~~ THEN REPLY #25752 /* ~"Attends… j'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #25753 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25754 /* ~"Je n'ai le temps de répondre qu'à une question, monsieur. Tu trouveras peut-être une personne moins pressée dans les cafés le long de la rue. Au revoir, maintenant…"~ */
  IF ~~ THEN REPLY #25755 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25756 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25757 /* ~"Monsieur ! Je n'ai ni le temps, ni l'envie d'être dérangé de la sorte actuellement ! Laissez-moi en paix ou je serais dans l'obligation d'appeler à l'aide !"~ */
  IF ~~ THEN REPLY #25758 /* ~"Ça m'étonnerait que quelqu'un arrive à temps pour te sauver."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25759 /* ~"Si tu sais où est ton intérêt, il vaut mieux que tu n'appelles personne."~ */ GOTO 7
  IF ~~ THEN REPLY #25760 /* ~"Pardon. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #25761 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25762 /* ~Il commence à reculer, en appelant à l'aide : "Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #25763 /* ~Attaque-le.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25764 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25765 /* ~"Il y a beaucoup à voir dans le Quartier des Gratte-Papier… et encore plus dans cette section que dans les autres ! La Salle des Fêtes, bien sûr, la Galerie d'Art et d'Antiquités et la Maison de tolérance des Plaisirs Intellectuels…" Il soupire avec plaisir, perdu dans ses pensées.~ */
  IF ~~ THEN REPLY #25766 /* ~"Autre chose ?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25767 /* ~Il réfléchit un moment. "Hum. Bon, il y a le tailleur, l'apothicaire, le domicile de l'avocat. Oh, et les catacombes sous le Quartier. Et cet étrange magasin de brocante, aussi." Il hausse les épaules. "Plus qu'il n'en faut pour s'occuper, je pense. Profites-en et au revoir !"~ */
  IF ~~ THEN REPLY #25768 /* ~"J'ai une question à propos d'un de ces endroits dont tu as parlé…"~ */ GOTO 5
  IF ~~ THEN REPLY #25769 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25770 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25771 /* ~Il réfléchit un moment. "Tu peux essayer l'apothicaire. Ou l'avocat. Et bien sûr, la Salle des Fêtes… ils auront peur-être quelque chose à te proposer. Bonne chance… au revoir."~ */
  IF ~~ THEN REPLY #25772 /* ~"J'ai une question sur l'un des endroits dont tu as parlé…"~ */ GOTO 5
  IF ~~ THEN REPLY #25773 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25774 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25775 /* ~"Et quel endroit cherches-tu ?"~ */
  IF ~~ THEN REPLY #25776 /* ~"Chez l'avocat."~ */ GOTO 12
  IF ~~ THEN REPLY #25777 /* ~"Chez l'apothicaire."~ */ GOTO 13
  IF ~~ THEN REPLY #25778 /* ~"À la boutique d'art."~ */ GOTO 14
  IF ~~ THEN REPLY #25779 /* ~"À la maison de tolérance."~ */ GOTO 15
  IF ~~ THEN REPLY #25780 /* ~"Aux catacombes sous le Quartier."~ */ GOTO 16
  IF ~~ THEN REPLY #25781 /* ~"À la Salle des Fêtes."~ */ GOTO 17
  IF ~~ THEN REPLY #25782 /* ~"Au magasin de brocante."~ */ GOTO 18
  IF ~~ THEN REPLY #25783 /* ~"Chez le tailleur."~ */ GOTO 19
  IF ~~ THEN REPLY #25784 /* ~"Rien, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25785 /* ~"La maison de Iannis se trouve au sud de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. Ce sera sur le côté est de la route."~ */
  IF ~~ THEN REPLY #25786 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25787 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25788 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'est de la route. Elle est orientée au sud et comporte trois fenêtres de verre teinté."~ */
  IF ~~ THEN REPLY #25789 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25790 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25791 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'ouest de la route. Elle est orientée au sud et les tuiles de son toit sont maintenues par de grosses pierres."~ */
  IF ~~ THEN REPLY #25792 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25793 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25794 /* ~"La Maison de tolérance des Plaisirs Intellectuels, hein ?" Il sourit d'un air entendu. "C'est juste à l'est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. C'est un grand bâtiment rond, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #25795 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25796 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25797 /* ~Il fronce les sourcils. "Hum. Il y a plusieurs entrées ici, ça je le sais… mais c'est tout. Je te préviens quand même que rien ne ressort de ces catacombes… y compris ceux qui y entrent."~ */
  IF ~~ THEN REPLY #25798 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25799 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25800 /* ~"La Salle des Fêtes est très facile à trouver. C'est un édifice massif dans la partie nord-est de cette zone."~ */
  IF ~~ THEN REPLY #25801 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25802 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25803 /* ~"Je n'y suis jamais allé, mais on me l'a montré - c'est dans la section sud-est de cette zone. Un édifice original, installé au sommet d'un grand escalier. Tu peux pas le manquer."~ */
  IF ~~ THEN REPLY #25804 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25805 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25806 /* ~"Tu trouveras la boutique de Goncalves le tailleur juste au nord-est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. C'est un grand bâtiment, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #25807 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25808 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25809 /* ~Il secoue la tête. "Tu trouveras peut-être une personne moins pressée dans l'un des cafés de la rue. Bon, au revoir…"~ */
  IF ~~ THEN REPLY #25810 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25811 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25812 /* ~"Eh?" Il semble troublé un moment… puis ses yeux s'éclairent, comme s'il se souvenait soudain de quelque chose. "Ah ! La guenaude noire, hein ? J'me souviens des contes qu'on me racontait sur elle quand j'étais petit…"~ */
  IF ~~ THEN REPLY #25813 /* ~"Des contes pour enfants ?"~ */ GOTO 22
  IF ~~ THEN REPLY #25814 /* ~"Je vois. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25815 /* ~"Merci, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25816 /* ~Il acquiesce. "Oui. C'est un mythe, non ? La sorcière qui a tenté de détruire Sigil ?" Il se renfrogne. "Vaudrait mieux que je m'en aille… au revoir."~ */
  IF ~~ THEN REPLY #25817 /* ~"Attends. J'ai une autre question…"~ */ GOTO 5
  IF ~~ THEN REPLY #25818 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #25819 /* ~"Non, pas du tout !" L'homme rit nerveusement. "Bon… eh…" Il désigne ton torse nu, balafré. "Tu as, peut-être, une apparence un peu plus…. disons, 'féroce' que les habitants ordinaires du Quartier, non ? Ne le prends pas mal, hein."~ */
  IF ~~ THEN REPLY #25820 /* ~"Je ne le prends pas mal. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #25821 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25822 /* ~"Rebonjour. Si tu veux bien m'excuser, je suis un peu pressé. Au revoir…"~ */
  IF ~~ THEN REPLY #25823 /* ~"Attends. J'ai des questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #25824 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25825 /* ~"Comme je te l'ai dit, je suis très pressé. Tu trouveras peut-être une personne moins pressée dans l'un des cafés de la rue. Bon, au revoir…"~ */
  IF ~~ THEN REPLY #25826 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25827 /* ~"Alors, au revoir."~ */ EXIT
END
