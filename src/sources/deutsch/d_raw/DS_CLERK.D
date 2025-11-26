// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_CLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_CLERK~

IF ~  Global("S_Stone","AR0603",0)
~ THEN BEGIN 0 // from:
  SAY #46336 /* ~Die sanfte Stimme dieses Mannes paßt zu seiner ruhigen, vornehmen Art. "Sei gegrüßt. Bist du hier, um einen unserer Sinnessteine zu benutzen?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46337 /* ~"Ja."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46359 /* ~"Ja."~ */ GOTO 6
  IF ~~ THEN REPLY #46360 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #46361 /* ~"Nein, bin ich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 20.2
  SAY #46362 /* ~Der Mann nickt. "Dies hier ist das öffentliche Sinnsorium. In diesen Räumen befinden sich die Sinnessteine. Jeder Stein vermittelt dem Benutzer eine bestimmte Empfindung oder eine Kombination von Empfindungen. Sinnsaten können sie beliebig oft benutzen, während Besucher eine geringe Gebühr bezahlen müssen. Beantwortet dies deine Fragen?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46363 /* ~"So ziemlich. Ich möchte jetzt einen dieser Sinnessteine benutzen."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46364 /* ~"So ziemlich. Ich möchte jetzt einen dieser Sinnessteine benutzen."~ */ GOTO 6
  IF ~~ THEN REPLY #46365 /* ~"Nein..."~ */ GOTO 2
  IF ~~ THEN REPLY #46366 /* ~"Mehr oder weniger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #46367 /* ~"Dann kann ich dir nicht helfen. Es sei denn, du möchtest die Steine benutzen...?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46368 /* ~"Ja."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46369 /* ~"Ja."~ */ GOTO 6
  IF ~~ THEN REPLY #46370 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0 4.7 20.0
  SAY #46371 /* ~Der Mann lächelt und erklärt dir einige der Empfindungen, die dir für dein Sinnesabenteuer zur Verfügung stehen.

"Und, ist was Passendes für dich dabei?"
~ */
  IF ~~ THEN REPLY #46372 /* ~"Ich nehm den 'Unvermeidbaren Schmerz'."~ */ DO ~SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46373 /* ~"Ich nehm die 'Zarte Liebe'."~ */ DO ~SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46374 /* ~"Ich nehm die 'Tödliche Langeweile'."~ */ DO ~SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46375 /* ~"Ich nehm das 'Wahre Wunder'."~ */ DO ~SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46376 /* ~"Ich nehm die 'Verzehrende Ungeduld'."~ */ DO ~SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46377 /* ~"Ich nehm das 'Erschöpfte Aufgeben'."~ */ DO ~SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46378 /* ~"Ich nehm die 'Übernatürliche Lust'."~ */ DO ~SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46379 /* ~"Was gibt's denn sonst noch?"~ */ GOTO 4
  IF ~~ THEN REPLY #46380 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.7 5.6
  SAY #46381 /* ~Der Mann nickt und erläutert dir einige der Empfindungen, die dir zur Verfügung stehen.

"Und, ist was Passendes für dich dabei?"
~ */
  IF ~~ THEN REPLY #46382 /* ~"Ich nehm die 'Psychose'."~ */ DO ~SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46383 /* ~"Ich nehm die 'Schwärende Eifersucht'."~ */ DO ~SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46384 /* ~"Ich nehm die 'Bittere Abscheu'."~ */ DO ~SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46385 /* ~"Ich nehm die 'Reine Freude'."~ */ DO ~SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46386 /* ~"Ich nehm den 'Rausch der Angst'."~ */ DO ~SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46387 /* ~"Ich nehm die 'Wilde Entschlossenheit'."~ */ DO ~SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46388 /* ~"Ich nehm die 'Völlige Verwirrung'."~ */ DO ~SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46389 /* ~"Was hießen noch gleich die letzten paar?"~ */ GOTO 3
  IF ~~ THEN REPLY #46390 /* ~"Gibt es sonst noch welche?"~ */ GOTO 5
  IF ~~ THEN REPLY #46391 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.8
  SAY #46392 /* ~Der Mann nickt, lächelt und erklärt dir die letzte der derzeit verfügbaren Empfindungen.

