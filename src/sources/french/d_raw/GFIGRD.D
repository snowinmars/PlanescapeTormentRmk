// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFIGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFIGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5691 /* ~"Camarades ! À moi ! L'intrus est ici ! Venez par ici !"~ */
  IF ~~ THEN REPLY #5692 /* ~Terminé.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5693 /* ~"Eh toi, on t'a prié de partir. Quitte les lieux. Immédiatement."~ */
  IF ~~ THEN REPLY #5694 /* ~Terminé.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  CreatureInArea("AR0500")
~ THEN BEGIN 2 // from:
  SAY #5695 /* ~"Evacue la cour, monsieur. Dehors ou dedans, tu choisis."~ */
  IF ~~ THEN REPLY #66282 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #5701 /* ~"Tu peux demander aux grossiums ou passer par nous." Il sourit d'un air sévère. "Mais je ne te conseille pas de choisir la dernière option."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5704 /* ~Il examine le jeton avec attention. "C'est ma faute. En quoi puis-je t'être utile ?"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5708 /* ~"Dans ce cas, montre-la-moi." Il attend que tu lui tendes quelque chose, puis il dit : "Si tu comptes jouer au plus fin avec moi, sache que je perds vite patience."~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #5712 /* ~"Bonjour. Je peux t'aider ?"~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5714 /* ~"Eh bien, oui. Je ne savais pas à qui en parler, mais je peux me confier à toi. Bedai-Lihn m'a demandé de tuer Sandoz. Qu'en penses-tu ?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5715 /* ~"Je recherche le meurtrier du forgeron. As-tu vu quelque chose cette nuit-là ?"~ */ GOTO 12
  IF ~~ THEN REPLY #5716 /* ~"Où se trouve le bureau du gratte-papier ?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5717 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5718 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #5719 /* ~"Non, merci. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.4 9.0 10.1 14.1 16.0 19.0 20.0
  SAY #5720 /* ~"J'ai bien peur que ce ne soit un secret. Même si ça vient des valeureux membres de notre faction. À moins que tu ne sois impliqué dans le projet, ou que tu aies reçu une autorisation des grossiums, tu n'es pas autorisé à entrer."~ */
  IF ~~ THEN REPLY #5721 /* ~"Très bien. Peux-tu me dire où se trouve le bureau du gratte-papier ?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5722 /* ~"Bien. Où est-ce que je peux trouver les grossiums ?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5723 /* ~"Bien. Où est-ce que je peux trouver les grossiums ?"~ */ GOTO 9
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5724 /* ~"Je recherche le meurtrier du forgeron. As-tu vu quelque chose cette nuit-là ?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5725 /* ~"À propos de grossiums, Bedai-Lihn m'a demandé de tuer Sandoz. Qu'est-ce que tu dis de ça ?"~ */ GOTO 13
  IF ~~ THEN REPLY #5726 /* ~"Et si je te refaisais le portrait ?"~ */ GOTO 11
  IF ~~ THEN REPLY #5727 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.0 9.1 10.0 16.3 19.2 20.2
  SAY #5759 /* ~"Juste au sud de la fonderie principale, tu trouveras une pièce avec un bureau. C'est le bureau du gratte-papier."~ */
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5760 /* ~"Merci. Où est-ce que je peux trouver les grossiums ?"~ */ GOTO 9
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5761 /* ~"Merci. Où est-ce que je peux trouver les grossiums ?"~ */ GOTO 10
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5762 /* ~"Je recherche le meurtrier du forgeron. As-tu vu quelque chose cette nuit-là ?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5763 /* ~"Je ne savais pas à qui en parler, mais… Bedai-Lihn m'a demandé de tuer Sandoz."~ */ GOTO 13
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5764 /* ~"Qu'y a-t-il derrière ces portes gardées ?"~ */ GOTO 7
  IF ~~ THEN REPLY #64516 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.4 7.2 8.0 16.5 19.4 20.4
  SAY #5765 /* ~"Quant à la mort de Sandoz, Keldor est la seule personne à pouvoir t'aider. Tu le trouveras dans la salle de réunion principale, à droite en sortant de la fonderie principale. Tu ne peux pas le manquer."~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5766 /* ~"Bien. Qu'y a-t-il derrière ces portes gardées ?"~ */ GOTO 7
  IF ~~ THEN REPLY #5767 /* ~"Peux-tu me dire où se trouve le bureau du gratte-papier ?"~ */ GOTO 8
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5768 /* ~"Je recherche le meurtrier du forgeron. As-tu vu quelque chose cette nuit-là ?"~ */ GOTO 12
  IF ~~ THEN REPLY #5769 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 7.1 8.1 16.4 19.3 20.3
  SAY #5770 /* ~"Sandoz ou Keldor devraient pouvoir t'aider. Keldor se trouve dans la salle de réunion principale, à droite en sortant de la fonderie principale. Sandoz est généralement dans les salles qui se trouvent à l'arrière de la Salle."~ */
  IF ~~ THEN REPLY #5771 /* ~"Merci. Où se trouve le bureau du gratte-papier ?"~ */ GOTO 8
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5772 /* ~"Qu'y a-t-il derrière ces portes gardées ?"~ */ GOTO 7
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5773 /* ~"Je recherche le meurtrier du forgeron. As-tu vu quelque chose cette nuit-là ?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5774 /* ~"À propos de Sandoz, Bedai-Lihn m'a demandé de le tuer. Qu'est-ce que tu dis de ça ?"~ */ GOTO 13
  IF ~~ THEN REPLY #5775 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.5
  SAY #5776 /* ~"J'adorerais te voir essayer."~ */
  IF ~~ THEN REPLY #5777 /* ~Attaque.~ */ DO ~Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5778 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.3 8.2 9.2 10.2 16.2 18.0
  SAY #5779 /* ~"Non. Nous avions quitté la pièce pour la nuit."~ */
  IF ~~ THEN REPLY #5780 /* ~"C'est plutôt bizarre, non ?"~ */ GOTO 14
  IF ~~ THEN REPLY #5781 /* ~"Sur ordres de qui ?"~ */ GOTO 15
  IF ~~ THEN REPLY #5782 /* ~"J'ai d'autres questions à te poser qui n'ont rien à voir avec le meurtre."~ */ GOTO 16
  IF ~~ THEN REPLY #5783 /* ~"Je vois. Intéressant. Merci de m'avoir accordé un peu de ton temps."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0 7.4 8.3 10.3 16.1 19.1 20.1
  SAY #5784 /* ~"QUOI ? T'es sérieux ? Va en parler à Keldor. Pendant ce temps, nous nous occuperons de l'ingénieur. Merci."~ */
  IF ~~ THEN REPLY #5785 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 15.1 17.1
  SAY #5786 /* ~"Oui, c'est inhabituel. D'habitude, ils nous gardent ici jour et nuit afin d'assurer la sécurité du projet."~ */
  IF ~~ THEN REPLY #5787 /* ~"Qui a l'autorité de te renvoyer comme ça ?"~ */ GOTO 15
  IF ~~ THEN REPLY #5788 /* ~"Qu'est-ce que tu peux me dire sur le projet ?"~ */ GOTO 7
  IF ~~ THEN REPLY #5789 /* ~"Alors, ce que tu veux dire c'est que tu n'as rien vu."~ */ GOTO 17
  IF ~~ THEN REPLY #5790 /* ~"Intéressant. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #5791 /* ~"Les seules personnes qui jouissent d'une telle autorité sont Thildon et Bedai-Lihn. Je suppose que les régisseurs, ou quelqu'un à leur service, a pu donner l'ordre, mais il est peu probable qu'ils s'en soient chargés eux-mêmes. Je ne sais pas de qui émanait l'ordre, et je me demande pourquoi on aurait intérêt à donner un tel ordre."~ */
  IF ~~ THEN REPLY #5792 /* ~"Ça ne m'est pas d'une grande utilité, mais c'est un début. Pour compenser, réponds à d'autres questions pour moi."~ */ GOTO 16
  IF ~~ THEN REPLY #5793 /* ~"Et tu n'as pas trouvé cet ordre insolite ?"~ */ GOTO 14
  IF ~~ THEN REPLY #5794 /* ~"Et tu n'as rien vu ?"~ */ GOTO 17
  IF ~~ THEN REPLY #5795 /* ~"C'est… 'éclairant'. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 15.0 17.0 18.1
  SAY #5796 /* ~"D'autres questions ?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5797 /* ~"Qu'y a-t-il derrière ces portes gardées ?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5798 /* ~"Eh bien, oui. Je ne savais pas à qui en parler, mais je peux me confier à toi. Bedai-Lihn m'a demandé de tuer Sandoz. Qu'en penses-tu ?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5799 /* ~"Je recherche le meurtrier du forgeron. As-tu vu quelque chose cette nuit-là ?"~ */ GOTO 12
  IF ~~ THEN REPLY #5800 /* ~"Où se trouve le bureau du gratte-papier ?"~ */ GOTO 8
  IF ~  !Dead("Sandoz")
