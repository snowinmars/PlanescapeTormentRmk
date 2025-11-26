// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
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
  SAY #3013 /* ~Fell dreht sich zu dir um, als du dich näherst. Neben dir erstarrt Annah, als ihr Blick auf Fell fällt.~ */
  IF ~~ THEN REPLY #23037 /* ~"Sei gegrüßt, Fell."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23038 /* ~"Annah... was ist los?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23039 /* ~"Entschuldige, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Fell","GLOBAL",0)
Global("Know_Dabus","GLOBAL",1)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #21094 /* ~Du siehst einen Dabus... aber etwas an ihm kommt dir seltsam vor. Er hat das gleiche weiße Haar, die gleiche grünliche Färbung der Haut, das gleiche Paar Bockshörner... Dann erkennst du auf einmal, daß dieser hier auf dem Boden geht und nicht schwebt. Aus irgendeinem Grund beunruhigt dich das... und offenbar beunruhigt es auch Annah, denn sie zieht scharf Luft ein, als ihr Blick auf den Dabus fällt.~ */
  IF ~~ THEN REPLY #23040 /* ~"Äh... sei gegrüßt."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23041 /* ~"Annah... was ist los?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23042 /* ~"Verzeih, daß ich dich gestört hab'. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 11
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21096 /* ~Fell dreht sich zu dir um, als du dich näherst. Er steckt seine Arme in seine Ärmel und wartet.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23043 /* ~Versuch, ein Gespräch zu beginnen, vielleicht kannst du ja übersetzen, was Fell gerade sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23044 /* ~Versuch, ein Gespräch zu beginnen, vielleicht kannst du ja übersetzen, was Fell gerade sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23045 /* ~Versuch, mit Fell zu reden - sieh, ob du ihn verstehen kannst.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #23046 /* ~"Kann ich mal deine Tätowierungen sehen, Fell?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23047 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23048 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23049 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23050 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23051 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23052 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23053 /* ~"Annah, kannst du für mich dolmetschen?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23054 /* ~"Dak'kon, kannst du für mich dolmetschen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23055 /* ~"Grace, kannst du für mich dolmetschen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23056 /* ~"Egal. Entschuldige die Störung. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Know_Dabus","GLOBAL",1)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #21101 /* ~Du siehst einen Dabus... aber etwas an ihm kommt dir seltsam vor. Er hat das gleiche weiße Haar, die gleiche grünliche Färbung der Haut, das gleiche Paar Bockshörner... Dann erkennst du auf einmal, daß dieser hier auf dem Boden geht und nicht schwebt. Aus irgendeinem Grund beunruhigt dich das.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23057 /* ~Versuch, ein Gespräch zu beginnen, vielleicht kannst du ja verstehen, was das Geschöpf sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23058 /* ~Versuch, ein Gespräch zu beginnen, vielleicht kannst du ja verstehen, was das Geschöpf sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23059 /* ~Versuch, mit ihm zu sprechen - sieh, ob du es verstehen kannst.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23060 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23061 /* ~"Ich hätte da ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23062 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23063 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23064 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23065 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23066 /* ~"Annah, kannst du für mich dolmetschen?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23067 /* ~"Dak'kon, kannst du für mich dolmetschen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23068 /* ~"Grace, kannst du für mich dolmetschen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23069 /* ~Ignoriere den Dabus und sieh dich im Laden um.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Know_Dabus","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #21498 /* ~Du siehst ein hochgewachsenes Wesen mit einem weißen Haarschopf. Seine Haut hat einen grünlichen Ton, und ein Paar Bockshörner ziert seine Stirn. Das Wesen ist in lange, fließende Gewänder gehüllt.~ */
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #23070 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #23071 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN REPLY #23072 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ GOTO 6
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",1)
~ THEN REPLY #23073 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #23074 /* ~Ignoriere das Geschöpf und sieh dich im Laden um.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21499 /* ~Eine Reihe von Symbolen materialisiert sich über dem Kopf des Wesens. Die Symbole sind von einem schwachen Leuchten umgeben, und sie... schweben einfach da.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 211
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.3
  SAY #21500 /* ~Eine Reihe von Symbolen materialisiert sich über dem Kopf des Wesens. Die Symbole sind von einem schwachen Leuchten umgeben, und sie... schweben einfach da.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 118
END

