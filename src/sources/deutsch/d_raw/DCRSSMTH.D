// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSSMTH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSSMTH~

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3168 /* ~Dieser verdrießlich wirkende, kräftige Mann funkelt dich an, als du ihn bei seiner Arbeit unterbrichst. Er scheint etwas langsam, aber ernsthaft zu sein - nicht so giftig wie die anderen in dieser Stadt. "Ja? Was willst du?"~ */
  IF ~~ THEN REPLY #3169 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #61319 /* ~"Was ist das für ein Ort?"~ */ GOTO 7
  IF ~~ THEN REPLY #61320 /* ~"Hast du irgend etwas über einen Deva in Verdammnis gehört?"~ */ GOTO 8
  IF ~~ THEN REPLY #61321 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #61322 /* ~Der Schmied blickt dich irritiert an. "Was willst du diesmal?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61344 /* ~"Dein Bruder schickt mich, wegen einer Schuldenfrage zwischen euch beiden..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61345 /* ~"Ich habe gehört, es gibt Schwierigkeiten zwischen dir und deinem Bruder. Ich würde gerne helfen."~ */ GOTO 9
  IF ~~ THEN REPLY #61347 /* ~"Hast du irgend etwas über einen Deva in Verdammnis gehört?"~ */ GOTO 8
  IF ~~ THEN REPLY #61348 /* ~"Ich möchte etwas kaufen."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61349 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61323 /* ~"Ich bin Dellenschlag Malako, der Schmied der Stadt. Willst du was von mir?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61350 /* ~"Dein Bruder schickt mich, wegen einer Schuldenfrage zwischen euch beiden..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61351 /* ~"Ich habe gehört, es gibt Schwierigkeiten zwischen dir und deinem Bruder. Ich würde gerne helfen."~ */ GOTO 9
  IF ~~ THEN REPLY #61352 /* ~"Ich möchte mir gerne deine Ware ansehen."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61353 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",2)
