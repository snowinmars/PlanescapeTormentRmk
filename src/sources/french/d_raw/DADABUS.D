// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DADABUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50108 /* ~Tu vois une grande créature habillée de longue robes amples. Coiffée d'une crinière blanche, elle a la peau verdâtre et deux cornes de chèvre sortent de son front. Elle semble flotter légèrement au-dessus du sol.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50109 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #50303 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50318 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #50330 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50110 /* ~La créature se tourne vers toi et une série de symboles apparaît au-dessus de sa tête. Les symboles brillent légèrement et ils ne font que… flotter là.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 235
END

IF ~~ THEN BEGIN 2 // from:
  SAY #50119 /* ~Le dabus attend patiemment, les mains rentrées dans ses manches. Une série de symboles se matérialisent au-dessus de sa tête, puis ils disparaissent pour faire place à un point d'interrogation.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50120 /* ~Essaie d'entamer la conversation et de traduire ce que dit le dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50259 /* ~Essaie d'entamer la conversation et de traduire ce que dit le dabus.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50260 /* ~Essaie de parler au dabus et vois si tu arrives à le comprendre.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50290 /* ~"J'avais des questions…"~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50291 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50292 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50293 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50294 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50295 /* ~"Annah, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50296 /* ~"Dak'kon, tu peux traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50297 /* ~"Tombée-en-Disgrâce, vous pouvez traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50298 /* ~"Je suis désolé, je ne te comprends pas."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~~ THEN REPLY #50299 /* ~"Euh… au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1 20.0 20.1
  SAY #50121 /* ~Tu poses plusieurs questions au dabus, pour tenter de déchiffrer les rébus qui flottent au-dessus de sa tête. Il est extrêmement patient tout au long de votre "conversation" et te donne des phrases simples à traduire. Après quelques minutes, tu commences à y arriver… tu as l'impression de l'avoir déjà fait.~ */
  IF ~~ THEN REPLY #50122 /* ~"Peut-être que tu peux m'aider…"~ */ GOTO 4
  IF ~~ THEN REPLY #50258 /* ~"Je voulais juste réviser un peu mes rébus. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.3 3.0 5.0 7.0 8.0 9.0 10.2 20.3
  SAY #50123 /* ~Le dabus attend.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50124 /* ~"Qui es-tu ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50130 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50135 /* ~"Qui es-tu ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50139 /* ~"Qu'est-ce que tu fais ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #50144 /* ~"Qu'est-ce que tu sais sur la Dame des Douleurs ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #50256 /* ~"Qu'est-ce que tu sais sur Fell ?"~ */ DO ~FloatRebus(Myself)