IF ~~ THEN BEGIN 7 // from:
  SAY #21501 /* ~Als Antwort verbeugt sich "Fell". Ein einzelnes Symbol erscheint über seinem Kopf. Zuerst ist es verschwommen, dann nimmt es die Form eines weißen Ovals an, das von einem schwarzen Blitz durchdrungen wird. Aus irgendeinem Grund hast du das Gefühl, daß du dieses Wesen *kennst*.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 121
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.4 4.1
  SAY #21502 /* ~Der Dabus wartet geduldig, die Hände in die Ärmeln gesteckt. Eine Reihe von Symbolen materialisiert sich über seinem Kopf, löst sich dann auf, und es erscheint ein Fragezeichen.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23075 /* ~Versuch eine Unterhaltung anzufangen, und probiere, ob du übersetzen kannst, was der Dabus sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23076 /* ~Versuch, ein Gespräch zu beginnen; vielleicht kannst du ja übersetzen, was der Dabus gerade sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23077 /* ~Versuch, mit dem Dabus zu sprechen - sieh, ob du ihn verstehst.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23078 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23079 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23080 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23081 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23082 /* ~"Morte, kannst du für mich dolmetschen?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23083 /* ~"Annah, kannst du für mich dolmetschen?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23084 /* ~"Dak'kon, kannst du für mich dolmetschen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23085 /* ~"Grace, kannst du für mich dolmetschen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23086 /* ~"Es tut mir leid, aber ich kann dich nicht verstehen."~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~~ THEN REPLY #23087 /* ~"Ähm... leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.0 2.1 3.0 3.1 8.0 8.1
  SAY #21503 /* ~Du stellst dem Dabus verschiedene Fragen, um ein Gefühl für die Bilderrätsel zu bekommen, die über seinem Kopf erscheinen. Während der 'Unterhaltung' ist er äußerst geduldig und gibt dir leicht zu lösende Bilderrätsel auf. Nach einigen Minuten hast du den Bogen raus... es kommt dir vor, als hättest du das schon mal gemacht.~ */
  IF ~~ THEN REPLY #23088 /* ~"Vielleicht kannst du mir helfen..."~ */ GOTO 13
  IF ~~ THEN REPLY #23089 /* ~"Ich wollte nur mal wieder ein paar Bilderrätsel lösen. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 2.2 3.2 8.2
  SAY #21504 /* ~Du stellst dem Dabus verschiedene Fragen, um ein Gefühl für die Bilderrätsel zu bekommen, die über seinem Kopf erscheinen. Obwohl er während der 'Unterhaltung,' äußerst geduldig ist, scheint es, als ob du den Bogen nicht rauskriegst. Schließlich hört er auf, Symbole hervorzuzaubern und wartet einfach ab.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23090 /* ~"Morte, kannst du mir übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23091 /* ~"Morte, kannst du mir übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23092 /* ~"Morte, kannst du mir übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23093 /* ~"Morte, kannst du mir übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23094 /* ~"Annah, kannst du mir übersetzen, was er sagt?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23095 /* ~"Dak'kon, kannst du mir übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23096 /* ~"Grace, kannst du mir übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23097 /* ~"Tut mir leid, ich versteh dich nicht."~ */ GOTO 12
  IF ~~ THEN REPLY #23098 /* ~"Ähm... leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.2 8.12 9.1 10.8
  SAY #21505 /* ~Der Dabus verbeugt sich leicht. Symbole umschwirren seinen Kopf, und dann wendet er sich ab.~ */
  IF ~~ THEN REPLY #23099 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.11 10.7
  SAY #21506 /* ~Verschiedene Symbole erscheinen über dem Kopf des Dabus. Er verbeugt sich leicht und wendet sich ab.~ */
  IF ~~ THEN REPLY #23100 /* ~"Ähm... leb wohl."~ */ JOURNAL #21863 /* ~Ich habe einen Dabus in einem seltsamen Salon gefunden, aber ich konnte nicht verstehen, was er sagte. Ich muß einen Muttersprachler finden, der für mich übersetzt.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.4 3.3 8.3 9.0 15.4 16.4 18.4 19.4 21.4 22.4 24.4 25.4 27.3 28.4 30.0 32.7 33.7 35.7 36.7 38.7 39.7 41.6 42.6 44.6 45.6 47.3 48.3 50.3 51.3 53.4 54.5 56.2 57.1 61.3 63.4 65.3 66.4 68.4 70.3 72.4 73.4 75.4 76.4 78.0 79.0 81.4 82.4 84.4 85.4 87.4 88.4 90.4 91.4 93.4 94.7 95.7 100.3 101.3 102.3 106.4 107.3
  SAY #21507 /* ~Der Dabus wartet.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23101 /* ~"Wer bist du?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23102 /* ~"Wer bist du?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23103 /* ~"Wo bin ich hier?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23104 /* ~"Wo bin ich hier?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 19
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23105 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23106 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23107 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~FloatRebus(Myself)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23108 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64390 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64391 /* ~"Was ist hinter diesem Vorhang, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64392 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64393 /* ~"Was sind das für Rahmen im Hinterzimmer, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23109 /* ~"Du sagst, du würdest mich kennen, Fell... weißt du, wie ich gestorben bin?"~ */ DO ~FloatRebus(Myself)
~ GOTO 72
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23110 /* ~"Du sagst, du würdest mich kennen, Fell... weißt du, wie ich gestorben bin?"~ */ DO ~FloatRebus(Myself)
~ GOTO 73
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23111 /* ~"Fell, was weißt du über Ravel?"~ */ DO ~FloatRebus(Myself)
~ GOTO 32
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23112 /* ~"Fell, was weißt du über Ravel?"~ */ DO ~FloatRebus(Myself)
~ GOTO 33
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23113 /* ~"Sind die Tätowierungen auf diesem abgetrennten Arm, den ich gefunden habe, von dir, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 53
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23114 /* ~"Sind die Tätowierungen auf diesem abgetrennten Arm, den ich gefunden habe, von dir, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 54
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23115 /* ~"Kannst du mir was über die Tätowierungen auf meinem Knochengerüst erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 65
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23116 /* ~"Kannst du mir was über die Tätowierungen auf meinem Knochengerüst erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 66
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23117 /* ~"Kann ich mal deine Tätowierungen sehen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23118 /* ~"Kann ich mal deine Tätowierungen sehen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23119 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #21508 /* ~Der Dabus senkt leicht den Kopf, und über ihm erscheint ein einzelnes Symbol. Es ist zuerst verschwommen, dann nimmt es die Form eines weißen Ovals an, das von einem schwarzen Blitz durchdrungen wird.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23120 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23121 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23122 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #21509 /* ~Der Dabus senkt leicht den Kopf, und über ihm erscheint ein einzelnes Symbol. Es ist zuerst verschwommen, dann nimmt es die Form eines weißen Ovals an, das von einem schwarzen Blitz durchdrungen wird. Aus irgendeinem Grund weißt du, daß der Dabus einen Namen hat... sein Name ist "Fell".~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23123 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23124 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23125 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23126 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23127 /* ~"Ich hätte noch eine andere Frage an dich, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23128 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #21510 /* ~Gerade als du fragen willst, wird dir plötzlich klar, daß du den Namen des Dabus schon kennst - sein Name ist "Fell". Wie zur Antwort senkt der Dabus leicht seinen Kopf, über dem ein einzelnes Symbol erscheint. Zuerst ist es verschwommen, dann nimmt es die Form eines weißen Ovals an, das von einem schwarzen Blitz durchdrungen wird.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23129 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23130 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23131 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23132 /* ~"Ich hab' das Gefühl, dich zu kennen, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23133 /* ~"Ich hätte noch eine andere Frage an dich, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23134 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #21511 /* ~Eine langsame Abfolge von Symbolen materialisiert sich über Fells Kopf... Die Symbole brauchen eine Weile, bis sie deutlich werden; sie beginnen als einfache Linien und verdichten sich dann zu atemberaubenden Farben.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23135 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23136 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23137 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY #21512 /* ~Eine langsame Abfolge von Symbolen materialisiert sich über Fells Kopf... Die Symbole brauchen eine Weile, bis sie deutlich werden; sie beginnen als einfache Linien und verdichten sich dann zu atemberaubenden Farben. Einige Symbole mußt du raten, aber du glaubst, daß er ein Künstler ist... und daß dies ein Tätowierladen ist.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23138 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23139 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23140 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23141 /* ~"Kann ich mal deine Tätowierungen sehen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23142 /* ~"Ich hätte noch eine andere Frage an dich, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23143 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.3
  SAY #21513 /* ~Eine langsame Abfolge von Symbolen materialisiert sich über Fells Kopf... Die Symbole brauchen eine Weile, bis sie deutlich werden; sie beginnen als einfache Linien und verdichten sich dann zu atemberaubenden Farben. (Hier tätowiere ich Farbe und Leben auf Fleisch und Knochen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23144 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23145 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23146 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23147 /* ~"Kann ich mal deine Tätowierungen sehen?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23148 /* ~"Ich hätte noch eine andere Frage an dich, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23149 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #21514 /* ~Fell verbeugt sich höflich, und ein Strom von Symbolen kreist um seinen Kopf, erst im und dann gegen den Uhrzeigersinn.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23150 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23151 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23152 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
END

IF ~~ THEN BEGIN 21 // from: 13.4 13.6 15.3
  SAY #21515 /* ~Fell verbeugt sich höflich, und ein Strom von Symbolen kreist um seinen Kopf, erst im und dann gegen den Uhrzeigersinn. Du mußt einige der Symbole raten, aber du glaubst, daß er ungefähr gesagt hat, es sei nicht das erste Mal, daß du an diesem Ort gewesen bist.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23153 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23154 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23155 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23156 /* ~"Weißt du, wer ich bin?"~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23157 /* ~"Verstehe. Ich hätte da noch eine Frage, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23158 /* ~"Ich will nichts weiter hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.5 13.7 16.3 54.4
  SAY #21516 /* ~Fell verbeugt sich höflich, und ein Strom von Symbolen kreist um seinen Kopf, erst im und dann gegen den Uhrzeigersinn. Du brauchst einen Moment zum Übersetzen: (Dies ist das erste Mal und nicht das erste Mal, daß Du an diesem Ort bist.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23284 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23288 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23853 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23854 /* ~"Weißt du, wer ich bin?"~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23855 /* ~"Verstehe. Ich hätte da noch eine Frage, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23856 /* ~"Ich will nichts weiter hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #21517 /* ~Eine weitere Abfolge von Symbolen materialisiert sich schnell und deutlich über Fells Kopf.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24255 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24256 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24257 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY #21518 /* ~Eine weitere Abfolge von Symbolen materialisiert sich schnell und deutlich über Fells Kopf. Diese Symbole sind nicht so schwierig wie die anderen. Du glaubst, daß er gesagt hat, er kenne dich, könne aber nicht mehr als das sagen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24258 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24259 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24260 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24261 /* ~"Warum nicht?"~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24262 /* ~"Verstehe. Ich hätte da noch eine Frage, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24263 /* ~"Na ja, macht nichts - dann komm ich eben wieder, wenn ich einen besseren Dolmetscher aufgetrieben hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY #21519 /* ~Eine weitere Abfolge von Symbolen materialisiert sich schnell und deutlich über Fells Kopf. Die Übersetzung kommt dir so schnell und genau wie die Symbole selbst... und als ob du genau die gleiche Folge schon vorher viele Male übersetzt hättest. (Ja. Aber es ist mir nicht erlaubt, deine Geschichte zu erzählen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24264 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24265 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24266 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24267 /* ~"Warum nicht?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ GOTO 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24268 /* ~"Vielleicht kannst du mir dann noch eine Frage beantworten..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24269 /* ~"Dann gibt es nichts mehr zu sagen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #21520 /* ~Einen Moment lang antwortet Fell nicht, dann erscheint ein Strom von Bildern, als ob sie aus Fells Gedanken hervorquellen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24271 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24272 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24273 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DGRACE~ 20
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY #21521 /* ~Einen Moment lang antwortet Fell nicht, dann erscheint ein Strom von Bildern, als ob sie aus Fells Gedanken hervorquellen. Du glaubst, daß er sagt, es täte ihm leid... aber den Rest kannst du nicht übersetzen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24275 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24276 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24277 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell sagt, daß er mich kennt, mir aber meine "Geschichte" nicht erzählen kann. Aber das Seltsamste daran war der Grund. Er sagt, er könne es nicht sagen, weil er das Wesen eines Menschen nicht ändern könne.~ */ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24278 /* ~"Verstehe. Ich hätte noch eine andere Frage an dich, Fell."~ */ GOTO 13
  IF ~~ THEN REPLY #24279 /* ~"Na ja, macht nichts - dann komm ich eben wieder, wenn ich einen besseren Dolmetscher aufgetrieben hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #21522 /* ~Einen Moment lang antwortet Fell nicht, dann erscheint ein Strom von Bildern, als ob sie aus Fells Gedanken hervorquellen. (Entschuldige, aber ich kann es nicht. Ich kann das Wesen eines Menschen nicht ändern.) Du kannst nicht erklären warum, aber der letzte Satz erzeugt ein unangenehmes Kribbeln in deinem Schädel.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24280 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24281 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24282 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24283 /* ~"'Wesen eines Menschen'? Was soll das bedeuten?"~ */ DO ~FloatRebus(Myself)
