// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFELL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 4 3 1 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3013 /* ~Fell se tourne pour te faire face alors que tu approches. À tes côtés, Annah se raidit lorsqu'elle aperçoit Fell.~ */
  IF ~~ THEN REPLY #23037 /* ~"Bonjour, Fell."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23038 /* ~"Annah… qu'est-ce qui ne va pas ?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23039 /* ~"Excuse-moi de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Fell","GLOBAL",0)
Global("Know_Dabus","GLOBAL",1)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #21094 /* ~Tu aperçois un dabus… mais quelque chose en lui paraît étrange. Il a la tignasse blanche, la couleur de peau verdâtre, la paire de cornes de bouc… mais tu réalises soudainement que celui-ci marche sur le sol au lieu de flotter. Sans trop savoir pourquoi, cela te met mal à l'aise… et met aussi Annah mal à l'aise, car elle retient son souffle brusquement lorsqu'elle aperçoit le dabus.~ */
  IF ~~ THEN REPLY #23040 /* ~"Euh…bonjour."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23041 /* ~"Annah… qu'est-ce qui ne va pas ?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23042 /* ~"Excuse-moi de t'avoir dérangé. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 11
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21096 /* ~Fell se tourne pour te faire face alors que tu approches. Il croise les bras et attend.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23043 /* ~Essaie d'entamer une conversation et vois si tu peux traduire ce que dit Fell.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23044 /* ~Essaie d'entamer une conversation et vois si tu peux traduire ce que dit Fell.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23045 /* ~Essaie de parler à Fell et vois si tu peux le comprendre.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #23046 /* ~"Est-ce que je peux voir les tatouages que tu as, Fell ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23047 /* ~"J'ai des questions à te poser…"~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23048 /* ~"J'ai des questions à te poser…"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23049 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23050 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23051 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23052 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23053 /* ~"Annah, peux-tu me traduire ?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23054 /* ~"Dak'kon, peux-tu me traduire ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23055 /* ~"Tombée-en-Disgrâce, pouvez-vous me traduire ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23056 /* ~"Peu importe. Désolé de te déranger. Au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Know_Dabus","GLOBAL",1)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #21101 /* ~Tu aperçois un dabus… mais quelque chose en lui paraît étrange. Il a la tignasse blanche, la couleur de peau verdâtre, la paire de cornes de bouc… mais tu réalises soudainement que celui-ci marche sur le sol au lieu de flotter. Sans trop savoir pourquoi, cela te met mal à l'aise.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23057 /* ~Essaie d'entamer une conversation et vois si tu peux traduire ce que dit cette créature.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23058 /* ~Essaie d'engager la conversation et de traduire ce que dit la créature.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23059 /* ~Essaie de lui parler pour voir si tu le comprends.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23060 /* ~"J'ai des questions à te poser…"~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23061 /* ~"J'ai des questions à te poser…"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23062 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23063 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23064 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23065 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23066 /* ~"Annah, peux-tu me traduire ?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23067 /* ~"Dak'kon, peux-tu me traduire ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23068 /* ~"Tombée-en-Disgrâce, pouvez-vous me traduire ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23069 /* ~Ignore le dabus et explore l'atelier.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Know_Dabus","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #21498 /* ~Tu aperçois une grande créature à la tignasse blanche. Sa peau a une teinte verdâtre et deux cornes dépassent de son front. Elle est vêtue de longues robes flottantes.~ */
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #23070 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #23071 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN REPLY #23072 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ GOTO 6
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",1)
~ THEN REPLY #23073 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #23074 /* ~Ignore cette créature et explore l'atelier.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21499 /* ~Une série de symboles se matérialise au-dessus de la tête de la créature. Les symboles semblent briller et ils… flottent.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 211
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.3
  SAY #21500 /* ~Une série de symboles se matérialise au-dessus de la tête de la créature. Les symboles semblent briller et ils… flottent.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 118
END

