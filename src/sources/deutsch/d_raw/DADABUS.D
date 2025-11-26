// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DADABUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50108 /* ~Die siehst ein hochgewachsenes Wesen mit einer wilden, weißen Haarpracht. Es hat eine grünliche Hautfarbe, und aus seiner Stirn ragen zwei Bockshörner. Das Wesen trägt lange, wallende Gewänder und scheint leicht über dem Boden zu schweben.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50109 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #50303 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50318 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #50330 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50110 /* ~Das Wesen wendet sich dir zu, und um seinen Kopf herum erscheinen verschiedene Symbole. Die Symbole leuchten ganz leicht und hängen... tja, einfach so in der Luft.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 235
END

IF ~~ THEN BEGIN 2 // from:
  SAY #50119 /* ~Der Dabus steht mit den Händen in den Ärmeln da und wartet geduldig. Verschiedene Symbole nehmen über seinem Kopf Gestalt an und verschwinden wieder. Dann erscheint ein Fragezeichen.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50120 /* ~Versuch, den Dabus in ein Gespräch zu verwickeln. Versuch zu übersetzen, was er sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50259 /* ~Versuch, den Dabus in ein Gespräch zu verwickeln. Versuch zu übersetzen, was er sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50260 /* ~Versuch, mit dem Dabus zu sprechen. Vielleicht verstehst Du ihn ja.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50290 /* ~"Ich hätte da ein paar Fragen an dich..."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50291 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50292 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50293 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50294 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50295 /* ~"Annah, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50296 /* ~"Dak'kon, kannst du übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50297 /* ~"Grace, kannst du übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50298 /* ~"Tut mir leid, ich versteh dich nicht."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~~ THEN REPLY #50299 /* ~"Äh... leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1 20.0 20.1
  SAY #50121 /* ~Du stellst dem Dabus einige Fragen und versuchst dabei, ein Gefühl für die Bilderrätsel zu bekommen, die über seinem Kopf erscheinen. Er zeigt sich während eures 'Gesprächs' äußerst geduldig und gibt dir nur einfache Bilderrätsel auf. Nach wenigen Minuten hast du den Bogen raus. Dir ist, als hättest du das schon einmal gemacht.~ */
  IF ~~ THEN REPLY #50122 /* ~"Vielleicht könntest du mir helfen..."~ */ GOTO 4
  IF ~~ THEN REPLY #50258 /* ~"Wollte nur meine Bilderrätsel-Kenntnisse ein bißchen auffrischen. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.3 3.0 5.0 7.0 8.0 9.0 10.2 20.3
  SAY #50123 /* ~Der Dabus wartet.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50124 /* ~"Wer bist du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50130 /* ~"Was machst du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50135 /* ~"Wer bist du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50139 /* ~"Was machst du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #50144 /* ~"Kannst du mir etwas über die Dame der Schmerzen erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #50256 /* ~"Kannst du mir etwas über Fell erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 17
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #50257 /* ~"Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #50125 /* ~Der Dabus neigt leicht seinen Kopf, woraufhin eine Reihe von Symbolen über seinem Kopf erscheint. Du meinst, er sagt, er sei ein Dabus.~ */
  IF ~~ THEN REPLY #50126 /* ~"Ich hätte da noch ne Frage."~ */ GOTO 4
  IF ~~ THEN REPLY #50127 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.12 3.1 4.8 5.1 7.1 7.2 8.1 9.1 9.2 10.3 18.10 20.16
  SAY #50128 /* ~Der Dabus verneigt sich leicht, und um seinen Kopf schwirren Symbole. Dann wendet er sich ab.~ */
  IF ~~ THEN REPLY #50129 /* ~Geh weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #50131 /* ~Über dem Kopf des Dabus erscheint ein Schwung Symbole. Du glaubst, er sagt, er würde hier seiner Pflicht... oder seinen Pflichten nachgehen.~ */
  IF ~~ THEN REPLY #50132 /* ~"Ich hätte da noch ne Frage ..."~ */ GOTO 4
  IF ~~ THEN REPLY #50133 /* ~"Sehr aufschlußreich. Danke. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50134 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #50136 /* ~Der Dabus neigt ein wenig sein Haupt und eine Reihe von Symbolen erscheint über seinem Kopf. (Ich bin ein Dabus.)~ */
  IF ~~ THEN REPLY #50137 /* ~"Ich hätte da noch ne Frage."~ */ GOTO 4
  IF ~~ THEN REPLY #50138 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #50140 /* ~Eine ganze Menge Symbole erscheinen über dem Kopf des Dabus. (Ich widme mich meiner Pflicht.)~ */
  IF ~~ THEN REPLY #50141 /* ~"Ich hätte da noch ne Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #50142 /* ~"Sehr aufschlußreich. Danke. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50143 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY #50145 /* ~Ein einzelnes Symbol erscheint über dem Kopf des Dabus. Es zeigt eine metallische Maske einer Frau. Aus den Seiten der Maske ragen Klingen heraus. Allein der Anblick dieses geisterhaften Bildes läßt dich erschaudern.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50146 /* ~"Äh... nicht gerade die Antwort, die ich erwartet hätte."~ */ EXTERN ~DGRACE~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50253 /* ~"Äh... ich verstehe. Dak'kon, kannst du dem Dabus noch eine Frage stellen?"~ */ EXTERN ~DDAKKON~ 165
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50254 /* ~"Äh... ich hätte da noch ne Frage..."~ */ GOTO 4
  IF ~~ THEN REPLY #50255 /* ~"Äh... das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from:
  SAY #50151 /* ~Der Dabus neigt leicht seinen Kopf, woraufhin eine Flut von Symbolen über seinem Kopf erscheint.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50152 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50236 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50237 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50238 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50158 /* ~Der Dabus neigt leicht seinen Kopf, woraufhin eine Reihe von Symbolen über seinem Kopf erscheint. Du meinst, er sagt, er sei ein Dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50159 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50160 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50167 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50212 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50174 /* ~Der Dabus neigt ein wenig sein Haupt und eine Reihe von Symbolen erscheint über seinem Kopf. (Ich bin ein Dabus.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50175 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50176 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50177 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50178 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50183 /* ~Über dem Kopf des Dabus erscheint ein Schwung Symbole.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50184 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50188 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50192 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50197 /* ~Über dem Kopf des Dabus erscheint ein Schwung Symbole. Du glaubst, er sagt, er würde hier seiner Pflicht... oder seinen Pflichten nachgehen.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50198 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50199 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50200 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 16 // from:
  SAY #50202 /* ~Eine ganze Menge Symbole erscheinen über dem Kopf des Dabus. (Ich widme mich meiner Pflicht.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50203 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50204 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50205 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 17 // from: 4.5
  SAY #50208 /* ~Ein einzelnes Symbol erscheint über dem Kopf des Dabus. Es ist ein weißes Oval, das von einem schwarzen Blitz geteilt wurde. Der Dabus läßt das Symbol ein paar Sekunden schweben, wendet sich dann ab und ignoriert dich.~ */
  IF ~~ THEN REPLY #50209 /* ~"Äh... also dann leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2 20.2
  SAY #50261 /* ~Du stellt dem Dabus einige Fragen und versuchst, ein Gefühl für die Bilderrätsel zu bekommen, die über seinem Kopf erscheinen. Obwohl sich der Dabus während eures 'Gesprächs' äußerst geduldig zeigt, wirst du aus seinen Symbolen nicht schlau. Schließlich hört der Dabus auf, Symbole schweben zu lassen, und wartet einfach nur.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50262 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50265 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50268 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50271 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50274 /* ~"Annah, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50284 /* ~"Dak'kon, kannst du übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50285 /* ~"Grace, kannst du übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50286 /* ~"Tut mir leid, ich versteh dich nicht."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #50289 /* ~"Äh... leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 2.11 18.7 20.6
  SAY #50287 /* ~Über dem Kopf des Dabus erscheinen verschiedene Symbole. Dann verneigt sich der Dabus und wendet sich ab.~ */
  IF ~~ THEN REPLY #50288 /* ~"Äh... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.1 22.0
  SAY #50304 /* ~Er wendet sich dir zu, und um seinen Kopf herum erscheinen verschiedene Symbole. Die Symbole leuchten leicht und hängen... tja, einfach so in der Luft.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50305 /* ~Versuch, das Wesen in ein Gespräch zu verwickeln. Versuch zu übersetzen, was es sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50306 /* ~Versuch, das Wesen in ein Gespräch zu verwickeln. Versuch zu übersetzen, was es sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50307 /* ~Versuch, mit dem Wesen zu sprechen. Vielleicht verstehst du es ja.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50308 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50309 /* ~"Tut mir leid... Ich kann dich nicht verstehen."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50310 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50311 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50312 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50313 /* ~"Morte, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50314 /* ~"Annah, kannst du übersetzen, was er sagt?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50315 /* ~"Dak'kon, kannst du übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50316 /* ~"Grace, kannst du übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50317 /* ~"Nichts für ungut. Entschuldige die Störung. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY #50319 /* ~Das Wesen wendet sich dir zu, und über seinem Kopf erscheinen verschiedene Symbole. Die Symbole leuchten leicht und hängen... tja, einfach so in der Luft.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 496
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 22 // from:
  SAY #50331 /* ~Du siehst einen Dabus. Er trägt lange, wallende Gewänder und schwebt leicht über dem Boden.~ */
  IF ~~ THEN REPLY #50332 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #50333 /* ~Laß den Dabus in Ruhe.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Pregnant_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #50334 /* ~Du siehst einen Dabus. Er ist in eine lange, fließende Robe gehüllt und schwebt dicht über dem Boden.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50340 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50341 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~~ THEN REPLY #50342 /* ~Laß den Dabus in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #50335 /* ~Er dreht sich zu dir um, und eine Reihe von Symbolen erscheint um seinen Kopf. (Ich muß meinen Pflichten nachkommen. Keine Zeit zum Reden.)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50343 /* ~"Schon kapiert. Ich hab nur gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61176 /* ~"Schon kapiert. Ich hab nur gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #61177 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.6 4.7 20.4 20.5 24.0 24.1
  SAY #50336 /* ~Der Dabus legt den Kopf ein wenig schräg. Eine Anzahl von Symbolen strömt über seinem Kopf dahin, von denen die meisten keine Worte sind, sondern Überraschung und Sorge ausdrücken. (Tot? Wo?)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50345 /* ~Wahrheit: "Er liegt in dem verlassenen Gebäude ganz in der Nähe. Sieht so aus, als ob er irgendwie nicht mehr herauskommen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50346 /* ~Lüge: "Er liegt in dem verlassenen Gebäude ganz in der Nähe. Ich weiß nicht, wie er gestorben ist."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61178 /* ~"Er liegt in einem verlassenen Gebäude nicht weit von hier. Ich weiß nicht, wie er gestorben ist."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2 28.0 28.1 28.2
  SAY #50337 /* ~Der Dabus starrt dich kurz an, macht dann eine leichte Verbeugung und entschwebt in Richtung des verlassenen Gebäudes.~ */
  IF ~~ THEN REPLY #50347 /* ~"Leb wohl."~ */ DO ~SetGlobal("Dabus_Trap","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #50338 /* ~Er dreht sein Gesicht zu dir, und eine Reihe von Symbolen erscheint um seinen Kopf herum. Die Symbole sind von schwach glühendem Licht umrandet und... schweben dort einfach in der Luft.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61165 /* ~"Äh... Ich hab bloß gedacht, daß du wissen solltest, daß ich die Leiche eines Dabus in dieser Gasse entdeckt hab."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #61169 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.8 18.9 20.7 20.8 27.0 27.1
  SAY #50339 /* ~Der Dabus legt seinen Kopf leicht auf die Seite. Eine Reihe von Symbolen taucht um seinen Kopf herum auf. Du kannst zwar nicht herausfinden, was er sagt, doch du bemerkst, das am Ende seiner Aussage ein hell leuchtendes Fragezeichen steht.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50350 /* ~Wahrheit: "Er liegt in dem verlassenen Gebäude ganz in der Nähe. Sieht so aus, als ob er irgendwie nicht mehr herauskommen konnte."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50351 /* ~Lüge: "Er liegt in dem verlassenen Gebäude ganz in der Nähe. Ich weiß nicht, wie er gestorben ist."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61172 /* ~"Er liegt in einem verlassenen Gebäude nicht weit von hier. Ich weiß nicht, wie er gestorben ist."~ */ GOTO 26
END
