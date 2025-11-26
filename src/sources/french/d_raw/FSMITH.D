// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FSMITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~FSMITH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #4729 /* ~"Tu ne devrais pas être déjà parti ? Gardes ! Escortez ce bige hors d'ici !"~ */
  IF ~~ THEN REPLY #4730 /* ~Pars.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #4731 /* ~"À l'aide ! Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #4732 /* ~Attaque.~ */ EXIT
  IF ~~ THEN REPLY #4733 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY #4734 /* ~"Par les Puissances ! Notre machinerie est détruite ! Où le factol trouvera-t-il l'argent pour nous payer maintenant ? Heureusement que nous sommes dévoués à la cause. Bon, au boulot… c'est encore plus dur cette fois. Quel test !~ */
  IF ~~ THEN REPLY #4735 /* ~Pars.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #4736 /* ~"Salut, frère ! J'aimerais prendre plus de temps pour te parler, mais l'acier fondu n'attend pas. Si tu as besoin de quelque chose, va voir les directeurs là-bas… Ils ont le temps."~ */
  IF ~~ THEN REPLY #4737 /* ~"Très bien. Bonne chance."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN BEGIN 4 // from:
  SAY #4738 /* ~"Alors, tu mènes des investigations sur le meurtre, hein ? Je n'étais pas malheureux de voir ce salaud tomber. Personne n'aimait beaucoup ce bibard. Je ne sais pas où tu pourrais chercher."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4739 /* ~"Mais tu as autre chose à me dire, n'est-ce pas ?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4740 /* ~"Mais tu as autre chose à me dire, n'est-ce pas ?"~ */ GOTO 6
  IF ~~ THEN REPLY #4741 /* ~"Très bien. Peux-tu me redonner des explications sur cette forge ?"~ */ GOTO 7
  IF ~~ THEN REPLY #4742 /* ~"Très bien. Merci de m'avoir accordé un peu de ton temps."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4743 /* ~"Ouais, bon…" Le forgeron jette un regard circulaire furtif. "Tu auras plus de chance en commençant par la… directrice. Elle a l'air irrité ces derniers jours. Ce n'est peut-être pas elle, mais je crois qu'elle a une idée sur le coupable."~ */
  IF ~~ THEN REPLY #4744 /* ~"La directrice ? Où est-ce que je peux la trouver ?"~ */ GOTO 8
  IF ~~ THEN REPLY #4745 /* ~"Merci pour le temps que tu m'as consacré. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #4746 /* ~"Non, c'est tout ce que j'ai à te dire."~ */
  IF ~~ THEN REPLY #4747 /* ~"Très bien. Peux-tu me remontrer comment utiliser la forge ?"~ */ GOTO 7
  IF ~~ THEN REPLY #4748 /* ~"Très bien. Merci de m'avoir accordé un peu de ton temps."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("G_Test1","GLOBAL",1)
~ THEN BEGIN 7 // from: 4.2 6.0
  SAY #4749 /* ~"Tu veux travailler la forge. D'abord, il te faut un tablier de protection. Tu dois trouver des pinces, un marteau et une enclume. Ensuite, tu prends un morceau de fer, tu le places dans le feu jusqu'à ce qu'il soit assez chaud pour être travaillé. Tu frappes de toutes tes forces sur l'enclume. Tu lui donnes la forme de ton choix, et tu le plonges dans le tonneau d'eau à côté. C'était le cours intensif… il te faudra un peu de pratique."~ */
  IF ~~ THEN REPLY #4750 /* ~"C'est si difficile que ça ?"~ */ GOTO 9
  IF ~~ THEN REPLY #4751 /* ~"Je vois. J'ai d'autres questions."~ */ GOTO 10
  IF ~~ THEN REPLY #4752 /* ~"Je vois. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 10.2
  SAY #4753 /* ~"Généralement, tu la trouveras dans le bureau du contremaître… à nous surveiller. Purge, c'est son boulot, mais moi aussi je pourrais le faire."~ */
  IF ~~ THEN REPLY #4754 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 10
  IF ~~ THEN REPLY #4755 /* ~"Si tu étais quelqu'un de confiance, tu n'aurais pas besoin d'un superviseur pour le faire. Adieu."~ */ EXIT
  IF ~~ THEN REPLY #4756 /* ~"J'imagine, oui. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #4759 /* ~"Tu serais surpris, bige. Casse-toi. Je suis occupé."~ */
  IF ~~ THEN REPLY #4758 /* ~Pars.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 19 17 18 20 even though they appear after this state */