IF ~~ THEN BEGIN 7 // from:
  SAY #21501 /* ~En réponse, 'Fell' s'incline. Un symbole unique apparaît au-dessus de sa tête. Il est tout d'abord flou, puis se transforme en un ovale blanc traversé d'un éclair noir. Quelque chose te donne l'impression que tu *connais* cette créature.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 121
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.4 4.1
  SAY #21502 /* ~Le dabus attend patiemment, les mains enfouies dans ses manches. Une série de symboles se matérialise au-dessus de sa tête puis se dissipe, faisant place à un point d'interrogation.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23075 /* ~Essaie d'engager la conversation et de traduire ce que dit le dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23076 /* ~Essaie d'engager la conversation et de traduire ce que dit le dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23077 /* ~Essaie de parler au dabus et vois si tu réussis à le comprendre.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23078 /* ~"J'ai des questions à te poser…"~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23079 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23080 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23081 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23082 /* ~"Morte, peux-tu me traduire ?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23083 /* ~"Annah, peux-tu me traduire ?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23084 /* ~"Dak'kon, peux-tu me traduire ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23085 /* ~"Tombée-en-Disgrâce, pouvez-vous me traduire ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23086 /* ~"Désolé, je ne te comprends pas."~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~~ THEN REPLY #23087 /* ~"Euh… au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.0 2.1 3.0 3.1 8.0 8.1
  SAY #21503 /* ~Tu poses plusieurs questions au dabus pour comprendre comment fonctionnent les rébus qui s'inscrivent au-dessus de sa tête. Il se montre extrêmement patient pendant votre 'discussion' et te donne des phrases faciles à traduire. Au bout de quelques minutes, tu commences à piger… Tu as l'impression que ce n'est pas la première fois que tu fais ça.~ */
  IF ~~ THEN REPLY #23088 /* ~"Tu peux peut-être m'aider…"~ */ GOTO 13
  IF ~~ THEN REPLY #23089 /* ~"Je voulais juste me remettre aux rébus. Au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 2.2 3.2 8.2
  SAY #21504 /* ~Tu poses plusieurs questions au dabus pour comprendre comment fonctionnent les rébus qui s'inscrivent au-dessus de sa tête. Même s'il se montre extrêmement patient pendant votre 'discussion', tu ne piges pas. Le dabus s'arrête finalement de faire flotter les symboles et attend.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23090 /* ~"Morte, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23091 /* ~"Morte, peux-tu traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23092 /* ~"Morte, peux-tu traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23093 /* ~"Morte, peux-tu traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23094 /* ~"Annah, peux-tu me traduire ce qu'il dit ?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23095 /* ~"Dak'kon, peux-tu me traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23096 /* ~"Tombée-en-Disgrâce, pouvez-vous me traduire ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23097 /* ~"Excuse-moi, je ne comprends pas ce que tu dis."~ */ GOTO 12
  IF ~~ THEN REPLY #23098 /* ~"Euh… au revoir."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.2 8.12 9.1 10.8
  SAY #21505 /* ~Le dabus s'incline légèrement. Les symboles virevoltent autour de sa tête, puis il se détourne.~ */
  IF ~~ THEN REPLY #23099 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.11 10.7
  SAY #21506 /* ~Une série de symboles apparaît au-dessus de la tête du dabus. Il s'incline puis se détourne.~ */
  IF ~~ THEN REPLY #23100 /* ~"Euh… au revoir."~ */ JOURNAL #21863 /* ~J'ai rencontré un dabus dans un étrange magasin, mais je n'ai pas réussi à comprendre ce qu'il me disait. Il faudra que je trouve un natif capable de traduire ses paroles.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.4 3.3 8.3 9.0 15.4 16.4 18.4 19.4 21.4 22.4 24.4 25.4 27.3 28.4 30.0 32.7 33.7 35.7 36.7 38.7 39.7 41.6 42.6 44.6 45.6 47.3 48.3 50.3 51.3 53.4 54.5 56.2 57.1 61.3 63.4 65.3 66.4 68.4 70.3 72.4 73.4 75.4 76.4 78.0 79.0 81.4 82.4 84.4 85.4 87.4 88.4 90.4 91.4 93.4 94.7 95.7 100.3 101.3 102.3 106.4 107.3
  SAY #21507 /* ~Le dabus attend.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23101 /* ~"Qui es-tu ?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23102 /* ~"Qui es-tu ?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23103 /* ~"C'est quoi, cet endroit ?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23104 /* ~"C'est quoi, cet endroit ?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 19
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23105 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23106 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23107 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~FloatRebus(Myself)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23108 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64390 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64391 /* ~"Qu'y a-t-il de l'autre côté de ce rideau, Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64392 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64393 /* ~"Quelles sont ces formes dans l'arrière-salle, Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23109 /* ~"T'as dit que tu m'avais déjà rencontré, Fell… sais-tu comment je suis mort ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 72
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23110 /* ~"T'as dit que tu m'avais déjà rencontré, Fell… sais-tu comment je suis mort ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 73
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23111 /* ~"Fell, as-tu entendu parler de Ravel ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 32
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23112 /* ~"Fell, as-tu entendu parler de Ravel ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 33
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23113 /* ~"C'est toi qui as fait les tatouages de ce bras démembré que j'ai trouvé, Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 53
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23114 /* ~"C'est toi qui as fait les tatouages de ce bras démembré que j'ai trouvé, Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 54
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23115 /* ~"Peux-tu me dire quelque chose sur les tatouages de mon corps ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 65
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23116 /* ~"Peux-tu me dire quelque chose sur les tatouages de mon corps ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 66
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23117 /* ~"Est-ce que je peux voir les tatouages que tu as ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23118 /* ~"Est-ce que je peux voir les tatouages que tu as ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23119 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #21508 /* ~Le dabus incline légèrement la tête et un symbole unique apparaît au-dessus de sa tête. Il est tout d'abord flou, puis se transforme en un ovale blanc traversé d'un éclair noir.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23120 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23121 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23122 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #21509 /* ~Le dabus incline légèrement la tête et un symbole unique apparaît au-dessus de sa tête. Il est tout d'abord flou, puis se transforme en un ovale blanc traversé d'un éclair noir. Bizarrement, tu sais que le dabus a un nom… son nom est 'Fell.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23123 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23124 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23125 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23126 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23127 /* ~"J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23128 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #21510 /* ~Alors que tu es sur le point de le lui demander, tu réalises soudainement que tu connais le nom du dabus - son nom est 'Fell'. Comme pour répondre, le dabus incline la tête et un symbole unique apparaît au-dessus de sa tête. Il est tout d'abord flou, puis se transforme en un ovale blanc traversé d'un éclair noir.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23129 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23130 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23131 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23132 /* ~"J'ai l'impression que je te connais, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23133 /* ~"J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23134 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #21511 /* ~Une chaîne de symboles se matérialise autour de la tête de Fell… les symboles mettent quelques instants à prendre un aspect définitif, commençant par de simples lignes, puis s'étoffant de couleurs resplendissantes.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23135 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23136 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23137 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY #21512 /* ~Une chaîne de symboles se matérialise autour de la tête de Fell… les symboles mettent quelques instants à prendre un aspect définitif, commençant par de simples lignes, puis s'étoffant de couleurs resplendissantes. Tu devines certains des symboles, mais tu penses que c'est un artiste… et que ceci est un salon de tatouage.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23138 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23139 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23140 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23141 /* ~"Est-ce que je peux voir les tatouages que tu as ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23142 /* ~"J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23143 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.3
  SAY #21513 /* ~Une chaîne de symboles se matérialise autour de la tête de Fell… les symboles mettent quelques instants à prendre un aspect définitif, commençant par de simples lignes, puis s'étoffant de couleurs resplendissantes. (C'est ici que je tatoue vie et couleur sur la chair et les os).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23144 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23145 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23146 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23147 /* ~"Est-ce que je peux voir les tatouages que tu as ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23148 /* ~"J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23149 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #21514 /* ~Fell s'incline respectueusement, et une cascade de symboles tourbillonne autour de sa tête, dans le sens des aiguilles d'une montre, puis dans le sens inverse.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23150 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23151 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23152 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
END

IF ~~ THEN BEGIN 21 // from: 13.4 13.6 15.3
  SAY #21515 /* ~Fell s'incline respectueusement, et une cascade de symboles tourbillonne autour de sa tête, dans le sens des aiguilles d'une montre, puis dans le sens inverse. Tu dois deviner certains symboles, mais tu penses qu'il a dit que ce n'était pas la première fois que tu venais dans cet endroit.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23153 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23154 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23155 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23156 /* ~"Sais-tu qui je suis ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23157 /* ~"Je vois. J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23158 /* ~"Je veux pas en savoir plus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.5 13.7 16.3 54.4
  SAY #21516 /* ~Fell s'incline respectueusement, et une cascade de symboles tourbillonne autour de sa tête, dans le sens des aiguilles d'une montre, puis dans le sens inverse. Il te faut quelques instants pour traduire : (C'est la première fois mais pas la première fois que tu viens à cet endroit).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23284 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23288 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23853 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23854 /* ~"Sais-tu qui je suis ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23855 /* ~"Je vois. J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23856 /* ~"Je veux pas en savoir plus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #21517 /* ~Une autre série de symboles se matérialise rapidement au-dessus de la tête de Fell.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24255 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24256 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24257 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY #21518 /* ~Une autre série de symboles se matérialise rapidement au-dessus de la tête de Fell. Ces symboles ne sont pas aussi difficiles que les autres. Tu penses qu'il t'a dit qu'il te connaissait, mais il ne peut en dire plus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24258 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24259 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24260 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24261 /* ~"Pourquoi pas ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24262 /* ~"Je vois. J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24263 /* ~"Tant pis - je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY #21519 /* ~Une autre série de symboles se matérialise rapidement au-dessus de la tête de Fell. La traduction te vient aussi rapidement et précisément que les symboles eux-mêmes… comme si tu avais déjà traduit cette même phrase de nombreuses fois auparavant. (Oui. Mais je ne peux pas te conter ton histoire).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24264 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24265 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24266 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24267 /* ~"Pourquoi pas ?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ GOTO 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24268 /* ~"Tu peux peut-être répondre à une autre question…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24269 /* ~"Alors il n'y a plus rien à ajouter. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #21520 /* ~Pendant un moment aucune réponse ne vient de Fell, puis une chaîne de rébus apparaît, comme s'écoulant de l'esprit de Fell.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24271 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24272 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24273 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DGRACE~ 20
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY #21521 /* ~Pendant un moment aucune réponse ne vient de Fell, puis une chaîne de rébus apparaît, comme s'écoulant de l'esprit de Fell. Tu penses qu'il s'excuse, mais tu ne comprends pas le reste.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24275 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24276 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24277 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell m'a dit qu'il me connaissait mais qu'il ne pouvait pas me raconter mon 'histoire'. Mais le plus étrange a été la raison invoquée. Il m'a expliqué qu'il ne pouvait pas parce qu''il ne peut pas changer la nature d'un homme'.~ */ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24278 /* ~"Je vois. J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~~ THEN REPLY #24279 /* ~"Tant pis. Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #21522 /* ~Pendant un moment aucune réponse ne vient de Fell, puis une chaîne de rébus apparaît, comme s'écoulant de l'esprit de Fell. (Je m'excuse, je ne peux pas. Je ne peux pas changer la nature d'un homme). Tu ne sais pas pourquoi, mais cette dernière phrase te donne des frissons jusque dans le crâne.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24280 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24281 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24282 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24283 /* ~"'La nature d'un homme' ? Qu'est-ce que ça veut dire ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24284 /* ~"Je vois. J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24285 /* ~"Je veux pas en savoir plus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #21523 /* ~Une brève série de rébus très fins apparaît en ligne près de Fell, puis disparaissent en grains de poussière brillants.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24286 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24287 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24288 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY #21524 /* ~Le symbole qui apparaît au-dessus de Fell reflète presque la dernière série. (Je m'excuse. Je ne peux pas dire).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24289 /* ~"Je vois. J'ai une autre question à te poser, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24290 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #21525 /* ~Il y a un long moment de silence… il se prolonge tellement que tu te demandes si Fell t'a entendu. Puis quelques étranges symboles gris apparaissent lentement au-dessus de sa tête.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24291 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24292 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24293 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
END

IF ~~ THEN BEGIN 32 // from: 13.14
  SAY #21526 /* ~Il y a un long moment de silence… il se prolonge tellement que tu te demandes si Fell t'a entendu. Puis quelques étranges symboles gris apparaissent lentement au-dessus de sa tête. Il dit que oui… et qu'elle n'est pas un "mythe".~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24294 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24295 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24296 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24297 /* ~"Où est-elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24298 /* ~"Que peux-tu me dire sur elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24299 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24300 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24301 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24302 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 13.15
  SAY #21527 /* ~Il y a un long moment de silence… il se prolonge tellement que tu te demandes si Fell t'a entendu. Puis quelques étranges symboles gris apparaissent lentement au-dessus de sa tête. (Elle n'est pas un mythe).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24303 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24304 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24305 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24306 /* ~"Où est-elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24307 /* ~"Que peux-tu me dire sur elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24308 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24309 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24310 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24311 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #21528 /* ~Des symboles gris tournent autour de la tête de Fell, dans un lent tourbillon, puis s'aplatissent et se transforment en un motif bizarre, un peu tordu.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24312 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24313 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24314 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
END

IF ~~ THEN BEGIN 35 // from: 32.3 41.3
  SAY #21529 /* ~Des symboles gris tournent autour de la tête de Fell, dans un lent tourbillon, puis s'aplatissent et se transforment en un motif bizarre, un peu tordu. Tu penses qu'il parle d'un dédale… en utilisant bizarrement *dédale* comme s'il s'agissait d'un verbe.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24315 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24316 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24317 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24318 /* ~"Emprisonner dans un dédale ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24319 /* ~"Que peux-tu me dire sur elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24320 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24321 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24322 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24323 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.3 42.3
  SAY #21530 /* ~Des symboles gris tournent autour de la tête de Fell, dans un lent tourbillon, puis s'aplatissent et se transforment en un motif bizarre, un peu tordu. (Elle est l'un des dédales de la Dame).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24324 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24325 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24326 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24327 /* ~"Des dédales ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24328 /* ~"Que peux-tu me dire sur elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24329 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24330 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24331 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24332 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #21531 /* ~La série de symboles suivante se déroule comme une chaîne d'esclaves portant un lourd fardeau.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24333 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24334 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24335 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #21532 /* ~La série de symboles suivante se déroule comme une chaîne d'esclaves portant un lourd fardeau. Tu penses qu'il parle de quelque chose comme 'emprisonnement' ou 'châtiment'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24336 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24337 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24338 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24339 /* ~"Elle est emprisonnée ? Sais-tu comment je peux la trouver ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24340 /* ~"Que peux-tu me dire sur elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24341 /* ~"Je crois avoir compris. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24342 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24343 /* ~"Je crois avoir compris. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24344 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #21533 /* ~La série de symboles suivante se déroule comme une chaîne d'esclaves portant un lourd fardeau. (Sa volonté n'était pas la volonté de la Dame. Ravel a été punie. Ravel a été emprisonnée dans un dédale.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24345 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24346 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24347 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24348 /* ~"Qu'a fait Ravel ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24349 /* ~"Sais-tu comment je peux parvenir à ce dédale ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 45
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24350 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24351 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24352 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24353 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #21534 /* ~Un ovale blanc apparaît à côté de Fell, puis une nette craquelure apparaît dedans.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24354 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24355 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24356 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
END

IF ~~ THEN BEGIN 41 // from: 32.4 33.4 35.4 38.4 44.3
  SAY #21535 /* ~Un ovale blanc apparaît à côté de Fell, puis une nette craquelure apparaît dedans. Tu penses qu'il dit quelque chose comme 'ouvrir la cage/la cité…' mais tu n'en es pas sûr. Peut-être que Ravel a essayé d'ouvrir cette cité ?~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24357 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24358 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24359 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24360 /* ~"Sais-tu où elle est ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24361 /* ~"Je crois avoir compris. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24362 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24363 /* ~"Je crois avoir compris. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24364 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.4 39.3 45.3
  SAY #21536 /* ~Un ovale blanc apparaît à côté de Fell, puis une nette craquelure apparaît dedans - instinctivement, tu reconnais l'ovale comme étant le symbole de cette cité, Sigil. (Elle a cherché à ouvrir la Cage).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24365 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24366 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24367 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24368 /* ~"Sais-tu où elle est ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24369 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24370 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24371 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24372 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #21537 /* ~Une autre chaîne de rébus sort de Fell, mais ils flottent cette fois-ci plus bas, comme s'ils étaient chargés.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24373 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24374 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24375 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
END

IF ~~ THEN BEGIN 44 // from: 38.3
  SAY #21538 /* ~Une autre chaîne de rébus sort de Fell, mais ils flottent cette fois-ci plus bas, comme s'ils étaient chargés. D'après ce que tu peux comprendre, Fell semble dire qu'il ne sait pas comment la joindre… et que nul ne devrait essayer de la trouver.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24376 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24377 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24378 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24379 /* ~"Que peux-tu me dire sur elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24380 /* ~"Je crois avoir compris. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24381 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24382 /* ~"Je crois avoir compris. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24383 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 39.4
  SAY #21539 /* ~Une autre chaîne de rébus sort de Fell, mais ils flottent cette fois-ci plus bas, comme s'ils étaient chargés. (Je ne sais pas comment la trouver. Elle ne doit pas être trouvée. Elle est sous la garde de la Dame). La texture des symboles de la dernière phrase semble posséder une bordure plus dure, qui te rappelle des dagues.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24384 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24385 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24386 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24387 /* ~"Que peux-tu me dire sur elle ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24388 /* ~"Je vois. J'ai d'autres questions…"~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24389 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24390 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24391 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #21540 /* ~Avant que tu puisses changer de sujet, une nouvelle série de symboles apparaît autour de Fell - les symboles ont la forme d'un 'X' et battent comme un cœur faible.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24392 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24393 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24394 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 47 // from: 32.5 35.5 38.5 41.4 44.4
  SAY #21541 /* ~Avant que tu puisses changer de sujet, une nouvelle série de symboles apparaît autour de Fell - les symboles ont la forme d'un 'X' et battent comme un cœur faible. Tu penses qu'il t'avertit de laisser Ravel tranquille.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24395 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24396 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24397 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24398 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24399 /* ~"De toute façon, il faudra sûrement que je la trouve, Fell. Au revoir."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 33.5 36.5 39.5 42.4 45.4
  SAY #21542 /* ~Avant que tu puisses changer de sujet, une nouvelle série de symboles apparaît autour de Fell - les symboles ont la forme d'un 'X' et battent comme un cœur faible. (Ne la cherche pas. Un cœur mauvais bat en elle. Elle fera tout ce qui est en son pouvoir pour te blesser).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24400 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24401 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24402 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24403 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24404 /* ~"De toute façon, il faudra sûrement que je la trouve, Fell. Au revoir."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #21543 /* ~Avant que tu puisses changer de sujet, une nouvelle série de symboles apparaît autour de Fell - les symboles ont la forme d'un 'X' et battent comme un cœur faible.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24405 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24406 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24407 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 50 // from: 32.6 35.6 38.6 41.5 44.5
  SAY #21544 /* ~Avant que tu puisses changer de sujet, une nouvelle série de symboles apparaît autour de Fell - les symboles ont la forme d'un 'X' et battent comme un cœur faible. Tu penses qu'il t'avertit de laisser Ravel tranquille.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24408 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24409 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24410 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24411 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24412 /* ~"De toute façon, il faudra sûrement que je la trouve, Fell. Au revoir."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 33.6 36.6 39.6 42.5 45.5
  SAY #21545 /* ~Avant que tu puisses changer de sujet, une nouvelle série de symboles apparaît autour de Fell - les symboles ont la forme d'un 'X' et battent comme un cœur faible. (Ne la cherche pas. Un cœur mauvais bat en elle. Elle fera tout ce qui est en son pouvoir pour te blesser).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24413 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24414 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24415 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24416 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24417 /* ~"De toute façon, il faudra sûrement que je la trouve, Fell. Au revoir."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #21546 /* ~Fell l'examine pendant un moment, traçant les motifs avec son doigt. Il regarde ensuite en l'air, et une série de rébus se forme, tout d'abord floue, puis très nette.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24418 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24419 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24420 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
END

IF ~~ THEN BEGIN 53 // from: 13.16
  SAY #21547 /* ~Fell l'examine pendant un moment, traçant les motifs avec son doigt. Il regarde ensuite en l'air, et une série de rébus se forme, tout d'abord floue, puis très nette. Tu pense qu'il dit que le bras t'appartient, que les tatouages parlent de toi et de quatre 'autres'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24421 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24422 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24423 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24424 /* ~"Qui sont ces quatre autres ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 56
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24425 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24426 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 13.17
  SAY #21548 /* ~Fell l'examine pendant un moment, traçant les motifs avec son doigt. Il regarde ensuite en l'air, et une série de rébus se forme, tout d'abord floue, puis très nette. (Le bras est à toi. Les tatouages sont à moi. Un tatouage parle de l'époque à laquelle tu partageais ton chemin avec quatre autres).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24427 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24428 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24429 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24430 /* ~"Qui sont ces quatre autres ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 57
  IF ~  Global("Translate_Dabus","GLOBAL",0)
GlobalLT("Fell","GLOBAL",2)
~ THEN REPLY #24431 /* ~"Est-ce qu'ils sont à toi ces tatouages ? Est-ce que nous nous sommes déjà vus ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24432 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24433 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #21549 /* ~Quatre séries de symboles sortent en tourbillonnant de la tête de Fell, identiques au motif sur le bras arraché. Les quatre chaînes flottent indépendamment pendant un moment, puis se lient et s'assemblent en une chaîne.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24434 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24435 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY #21550 /* ~Quatre séries de symboles sortent en tourbillonnant de la tête de Fell, identiques au motif du bras arraché. Les symboles sont difficiles à traduire, et en définitive tu ne sais pas vraiment si tu les as correctement traduits. Tu penses qu'il a dit 'celle qui n'est pas aimée et qui aime (?)', 'celui qui voit(?)', quelqu'un de 'familier' et le dernier, un 'enchaîné'. Alors que tu finis de traduire, les quatre chaînes semblent se rejoindre, puis s'assembler en une seule chaîne.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24436 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24437 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24438 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24439 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 54.3
  SAY #21551 /* ~Quatre séries de symboles sortent en tourbillonnant de la tête de Fell, identiques au motif sur le bras arraché. (Ils parlent de quatre. Dois-je te parler d'eux ?)~ */
  IF ~~ THEN REPLY #24440 /* ~"Oui."~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24274 /* ~Fell a traduit la rune de mon ancien bras… Il m'a dit qu'elle mentionnait quatre êtres qui partageaient autrefois mon destin. Les quatre étaient 'Une mal aimée qui en aime un qui n'aime pas', 'Un qui ne voit pas ce que les autres voient et qui voit ce que les autres ne voient pas', 'Un qui a le sens du devoir' et 'Un qui est esclave et dont les chaînes sont des mots'. Il m'a expliqué qu'ils étaient aussi torturés que moi et que dans ma souffrance, j'en entraînais d'autres qui souffraient aussi.~ */ GOTO 59
  IF ~~ THEN REPLY #24441 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #24442 /* ~"Je ne veux pas en savoir davantage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #21552 /* ~Fell acquiesce, les symboles apparaissant autour de lui comme des lucioles. D'après ce que tu peux en conclure, ceux qui se trouvent sur ton dos ont été faits minutieusement à la main et correspondent à des indications. Celui sur ton épaule est la 'torture' ou le 'tourment'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24444 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24445 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24446 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #21553 /* ~Les symboles tourbillonnent autour de toi, et tu les déchiffres :