~ GOTO 17
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #50257 /* ~"Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #50125 /* ~Le dabus incline légèrement la tête, et un flot de symboles apparaît au-dessus de lui. Tu pense qu'il dit qu'il est un dabus.~ */
  IF ~~ THEN REPLY #50126 /* ~"J'avais une autre question."~ */ GOTO 4
  IF ~~ THEN REPLY #50127 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.12 3.1 4.8 5.1 7.1 7.2 8.1 9.1 9.2 10.3 18.10 20.16
  SAY #50128 /* ~Le dabus s'incline en guise de salut. Des symboles dansent au-dessus de sa tête, puis il tourne les talons.~ */
  IF ~~ THEN REPLY #50129 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #50131 /* ~Un flot de symboles apparaît au-dessus de la tête du dabus. Tu pense qu'il dit qu'il fait ses devoirs… ou son devoir.~ */
  IF ~~ THEN REPLY #50132 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #50133 /* ~"Très descriptif. Au revoir et merci."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50134 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #50136 /* ~Le dabus incline légèrement la tête, au-dessus de laquelle une série de symboles apparaît. (Je suis un dabus.)~ */
  IF ~~ THEN REPLY #50137 /* ~"J'avais une autre question."~ */ GOTO 4
  IF ~~ THEN REPLY #50138 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #50140 /* ~Une série de symboles apparaît au-dessus de la tête du dabus. (Je fais mon travail.)~ */
  IF ~~ THEN REPLY #50141 /* ~"J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #50142 /* ~"Très descriptif. Au revoir et merci."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50143 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY #50145 /* ~Un seul symbole apparaît au-dessus de la tête du dabus. Il représente un masque de femme métallique, avec des lames sortant sur les côtés. La simple vue de cette image te met mal à l'aise.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50146 /* ~"Euh… ce n'est pas exactement la réponse que j'attendais."~ */ EXTERN ~DGRACE~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50253 /* ~"Euh… Je vois. Dak'kon, tu peux lui poser une autre question ?"~ */ EXTERN ~DDAKKON~ 165
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50254 /* ~"Euh… J'avais une autre question…"~ */ GOTO 4
  IF ~~ THEN REPLY #50255 /* ~"Euh… c'est tout ce que je voulais savoir. Au revoir."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from:
  SAY #50151 /* ~Le dabus incline légèrement la tête, et un flot de symboles apparaît au-dessus de lui. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50152 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50236 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50237 /* ~"Qu'est-ce qu'il a dit, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50238 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50158 /* ~Le dabus incline légèrement la tête, et un flot de symboles apparaît au-dessus de lui. Tu pense qu'il dit qu'il est un dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50159 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50160 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50167 /* ~"Qu'est-ce qu'il a dit, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50212 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50174 /* ~Le dabus incline légèrement la tête, au-dessus de laquelle une série de symboles apparaît. (Je suis un dabus.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50175 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50176 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50177 /* ~"Qu'est-ce qu'il a dit, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50178 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50183 /* ~Un flot de symboles apparaît au-dessus de la tête du dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50184 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50188 /* ~"Qu'est-ce qu'il a dit, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50192 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50197 /* ~Un flot de symboles apparaît au-dessus de la tête du dabus. Tu penses qu'il dit qu'il fait ses devoirs… ou son devoir.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50198 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50199 /* ~"Qu'est-ce qu'il a dit, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50200 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 16 // from:
  SAY #50202 /* ~Une série de symboles apparaît au-dessus de la tête du dabus. (Je fais mon travail.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50203 /* ~"Qu'est-ce qu'il a dit, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50204 /* ~"Qu'est-ce qu'il a dit, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50205 /* ~"Qu'est-ce qu'il a dit, Grâce ?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 17 // from: 4.5
  SAY #50208 /* ~Un seul symbole apparaît au-dessus de la tête du dabus. C'est un ovale blanc percé d'un éclair noir. Le dabus fait flotter le symbole quelques secondes, puis s'en va en t'ignorant.~ */
  IF ~~ THEN REPLY #50209 /* ~"Euh… au revoir alors."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2 20.2
  SAY #50261 /* ~Tu poses plusieurs questions au dabus, pour tenter de déchiffrer les rébus qui flottent au-dessus de sa tête. Bien qu'il soit extrêmement patient tout au long de votre "conversation", tu n'arrives pas à comprendre ce qu'il dit. Finalement, il s'arrête et attend simplement.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50262 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50265 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50268 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50271 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50274 /* ~"Annah, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50284 /* ~"Dak'kon, tu peux traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50285 /* ~"Tombée-en-Disgrâce, vous pouvez traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50286 /* ~"Je suis désolé, je ne te comprends pas."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #50289 /* ~"Euh… au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 2.11 18.7 20.6
  SAY #50287 /* ~Une série de symboles apparaît au-dessus de sa tête. Puis il s'incline en guise de salut et s'en va.~ */
  IF ~~ THEN REPLY #50288 /* ~"Euh… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.1 22.0
  SAY #50304 /* ~Il se tourne vers toi et une série de symboles apparaît au-dessus de sa tête. Les symboles brillent légèrement et ils ne font que… flotter là.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50305 /* ~Essaie d'entamer la conversation et de traduire ce que dit la créature.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50306 /* ~Essaie d'entamer la conversation et de traduire ce que dit la créature.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50307 /* ~Essaie de lui parler et vois si tu arrives à le comprendre.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50308 /* ~"J'avais des questions…"~ */ GOTO 4
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50309 /* ~"Je suis désolé… je ne te comprends pas."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50310 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50311 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50312 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50313 /* ~"Morte, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50314 /* ~"Annah, tu peux traduire ce qu'il dit ?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50315 /* ~"Dak'kon, tu peux traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50316 /* ~"Tombée-en-Disgrâce, vous pouvez traduire ce qu'il dit ?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50317 /* ~"Peu importe. Désolé de t'avoir dérangé. Au revoir."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY #50319 /* ~La créature se tourne vers toi et une série de symboles apparaît au-dessus de sa tête. Les symboles brillent légèrement et ils ne font que… flotter là.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 496
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 22 // from:
  SAY #50331 /* ~Tu vois un dabus. Il porte de longues robes amples et il flotte légèrement au-dessus du sol.~ */
  IF ~~ THEN REPLY #50332 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #50333 /* ~Laisse le dabus tranquille.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Pregnant_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #50334 /* ~Tu aperçois un dabus. Il est en légère lévitation et porte de longues robes flottantes.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50340 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50341 /* ~"Bonjour."~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~~ THEN REPLY #50342 /* ~Laisse le dabus tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #50335 /* ~Il te fait face et une série de symboles apparaît autour de sa tête. (Je dois faire mon travail. Pas le temps de parler.)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50343 /* ~"Je comprends. Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61176 /* ~"Je comprends. Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #61177 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.6 4.7 20.4 20.5 24.0 24.1
  SAY #50336 /* ~Le dabus incline la tête de côté. Une succession de symboles défile au-dessus de sa tête ; la plupart expriment sa surprise et sa détresse sans recourir à des mots. (Mort ? Où ?)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50345 /* ~Vérité : "Il se trouve dans un bâtiment abandonné non loin d'ici. On dirait qu'il s'est fait piéger à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50346 /* ~Mensonge : "Il se trouve dans un bâtiment abandonné non loin d'ici. Je ne sais pas comment il est mort."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61178 /* ~"Il est dans un bâtiment abandonné non loin d'ici. Je ne sais pas comment il est mort."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2 28.0 28.1 28.2
  SAY #50337 /* ~Le dabus te fixe brièvement, puis s'incline légèrement avant de se diriger vers le bâtiment abandonné.~ */
  IF ~~ THEN REPLY #50347 /* ~"Au revoir."~ */ DO ~SetGlobal("Dabus_Trap","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #50338 /* ~Il se retourne vers toi et une série de symboles apparaît autour de sa tête. Ces symboles sont entourés d'une pâle lumière et ne font que… voltiger.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61165 /* ~"Euh… Je pensais juste qu'il fallait que je te dise que j'avais découvert le corps d'un Dabus dans cette Allée."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #61169 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.8 18.9 20.7 20.8 27.0 27.1
  SAY #50339 /* ~Le dabus relève légèrement la tête d'un côté. Des symboles apparaissent au-dessus de sa tête. Même si tu ne comprends pas ce qu'il dit, tu remarques que la fin du message se termine par un point d'interrogation brillant.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50350 /* ~Vérité : "Il se trouve dans un bâtiment abandonné non loin d'ici. On dirait qu'il s'est fait piéger à l'intérieur."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50351 /* ~Mensonge : "Il se trouve dans un bâtiment abandonné non loin d'ici. Je ne sais pas comment il est mort."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61172 /* ~"Il est dans un bâtiment abandonné non loin d'ici. Je ne sais pas comment il est mort."~ */ GOTO 26
END
