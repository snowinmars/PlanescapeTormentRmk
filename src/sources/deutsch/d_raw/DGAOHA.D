// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAOHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAOHA~

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
Global("Gaoha","GLOBAL",0)
!GlobalTimerNotExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 0 // from:
  SAY #9356 /* ~Du siehst eine dürre, menschenähnliche Gestalt, deren gelbliche Haut mit verschiedenen, leuchtenden Tätowierungen bedeckt ist. Ihre Augenbrauen sind mit einem schwarzen Kohlestift nachgezogen und ihre Zähne sind zugespitzt. Als sie dich bemerkt, winkt sie dich her. Dabei klappert sie mit den Würfeln in ihrer Hand.~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #9357 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #34023 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #34024 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34025 /* ~Er setzt ein wildes, haifischähnliches Grinsen auf und seine Augen sind wie glänzende schwarze Kugeln. Seine Stimme ist tief und krächzend: "Gaoha grüßt dich ebenfalls... du bist doch gekommen, um ein Spiel zu spielen, oder?"
~ */
  IF ~~ THEN REPLY #34026 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #34027 /* ~"Ja,  ich will mit dir spielen."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34028 /* ~"Nein... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #34029 /* ~Er setzt ein wildes, haifischähnliches Grinsen auf und seine Augen sind wie glänzende schwarze Kugeln. Seine Stimme ist tief und krächzend: "Gaoha grüßt dich ebenfalls... du bist doch gekommen, um ein Spiel zu spielen, oder?"~ */
  IF ~~ THEN REPLY #34030 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #34031 /* ~"Ja,  ich will mit dir spielen."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34032 /* ~"Nein... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 9.0
  SAY #34033 /* ~Gaohas Lächeln verschwindet augenblicklich und er schüttelt den Kopf. "Kein Interesse an Fragen habe ich. Nur das Spiel... das Werfen des Würfels, das Schimmern der gewonnenen oder verlorenen Münze..." Er schüttelt die Knochenwürfel in seiner Hand. "Du... hast kein Interesse an diesen Dingen?"~ */
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #34034 /* ~"Na gut... ich spiele mit dir."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #34035 /* ~"Na gut... ich spiele mit dir."~ */ GOTO 8
  IF ~~ THEN REPLY #34036 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 9.1
  SAY #34037 /* ~Gaoha greift in seine Tunika und holt eine Münze hervor. "Diese Münze? Deine Münze." Er legt sie vor deine Füße und holt noch eine Münze hervor. "Diese Münze? Für Gaoha." Er legt sie vor seine eigenen Füße, dann hält er zwei Würfel zwischen Daumen und Zeigefinger hoch. "Die Würfel... wir werfen beide einen, ja?"~ */
  IF ~~ THEN REPLY #34038 /* ~"Erzähl weiter..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34039 /* ~"Deine Augenzahl ist höher... du kriegst beide Münzen..." Er grapscht sich die Münzen vom Boden und hält sie dir hin. "...deine. Höhere Augenzahl für Gaha?" Er steckt die Münzen schnell wieder in seine Tunika. "Meine. Beide gleiche Augenzahl? Neu würfeln. Also: wie viele Münzen werden vor deinen Füßen liegen?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #34040 /* ~"Ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 6
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60404 /* ~"Ein Kupferstück."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60405 /* ~"Fünf Kupferstücke."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60406 /* ~"Fünf Kupferstücke."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60407 /* ~"Zehn Kupferstücke."~ */ DO ~TakePartyGold(10)
~ GOTO 6
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60408 /* ~"Zehn Kupferstücke."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60409 /* ~"Fünfundzwanzig Kupferstücke."~ */ DO ~TakePartyGold(25)
~ GOTO 6
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60410 /* ~"Fünfundzwanzig Kupferstücke."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60411 /* ~"Fünfzig Kupferstücke."~ */ DO ~TakePartyGold(50)
~ GOTO 6
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60412 /* ~"Fünfzig Kupferstücke."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60413 /* ~"Hundert Kupferstücke."~ */ DO ~TakePartyGold(100)
~ GOTO 6
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60414 /* ~"Hundert Kupferstücke."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60415 /* ~"Keine. Ich will doch nicht spielen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.2 5.4 5.6 5.8 5.10
  SAY #60416 /* ~Ihr beide würfelt so lange, bis Gaoha die höhere Zahl hat. Er schnappt sich deine Münzen und steckt sie in seine Tunika. Er scheint einen Augenblick zu zögern, bevor er spricht. "Noch einmal, ja?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60417 /* ~"Warte - ist irgend etwas?"~ */ GOTO 7
  IF ~~ THEN REPLY #60418 /* ~"Okay."~ */ GOTO 8
  IF ~~ THEN REPLY #60419 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 10.0 11.0
  SAY #60420 /* ~Gaoha betrachtet dich einen Augenblick lang aufmerksam und nickt dann. "Niemals lasse ich mich zu Hashmas Unfug hinreißen... Niemals würde ich *betrügen*, Mensch. Doch wenn sich Fortuna ankündigt, sehe ich es, lese es, *erkenne* es im Gesicht eines Mannes. Doch bei dir... sehe ich gar nichts. Ich *erkenne* nichts. Ist... dir Fortuna nicht hold? Hast du kein Glück, kein Unglück? Oder bist du vielleicht deines eigenen Glückes Schmied? Ich weiß es nicht." Er steckt seine Würfel zurück in seine Tunika. "Wir können ja später vielleicht noch einmal spielen, aber für den Augenblick ist es genug."~ */
  IF ~~ THEN REPLY #60421 /* ~"Gut... leb wohl."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.1 9.2
  SAY #60422 /* ~"Und wie viele Münzen werden vor deinen Füßen liegen?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60423 /* ~"Ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60424 /* ~"Ein Kupferstück."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60425 /* ~"Fünf Kupferstücke."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60426 /* ~"Fünf Kupferstücke."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60427 /* ~"Zehn Kupferstücke."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60428 /* ~"Zehn Kupferstücke."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60429 /* ~"Fünfundzwanzig Kupferstücke."~ */ DO ~TakePartyGold(25)