~ GOTO 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24284 /* ~"Verstehe. Ich hätte noch eine andere Frage an dich, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24285 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #21523 /* ~Eine kurze Folge von papierdünnen Bildern erscheint in einer geordneten Reihe neben Fell und löst sich dann in glühende Staubkörner auf.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24286 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24287 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24288 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY #21524 /* ~Die Symbole, die über Fells Kopf erscheinen, spiegeln fast die vorhergehende Folge wider. (Entschuldige. Ich kann es nicht sagen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24289 /* ~"Verstehe. Ich hätte noch eine andere Frage an dich, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24290 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #21525 /* ~Es vergeht ein langer Moment sichtbaren Schweigens... Er zieht sich so lange hin, daß du dich schon wunderst, ob Fell dich gehört hat. Dann erscheinen ein paar Symbole von seltsam grauer Farbe zögerlich über seinem Kopf.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24291 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24292 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24293 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
END

IF ~~ THEN BEGIN 32 // from: 13.14
  SAY #21526 /* ~Es vergeht ein langer Moment sichtbaren Schweigens... Er zieht sich so lange hin, daß du dich schon wunderst, ob Fell dich gehört hat. Dann erscheinen ein paar Symbole von seltsam grauer Farbe zögerlich über seinem Kopf. Er sagt... daß sie kein "Mythos" ist.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24294 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24295 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24296 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24297 /* ~"Wo ist sie?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24298 /* ~"Was kannst du mir über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24299 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24300 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24301 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24302 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 13.15
  SAY #21527 /* ~Es vergeht ein langer Moment sichtbaren Schweigens... Er zieht sich so lange hin, daß du dich schon wunderst, ob Fell dich gehört hat. Dann erscheinen ein paar Symbole von seltsam grauer Farbe zögerlich über seinem Kopf. (Sie ist kein Mythos.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24303 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24304 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24305 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24306 /* ~"Wo ist sie?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24307 /* ~"Was kannst du mir über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24308 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24309 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24310 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24311 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #21528 /* ~Eine Reihe grauer Symbole dreht sich wie ein langsamer Strudel um Fells Kopf, dann verflachen sich die Symbole zu einem bizarren, zuckenden Muster.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24312 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24313 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24314 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
END

IF ~~ THEN BEGIN 35 // from: 32.3 41.3
  SAY #21529 /* ~Eine Reihe grauer Symbole dreht sich wie ein langsamer Strudel um Fells Kopf, dann verflachen sich die Symbole zu einem bizarren, zuckenden Muster. Du glaubst, daß er irgend etwas über einen Irrgang sagt... aber er verwendet das Wort *Irrgang* als sei es ein Verb.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24315 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24316 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24317 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24318 /* ~"Irrgang?"~ */ DO ~FloatRebus(Myself)