(Celle qui n'est pas aimée et qui aime celui qui n'aime pas.)

(Celui qui ne voit pas ce que les autres voient et voit ce que les autres ne voient pas.)

(Celui qui est familier et doit accomplir sa tâche.)

(Celui qui est esclave et dont les chaînes sont des mots.)

Alors que tu termines la traduction, les quatre chaînons semblent se rejoindre et former une chaîne… celle-ci se plie jusqu'à constituer un symbole que tu as l'impression de reconnaître.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24447 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24448 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24449 /* ~"Ce symbole… c'est quoi ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from:
  SAY #21554 /* ~Le symbole se précise, ses bords devenant presque pénibles pour tes yeux. Alors qu'il flotte là, Fell fait un signe de la tête vers ton bras gauche, ton épaule.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24450 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24451 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY #21555 /* ~Le symbole se précise, ses bords devenant presque pénibles pour tes yeux. (C'est le tourment. C'est ce qui attire toutes les âmes tourmentées vers toi). Fell fait un signe de la tête vers ton bras gauche, ton épaule. (La chair sait qu'elle souffre même lorsque l'esprit a oublié. Et ainsi tu portes toujours la rune).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24452 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24453 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24454 /* ~"Tu as dit qu'il y avait d'autres tatouages sur le bras ? Lesquels ?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24455 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24456 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #21556 /* ~Fell examine à nouveau le bras, traçant les autres tatouages effacés sur sa surface. Ce faisant, ils apparaissent comme symboles au-dessus de sa tête, flous au premier abord, puis se précisant rapidement. Il te fait face, puis attend.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24457 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24458 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24459 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 63 // from: 61.2
  SAY #21557 /* ~Fell examine à nouveau le bras, traçant les autres tatouages effacés sur sa surface. Ce faisant, ils apparaissent comme symboles au-dessus de sa tête, flous au premier abord, puis se précisant rapidement. Il se tourne vers toi. (Oubliés, et maintenant remémorés. Tu peux les porter à nouveau si tu le veux).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24460 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24461 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24462 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24463 /* ~"J'aimerais voir à quoi ressemblent ces tatouages… puis-je voir les tatouages que tu as à partager ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24464 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24465 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #21558 /* ~Fell étudie ton corps pendant un instant, tournant autour de toi. Il reflète chaque symbole en l'examinant, puis revient face à toi.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24466 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24467 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24468 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
END

IF ~~ THEN BEGIN 65 // from: 13.18
  SAY #21559 /* ~Fell étudie ton corps pendant un instant, tournant autour de toi. Il reflète chaque symbole en l'examinant, puis revient face à toi. D'après ce que tu comprends des symboles flottants, il prétend que ces tatouages ne sont pas de lui.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24469 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24470 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24471 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24472 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24473 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 13.19
  SAY #21560 /* ~Fell étudie ton corps pendant un instant, tournant autour de toi. Il reflète chaque symbole en l'examinant, puis revient face à toi. (Je les connais. Aucun de ma main.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24474 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24475 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24476 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24477 /* ~"Peux-tu me parler de certains d'entre eux ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 68
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24478 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24479 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #21561 /* ~Fell fait un signe de tête, des symboles apparaissent autour de lui comme des lucioles.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24480 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24481 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24482 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 68 // from: 66.3
  SAY #21562 /* ~Fell fait un signe de la tête, des symboles apparaissent autour de lui comme des lucioles. (Ceux qui se trouvent sur ton dos ont été faits par une main délicate et sont des indications pour un esprit qui se perd. Le symbole qui se trouve sur ton épaule est la marque du tourment).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24483 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24484 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24485 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24486 /* ~"Du tourment ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 70
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24487 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24488 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #21563 /* ~Le symbole se précise, ses bords devenant presque pénibles pour tes yeux. Fell fait un signe de la tête vers ton bras gauche, ton épaule.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24489 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24490 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24491 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 70 // from: 68.3
  SAY #21564 /* ~Le symbole se précise, ses bords devenant presque pénibles pour tes yeux. (C'est le *tourment*. C'est ce qui attire toutes les âmes tourmentées vers toi). Fell fait un signe de la tête vers ton bras gauche, ton épaule. (La chair sait qu'elle souffre même lorsque l'esprit a oublié. Et ainsi tu portes toujours la rune).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24492 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24493 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24494 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24495 /* ~"Je n'oublierai pas. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24496 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #21565 /* ~Fell ne répond pas pendant un moment… puis lentement, de manière menaçante, trois symboles se matérialisent au-dessus de sa tête, chacun d'entre eux projetant une longue ombre.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24497 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24498 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24499 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
END

IF ~~ THEN BEGIN 72 // from: 13.12
  SAY #21566 /* ~Fell ne répond pas pendant un moment… puis lentement, de manière menaçante, trois symboles se matérialisent au-dessus de sa tête, chacun d'entre eux projetant une longue ombre. Tu penses qu'il parle… d'ombres.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24500 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24501 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24502 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24503 /* ~"Des ombres ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 75
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24504 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24505 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 13.13
  SAY #21567 /* ~Fell ne répond pas pendant un moment… puis lentement, de manière menaçante, trois symboles se matérialisent au-dessus de sa tête, chacun d'entre eux projetant une longue ombre. (Les Ombres).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24506 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24507 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24508 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24509 /* ~"Des ombres ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 76
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24510 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24511 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #21568 /* ~Les trois symboles tourbillonnent chacun autour des autres, chacun laissant une faible traînée sombre autour. Ils prennent une forme inégale, comme des dents ou des serres puis se *multiplient*. Les trois symboles se divisent en trois, puis encore en trois, jusqu'à ce que la pièce entière ressemble à un essaim d'ombres.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24512 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24513 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24514 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
END

IF ~~ THEN BEGIN 75 // from: 72.3
  SAY #21569 /* ~Les trois symboles tourbillonnent chacun autour des autres, chacun laissant une faible traînée sombre autour. Ils prennent une forme inégale, comme des dents ou des serres puis se *multiplient*. Les trois symboles se divisent en trois, puis encore en trois, jusqu'à ce que la pièce entière ressemble à un essaim d'ombres. Il semble dire que tu as été tué par de nombreuses… 'ombres'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24515 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24516 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24517 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24518 /* ~"Pourquoi ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 78
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24519 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24520 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 73.3
  SAY #21570 /* ~Les trois symboles tourbillonnent chacun autour des autres, chacun laissant une faible traînée sombre autour. Ils prennent une forme inégale, comme des dents ou des serres puis se *multiplient*. Là où il y avait trois symboles, il y en a neuf, puis vingt-sept, jusqu'à ce que la pièce entière ressemble à un essaim d'ombres. (Beaucoup d'ombres. Elles se sont échappées de l'obscurité, t'ont submergé, puis t'ont laissé pour mort).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24521 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24522 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24523 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24524 /* ~"Pourquoi ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 79
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24525 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24526 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #21571 /* ~Fell examine à nouveau le bras, traçant les autres tatouages effacés sur sa surface. Ce faisant, ils apparaissent comme symboles au-dessus de sa tête, flous au premier abord, puis se précisant rapidement. Il se tourne vers toi. Si tu comprends correctement, il semble qu'il dit qu'il avait oublié ces tatouages, mais qu'il s'en souvient maintenant.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24527 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24528 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24529 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 78 // from: 75.3
  SAY #21572 /* ~Les symboles d'ombres tourbillonnent pour n'en former qu'un, puis se dissolvent pour être remplacés par un symbole simple. Fell ne semble pas savoir pourquoi.~ */
  IF ~~ THEN REPLY #24530 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #24531 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.3
  SAY #21573 /* ~Les symboles d'ombres tourbillonnent pour n'en former qu'un, puis se dissolvent pour être remplacés par un symbole simple. (Je ne sais pas).~ */
  IF ~~ THEN REPLY #24532 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #24533 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #21574 /* ~Une avalanche de symboles se matérialise lentement autour de Fell, un symbole après l'autre.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24534 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24535 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24536 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
