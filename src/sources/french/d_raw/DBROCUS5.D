// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3206 /* ~Le front de l'homme est plissé par la concentration. Lorsque tu t'approches de lui, il te regarde et te fait un signe de tête sec. "Oui ?"~ */
  IF ~~ THEN REPLY #3207 /* ~"J'avais quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #40689 /* ~"Rien. Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40690 /* ~Cet homme à l'air sérieux a toujours l'air d'essayer de résoudre un problème. Alors que tu t'approches de lui, il sort de sa rêverie et te regarde. "Oui ?"~ */
  IF ~~ THEN REPLY #40691 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #40692 /* ~"Rien. Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.3 4.1 5.0 6.2 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0
  SAY #40693 /* ~Il semble légèrement irrité mais ne dit rien.~ */
  IF ~~ THEN REPLY #40694 /* ~"Tu as l'air inquiet…"~ */ GOTO 3
  IF ~~ THEN REPLY #40695 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 6
  IF ~~ THEN REPLY #40696 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40697 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ GOTO 9
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40698 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 10
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40699 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 11
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40700 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 12
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40701 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 13
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40702 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 14
  IF ~~ THEN REPLY #40703 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40704 /* ~L'homme fronce les sourcils. "Non, pas 'inquiet'… j'essaie simplement de trouver un moyen de gagner contre Dolora."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40705 /* ~"Qui ?"~ */ GOTO 4
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #40706 /* ~"Oui, c'est une sacrée adversaire."~ */ GOTO 8
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40707 /* ~"Il faudra que je joue contre elle."~ */ GOTO 7
  IF ~~ THEN REPLY #40708 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40709 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.0
  SAY #40710 /* ~"Dolora est l'une des prostituées de la Maison de tolérance. Réservée, bien éduquée, très intelligente… l'esprit aussi affûté qu'une lame de rasoir, vraiment. Si tu as envie d'un défi, essaie de la battre à un jeu de stratégie."~ */
  IF ~~ THEN REPLY #40711 /* ~"Alors, tu ne l'as jamais battue ?"~ */ GOTO 5
  IF ~~ THEN REPLY #40712 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40713 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40714 /* ~Il secoue la tête, tout en fronçant les sourcils. "Avant, je jouais ici contre une femme du nom de Viviane, et j'ai fini par penser que j'étais assez doué… mais j'ai rencontré Dolora. Je soupçonne fortement Viviane de m'avoir laissé gagner à ces jeux, mais je ne lui ai jamais demandé."~ */
  IF ~~ THEN REPLY #40715 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40716 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #40717 /* ~"J'essaie de me remettre d'une défaite cuisante que m'a infligée Dolora. Mais je crois que j'aurais presque pu la battre lors de notre dernière partie, alors je réfléchis à ce que je pourrai faire pour gagner la prochaine fois que je jouerai contre elle."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40718 /* ~"Qui est Dolora?"~ */ GOTO 4
  IF ~  Global("Dolora","GLOBAL",1)
Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40719 /* ~"Il faudra que je joue contre elle."~ */ GOTO 7
  IF ~~ THEN REPLY #40720 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40721 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.1
  SAY #40722 /* ~Il te fait un signe de tête. "Est-ce qu'il y a autre chose, ou… ?"~ */
  IF ~~ THEN REPLY #40723 /* ~"Oui ; j'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40724 /* ~"Non, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1
  SAY #40725 /* ~"Écoute, j'ai autre chose en tête. Alors, si ça ne te dérange pas…"~ */
  IF ~~ THEN REPLY #40726 /* ~"Attends - laisse-moi te demander autre chose…"~ */ GOTO 2
  IF ~~ THEN REPLY #40727 /* ~"Bon. Désolé de t'avoir dérangé. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #40728 /* ~"D'accord, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #40729 /* ~"Rien, vraiment."~ */
  IF ~~ THEN REPLY #40730 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40731 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #40732 /* ~"Ravel, tu dis ? Je ne lui ai jamais demandé. Tu devrais peut-être le faire…"~ */
  IF ~~ THEN REPLY #40733 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~  Global("Kesai_Ask","AR0605",0)
~ THEN REPLY #40734 /* ~"Alors, au revoir."~ */ EXIT
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #40735 /* ~"Je le ferai peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.5
  SAY #40736 /* ~"Non. Ça fait longtemps que je n'ai pas parlé avec Viviane ; j'ignorais qu'elle l'avait perdu. C'est dommage - elle portait toujours le parfum le plus fantastiquement érotique qui soit…"~ */
  IF ~~ THEN REPLY #40737 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40738 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6
  SAY #40739 /* ~"Non, je ne sais pas. Autre chose ?"~ */
  IF ~~ THEN REPLY #40740 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40741 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.7
  SAY #40742 /* ~"Non." L'homme sourit d'un air suffisant, puis soupire. "Enfin, si. C'est une guenaude noire qui a été enfermée dans l'un des dédales de la Dame et qui fait l'objet de plus d'une centaine de contes d'horreur pour enfants… mais je parierais que ce n'est pas le genre d'information qui t'intéresse."~ */
  IF ~~ THEN REPLY #40743 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40744 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.8
  SAY #40745 /* ~Il secoue la tête. "Non ; je pensais qu'il n'y en avait que neuf."~ */
  IF ~~ THEN REPLY #40746 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40747 /* ~"Alors, au revoir."~ */ EXIT
END
