// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOPPER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOPPER~

IF ~  Global("Coppereyes","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2474 /* ~Vor dir steht eine große, stumme Gestalt. Sie könnte problemlos als Statue durchgehen, obwohl du dich angesichts der tiefen Furchen im Gesicht und auf der Stirn fragst, ob der Bildhauer mit dem Meißel nicht etwas zu weit gegangen ist, als er die Gesichtszüge formte. Man könnte ihn auf gut über fünfzig schätzen... aber wieviel über fünfzig, ist schwer zu sagen. Als er sich langsam zu dir umdreht, siehst du den matten Kupferglanz in seinen Augen.~ */
  IF ~~ THEN REPLY #2475 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Coppereyes","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2476 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~  Global("Coppereyes","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.0
  SAY #2477 /* ~Altes Kupferauge starrt dich an. Seine Augen sind in den schwarzen Augenhöhlen nur schwer erkennbar, doch sie scheinen kupferfarben zu glänzen.~ */
  IF ~  Global("Know_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #2478 /* ~"Ich würde gerne einen der Todesverträge unterzeichnen."~ */ GOTO 2
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2479 /* ~"Ich möchte den Todesvertrag rückgängig machen, den ich mit dir abgeschlossen hatte."~ */ GOTO 13
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2480 /* ~"Gib mir den Todesvertrag zurück, den ich unterzeichnet habe, oder ich nehme ihn mir mit Gewalt."~ */ GOTO 7
  IF ~~ THEN REPLY #12003 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #12004 /* ~"Meine Schuld... Ich dachte, du wärst jemand anders. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #2481 /* ~Kupferauge nickt kaum wahrnehmbar, und greift mit beiden Händen langsam in seine Staubmenschenrobe. Mit der rechten Hand zieht er ein Täschchen aus Menschenhaut hervor. Mit der rechten Hand zieht er ein Stück Pergament hervor, das um einen Fingerknochengriffel gewickelt ist. Er legt beides langsam vor dir auf dem Tisch ab.~ */
  IF ~~ THEN REPLY #2482 /* ~Nimm das Pergament in die Hand, und sieh es dir genau an.~ */ GOTO 3
  IF ~~ THEN REPLY #2484 /* ~Unterzeichne das Pergament.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2485 /* ~Sieh dir den Beutel genau an.~ */ GOTO 8
  IF ~~ THEN REPLY #2486 /* ~Nimm den Beutel.
~ */ GOTO 9
  IF ~~ THEN REPLY #2493 /* ~"Ich habe meine Meinung geändert. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 2.0 3.3 8.0 9.0
  SAY #2487 /* ~Es ist ein Vertrag, der die Staubmenschen berechtigt, den Körper des Unterzeichners in Besitz zu nehmen, nachdem dieser die Ewige Grenze überschritten hat. Im Gegenzug erhält der Unterzeichner eine Geldsumme von den Staubmenschen, deren Höhe zum Zeitpunkt des Unterzeichnens vereinbart wird. Du nimmst an, daß die Summe in der Tasche der Betrag ist, den du bekommst, wenn du den Vertrag unterzeichnest.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,50,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2488 /* ~Vertausch das Pergament mit dem anderen Vertrag und unterzeichne dann.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
DestroyItemObject("FalseCon",Protagonist,FALSE)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #2489 /* ~Vertausch das Pergament mit dem anderen Vertrag und unterzeichne dann.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,49,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2490 /* ~Vertausch das Pergament mit dem anderen Vertrag und unterzeichne dann.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #2491 /* ~Sieh dir das Pergament genau an.~ */ GOTO 3
  IF ~~ THEN REPLY #2492 /* ~Unterzeichne das Pergament.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2494 /* ~Sieh dir den Beutel genau an.~ */ GOTO 8
  IF ~~ THEN REPLY #2495 /* ~Nimm den Beutel.~ */ GOTO 9
  IF ~~ THEN REPLY #12008 /* ~"Ich habe meine Meinung geändert. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY #2496 /* ~Kupferauge läßt sich nicht anmerken, ob er den Tausch bemerkt hat. Als du fertig unterzeichnet hast, weist dich Kupferauge mit einem Kopfnicken auf die Tasche zu seiner Linken hin. Als du deine Hand nach der Tasche ausstreckst und die hundert Kupfermünzen nachzählst, verschwindet der Vertragsbogen vom Tisch in den Falten seiner Robe.~ */
  IF ~~ THEN REPLY #2498 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 10
  IF ~~ THEN REPLY #2499 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #2497 /* ~Kupferauge läßt sich nicht anmerken, ob er den Tausch bemerkt hast. Als du fertig unterzeichnet hast, weist Kupferauge mit einem Kopfnicken auf die Tasche zu seiner Linken hin. Er läßt den Vertragsbogen auf dem Tisch liegen, als wolle er dich auffordern, ihn noch einmal durchzusehen... und zu deinem Entsetzen stellst du fest, daß das Täuschungsmanöver nicht erfolgreich war. Die Staubmenschen besitzen nun deinen Körper nach dem Tod.~ */
  IF ~~ THEN REPLY #2500 /* ~"Ähh... einen Moment mal... könnte ich den Vertrag wohl nochmal sehen?"~ */ GOTO 6
  IF ~~ THEN REPLY #2501 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2502 /* ~Der Vertragsbogen verschwindet in den Falten der Robe von Kupferauge. Er weist dich mit einem Kopfnicken auf die Tasche hin.~ */
  IF ~~ THEN REPLY #2503 /* ~"Gib mir diesen Vertrag, oder ich bring dich um!"~ */ GOTO 7
  IF ~~ THEN REPLY #2504 /* ~Nimm den Beutel und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.0 13.0
  SAY #2505 /* ~Kupferauge reagiert nicht, aber plötzlich wird der Raum ganz dunkel...~ */
  IF ~~ THEN REPLY #2506 /* ~"Was zu--?!"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.5 8.2 9.2
  SAY #2507 /* ~Die Tasche ist voller Kupfermünzen. Es scheinen ungefähr einhundert an der Zahl zu sein.~ */
  IF ~~ THEN REPLY #2508 /* ~Nimm das Pergament in die Hand, und sieh es dir genau an.~ */ GOTO 3
  IF ~~ THEN REPLY #2509 /* ~Unterzeichne das Pergament.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2510 /* ~Sieh dir den Beutel noch einmal an.~ */ GOTO 8
  IF ~~ THEN REPLY #2511 /* ~Nimm den Beutel.~ */ GOTO 9
  IF ~~ THEN REPLY #2512 /* ~"Ich habe meine Meinung geändert. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.3 3.6 8.3 9.3
  SAY #2513 /* ~Als du deine Hand nach der Tasche ausstreckst, verschwindet sie vom Tisch. Du blinzelst, und sie ist wieder da. Kupferauge starrt dich immer noch an.~ */
  IF ~~ THEN REPLY #2514 /* ~Nimm das Pergament in die Hand, und sieh es dir genau an.~ */ GOTO 3
  IF ~~ THEN REPLY #2515 /* ~Unterzeichne das Pergament.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2516 /* ~Sieh dir den Beutel genau an.~ */ GOTO 8
  IF ~~ THEN REPLY #2517 /* ~Greif noch einmal nach dem Beutel.~ */ GOTO 9
  IF ~~ THEN REPLY #2518 /* ~"Ich habe meine Meinung geändert. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 1.3 4.0 11.0
  SAY #2519 /* ~Kupferauge sagt nichts.~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2522 /* ~"Ich würde gerne den Todesvertrg unterzeichnen."~ */ GOTO 2
  IF ~~ THEN REPLY #2523 /* ~"Ähh... schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 3.4 8.1 9.1
  SAY #2520 /* ~Als du alles unterzeichnet hast, weist Kupferauge mit einem Kopfnicken auf die Tasche zu seiner Linken hin. Dabei verschwindet der Vertragsbogen vom Tisch in den Falten seiner Robe.~ */
  IF ~~ THEN REPLY #2521 /* ~"Ich hätte da ein paar Fragen, die ich stellen wollte..."~ */ GOTO 10
  IF ~~ THEN REPLY #2526 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 3.7 8.4 9.4
  SAY #2524 /* ~Kupferauge sagt nichts, sondern ergreift einfach die Tasche und den Vertragsbogen und läßt sie in den Falten seiner Robe verschwinden.~ */
  IF ~~ THEN REPLY #2525 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #12005 /* ~Kupferauge sagt nichts.~ */
  IF ~~ THEN REPLY #12006 /* ~"Dies ist deine letzte Chance. Gib mir den Vertrag zurück, oder du wirst es bereuen."~ */ GOTO 7
  IF ~~ THEN REPLY #12007 /* ~"Ach... vergiß es. Leb wohl."~ */ EXIT
END