~ GOTO 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24319 /* ~"Was kannst du mir über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24320 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24321 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24322 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24323 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.3 42.3
  SAY #21530 /* ~Eine Reihe grauer Symbole dreht sich wie ein langsamer Strudel um Fells Kopf, dann verflachen sich die Symbole zu einem bizarren, zuckenden Muster. (Sie ist in einem der Irrgänge der Lady.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24324 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24325 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24326 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24327 /* ~"Irrgänge?"~ */ DO ~FloatRebus(Myself)
~ GOTO 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24328 /* ~"Was kannst du mir über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24329 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24330 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24331 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24332 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #21531 /* ~Die nächste Reihe von Symbolen marschiert wie eine Sklavengruppe unter einer schweren Last.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24333 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24334 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24335 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #21532 /* ~Die nächste Reihe von Symbolen marschiert wie eine Sklavengruppe unter einer schweren Last. Du glaubst, daß er irgendwas über "Gefangenschaft" oder "Bestrafung" sagt.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24336 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24337 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24338 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24339 /* ~"Sie ist gefangen? Weißt du, wie ich zu ihr gelangen kann?"~ */ DO ~FloatRebus(Myself)
~ GOTO 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24340 /* ~"Was kannst du mir über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24341 /* ~"Ich glaube, ich hab' genug gehört. Ich hätte da noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24342 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24343 /* ~"Ich glaube, ich hab' genug gehört. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24344 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #21533 /* ~Die nächste Reihe von Symbolen marschiert wie eine Sklavengruppe unter einer schweren Last. (Ihr Wille war nicht der Wille der Lady. Ravel wurde bestraft. Ravel wurde in einem Irrgang gefangesetzt.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24345 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24346 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24347 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24348 /* ~"Was hat Ravel getan?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24349 /* ~"Weiß du, wie ich zu diesem Irrgang gelangen kann?"~ */ DO ~FloatRebus(Myself)
~ GOTO 45
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24350 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24351 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24352 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24353 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #21534 /* ~Neben Fell erscheint ein weißes Oval und dann darin ein scharfer Riß.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24354 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24355 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24356 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
END

IF ~~ THEN BEGIN 41 // from: 32.4 33.4 35.4 38.4 44.3
  SAY #21535 /* ~Neben Fell erscheint ein weißes Oval und dann darin ein scharfer Riß. Du glaubst, daß er irgendwas über "den Käfig/die Stadt aufbrechen..." sagt, aber du bist dir nicht sicher. Vielleicht hat Ravel versucht, diese Stadt aufzubrechen?~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24357 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24358 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24359 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24360 /* ~"Weißt du, wo sie ist?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24361 /* ~"Ich glaube, ich hab' genug gehört. Ich hätte da noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24362 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24363 /* ~"Ich glaube, ich hab' genug gehört. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24364 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.4 39.3 45.3
  SAY #21536 /* ~Neben Fell erscheint ein weißes Oval und dann darin ein scharfer Riß - instinktiv erkennst du, daß das Oval diese Stadt, Sigil selbst, symbolisiert. (Sie versuchte, den Käfig zu öffnen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24365 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24366 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24367 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24368 /* ~"Weißt du, wo sie ist?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24369 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24370 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24371 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24372 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #21537 /* ~Ein weiterer Strom von rätselhaften Bildern tritt aus Fell hervor, aber diesmal schweben sie niedriger, als würden sie ein schweres Gewicht tragen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24373 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24374 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24375 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
END

IF ~~ THEN BEGIN 44 // from: 38.3
  SAY #21538 /* ~Ein weiterer Strom von rätselhaften Bildern tritt aus Fell hervor, aber diesmal schweben sie niedriger, als würden sie ein schweres Gewicht tragen. Soweit du verstehst, scheint Fell nicht zu wissen, wie er sie erreichen kann... und daß man nicht versuchen sollte, sie zu finden.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24376 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24377 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24378 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24379 /* ~"Was kannst du mir über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24380 /* ~"Ich glaube, ich hab' genug gehört. Ich hätte da noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24381 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24382 /* ~"Ich glaube, ich hab' genug gehört. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24383 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 39.4
  SAY #21539 /* ~Ein weiterer Strom von rätselhaften Bildern tritt aus Fell hervor, aber diesmal schweben sie niedriger, als würden sie ein schweres Gewicht tragen. (Ich weiß nicht, wie man sie finden könnte. Sie sollte nicht gefunden werden. Sie ist in der Gewalt der Lady.) Die Symbole im letzten Satz haben eine scharfkantige Struktur, die dich an Dolchklingen erinnert.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24384 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24385 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24386 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24387 /* ~"Was kannst du mir über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24388 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24389 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24390 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24391 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #21540 /* ~Bevor du das Thema wechseln kannst, wird Fell von einer neuen Reihe Symbole umgeben - sie sind in Form eines 'X' angeordnet und pulsieren wie ein schwacher Herzschlag.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24392 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24393 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24394 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 47 // from: 32.5 35.5 38.5 41.4 44.4
  SAY #21541 /* ~Bevor du das Thema wechseln kannst, wird Fell von einer neuen Reihe Symbole umgeben - sie sind in Form eines 'X' angeordnet und pulsieren wie ein schwacher Herzschlag. Du glaubst, daß er dich warnt, Ravel in Ruhe zu lassen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24395 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24396 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24397 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24398 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24399 /* ~"Vielleicht werde ich sie trotzdem finden müssen, Fell. Leb wohl."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 33.5 36.5 39.5 42.4 45.4
  SAY #21542 /* ~Bevor du das Thema wechseln kannst, wird Fell von einer neuen Reihe Symbole umgeben - sie sind in Form eines 'X' angeordnet und pulsieren wie ein schwacher Herzschlag. (Suche sie nicht. In ihr schlägt ein böses Herz. Sie wird alles in ihrer Macht stehende tun, um dich zu verletzen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24400 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24401 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24402 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24403 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24404 /* ~"Vielleicht werde ich sie trotzdem finden müssen, Fell. Leb wohl."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #21543 /* ~Bevor du weggehen kannst, wird Fell von einer neuen Reihe Symbole umgeben - sie sind in Form eines 'X' angeordnet und pulsieren wie ein schwacher Herzschlag.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24405 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24406 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24407 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 50 // from: 32.6 35.6 38.6 41.5 44.5
  SAY #21544 /* ~Bevor du weggehen kannst, wird Fell von einer neuen Reihe Symbole umgeben - sie sind in Form eines 'X' angeordnet und pulsieren wie ein schwacher Herzschlag. Du glaubst, daß er dich warnt, Ravel in Ruhe zu lassen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24408 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24409 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24410 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24411 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24412 /* ~"Vielleicht werde ich sie trotzdem finden müssen, Fell. Leb wohl."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 33.6 36.6 39.6 42.5 45.5
  SAY #21545 /* ~Bevor du weggehen kannst, wird Fell von einer neuen Reihe Symbole umgeben - sie sind in Form eines 'X' angeordnet und pulsieren wie ein schwacher Herzschlag. (Suche sie nicht. In ihr schlägt ein böses Herz. Sie wird alles in ihrer Macht stehende tun, dich zu verletzen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24413 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24414 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24415 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24416 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24417 /* ~"Vielleicht werde ich sie trotzdem finden müssen, Fell. Leb wohl."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #21546 /* ~Fell untersucht ihn einen Moment, indem er die Muster mit dem Finger nachfährt. Dann schaut er auf, und eine Reihe von Symbolen formiert sich, erst verschwommen, dann ganz deutlich zu erkennen.