GlobalLT("Mediate","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #61324 /* ~"Also? Wie ist dein Fortschritt bei dieser Sache?"~ */
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
!PartyHasItem("CrumLeg")
~ THEN REPLY #61354 /* ~"Dein Bruder hat zugestimmt, daß ich vermittle. Ich brauche dein Exemplar des Vermächtnisses, um dein Erbe zu bestimmen."~ */ DO ~GiveItem("CrumLeg",Protagonist)
SetGlobal("Mediate","GLOBAL",5)
~ GOTO 4
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
PartyHasItem("CrumLeg")
~ THEN REPLY #61355 /* ~"Dein Bruder hat auch zugestimmt, daß ich vermittle."~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 5
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
Global("Negotiate_Kester","GLOBAL",1)
~ THEN REPLY #61356 /* ~"Ich habe entschieden, daß du das gesamte Geld bekommen sollst. Das ist nur fair, du bist schließlich auch der ältere Bruder."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~~ THEN REPLY #61357 /* ~"Es wird so langsam. Ich muß deine Ware sehen..."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61358 /* ~"Es wird so langsam. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61325 /* ~"Nun... in Ordnung. Ich nehm an, studier es gut und guck, ob alles in Ordnung ist." Er reicht dir einen verknitterten Stapel Papier. "Sag einfach einem von uns Bescheid."~ */
  IF ~~ THEN REPLY #61359 /* ~"Danke. Ich lasse es dich wissen, wenn ich eine Entscheidung getroffen habe."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #61326 /* ~"Gut. Dann zieh los und überleg dir, was du willst. Sag einem von uns Bescheid, wenn du dich entschieden hast."~ */
  IF ~~ THEN REPLY #61360 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61327 /* ~"Hast du dich schon entschieden?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61361 /* ~"Ich habe zugunsten deines Bruders entschieden. Nach der Lektüre des Vermächtnisses bin ich eindeutig der Meinung, daß er das gesamte Erbe bekommen sollte."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 12
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61362 /* ~"Ich habe entschieden, daß du die Destillerie und das Geld deines Vaters bekommen sollst. Es ist eindeutig, daß du im Recht bist."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61363 /* ~"Jeder von euch beiden sollte die Hälfte des Geldes aus den zwei Geschäften bekommen. Es ist eindeutig, daß euer Vater es so gewollt hat."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
~ GOTO 14
  IF ~~ THEN REPLY #61364 /* ~"Keiner von euch verdient dieses Erbe. Ich werde eure Vermächtnisse an jemanden weitergeben, der das Geld sinnvoll verwendet. Leb wohl."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #61365 /* ~"Noch nicht. Aber ich würde gern einen Blick auf deine Waren werfen."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61366 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #61328 /* ~"Das ist eine Schmiede, du Tölpel. Willst du was oder nicht?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61367 /* ~"Dein Bruder schickt mich, wegen einer Schuldenfrage zwischen euch beiden..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61368 /* ~"Ich habe gehört, es gibt Schwierigkeiten zwischen dir und deinem Bruder. Ich würde gerne helfen."~ */ GOTO 9
  IF ~~ THEN REPLY #61369 /* ~"Ich würde gerne einen Blick auf deine Ware werfen."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61370 /* ~"Hast du irgend etwas über einen Deva in Verdammnis gehört?"~ */ GOTO 8
  IF ~~ THEN REPLY #61371 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 7.3
  SAY #61329 /* ~"Ein was? Deva? Ist das nicht so ein Engelding? Nein, wir haben hier keinen." Er hält inne. "Willst du was von mir?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61372 /* ~"Dein Bruder schickt mich, wegen einer Schuldenfrage zwischen euch beiden..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61373 /* ~"Ich habe gehört, es gibt Schwierigkeiten zwischen dir und deinem Bruder. Ich würde gerne helfen."~ */ GOTO 9
  IF ~~ THEN REPLY #61374 /* ~"Ich würde gerne einen Blick auf deine Ware werfen."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~  False()
~ THEN REPLY #61375 /* ~"Ich habe gehört, es gibt Schwierigkeiten zwischen dir und deinem Bruder. Ich würde gerne helfen."~ */ EXIT
  IF ~~ THEN REPLY #67886 /* ~"Danke für deine Zeit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 1.1 2.0 2.1 7.0 7.1 8.0 8.1
  SAY #61330 /* ~"Ach, hast du das? Sind meine Angelegenheiten mit meinem buchgelehrten Bruder also schon Stadtgespräch? Verbreitet mein jüngerer Bruder schlechte Geschichten über mich? Soll ich erschlagen werden, nur weil ich nicht gebildet bin? Die Ebenen sollen gegen mich sein!" Er schüttelt eine Faust Richtung Himmel.~ */
  IF ~  !Global("Mediate","GLOBAL",2)
~ THEN REPLY #61376 /* ~"Eigentlich bin ich daran interessiert, die Angelegenheit zu bereinigen."~ */ DO ~SetGlobal("Mediate","GLOBAL",3)
~ GOTO 10
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #66570 /* ~"Eigentlich bin ich daran interessiert, die Angelegenheit zu bereinigen."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #61331 /* ~Er sieht dich verschlagen an. "Also, hier ist die Geschichte: Unser Vater war ein übergeschnappter alter Bastard, aber ein reicher. Als er starb, hat er uns seine Schmiede und seine Destillerie hinterlassen... Aber jetzt versucht mein Bruder, mich aus der Destillerie zu drängen, die immer mehr Münzen eingebracht hat, und ich versuch, sie zurückzubekommen. Ich hab ein Vermächtnis, das das beweist, aber ich kenn mich mit solchen Sachen nicht so gut aus, und ich trau keinem in dieser Stadt, mir zu helfen. Hilf du mir, dann geb ich dir Klimper, und ich halte mich an deine Entscheidung."~ */
  IF ~  !PartyHasItem("CrumLeg")
~ THEN REPLY #61377 /* ~"In Ordnung. Ich brauche dein Vermächtnis, um es durchzusehen."~ */ DO ~GiveItem("CrumLeg",Protagonist)
~ JOURNAL #61381 /* ~Ich habe eingewilligt, dem Hufschmied in seinem Streit mit seinem Bruder, dem Schnapsbrenner, wegen des Erbes ihres Vaters behilflich zu sein.~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #61378 /* ~"In Ordnung. Ich werde mit deinem Bruder reden. Leb wohl."~ */ JOURNAL #61381 /* ~Ich habe eingewilligt, dem Hufschmied in seinem Streit mit seinem Bruder, dem Schnapsbrenner, wegen des Erbes ihres Vaters behilflich zu sein.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61332 /* ~"Nun... in Ordnung. Ich nehm an, studier es gut und guck, ob alles in Ordnung ist." Er reicht dir einen verknitterten Stapel Papier.~ */
  IF ~~ THEN REPLY #61379 /* ~"Danke. Ich lasse dich wissen, was passiert."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY #61333 /* ~"Er bekommt ALLES?" Er läßt den Kopf hängen. "Dann werde ich doppelt so hart arbeiten müssen. Verflucht sollst du sein, Fremder, und deine Betrügereien. Wenn du Metallarbeiten brauchst, komm wieder... Aber die Preise werden für dich höher sein als irgendwo sonst in der Stadt."~ */
  IF ~~ THEN REPLY #61380 /* ~"Ich werde dran denken."~ */ JOURNAL #61384 /* ~Ich habe die Frage des Erbes zugunsten des Schnapsbrenners entschieden.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.1
  SAY #61334 /* ~"Alles?" Seine Augen leuchten auf. "Alles?" Er macht einen kleinen Tanz und schüttelt dir die Hand. "Wenn du Schmiedearbeiten bester Qualität brauchst, mein Freund, dann kannst du jederzeit hierher kommen! Jetzt ist es erstmal Zeit, sich richtig zu befuseln!"~ */
  IF ~~ THEN REPLY #61382 /* ~"Dann leb wohl."~ */ JOURNAL #61383 /* ~Ich habe die Frage des Erbes zugunsten des Hufschmieds entschieden. Er will mich für meine Arbeit belohnen, sagt er.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY #61335 /* ~"Du meinst, die Erträge aus beiden Geschäften aufteilen, ja? In dem Fall bin ich dafür. Du hast es mir gut hingebogen, Freund. Wenn du mal Metallarbeiten bester Qualität brauchst, dann komm hierher."~ */
  IF ~~ THEN REPLY #61385 /* ~"Mach ich. Leb wohl."~ */ JOURNAL #61386 /* ~Ich habe die Frage des Erbes so entschieden, daß die beiden den Nachlaß teilen sollen.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY #61336 /* ~"WAS? Du verdammter, lausiger, diebischer Bastard! Raus aus meiner Schmiede! RAUS!"~ */
  IF ~~ THEN REPLY #61387 /* ~"Leb wohl."~ */ JOURNAL #61388 /* ~Ich habe die Frage des Erbes zugunsten keines von beiden entschieden. Sie verdienen beide das Geld nicht.~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",7)
~ THEN BEGIN 16 // from:
  SAY #61337 /* ~"Du bist wieder da? Soll was für dich angefertigt werden?"~ */
  IF ~~ THEN REPLY #61389 /* ~"Laß sehen, was du hast..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61390 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",8)
~ THEN BEGIN 17 // from:
  SAY #61338 /* ~"Du bist gekommen, was, Fair-Händler? Mal sehen, ob ich dir im Gegenzug auch einen fairen Handel anbieten kann."~ */
  IF ~~ THEN REPLY #61391 /* ~"Laß sehen, was du hast..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61392 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #61339 /* ~"Bist du zurückgekommen, um dir den Mann anzusehen, den du ruiniert hast? Was willst du?"~ */
  IF ~~ THEN REPLY #61342 /* ~"Dann zeig mal, was du hast."~ */ DO ~StartStore("Crumple3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61343 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",8)
~ THEN BEGIN 19 // from:
  SAY #61340 /* ~"Raus aus meinem Laden, du lausiger Querhändler. Hier machst du heute keine Geschäfte."~ */
  IF ~~ THEN REPLY #61341 /* ~"Na gut. Leb wohl."~ */ EXIT
END