~ GOTO 10
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60430 /* ~"Fünfundzwanzig Kupferstücke."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60431 /* ~"Fünfzig Kupferstücke."~ */ DO ~TakePartyGold(50)
~ GOTO 10
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60432 /* ~"Fünfzig Kupferstücke."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60433 /* ~"Hundert Kupferstücke."~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60434 /* ~"Hundert Kupferstücke."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60435 /* ~"Keine. Leb wohl."~ */ EXIT
END

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
GlobalGT("Gaoha","GLOBAL",0)
GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 9 // from:
  SAY #60436 /* ~Gaoha grinst dich mit seinen scharfen Zähnen irritierend an und schüttelt ein Paar Knochenwürfel in der Hand. "Du bist auf ein Spielchen zurückgekommen, stimmt's?"~ */
  IF ~~ THEN REPLY #60437 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #60438 /* ~"Ja, ich will mit dir spielen."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #60439 /* ~"Ja, ich will mit dir spielen."~ */ GOTO 8
  IF ~~ THEN REPLY #60440 /* ~"Nein... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.2 8.4 8.6 8.8 8.10
  SAY #60441 /* ~Ihr beide würfelt bis Gaoha die höhere Zahl wirft. Er schnappt deine Münzen, sieht sie einen Augenblick lang stirnrunzelnd an, bevor er sie in seiner Tunika verstaut. "Das reicht im Moment. Aber vielleicht spielen wir beide später noch einmal?"~ */
  IF ~~ THEN REPLY #60442 /* ~"Warum? Was ist los?"~ */ GOTO 7
  IF ~~ THEN REPLY #60443 /* ~"Leb wohl."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.3 5.5 5.7 5.9 5.11 8.1 8.3 8.5 8.7 8.9 8.11
  SAY #60444 /* ~Ihr beide würfelt, bis du die höhere Zahl wirfst. Du sammelst die Münzen auf und steckst sie ein. Gaoha nickt mit gerunzelter Stirn. "Das reicht für den Moment. Aber vielleicht spielen wir beide später noch einmal."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60445 /* ~"Warte - ist irgend etwas?"~ */ GOTO 7
  IF ~~ THEN REPLY #60446 /* ~"Leb wohl."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~  !GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 12 // from:
  SAY #60447 /* ~Gaoha grinst dich mit seinen scharfen Zähnen irritierend an. "Na, du brennst wohl auf ein Spielchen? Aber du bist zu früh zurückgekommen. Komm später wieder, dann spielen wir vielleicht noch einmal."~ */
  IF ~~ THEN REPLY #60448 /* ~"Dann leb wohl."~ */ EXIT
END