~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24418 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24419 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24420 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
END

IF ~~ THEN BEGIN 53 // from: 13.16
  SAY #21547 /* ~Fell untersucht ihn einen Moment, indem er das Muster mit dem Finger nachfährt. Dann schaut er auf, und eine Reihe von Symbolen formiert sich, erst verschwommen, dann scharf begrenzt. Du glaubst, daß er sagt, der Arm sei deiner, die Tätowierungen erwähnten dich und vier 'andere'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24421 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24422 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24423 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24424 /* ~"Was für vier andere?"~ */ DO ~FloatRebus(Myself)
~ GOTO 56
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24425 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24426 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 13.17
  SAY #21548 /* ~Fell untersucht ihn einen Moment, indem er das Muster mit dem Finger nachfährt. Dann schaut er auf, und eine Reihe von Symbolen formiert sich, erst verschwommen, dann ganz deutlich zu erkennen. (Der Arm gehört dir. Die Tätowierungen gehören mir. Eine Tätowierung erzählt von einer Zeit, als dein Weg von vier anderen geteilt wurde.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24427 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24428 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24429 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24430 /* ~"Was für vier andere?"~ */ DO ~FloatRebus(Myself)
~ GOTO 57
  IF ~  Global("Translate_Dabus","GLOBAL",0)
GlobalLT("Fell","GLOBAL",2)
~ THEN REPLY #24431 /* ~"Die Tätowierungen sind von dir? Sind wir uns schon mal begegnet?"~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24432 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24433 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #21549 /* ~Vier Reihen von Symbolen wirbeln aus Fells Kopf, die dem Muster auf dem abgetrennten Arm entsprechen. Die vier Symbolreihen schweben einen Moment unabhängig voneinander, verbinden sich dann und bilden schließlich eine Kette.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24434 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24435 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY #21550 /* ~Vier Reihen von Symbolen wirbeln aus Fells Kopf, die dem Muster auf dem abgetrennten Arm entsprechen. Die Symbole sind schwer zu übersetzen, und am Ende bist du nicht sicher, ob du sie richtig übersetzt hast. Du glaubst, daß er gesagt hat: 'jemand Ungeliebtes, der liebt (?)', 'einer, der sieht (?)', jemand 'vertrautes' und schließlich 'jemand in Ketten'. Als du mit Übersetzen fertig bist, scheinen sich die vier Reihen zu verbinden und schließlich eine Kette zu bilden.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24436 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24437 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24438 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24439 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 54.3
  SAY #21551 /* ~Vier Reihen von Symbolen wirbeln aus Fells Kopf, die dem Muster auf dem abgetrennten Arm entsprechen. (Sie erwähnen vier. Soll ich dir ihre Herzen sagen?)~ */
  IF ~~ THEN REPLY #24440 /* ~"Ja."~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24274 /* ~Fell hat die Rune auf meinem alten Arm für mich übersetzt... Er sagt, sie spricht von Vieren, die einst meinen Weg mit mir gingen. Die Vier seien "ein Ungeliebter, der jemanden liebt, der nicht liebt"; "einer, der nicht sieht, was andere sehen, sondern sieht, was andere nicht sehen"; "ein Vertrauter, der an die Pflicht gebunden ist"; und "einer, der ein Sklave ist, und seine Ketten sind Worte". Er sagte, sie seien alle so gefoltert wie ich, und daß ich in meinem Leiden andere mitziehe, die auch leiden.~ */ GOTO 59
  IF ~~ THEN REPLY #24441 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #24442 /* ~"Mehr will ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #21552 /* ~Fell nickt, und um ihn herum erscheinen wie Glühwürmchen Symbole. Soweit du es erkennen kannst, sagt er, daß die auf deinem Rücken von sorgfältiger Hand gemacht wurden, und daß es Anweisungen seien. Die auf deiner Schulter bedeutet "Quälerei" oder "Folter".~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24444 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24445 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24446 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #21553 /* ~Die Symbole drehen sich vor dir, und du bastelst sie zusammen:

(Jemand Ungeliebtes, der jemanden liebt, der nicht liebt.)

(Jemand, der nicht sieht, was andere sehen, und sieht, was andere nicht sehen.)

(Jemand Vertrautes, der pflichtgebunden ist.)

(Jemand, der ein Sklave ist, und seine Ketten sind Wörter.)