END

IF ~~ THEN BEGIN 81 // from: 13.8 13.10
  SAY #21575 /* ~Une chaîne de symboles se matérialise lentement autour de Fell, un symbole après l'autre. Tu crois qu'il dit qu'il s'agit d'une sorte de galerie… une galerie de 'toi'. La partie qui suit est difficile à traduire, mais tu crois que Fell semble dire qu'il est… désolé pour toi.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24537 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24538 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24539 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24540 /* ~"Désolé ? Pourquoi ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 84
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24541 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24542 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 13.9 13.11
  SAY #21576 /* ~Une chaîne de symboles se matérialise lentement autour de Fell, un symbole après l'autre. (Ceci est ma galerie. Tu es ma toile. Je t'admire. Je suis triste pour toi.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24543 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24544 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24545 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24546 /* ~"Triste pour moi ? Pourquoi ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 85
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24547 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24548 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #21577 /* ~Une autre avalanche de symboles se forme autour de Fell, formant cette fois-ci un cercle.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24549 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24550 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24551 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
END

IF ~~ THEN BEGIN 84 // from: 81.3
  SAY #21578 /* ~Une autre avalanche de symboles se forme autour de Fell, formant cette fois-ci un cercle. Il parle de toi comme étant 'marqué' et tourmenté. Il y a une partie que tu n'arrives pas à traduire, mais la dernière partie semble parler de toi, endurant la souffrance.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24552 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24553 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24554 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24555 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 87
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24556 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24557 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 82.3
  SAY #21579 /* ~Une autre avalanche de symboles se forme autour de Fell, formant cette fois-ci un cercle. (La marque du tourment est posée sur ta chair. Pertes et tragédies se sont développées dessus, comme des pierres sur une fondation. Tu as enduré de grandes souffrances).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24558 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24559 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24560 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24561 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 88
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24562 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24563 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21580 /* ~Une longue cascade de rébus apparaît au-dessus du front de Fell, puis entoure ses bras comme des chaînes.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24586 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24587 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24588 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
END

IF ~~ THEN BEGIN 87 // from: 84.3
  SAY #21581 /* ~Une longue cascade de rébus apparaît au-dessus du front de Fell, puis entoure ses bras comme des chaînes. Il semble dire qu'il t'admire pour avoir enduré des 'pertes'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24589 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24590 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24591 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24592 /* ~"Continue…"~ */ DO ~FloatRebus(Myself)