~ THEN REPLY #5801 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 10
  IF ~  Dead("Sandoz")
~ THEN REPLY #5802 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #5803 /* ~"Oublie ça. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.2
  SAY #5804 /* ~"C'est tout à fait exact. Je n'ai rien vu."~ */
  IF ~~ THEN REPLY #5805 /* ~"Hum. Alors, réponds à d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5806 /* ~"Tu n'as pas trouvé cet ordre insolite ?"~ */ GOTO 14
  IF ~~ THEN REPLY #5807 /* ~"C'est… 'éclairant'. Bonne journée."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 18 // from:
  SAY #5808 /* ~"Je sais que nous sommes censés faire notre possible pour t'aider, mais je dois t'avertir que mon aide ne te sera pas tellement utile."~ */
  IF ~~ THEN REPLY #5809 /* ~"Pourquoi ? Tu n'étais pas ici ?"~ */ GOTO 12
  IF ~~ THEN REPLY #5810 /* ~"Bon. Eh bien, de toute façon, j'ai d'autres questions à te poser."~ */ GOTO 16
  IF ~~ THEN REPLY #5811 /* ~"Oh. Alors, laisse tomber."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from:
  SAY #5812 /* ~Tu aperçois un garde à l'air compétent mais blasé. "Bonjour. Est-ce que je peux t'aider ?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5813 /* ~"Qu'y a-t-il derrière ces portes gardées ?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5814 /* ~"Eh bien, oui. Je ne savais pas à qui en parler, mais je peux me confier à toi. Bedai-Lihn m'a demandé de tuer Sandoz. Qu'en penses-tu ?"~ */ GOTO 13
  IF ~~ THEN REPLY #5815 /* ~"Où se trouve le bureau du gratte-papier ?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5816 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5817 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #5818 /* ~"Oublie ça. Adieu."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #5819 /* ~"Bonjour. Est-ce que je peux t'aider ?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5820 /* ~"Qu'y a-t-il derrière ces portes gardées ?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5821 /* ~"Eh bien, oui. Je ne savais pas à qui en parler, mais je peux me confier à toi. Bedai-Lihn m'a demandé de tuer Sandoz. Qu'en penses-tu ?"~ */ GOTO 13
  IF ~~ THEN REPLY #5822 /* ~"Où se trouve le bureau du gratte-papier ?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5823 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5824 /* ~"Où est-ce que je peux trouver un grossium par ici ?"~ */ GOTO 9
  IF ~~ THEN REPLY #5825 /* ~"Oublie ça. Adieu."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 21 // from:
  SAY #67221 /* ~Le garde te lance un regard noir. "Dégage. On a du travail, nous."~ */
  IF ~~ THEN REPLY #67222 /* ~"Au revoir."~ */ EXIT
END
