// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDABUS~

IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1782 /* ~Tu vois une grande créature à la tignasse blanche. Sa peau est verdâtre ; une paire de cornes de chèvre sort de son front. Il est vêtu d'un habit long et ondoyant, et semble flotter légèrement au-dessus du sol.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #1784 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #1783 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1785 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #6863 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2781 /* ~La créature se retourne face à toi et des symboles apparaissent autour de sa tête. Les symboles sont légèrement brillants et ils… voltigent.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 52
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #1786 /* ~La créature se retourne face à toi et des symboles apparaissent autour de sa tête. Les symboles sont légèrement brillants et ils… voltigent.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 34
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1787 /* ~Le dabus attend patiemment, les mains enfouies dans ses manches. Une série de symboles se matérialise au-dessus de sa tête puis se dissipe, faisant place à un point d'interrogation.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6864 /* ~Essaie d'engager la conversation et de traduire ce que dit le dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6867 /* ~Essaie d'entamer une conversation et vois si tu peux traduire ce que dit le dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6869 /* ~Essaie de parler au dabus et vois si tu réussis à le comprendre.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6870 /* ~"J'ai des questions à te poser…"~ */ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6871 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6872 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6873 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6874 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6875 /* ~"Annah, est-ce que tu peux me traduire ce qu'il dit ?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6876 /* ~"Dak'kon est-ce que tu peux me traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6877 /* ~"Tombée-en-Disgrâce, est-ce que vous pouvez me traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6878 /* ~"Excuse-moi, je ne comprends pas ce que tu dis."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6879 /* ~"Euh… au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 22.0 22.1
  SAY #6730 /* ~Tu poses plusieurs questions au dabus pour comprendre comment fonctionnent les rébus qui s'inscrivent au-dessus de sa tête. Il se montre extrêmement patient pendant votre 'discussion' et te donne des phrases faciles à traduire. Au bout de quelques minutes, tu commences à piger… Tu as l'impression que ce n'est pas la première fois que tu fais ça.~ */
  IF ~~ THEN REPLY #6880 /* ~"Tu peux peut-être m'aider…"~ */ GOTO 8
  IF ~~ THEN REPLY #6881 /* ~"Je voulais juste me remettre à mes rébus. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 22.2
  SAY #6731 /* ~Tu poses plusieurs questions au dabus pour comprendre comment fonctionnent les rébus qui s'inscrivent au-dessus de sa tête. Même s'il se montre extrêmement patient pendant votre 'discussion', tu ne piges pas. Le dabus s'arrête finalement de faire flotter les symboles et attend.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6882 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6883 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6884 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6885 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6886 /* ~"Annah, est-ce que tu peux me traduire ce qu'il dit ?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6887 /* ~"Dak'kon est-ce que tu peux me traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6888 /* ~"Tombée-en-Disgrâce, est-ce que vous pouvez me traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6889 /* ~"Excuse-moi, je ne comprends pas ce que tu dis."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6890 /* ~"Euh… au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.12 4.1 5.8 8.6 9.1 10.1 10.2 11.1 12.1 12.2 19.3 22.12
  SAY #6732 /* ~Le dabus s'incline légèrement. Les symboles virevoltent au-dessus de sa tête, puis il se détourne.~ */
  IF ~~ THEN REPLY #6891 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.11 5.7 22.4
  SAY #6733 /* ~Une série de symboles apparaît au-dessus de la tête du dabus, qui s'incline ensuite et disparaît.~ */
  IF ~~ THEN REPLY #6892 /* ~"Euh… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.0 9.0 10.0 11.0 12.0 19.2 22.3
  SAY #6734 /* ~Le dabus attend.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6893 /* ~"Qui es-tu ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6894 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6895 /* ~"Qui es-tu ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6896 /* ~"Que fais-tu ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #6897 /* ~"Tu peux me parler de la Dame des Douleurs ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #6898 /* ~"Qu'est-ce que tu peux me dire sur Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #6899 /* ~"Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6735 /* ~Le dabus incline légèrement la tête, au-dessus de laquelle une série de symboles apparaît. Tu penses qu'il est en train d'expliquer qu'il est un dabus.~ */
  IF ~~ THEN REPLY #6902 /* ~"J'ai une autre question à te poser."~ */ GOTO 8
  IF ~~ THEN REPLY #6903 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #6736 /* ~Une série de symboles apparaît au-dessus de la tête du dabus. Tu penses qu'il est en train d'expliquer qu'il exécute sa tâche… ou ses tâches.~ */
  IF ~~ THEN REPLY #6904 /* ~"J'ai une autre question à te poser…"~ */ GOTO 8
  IF ~~ THEN REPLY #6905 /* ~"Très explicite. Merci. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6906 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #6737 /* ~Le dabus incline légèrement la tête, au-dessus de laquelle une série de symboles apparaît. (Je suis un dabus.)~ */
  IF ~~ THEN REPLY #6900 /* ~"J'ai une autre question à te poser."~ */ GOTO 8
  IF ~~ THEN REPLY #6901 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #6738 /* ~Une série de symboles apparaît au-dessus de la tête du dabus. (Je fais mon travail.)~ */
  IF ~~ THEN REPLY #6907 /* ~"J'ai une autre question à te poser…"~ */ GOTO 8
  IF ~~ THEN REPLY #6908 /* ~"Très explicite. Merci. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6909 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 13 // from:
  SAY #6739 /* ~Le dabus incline légèrement la tête, au-dessus de laquelle une série de symboles apparaît.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6910 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6911 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6912 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6913 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6740 /* ~Une série de symboles apparaît au-dessus de la tête du dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6914 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6915 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6916 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 15 // from:
  SAY #6741 /* ~Le dabus incline légèrement la tête, au-dessus de laquelle une série de symboles apparaît. Tu penses qu'il est en train d'expliquer qu'il est un dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6917 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6918 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6919 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6920 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 16 // from:
  SAY #6742 /* ~Une série de symboles apparaît au-dessus de la tête du dabus. Tu penses qu'il est en train d'expliquer qu'il exécute sa tâche… ou ses tâches.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6921 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6922 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6923 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 17 // from:
  SAY #6743 /* ~Le dabus incline légèrement la tête, au-dessus de laquelle une série de symboles apparaît. (Je suis un dabus.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6924 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6925 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6926 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6927 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 18 // from:
  SAY #6744 /* ~Une série de symboles apparaît au-dessus de la tête du dabus. (Je fais mon travail.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6928 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6929 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6930 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 19 // from: 8.4
  SAY #6745 /* ~Un seul symbole apparaît au-dessus de la tête du dabus. Il représente un masque métallique de femme dont des lames sortent sur les côtés. Le simple fait de regarder cette image fantomatique te met mal à l'aise.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6931 /* ~"Euh… ce n'est pas vraiment la réponse que j'attendais."~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 4
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6932 /* ~"Euh… je vois. Dak'kon, peux-tu lui poser une autre question ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 1
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6933 /* ~"Euh… j'ai une autre question à te poser…"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~~ THEN REPLY #6934 /* ~"Euh… c'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 8.5
  SAY #6746 /* ~Un seul symbole apparaît au-dessus de la tête du dabus. Il représente une forme ovale blanche séparée en deux par un éclair noir. Le dabus laisse le symbole flotter pendant quelques secondes, puis disparaît sans faire attention à toi.~ */
  IF ~~ THEN REPLY #6935 /* ~"Euh… alors au revoir."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #6747 /* ~Tu aperçois un dabus. Il est en légère lévitation et porte de longues robes flottantes.~ */
  IF ~~ THEN REPLY #6936 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~~ THEN REPLY #6938 /* ~Laisse le dabus tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.1 21.0
  SAY #6748 /* ~Il se retourne vers toi et une série de symboles apparaît autour de sa tête. Ces symboles sont entourés d'une pâle lumière et ne font que… voltiger.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6939 /* ~Essaie d'entamer une conversation et vois si tu peux traduire ce que dit cette créature.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6940 /* ~Essaie d'entamer une conversation et vois si tu peux traduire ce que dit cette créature.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6941 /* ~Essaie de lui parler et vois si tu arrives à le comprendre.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6942 /* ~"J'ai des questions à te poser…"~ */ GOTO 8
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6943 /* ~"Excuse-moi… je ne comprends pas ce que tu dis."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6944 /* ~"Morte, peux-tu traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6945 /* ~"Morte, peux-tu traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6946 /* ~"Morte, peux-tu traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6947 /* ~"Morte, peux-tu traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6948 /* ~"Annah, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6949 /* ~"Dak'kon, est-ce que tu peux traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6950 /* ~"Tombée-en-Disgrâce, est-ce que vous pouvez traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6951 /* ~"Tant pis. Pardon, je ne voulais pas te déranger. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END
