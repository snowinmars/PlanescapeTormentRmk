// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAZI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAZI~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #3024 /* ~Du siehst eine kränkliche Githzeraifrau. Sie ist buckelig und krumm, und ihr ständiges Husten bereitet ihr offensichtlich Schmerzen - sie hält ein Taschentuch, das vor Blut, Gewebe und Schleim geradezu tropft, vor ihren Mund. Sie erspäht dich und zischt.~ */
  IF ~~ THEN REPLY #3025 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42426 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42427 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42428 /* ~"Ich hab keine Fragen an dich. Leb wohl."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #42429 /* ~An'azi zwinkert dir zu. Ihre wäßrigen Augen tränen. Sie zischt Dak'kon ein paar Worte zu.~ */
  IF ~~ THEN REPLY #42430 /* ~"Was hat sie gesagt?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ EXTERN ~DDAKKON~ 132
  IF ~~ THEN REPLY #42431 /* ~"Töte sie, Dak'kon. Mach es so richtig schmerzhaft."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DDAKKON~ 126
  IF ~~ THEN REPLY #42432 /* ~"Dak'kon, bereite ihrem Elend ein Ende. Sie hat wohl so große Schmerzen, daß sie ohnehin nicht mehr lange überleben wird."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DDAKKON~ 130
  IF ~~ THEN REPLY #42433 /* ~"Komm, gehen wir, Dak'kon. Verabschiede dich."~ */ EXTERN ~DDAKKON~ 128
  IF ~~ THEN REPLY #42434 /* ~Bereite ihrem Elend ein Ende.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #42435 /* ~Stich auf sie ein, nur so aus Spaß.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_2","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 0.3
  SAY #42436 /* ~Sie starrt dich an und nuschelt Dak'kon ein paar Worte zu.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 124
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 3 // from:
  SAY #42467 /* ~Du siehst eine krank aussehende Githzerai-Frau. Sie ist krumm und buckelig. Ihr ständiges Husten scheint mit großen Schmerzen verbunden zu sein. Sie hält sich ein Taschentuch vors Gesicht, das förmlich vor Blut, Schleim und Gewebefetzen trieft. Als sie dich erblickt, gibt sie einen zischenden Laut von sich.~ */
  IF ~~ THEN REPLY #42468 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42469 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42470 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42471 /* ~"Brauchst du Heilung? Kann ich irgendwas für dich tun?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #42472 /* ~"Was ist los mit dir?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #42473 /* ~"Ich hab keine Fragen an dich. Leb wohl."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 4 // from:
  SAY #42474 /* ~Die alte Githzerai-Frau sieht noch schlechter aus als zuvor - sofern dies möglich ist. Sie versucht, dich anzuzischen, wird jedoch von einen blutigen Hustenanfall daran gehindert.~ */
  IF ~~ THEN REPLY #42475 /* ~"Brauchst du Heilung? Kann ich irgendwas für dich tun?"~ */ GOTO 6
  IF ~~ THEN REPLY #42476 /* ~"Was ist los mit dir?"~ */ GOTO 9
  IF ~~ THEN REPLY #42477 /* ~"Könntest du mir vielleicht ein paar Fragen beantworten?"~ */ GOTO 7
  IF ~~ THEN REPLY #42478 /* ~"Leb wohl, alte Frau."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 3.2 3.5
  SAY #42479 /* ~Sie hustet und hustet. Dabei füllt sich ihr feuchtes Taschentuch mit nassen Gewebefetzen. Sie wirft dir einen bösen Blick zu.~ */
  IF ~~ THEN REPLY #42480 /* ~"Brauchst du Heilung? Kann ich irgendwas für dich tun?"~ */ GOTO 6
  IF ~~ THEN REPLY #42481 /* ~"Was ist los mit dir?"~ */ GOTO 9
  IF ~~ THEN REPLY #42482 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3 4.0 5.0
  SAY #42483 /* ~Sie hustet. Sie scheucht dich mit den Händen fort. Dann kauert sie sich in ihren Lumpen zusammen. Offensichtlich möchte sie in Ruhe sterben.~ */
  IF ~~ THEN REPLY #42484 /* ~"Hast du Schmerzen? Kann ich *irgendwas* für dich tun?"~ */ GOTO 7
  IF ~~ THEN REPLY #42485 /* ~Gib ihr ein paar Münzen.~ */ GOTO 8
  IF ~~ THEN REPLY #42486 /* ~"Bitte beantworte mir doch ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #42487 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.2
  SAY #42488 /* ~Sie hustet ein paar Sätze in einer dir nicht bekannten Sprache aus. Dann wird sie von einem erneuten Hustenanfall so heftig geschüttelt, daß sie sich vor Schmerzen krümmt.~ */
  IF ~~ THEN REPLY #42489 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #42490 /* ~Sie schlägt dir die Münzen aus der Hand, die folglich zu Boden fallen und über das Pflaster rollen. Sie zischt dich wieder schwach an.~ */
  IF ~~ THEN REPLY #42491 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.1 5.1
  SAY #42492 /* ~Schwach zeigt sie über ihrem Kopf in die Luft. Sie zeigt auf die Gießerei, auf den Müll, auf die Kohleberge und schließlich auf ihre Brust. Als wolle sie ihren Worten besonderen Nachdruck verleihen, erleidet sie einen weiteren schweren Hustenanfall. Blut läuft über ihre Lippen.~ */
  IF ~~ THEN REPLY #42493 /* ~"Ist es der Smog?"~ */ GOTO 10
  IF ~~ THEN REPLY #42494 /* ~"Kann ich was tun, um dich zu heilen?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42495 /* ~Sie nickt mit dem Kopf und spuckt eine weitere Ladung Schleim aus.~ */
  IF ~~ THEN REPLY #42496 /* ~"Kann ich was tun, um dich zu heilen?"~ */ GOTO 11
  IF ~~ THEN REPLY #42497 /* ~"Dann kann ich nichts für dich tun. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #42498 /* ~Ihr Blick wird ernst, als sie auf deine Waffe und dann auf sich selbst zeigt.~ */
  IF ~~ THEN REPLY #42499 /* ~"Du willst, daß ich dich töte?"~ */ GOTO 12
  IF ~~ THEN REPLY #42500 /* ~"Das werd ich nicht für dich tun. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #42501 /* ~Sie nickt mit aller Kraft, die sie noch besitzt, wofür sie sogleich mit einem heftigen Hustenanfall bestraft wird. Sie deutet entschlossen auf deine Waffe. Ihre gelblichen Augen zeigen keine Furcht.~ */
  IF ~~ THEN REPLY #42502 /* ~"Na schön. Dann wünsch ich dir viel Glück im nächsten Leben."~ */ GOTO 14
  IF ~~ THEN REPLY #42503 /* ~"Das werd ich nicht für dich tun."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 12.1 14.1
  SAY #42504 /* ~Sie spuckt dir einen blutigen Klumpen Schleim vor die Füße, als du dich von ihr abwendest.~ */
  IF ~~ THEN REPLY #42505 /* ~Laß sie in Ruhe.~ */ EXIT
  IF ~~ THEN REPLY #42506 /* ~Töte sie.~ */ DO ~AddexperienceParty(4000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.4 1.5 12.0
  SAY #42507 /* ~Mutig und furchtlos steht sie vor dir und erwartet den Todesstoß.~ */
  IF ~~ THEN REPLY #42508 /* ~Bereite ihrem Elend ein Ende.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #42509 /* ~"Das kann ich nicht für dich tun."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42510 /* ~Du tötest sie mit einem schnellen Hieb. Ihr Körper sackt auf dem harten Pflaster zusammen, aber irgendwie wirkt sie dankbar.~ */
  IF ~~ THEN REPLY #42511 /* ~"Leb wohl, Githzerai."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill(Myself)
~ JOURNAL #67286 /* ~Ich habe heute im Unteren Bezirk eine kranke Githzerai-Frau getötet. Sie hatte Schwierigkeiten, die dicke Luft des Bezirks zu atmen, und schien keine Angst vorm Tod zu haben.~ */ EXIT
END