Als du mit der Übersetzung fertig bist, scheinen die vier Zeichenfolgen sich in Kettenglieder zu formen, die sich zu einer Kette zusammenschließen... Die Kette biegt sich, bis sie ein Symbol formt, das du irgendwie zu kennen glaubst.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24447 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24448 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24449 /* ~"Dieses Symbol... Was bedeutet es?"~ */ DO ~FloatRebus(Myself)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from:
  SAY #21554 /* ~Das Symbol wird schärfer, bekommt Kanten, die so scharf sind, daß es dir fast in den Augen weh tut. Während es dort schwebt, nickt Fell in Richtung deines linken Arms, deiner Schulter.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24450 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24451 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY #21555 /* ~Das Symbol wird schärfer, bekommt Kanten, die so scharf sind, daß es dir fast in den Augen weh tut. (Es ist Folter. Dies ist es, was alle gequälten Seelen zu dir zieht.) Fell nickt in Richtung deines linken Arms, deiner Schulter. (Das Fleisch weiß, wann es leidet, selbst wenn der Geist es vergessen hat. Und so trägst du immer die Rune.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24452 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24453 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24454 /* ~"Hast du nicht gesagt, da wären noch andere Tätowierungen auf dem Arm? Was für welche?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24455 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24456 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #21556 /* ~Fell untersucht den Arm nochmals, wobei er die anderen verblaßten Tätowierungen auf der Oberfläche nachfährt. Dabei erscheinen die Tätowierungen nacheinander als Symbol über seinem Kopf, erst verschwommen, dann klar und deutlich. Er sieht dich an und wartet.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24457 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24458 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24459 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 63 // from: 61.2
  SAY #21557 /* ~Fell untersucht den Arm nochmals, wobei er die anderen verblaßten Tätowierungen auf der Oberfläche nachfährt. Dabei erscheinen die Tätowierungen nacheinander als Symbole über seinem Kopf, erst verschwommen, dann klar und deutlich. Er dreht sich zu dir um. (Vergessene, an die man sich jetzt erinnert. Du kannst sie wieder tragen, wenn du es wünschst.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24460 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24461 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24462 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24463 /* ~"Ich würde gerne sehen, was das für Tätowierungen sind... Kann ich mal sehen, was für Tätowierungen gerade verfügbar sind?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24464 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24465 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #21558 /* ~Fell geht eine Weile um dich herum und betrachtet deinen Körper eingehend. Er gibt jedes Symbol, das er untersucht, wieder, dann geht er zurück und sieht dich wieder an.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24466 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24467 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24468 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
END

IF ~~ THEN BEGIN 65 // from: 13.18
  SAY #21559 /* ~Fell geht eine Weile um dich herum und betrachtet deinen Körper eingehend. Er gibt jedes Symbol, das er untersucht, wieder, dann geht er zurück und sieht dich wieder an. Soweit du seine schwebenden Symbole verstehst, sagt er, daß die Tätowierungen nicht von ihm sind.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24469 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24470 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24471 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24472 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24473 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 13.19
  SAY #21560 /* ~Fell geht eine Weile um dich herum und betrachtet deinen Körper eingehend. Er gibt jedes Symbol, das er untersucht, wieder, dann geht er zurück und sieht dich wieder an. (Ich kenne sie. Keine stammen von meiner Hand.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24474 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24475 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24476 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24477 /* ~"Kannst du mir was über sie erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 68
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24478 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24479 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #21561 /* ~Fell nickt, und um ihn herum erscheinen Symbole wie Glühwürmchen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24480 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24481 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24482 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 68 // from: 66.3
  SAY #21562 /* ~Fell nickt, und um ihn herum erscheinen Symbole wie Glühwürmchen. (Die auf deinem Rücken wurden von sorgfältiger Hand gemacht und sind Anweisungen für einen Geist, der sich selbst vergißt. Das Symbol auf deiner linken Schulter ist das Zeichen für Folter.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24483 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24484 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24485 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24486 /* ~"Folter?"~ */ DO ~FloatRebus(Myself)
~ GOTO 70
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24487 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24488 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #21563 /* ~Das Symbol wird schärfer, bekommt Kanten, die so scharf sind, daß es dir fast in den Augen weh tut. Fell nickt in Richtung deines linken Arms, deiner Schulter.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24489 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24490 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24491 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 70 // from: 68.3
  SAY #21564 /* ~Das Symbol wird schärfer, bekommt Kanten, die so scharf sind, daß es dir fast in den Augen weh tut. (Es ist *Folter*. Dies ist es, was alle gequälten Seelen zu dir zieht.) Fell nickt in Richtung deines linken Arms, deiner Schulter. (Das Fleisch weiß, wann es leidet, selbst wenn der Geist es vergessen hat. Und so trägst du immer die Rune.)
~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24492 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24493 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24494 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24495 /* ~"Ich werd's mir merken. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24496 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #21565 /* ~Einen Moment lang antwortet Fell nicht... Dann materialisieren sich über seinem Kopf langsam und drohend drei Symbole, von denen jedes einen langen Schatten wirft.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24497 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24498 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24499 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
END

IF ~~ THEN BEGIN 72 // from: 13.12
  SAY #21566 /* ~Einen Moment lang antwortet Fell nicht... Dann materialisieren sich über seinem Kopf langsam und drohend drei Symbole, von denen jedes einen langen Schatten wirft. Du glaubst, er sagt etwas über... Schatten.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24500 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24501 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24502 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24503 /* ~"Schatten?"~ */ DO ~FloatRebus(Myself)
~ GOTO 75
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24504 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24505 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 13.13
  SAY #21567 /* ~Einen Moment lang antwortet Fell nicht... Dann materialisieren sich über seinem Kopf langsam und drohend drei Symbole, von denen jedes einen langen Schatten wirft. (Schatten.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24506 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24507 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24508 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24509 /* ~"Schatten?"~ */ DO ~FloatRebus(Myself)
~ GOTO 76
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24510 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24511 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #21568 /* ~Die drei Symbole wirbeln umeinander, jedes hinterläßt eine schwache, schwarze und nebelige Spur hinter sich. Sie nehmen zerklüftete Konturen an, wie Zähne und Krallen, und *vermehren sich*. Drei teilen sich in drei, dann wieder in drei, bis der ganze Raum von Schatten zu wimmeln scheint.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24512 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24513 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24514 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
END

IF ~~ THEN BEGIN 75 // from: 72.3
  SAY #21569 /* ~Die drei Symbole wirbeln umeinander, jedes hinterläßt eine schwache, schwarze und nebelige Spur hinter sich. Sie nehmen zerklüftete Konturen an, wie Zähne und Krallen, und *vermehren sich*. Drei teilen sich in drei, dann wieder in drei, bis der ganze Raum von Schatten zu wimmeln scheint. Er scheint zu sagen, daß du von vielen ... 'Schatten' getötet wurdest.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24515 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24516 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24517 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24518 /* ~"Warum?"~ */ DO ~FloatRebus(Myself)
