// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Tu vois un homme débraillé et négligé. Il sent fort l'alcool. "Ouais. Qu'est-ce tu veux, hein ?" Il se penche vers toi et t'examine des pieds à la tête. "On dirait que t'as besoin d'un GUÉRISSEUR !" Il rit grassement de son pauvre humour. Une puanteur de liqueur et de nourriture mal mâchée t'enveloppe.~ */
  IF ~~ THEN REPLY #3372 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10782 /* ~"Je cherche un journal. En as-tu vu un ?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10783 /* ~Je cherche un Récupérateur appelé Pharod. Sais-tu quelque chose sur lui ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10784 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10785 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10786 /* ~"Apparemment, tu ne peux pas m'aider. Bonne journée."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10787 /* ~"Ah, mon vieil ami le Balafré." Il glousse tout bas… ou tente de glousser tout bas. Dans son état d'ivresse, il a peine à faire quoi que ce soit avec discrétion. "Qu'est-ce que l'vieux la Gifle peut faire pour toi, Balafré ?"~ */
  IF ~~ THEN REPLY #10788 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10789 /* ~"Je cherche un journal. J'ai dû l'égarer."~ */ GOTO 3
  IF ~~ THEN REPLY #10790 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10791 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10792 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 6.0
  SAY #10793 /* ~"Moi ? Je m'appelle ANDOR !" Il vacille. "Jadis, j'étais un sacré guerrier… enfin, avant la bibe. On m'appelait la Gifle parce que j'étais un as pour en donner. Maintenant, c'est parce que j'en reçois une bonne à chaque fois que j'parle à une dame."~ */
  IF ~~ THEN REPLY #10794 /* ~"C'est génial. Peux-tu répondre à quelques questions pour moi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10795 /* ~"C'est génial… umm… Andor. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 6.1
  SAY #10796 /* ~Il marque un temps. "Bon, si tu l'as perdu dans la Ruche, y'a des chances pour qu'un Récupérateur l'ait. Continue d'chercher. Les Récupérateurs, y trouvent des tas de trucs. Y peuvent peut-être t'aider."~ */
  IF ~~ THEN REPLY #10797 /* ~"Très bien. Il me faut d'autres réponses, s'il te plaît."~ */ GOTO 6
  IF ~~ THEN REPLY #10798 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 6.3
  SAY #10799 /* ~"Le Cadavre fumant. Y'a pas mieux en ville pour boire un coup. Enfin, si ça t'dérange pas d'lever le coude en compagnie d'un fiélon ou deux. Ou de voir des gens de la Mort Rouge. Y'a du monde, ici. Et plein de trucs intéressants. Plein."~ */
  IF ~~ THEN REPLY #10800 /* ~"Et je suppose que tu fais partie des attractions. Réponds à d'autres questions pour moi."~ */ GOTO 6
  IF ~~ THEN REPLY #10801 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.3 6.4
  SAY #10802 /* ~"Lui ? C'est Ignus. Un vieux débris de mage cinglé qui s'était mis en tête de brûler la Ruche. T'as vu l'Allée des Angles Dangereux ? C'est lui qu'a fait ça. Un groupe de magiciens s'est réuni, lui a jeté un sort, et le v'là transformé en, heu… mascotte de taverne. Mon cousin, y faisait partie des magiciens en question. L'est pas bien puissant, mais c'bige-là, en tout cas, il l'a eu !"~ */
  IF ~~ THEN REPLY #10803 /* ~"C'est génial, La Gifle. Réponds à d'autres questions pour moi."~ */ GOTO 6
  IF ~~ THEN REPLY #10804 /* ~"Merci, La Gifle. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 4.0 5.0 7.0
  SAY #10805 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #10806 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10807 /* ~"Je cherche un journal. En as-tu vu un récemment ?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10808 /* ~"Je cherche un Récupérateur appelé Pharod. Sais-tu quelque chose sur lui ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10809 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10810 /* ~"Qui est-ce qui brûle près de l'entrée ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10811 /* ~"Rien. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 6.2
  SAY #10812 /* ~"Pharod ? Le nom ne m'est pas inconnu… ah, tu dois savoir ce qui se passe quand on a la tête pleine de bibe. Bref, je n'arrive pas à me rappeler qui c'est. Mes excuses, la Balafre."~ */
  IF ~~ THEN REPLY #10813 /* ~"Très bien. Alors, réponds à d'autres questions, d'accord ?"~ */ GOTO 6
  IF ~~ THEN REPLY #10814 /* ~"Très bien. Bonne journée."~ */ EXIT
END