"Und, ist was Passendes für dich dabei?"
~ */
  IF ~~ THEN REPLY #46393 /* ~"Ich nehm die 'Schreckliche Reue'."~ */ DO ~SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46394 /* ~"Ich nehm 'Schock und aufkeimende Rachsucht'."~ */ DO ~SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46395 /* ~"Ich nehm das 'Allmählich aufkommende Grauen'."~ */ DO ~SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46396 /* ~"Ich nehm die 'Unbeschreibliche Frustration'."~ */ DO ~SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46397 /* ~"Ich nehm das 'Streng gehütete Geheimnis'."~ */ DO ~SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46398 /* ~"Ich nehm die 'Lykanthropie'."~ */ DO ~SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46399 /* ~"Wie hießen noch gleich die letzten paar Empfindungen?"~ */ GOTO 4
  IF ~~ THEN REPLY #46400 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1 1.1 2.1 20.1
  SAY #46401 /* ~"Im Augenblick sind über zehn Standard-Empfindungen und sechs 'extravagante' Empfindungen verfügbar. Eine Standard-Empfindung kostet zehn Kupfermünzen. Die extravaganten kosten fünzig das Stück. Möchtest du, daß ich dir was über die Standard- oder die extravaganten Empfindungen erzähle?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #46402 /* ~"Die Standard-Empfindungen..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46403 /* ~"Die extravaganten..."~ */ GOTO 9
  IF ~~ THEN REPLY #46404 /* ~"Nein, über keine von beiden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.7 9.6
  SAY #46405 /* ~Der Mann lächelt und erklärt dir einige der Empfindungen, die dir für dein Sinnesabenteuer zur Verfügung stehen.

"Und, ist was Passendes für dich dabei?"
~ */
  IF ~~ THEN REPLY #46406 /* ~"Ich nehm den 'Unvermeidbaren Schmerz'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46407 /* ~"Ich nehm die 'Zarte Liebe'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46408 /* ~"Ich nehm die 'Tödliche Langeweile'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46409 /* ~"Ich nehm das 'Wahre Wunder'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46410 /* ~"Ich nehm die 'Verzehrende Ungeduld'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46411 /* ~"Ich nehm das 'Erschöpfte Aufgeben'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46412 /* ~"Ich nehm die 'Übernatürliche Lust'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46413 /* ~"Erzähl mir was über die anderen Empfindungen..."~ */ GOTO 8
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46414 /* ~"Wie waren die extravaganten noch gleich?"~ */ GOTO 9
  IF ~~ THEN REPLY #46415 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7
  SAY #46416 /* ~Der Mann nickt und erklärt dir einige Empfindungen, die dir zur Verfügung stehen.

"Und, ist was Passendes für dich dabei?"
~ */
  IF ~~ THEN REPLY #46417 /* ~"Ich nehm die 'Psychose'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46418 /* ~"Ich nehm die 'Schwärende Eifersucht'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46419 /* ~"Ich nehm die 'Bittere Abscheu'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46420 /* ~"Ich nehm die 'Reine Freude'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46421 /* ~"Ich nehm den 'Rausch der Angst'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46422 /* ~"Ich nehm die 'Wilde Entschlossenheit'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46423 /* ~"Ich nehm die 'Völlige Verwirrung'."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46424 /* ~"Halt... Beschreib mir noch mal die letzten paar..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46425 /* ~"Erzählst du mir doch lieber was über die extravaganten Empfindungen?"~ */ GOTO 9
  IF ~~ THEN REPLY #46426 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.8 8.8
  SAY #46427 /* ~Der Mann nickt, lächelt und erklärt dir die etwas komplizierteren Empfindungen. 