~ GOTO 78
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24519 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24520 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 73.3
  SAY #21570 /* ~Die drei Symbole wirbeln umeinander, jedes hinterläßt eine schwache, schwarze und nebelige Spur hinter sich. Sie nehmen zerklüftete Konturen an, wie Zähne und Krallen, und *vermehren sich*... wo drei waren, sind neun, aus neun werden siebenundzwanzig, bis der ganze Raum von Schatten wimmelt. (Viele Schatten. Sie strömten aus der Dunkelheit, umschwärmten dich und ließen dich dann zum Sterben zurück.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24521 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24522 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24523 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24524 /* ~"Warum?"~ */ DO ~FloatRebus(Myself)
~ GOTO 79
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24525 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24526 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #21571 /* ~Fell untersucht den Arm nochmals, wobei er die anderen verblaßten Tätowierungen auf der Oberfläche nachfährt. Dabei erscheinen die Tätowierungen nacheinander als Symbole über seinem Kopf, erst verschwommen, dann klar und deutlich. Er dreht sich zu dir um. Wenn du die Symbole richtig übersetzt, will er dir sagen, daß er diese Tätowierungen vergessen hatte, sich aber jetzt an sie erinnert.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24527 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24528 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24529 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 78 // from: 75.3
  SAY #21572 /* ~Die schattenwerfenden Symbole verwirbeln sich zu einem, lösen sich dann auf und werden durch ein einfaches Symbol ersetzt. Fell scheint nicht zu wissen, warum.~ */
  IF ~~ THEN REPLY #24530 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #24531 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.3
  SAY #21573 /* ~Die schattenwerfenden Symbole verwirbeln sich zu einem, lösen sich dann auf und werden durch ein einfaches Symbol ersetzt. (Ich weiß es nicht.)~ */
  IF ~~ THEN REPLY #24532 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #24533 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #21574 /* ~Eine ganze Karawane von Symbolen materialisiert sich Zeichen für Zeichen um Fell.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24534 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24535 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24536 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
END

IF ~~ THEN BEGIN 81 // from: 13.8 13.10
  SAY #21575 /* ~Eine ganze Karawane von Symbolen materialisiert sich Zeichen für Zeichen um Fell. Du glaubst, daß er sagt, dies sei eine Art Galerie... eine Galerie von 'Dir'. Der nächste Teil ist schwer zu übersetzen, aber du glaubst, daß Fell sagt, er sei... traurig wegen dir.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24537 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24538 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24539 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24540 /* ~"Traurig? Warum?"~ */ DO ~FloatRebus(Myself)
~ GOTO 84
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24541 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24542 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 13.9 13.11
  SAY #21576 /* ~Eine ganze Karawane von Symbolen materialisiert sich Zeichen für Zeichen um Fell. (Dies ist meine Galerie. Du bist meine Leinwand. Ich bewundere dich. Ich bin traurig wegen dir.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24543 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24544 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24545 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24546 /* ~"Traurig wegen mir? Warum?"~ */ DO ~FloatRebus(Myself)
~ GOTO 85
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24547 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24548 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #21577 /* ~Eine weitere Karawane von Symbolen entsteht um Fell herum, diesmal bilden sie einen Kreis.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24549 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24550 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24551 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
END

IF ~~ THEN BEGIN 84 // from: 81.3
  SAY #21578 /* ~Eine weitere Karawane von Symbolen entsteht um Fell herum, diesmal bilden sie einen Kreis. Er sagt irgendwas davon, daß du 'gezeichnet' bist und gefoltert wurdest. Den nächsten Abschnitt kannst du nicht übersetzen. Im letzten Teil scheint er etwas über dich und das Ertragen von Schmerzen zu sagen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24552 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24553 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24554 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24555 /* ~"Was meinst du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 87
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24556 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24557 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 82.3
  SAY #21579 /* ~Eine weitere Karawane von Symbolen entsteht um Fell herum, diesmal bilden sie einen Kreis. (Das Zeichen der Folter liegt auf deinem Fleisch. Tragödien und Verlust haben sich auf ihm aufgebaut, wie Steine auf einem Fundament. Du hast große Schmerzen ertragen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24558 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24559 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24560 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24561 /* ~"Was meinst du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 88
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24562 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24563 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21580 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und windet sich dann wie Fesseln um seine Arme.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24586 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24587 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24588 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
END

IF ~~ THEN BEGIN 87 // from: 84.3
  SAY #21581 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und windet sich dann wie Fesseln um seine Arme. Er scheint zu sagen, daß er dich bewundert, weil du "Verluste" aushältst.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24589 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24590 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24591 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24592 /* ~"Erzähl weiter..."~ */ DO ~FloatRebus(Myself)
~ GOTO 90
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24593 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24594 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 85.3
  SAY #21582 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und windet sich dann wie Fesseln um seine Arme. (Ich bewundere dich, weil du dich niemals der Last dieser Verluste ergeben hast, obwohl ihre Ketten noch an dir hängen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24595 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24596 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24597 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24598 /* ~"Erzähl weiter..."~ */ DO ~FloatRebus(Myself)
~ GOTO 91
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24599 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24600 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #21583 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und fällt dann herunter, um Fell wie einen Mantel einzuhüllen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24601 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24602 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24603 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
END

IF ~~ THEN BEGIN 90 // from: 87.3
  SAY #21584 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und fällt dann herunter, um Fell wie einen Mantel einzuhüllen. Er scheint zu sagen, daß diese 'Verluste' dein Leben einhüllen... und deine 'anderen Leben'. Du bist dir aber nicht sicher, was die anderen Zeichen um diese Botschaft herum bedeuten.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24604 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24605 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24606 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24607 /* ~"Äh... kannst du mir sonst noch irgendwas erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24608 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24609 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 88.3
  SAY #21585 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und fällt dann herunter, um Fell wie einen Mantel einzuhüllen. (Diese Verluste hüllen dieses Leben und alle deine vergangenen ein. Du streifst Leben ab wie eine sich häutende Schlange. Du erforschst die unendlichen Pfade des Lebens.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24610 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24611 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24612 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24613 /* ~"Erzähl mir mehr."~ */ DO ~FloatRebus(Myself)
~ GOTO 93
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24614 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24615 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #21586 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und fällt dann plötzlich auf den Boden, wo sie sich wie ein Schatten hinter Fell ausbreitet.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24616 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24617 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24618 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
END