~  True()
~ THEN BEGIN 10 // from: 7.1 8.0 11.0 13.0 14.0
  SAY #4760 /* ~"Ouais ? Quoi ? Dépêche-toi. Je suis occupé."~ */
  IF ~~ THEN REPLY #4761 /* ~"Qui es-tu ?"~ */ GOTO 11
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #4762 /* ~"Où se trouve le bureau du gratte-papier ?"~ */ GOTO 13
  IF ~~ THEN REPLY #4763 /* ~"Où se trouve ton directeur ?"~ */ GOTO 8
  IF ~~ THEN REPLY #4764 /* ~"Que fais-tu ici ?"~ */ GOTO 14
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #4765 /* ~"Qu'est-ce que tu peux me dire sur les Hommes-Dieux ?"~ */ GOTO 15
  IF ~~ THEN REPLY #4791 /* ~"Laisse tomber."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #4766 /* ~"Je suis trop occupé pour rester là à babiller avec les gens. Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #4767 /* ~"Eh bien, oui."~ */ GOTO 10
  IF ~~ THEN REPLY #4768 /* ~"Non. Pas vraiment."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.5 11.1
  SAY #4769 /* ~"Ne me fais pas perdre mon temps. Je dois aller travailler. Au revoir."~ */
  IF ~~ THEN REPLY #4770 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #4771 /* ~"Tu vois cette pièce, en bas, avec un bureau et un vieux type assis derrière ? C'est le bureau du contremaître. Il est assis là. Tu as besoin d'autre chose ou je peux retourner travailler ?"~ */
  IF ~~ THEN REPLY #4772 /* ~"J'ai d'autres questions."~ */ GOTO 10
  IF ~~ THEN REPLY #4773 /* ~"Non, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #4774 /* ~"Oh, je reste assis toute la journée les doigts de pieds en éventails. Écoute, je ne veux pas te brusquer, mais ce que je fais ici me semble très clair : je travaille l'acier. Et si je n'y retourne pas bientôt, je devrai tout recommencer."~ */
  IF ~~ THEN REPLY #4775 /* ~"D'accord, d'accord. J'ai quelques questions supplémentaires."~ */ GOTO 10
  IF ~~ THEN REPLY #4776 /* ~"Merci de m'avoir accordé un peu de ton temps. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #4777 /* ~"Inutile de réagir comme ça, 'l'ami'. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #4778 /* ~Le forgeron s'arrête de frapper et te regarde, comme s'il te jaugeait. "Un Homme-Dieu est un lascar qui pense que nous pouvons tous être des dieux. Même toi. Peu importe si tu es bon ou mauvais. Nous traversons tous notre existence en apprenant à devenir des êtres toujours plus parfaits. Voici une autre définition de l'Homme-Dieu : c'est quelqu'un qui tape sur les nerfs des gens parce qu'il pose des questions dont il devrait connaître les réponses."~ */
  IF ~~ THEN REPLY #4779 /* ~"Alors, tu veux dire que nous devons passer des tests et qu'après ça, nous serons meilleurs ?"~ */ GOTO 16
  IF ~~ THEN REPLY #4780 /* ~"Alors, tu veux dire que tu n'es pas la personne la mieux placée pour parler de ça en ce moment ?"~ */ GOTO 16
  IF ~~ THEN REPLY #4781 /* ~"Merci. Bon, je m'en vais."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #4782 /* ~"Tu devrais aller voir l'un des intendants derrière cette porte, au niveau du mur est. Ils n'ont rien de mieux à faire pour occuper leur temps. Bonne journée."~ */
  IF ~~ THEN REPLY #4783 /* ~"J'ai d'autres questions."~ */ EXIT
  IF ~~ THEN REPLY #4784 /* ~Pars.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",0)
GlobalLT("Forge","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #4785 /* ~"L'ami, je crois que tu as assez travaillé la forge. Tout le monde pense que tu as…euh… des qualités. Pousse-toi et laisse la place à quelqu'un qui en a vraiment l'utilité."~ */
  IF ~~ THEN REPLY #4786 /* ~"Très bien, d'accord."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 18 // from:
  SAY #4787 /* ~"Par les Puissances ! Notre machinerie est détruite ! Où le factol trouvera-t-il l'argent pour nous payer maintenant ? Heureusement que nous sommes dévoués à la cause. Bon, au boulot… c'est encore plus dur cette fois. Quel test !~ */
  IF ~~ THEN REPLY #4788 /* ~Pars.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("GearRepair","GLOBAL",0)
GlobalLT("GearRepair","GLOBAL",5)
~ THEN BEGIN 19 // from:
  SAY #4789 /* ~"Par les Puissances ! Notre machinerie est détruite ! Où le factol trouvera-t-il l'argent pour nous payer maintenant ? Heureusement que nous sommes dévoués à la cause. Bon, au boulot… c'est encore plus dur cette fois. Quel test !~ */
  IF ~~ THEN REPLY #4790 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 ~  CreatureInArea("AR0503")
~ THEN BEGIN 20 // from:
  SAY #64514 /* ~Il te lance un regard mauvais et se reconcentre sur les paroles de l'orateur . "Chut ! J'essaie d'écouter Keldor. Je veux apprendre et tu m'en empêches."~ */
  IF ~~ THEN REPLY #64515 /* ~"Désolé. Au revoir."~ */ EXIT
END