~ GOTO 90
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24593 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24594 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 85.3
  SAY #21582 /* ~Une longue cascade de rébus apparaît au-dessus du front de Fell, puis entoure ses bras comme des chaînes. (Je t'admire car tu n'as jamais abandonné face au poids de ces pertes, malgré le fait que ces chaînes soient toujours accrochées à toi).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24595 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24596 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24597 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24598 /* ~"Continue…"~ */ DO ~FloatRebus(Myself)
~ GOTO 91
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24599 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24600 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #21583 /* ~Une longue cascade de rébus apparaît au-dessus de la tête de Fell, puis retombe, le couvrant comme une cape.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24601 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24602 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24603 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
END

IF ~~ THEN BEGIN 90 // from: 87.3
  SAY #21584 /* ~Une longue cascade de rébus apparaît au-dessus de la tête de Fell, puis retombe, le couvrant comme une cape. Il semble dire que ces 'pertes' couvrent ta vie… et tes 'autres vies'. Tu n'es toutefois pas certain de la signification des autres symboles entourant ce message.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24604 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24605 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24606 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24607 /* ~"Euh… peux-tu me dire autre chose ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24608 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24609 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 88.3
  SAY #21585 /* ~Une longue cascade de rébus apparaît au-dessus de la tête de Fell, puis retombe, le couvrant comme une cape. (Ces pertes couvrent cette vie et toutes tes vies passées. Tu as perdu ces vies comme un serpent qui mue. Tu explores les voies infinies de la vie).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24610 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24611 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24612 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24613 /* ~"Parle-moi encore."~ */ DO ~FloatRebus(Myself)