IF ~~ THEN BEGIN 93 // from: 91.3
  SAY #21587 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und fällt dann plötzlich auf den Boden, wo sie sich wie ein Schatten hinter Fell ausbreitet. (Nimm diese Warnung mit: Jedes deiner Leben wirft einen Schatten auf das Dasein. Du mußt zu einem Ort reisen, wo diese Schatten verrückt geworden sind und Reue der Erde Narben zugefügt hat.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24619 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24620 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24621 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24622 /* ~"Kannst du mir sonst noch was erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 95
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24623 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24624 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 90.3 106.3
  SAY #21588 /* ~Eine kurze Folge von papierdünnen Bildern erscheint in einer geordneten Reihe neben Fell und löst sich dann in glühende Staubkörner auf. Du glaubst, daß er dich gerade gewarnt hat, während deiner Reisen nichts zu 'unterschreiben'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24625 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24626 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24627 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24628 /* ~"Wie du meinst."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24629 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24630 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24631 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24632 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24633 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.3
  SAY #21589 /* ~Eine kurze Folge von papierdünnen Bildern erscheint in einer geordneten Reihe neben Fell und löst sich dann in glühende Staubkörner auf. (Unterschreibe nichts.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24634 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24635 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24636 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24637 /* ~"Wie du meinst."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24638 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24639 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24640 /* ~"Na gut. Ich meine... äh... Ich werd versuchen, nicht mehr zu unterschreiben, als ich bisher schon unterschrieben habe."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24641 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24642 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #21590 /* ~Es erscheint eine weitere Folge von Bildern, die eine Spirale bilden - ihre Textur deutet auf eine Frage hin.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24643 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24644 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24645 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
END

IF ~~ THEN BEGIN 97 // from: 94.3 94.4 94.5 94.6
  SAY #21591 /* ~Es erscheint eine weitere Folge von Bildern, die eine Spirale bilden - ihre Textur deutet auf eine Frage hin. Du glaubst, daß er gerade gefragt hat, ob du dich... 'ganz' fühlst.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24646 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24647 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24648 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24649 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendetwas... fehlt. In mir drin."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 100
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24650 /* ~"Das geht dich nichts an."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24651 /* ~Lüge: "Ja, ich fühl mich vollständig. Warum?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24652 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 95.3 95.4 95.5 95.6
  SAY #21592 /* ~Es erscheint eine weitere Folge von Bildern, die eine Spirale bilden - ihre Textur deutet auf eine Frage hin. (Fühlst du dich vollständig?)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24653 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24654 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24655 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24656 /* ~Wahrheit: "Ich... nein. Ehrlich gesagt, seit ich in der Leichenhalle aufgewacht bin, fühle ich mich, als ob irgendwas... fehlt. In mir drin."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 101
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24657 /* ~"Das geht dich nichts an."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24658 /* ~Lüge: "Ja, ich fühl mich vollständig. Warum?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24659 /* ~"Ich will nicht weiter darüber reden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #21593 /* ~Fell nickt, und eine Serie von Symbolen materialisiert sich wie ein Heiligenschein um ihn.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24660 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24661 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24662 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
END

IF ~~ THEN BEGIN 100 // from: 97.3
  SAY #21594 /* ~Fell nickt, und eine Serie von Symbolen materialisiert sich wie ein Heiligenschein um ihn. Du glaubst, daß er dir sagt, du müßtest 'stark sein' und 'Vertrauen haben'.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24663 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24664 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24665 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24666 /* ~"Ich versuch's. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #24667 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 98.3
  SAY #21595 /* ~Fell nickt, und eine Serie von Symbolen materialisiert sich wie ein Heiligenschein um ihn. (Du bist stark. Hab' Vertrauen, und du wirst dich wieder vollständig fühlen.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24668 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24669 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24670 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24671 /* ~"Ich versuch's. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24672 /* ~"Danke, Fell. Ich komm vielleicht später noch mal wieder, wenn ich noch ein paar Fragen hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 97.4 97.5 98.4 98.5
  SAY #21596 /* ~Fell gibt keine Antwort.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24673 /* ~"Gut, macht nichts. Ich hätte da noch ein paar Fragen..."~ */ EXTERN ~DANNAH~ 131
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24674 /* ~"Gut, macht nichts. Ich hätte da noch ein paar Fragen..."~ */ EXTERN ~DDAKKON~ 77
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24675 /* ~"Gut, macht nichts. Ich hätte da noch ein paar Fragen..."~ */ EXTERN ~DGRACE~ 15
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24676 /* ~"Gut, macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24677 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24678 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 103
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24679 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 104
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24680 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ GOTO 105
END

IF ~~ THEN BEGIN 103 // from: 102.5
  SAY #21597 /* ~Plötzlich dreht Fell sich zu Annah um, und eine kleine Kette von Bildern materialisiert sich über seiner linken Schulter.~ */
  IF ~~ THEN REPLY #24681 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 104 // from: 102.6
  SAY #21598 /* ~Plötzlich dreht Fell sich zu Annah um, und eine kleine Kette von Bildern materialisiert sich über seiner linken Schulter. Du kannst sie kaum erkennen... Du glaubst, daß er etwas über das Herz und Annah sagt, aber du bist dir nicht sicher, was... Die Zeichen schweben nur kurz dort, dann verschwinden sie.~ */
  IF ~~ THEN REPLY #24682 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 105 // from: 102.7
  SAY #21599 /* ~Plötzlich dreht Fell sich zu Annah um, und eine kleine Kette von Bildern materialisiert sich über seiner linken Schulter. Du kannst sie kaum erkennen. (Gib dein Herz nicht her.)~ */
  IF ~~ THEN REPLY #24683 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 106 // from:
  SAY #21600 /* ~Eine lange Kette von Symbolen erscheint über Fells Kopf und fällt dann plötzlich auf den Boden, wo sie sich wie ein Schatten hinter Fell ausbreitet. Du glaubst, daß er dich warnt vor... Schatten. Er erwähnt irgendeinen Ort der Reue, aber die Bedeutung der Symbole ist dir nicht ganz klar.
~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24684 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24685 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24686 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24687 /* ~"Kannst du mir sonst noch was erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24688 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24689 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #21601 /* ~Das Symbol wird schärfer, bekommt Kanten, die so scharf sind, daß es dir fast in den Augen weh tut. Fell nickt in Richtung deines linken Arms, deiner Schulter. Soweit du es verstehst, sagt er, daß das Zeichen auf deiner Schulter "Folter" bedeutet. Die nächste Folge von Symbolen scheint irgendwas anzudeuten von Leiden, auch wenn sie vergessen sind.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24690 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24691 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24692 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24693 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24694 /* ~"Dann werde ich wohl mit einem besseren Dolmetscher wiederkommen müssen. Leb wohl."~ */ EXIT
END