"Und, ist was Passendes für dich dabei?"
~ */
  IF ~~ THEN REPLY #46428 /* ~"Ich nehm die 'Schreckliche Reue'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46429 /* ~"Ich nehm 'Schock und aufkeimende Rachsucht'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46430 /* ~"Ich nehm das 'Allmählich aufkommende Grauen'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46431 /* ~"Ich nehm die 'Unbeschreibliche Frustration'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46432 /* ~"Ich nehm das 'Streng gehütete Geheimnis'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46433 /* ~"Ich nehm die 'Lykanthropie'."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46434 /* ~"Erzählst du mir doch lieber was über die Standard-Empfindungen?"~ */ GOTO 7
  IF ~~ THEN REPLY #46435 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 5.3 9.0 9.3
  SAY #46436 /* ~"Eine gute Wahl. Dein Stein befindet sich in einer der größeren Kammern, vom Treppenhaus der dritte Raum entgegen dem Uhrzeigersinn. Er ist rötlich-orange."~ */
  IF ~~ THEN REPLY #46437 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.4 9.1 9.4
  SAY #46438 /* ~"Großartig. Dein Stein befindet sich in einer der größeren Kammern, vom Treppenhaus der zweite Raum entgegen dem Uhrzeigersinn. Er ist violett."~ */
  IF ~~ THEN REPLY #46439 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2 5.5 9.2 9.5
  SAY #46440 /* ~"Wunderbar. Dein Stein befindet sich in einer der größeren Kammern, vom Treppenhaus der erste Raum entgegen dem Uhrzeigersinn. Er ist blau-violett."~ */
  IF ~~ THEN REPLY #46441 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 4.0 7.0 8.0
  SAY #46442 /* ~"Gut. Dein Stein befindet sich in einer der kleineren Kammern, vom Treppenhaus der erste Raum im Uhrzeigersinn. Er ist grünlich-gelb."~ */
  IF ~~ THEN REPLY #46443 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.1 4.1 7.1 8.1
  SAY #46444 /* ~"Eine gute Wahl. Dein Stein befindet sich in einer der kleineren Kammern, vom Treppenhaus der zweite Raum im Uhrzeigersinn. Er ist hellblau."~ */
  IF ~~ THEN REPLY #46445 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.2 4.2 7.2 8.2
  SAY #46446 /* ~"Eine gute Wahl. Dein Stein befindet sich in einer der kleineren Kammern, vom Treppenhaus der dritte Raum im Uhrzeigersinn. Er ist violett."~ */
  IF ~~ THEN REPLY #46447 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.3 4.3 7.3 8.3
  SAY #46448 /* ~"Eine gute Wahl. Dein Stein befindet sich in einer der kleineren Kammern, vom Treppenhaus der vierte Raum im Uhrzeigersinn. Er ist grünlich-gelb."~ */
  IF ~~ THEN REPLY #46449 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.4 4.4 7.4 8.4
  SAY #46450 /* ~"Eine gute Wahl. Dein Stein befindet sich in einer der kleineren Kammern, vom Treppenhaus der fünfte Raum im Uhrzeigersinn. Er ist rötlich-orange."~ */
  IF ~~ THEN REPLY #46451 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.5 4.5 7.5 8.5
  SAY #46452 /* ~"Eine gute Wahl. Dein Stein befindet sich in einer der kleineren Kammern, vom Treppenhaus der sechste Raum im Uhrzeigersinn. Er ist violett."~ */
  IF ~~ THEN REPLY #46453 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.6 4.6 7.6 8.6
  SAY #46454 /* ~"Eine gute Wahl. Dein Stein befindet sich in einer der kleineren Kammern, vom Treppenhaus der siebte Raum im Uhrzeigersinn. Er ist hellblau."~ */
  IF ~~ THEN REPLY #46455 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("S_Stone","AR0603",0)
~ THEN BEGIN 20 // from:
  SAY #46456 /* ~"Hast du das Sinnesabenteuer genossen? Kann ich sonst noch etwas für dich tun?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46457 /* ~"Noch eine Runde, bitte."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46458 /* ~"Noch eine Runde, bitte."~ */ GOTO 6
  IF ~~ THEN REPLY #46459 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #46460 /* ~"Nichts. Leb wohl."~ */ EXIT
END