~ GOTO 93
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24614 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24615 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #21586 /* ~Une longue cascade de rébus apparaît au-dessus de la tête de Fell, puis retombe soudainement sur le sol, s'écoulant derrière lui comme une ombre.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24616 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24617 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24618 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
END

IF ~~ THEN BEGIN 93 // from: 91.3
  SAY #21587 /* ~Une longue cascade de rébus apparaît au-dessus de la tête de Fell, puis retombe soudainement sur le sol, s'écoulant derrière lui comme une ombre. (Prends note de cet avertissement : chacune de tes vies jette une ombre sur l'existence. Tu dois voyager vers l'endroit où ces ombres sont devenues folles et où les regrets ont défiguré la terre).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24619 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24620 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24621 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24622 /* ~"Peux-tu me dire autre chose ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 95
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24623 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24624 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 90.3 106.3
  SAY #21588 /* ~Une brève série de rébus fins comme du papier apparaît en ligne à côté de Fell, puis disparaît en poussière brillante. Tu crois qu'il vient juste de t'avertir de ne pas 'signer' quoi que ce soit lors de tes voyages.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24625 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24626 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24627 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24628 /* ~"Très bien."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24629 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24630 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24631 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24632 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24633 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.3
  SAY #21589 /* ~Une brève série de rébus fins comme du papier apparaît en ligne à côté de Fell, puis disparaît en poussière brillante. (Ne signe rien).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24634 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24635 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24636 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24637 /* ~"Très bien."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24638 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24639 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24640 /* ~"Très bien. Enfin… euh… j'essaierai de ne plus rien signer d'autre."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24641 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24642 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #21590 /* ~Une autre série de rébus apparaît, formant une spirale - prenant la forme d'une question.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24643 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24644 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24645 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
END

IF ~~ THEN BEGIN 97 // from: 94.3 94.4 94.5 94.6
  SAY #21591 /* ~Une autre série de rébus apparaît, formant une spirale - prenant la texture d'une question. Tu crois qu'il t'a juste demandé si tu te sentais… 'entier'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24646 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24647 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24648 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24649 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 100
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24650 /* ~"Ça ne te regarde pas."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24651 /* ~Mensonge : "Je me sens entier, oui. Pourquoi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24652 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 95.3 95.4 95.5 95.6
  SAY #21592 /* ~Une autre série de rébus apparaît, formant une spirale - prenant la forme d'une question. (Te sens-tu entier ?)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24653 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24654 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24655 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24656 /* ~Vérité : "Non…. En fait, depuis que je me suis réveillé dans la Morgue, j'ai l'impression que quelque chose me manque… quelque chose à l'intérieur."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 101
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24657 /* ~"Ça ne te regarde pas."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24658 /* ~Mensonge : "Je me sens entier, oui. Pourquoi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24659 /* ~"Je ne souhaite plus en discuter. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #21593 /* ~Fell acquiesce et une série de symboles se matérialise autour de lui dans un halo.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24660 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24661 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24662 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
END

IF ~~ THEN BEGIN 100 // from: 97.3
  SAY #21594 /* ~Fell acquiesce et une série de symboles se matérialise autour de lui dans un halo. Tu crois qu'il te dit d'être 'fort'. De 'garder la foi'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24663 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24664 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24665 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24666 /* ~"J'essaierai. J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #24667 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 98.3
  SAY #21595 /* ~Fell acquiesce et une série de symboles se matérialise autour de lui dans un halo. (Tu es fort. Garde la foi, et tu seras de nouveau entier).~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24668 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24669 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24670 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24671 /* ~"J'essaierai. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24672 /* ~"Merci, Fell. Il se peut que je revienne si j'ai d'autres questions. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 97.4 97.5 98.4 98.5
  SAY #21596 /* ~Fell ne répond pas.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24673 /* ~"Bien, peu importe. J'ai d'autres questions…"~ */ EXTERN ~DANNAH~ 131
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24674 /* ~"Bien, peu importe. J'ai d'autres questions…"~ */ EXTERN ~DDAKKON~ 77
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24675 /* ~"Bien, peu importe. J'ai d'autres questions…"~ */ EXTERN ~DGRACE~ 15
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24676 /* ~"Bien, peu importe. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24677 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24678 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 103
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24679 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 104
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24680 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 105
END

IF ~~ THEN BEGIN 103 // from: 102.5
  SAY #21597 /* ~Soudainement, Fell se tourne vers Annah et une petite chaîne de rébus se matérialise au-dessus de son épaule gauche.~ */
  IF ~~ THEN REPLY #24681 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 104 // from: 102.6
  SAY #21598 /* ~Soudainement, Fell se tourne vers Annah et une petite chaîne de rébus se matérialise au-dessus de son épaule gauche. Tu peux à peine les discerner… Tu pense qu'il dit quelque chose à propos du cœur et d'Annah, mais tu ne sais pas exactement quoi… Ils flottent brièvement puis disparaissent.~ */
  IF ~~ THEN REPLY #24682 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 105 // from: 102.7
  SAY #21599 /* ~Soudainement, Fell se tourne vers Annah et une petite chaîne de rébus se matérialise au-dessus de son épaule gauche. Tu peux à peine les discerner : (N'abandonne pas ton cœur).~ */
  IF ~~ THEN REPLY #24683 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 106 // from:
  SAY #21600 /* ~Une longue cascade de rébus apparaît au-dessus de la tête de Fell, puis retombe soudainement sur le sol, s'écoulant derrière lui comme une ombre. Tu penses qu'il te met en garde contre… les ombres. Il y a quelque chose à propos d'un lieu de regrets, mais la signification des symboles n'est pas claire.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24684 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24685 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24686 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24687 /* ~"Peux-tu me dire autre chose ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24688 /* ~"Je… je vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24689 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #21601 /* ~Le symbole s'accentue, ses bords devenant presque pénibles pour tes yeux. Fell fait un signe de la tête vers ton bras gauche, ton épaule. D'après ce que tu peux comprendre, il dit que la marque sur ton épaule est le "tourment." La série de symboles suivante semble indiquer la souffrance, même oubliée.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24690 /* ~"Qu'est-ce qu'il a dit, Annah ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24691 /* ~"Qu'est-ce qu'il a dit, Dak'kon ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24692 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24693 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24694 /* ~"Je reviendrai lorsque j'aurais trouvé un meilleur traducteur. Au revoir."~ */ EXIT
END
