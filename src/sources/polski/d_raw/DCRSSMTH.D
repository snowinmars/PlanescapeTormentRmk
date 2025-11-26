// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSSMTH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSSMTH~

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3168 /* ~Ten surowo wyglądający, krzepki mężczyzna obrzuca cię gniewnym spojrzeniem, gdy przerywasz mu pracę. Wygląda na raczej prostą, ale i szczerą osobę - nie tak zjadliwą jak inni z tego miasta. "Ta? Czego chcesz?"~ */
  IF ~~ THEN REPLY #3169 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #61319 /* ~"Co to za miejsce?"~ */ GOTO 7
  IF ~~ THEN REPLY #61320 /* ~"Słyszałeś coś o tym, że w Klątwie jest deva?"~ */ GOTO 8
  IF ~~ THEN REPLY #61321 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #61322 /* ~Kowal spogląda na ciebie poirytowany. "Czego to chcesz?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61344 /* ~"Skierował mnie tu twój brat z pytaniem o długi, jaki macie między sobą..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61345 /* ~"Słyszałem, że między tobą a bratem istnieją jakieś niesnaski. Chciałbym pomóc."~ */ GOTO 9
  IF ~~ THEN REPLY #61347 /* ~"Słyszałeś coś o tym, że w Klątwie jest deva?"~ */ GOTO 8
  IF ~~ THEN REPLY #61348 /* ~"Chciałbym coś kupić."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61349 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61323 /* ~"Jam Kruszypięść Malako, miejski kowal. Chcesz czegoś?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61350 /* ~"Skierował mnie tu twój brat z pytaniem o długi, jaki macie między sobą..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61351 /* ~"Słyszałem, że między tobą a bratem istnieją jakieś niesnaski. Chciałbym pomóc."~ */ GOTO 9
  IF ~~ THEN REPLY #61352 /* ~"Chciałbym zerknąć na twoje towary."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61353 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",2)
GlobalLT("Mediate","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #61324 /* ~"No? Jakież żeś postępy w tej sprawie uczynił?"~ */
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
!PartyHasItem("CrumLeg")
~ THEN REPLY #61354 /* ~"Twój brat wyraził zgodę, bym został mediatorem. Potrzebuję kopii testamentu, by ustalić, co ci w spadku przypada."~ */ DO ~GiveItem("CrumLeg",Protagonist)
SetGlobal("Mediate","GLOBAL",5)
~ GOTO 4
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
PartyHasItem("CrumLeg")
~ THEN REPLY #61355 /* ~"Twój brat wyraził zgodę, bym został mediatorem."~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 5
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
Global("Negotiate_Kester","GLOBAL",1)
~ THEN REPLY #61356 /* ~"Zdecydowałem, że powinieneś dostać całą sumę. To jedyne słuszne rozwiązanie. Jesteś starszym bratem i takie tam."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~~ THEN REPLY #61357 /* ~"Pracuję nad tym. Chcę spojrzeć na twe towary..."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61358 /* ~"Pracuję nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61325 /* ~"Cóż... No dobra. Zgadujem, że musisz to przestudiować co nieco i upewnić się, czy to tak, czy siak..." Przekazuje ci pomięty zwitek papieru. "Daj jeno znać któremuś z nas."~ */
  IF ~~ THEN REPLY #61359 /* ~"Dzięki. Powiem wam, jak już podejmę decyzję."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #61326 /* ~"Dobra. Idź no wienc i zastanów się. Daj znać jednemu z nas, jak już się zdecydujesz."~ */
  IF ~~ THEN REPLY #61360 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61327 /* ~"Zdecydował żeś się?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61361 /* ~"Podjąłem decyzję po myśli twego brata. Po przeczytaniu dokumentów spadkowych uważam za oczywiste, że to on powinien odziedziczyć wszystko."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 12
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61362 /* ~"Zdecydowałem, że ty powinieneś otrzymać gorzelnię i dostać pieniądze twego ojca. Nie ma wątpliwości, że racja stoi po twojej stronie."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61363 /* ~"Wy dwaj powinniście podzielić pieniądze pochodzące z obu interesów po połowie. Nie ma cienia wątpliwości, że tak właśnie chciał wasz ojciec."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
~ GOTO 14
  IF ~~ THEN REPLY #61364 /* ~"Żadnemu z was nie należy się spadek. Przekażę wasze dziedzictwo komuś, kto będzie potrafił odpowiednio gospodarować pieniędzmi. Żegnaj."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #61365 /* ~"Jeszcze nie. Chciałbym jednak zerknąć na twoje towary."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61366 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #61328 /* ~"To kuźnia, głupi. Chcesz czegoś, czy nie?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61367 /* ~"Skierował mnie tu twój brat z pytaniem o długi, jaki macie między sobą..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61368 /* ~"Słyszałem, że między tobą a bratem istnieją jakieś niesnaski. Chciałbym pomóc."~ */ GOTO 9
  IF ~~ THEN REPLY #61369 /* ~"Chciałbym rzucić okiem na twoje towary."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61370 /* ~"Słyszałeś coś o tym, że w Klątwie jest deva?"~ */ GOTO 8
  IF ~~ THEN REPLY #61371 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 7.3
  SAY #61329 /* ~"Co? Deva? Jeden z tych aniołowatych? Nie, nie mamy tu żadnego." Przerywa. "Chcesz czegoś ode mnie?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61372 /* ~"Skierował mnie tu twój brat z pytaniem o długi, jaki macie między sobą..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61373 /* ~"Słyszałem, że między tobą a bratem istnieją jakieś niesnaski. Chciałbym pomóc."~ */ GOTO 9
  IF ~~ THEN REPLY #61374 /* ~"Chciałbym rzucić okiem na twoje towary."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~  False()
~ THEN REPLY #61375 /* ~"Słyszałem, że między tobą a bratem istnieją jakieś niesnaski. Chciałbym pomóc."~ */ EXIT
  IF ~~ THEN REPLY #67886 /* ~"Dzięki za poświęcony mi czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 1.1 2.0 2.1 7.0 7.1 8.0 8.1
  SAY #61330 /* ~"Słyszałeś, co? Czy sprawy miendzy mną, a mym wyuczonym w ksiengach bratem, to temat plotek całego miasta? Czy mój młodszy brat rozpowiada historie przeciwko mnie? Mam być pomawiany tylko tego, że mnie edukacyja minęła? Sfery się na mnie uwzięły!" Wygraża niebu pięścią.~ */
  IF ~  !Global("Mediate","GLOBAL",2)
~ THEN REPLY #61376 /* ~"W gruncie rzeczy, to chciałbym pomóc rozwiązać tę sprawę."~ */ DO ~SetGlobal("Mediate","GLOBAL",3)
~ GOTO 10
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #66570 /* ~"W gruncie rzeczy, to chciałbym pomóc rozwiązać tę sprawę."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #61331 /* ~Spogląda na ciebie przebiegle. "Oto wienc historyja: Nasz ojczulek był świrnientym starym draniem, ale i bogatym. Kiedy mu siem odeszło, zostawił mnie i bratu kuźnię i gorzelnię... Jeno teraz brat chce mnie z tej gorzelni wygryźć, bo zawsze dawała ona wiencej brzdęku. No wienc staram się jom odzyskać. Mam testament jako dowód, alem aż tak mondry w tych sprawach nie jest i w mieście nie ufam nikomu, by przyjąć od niego pomoc. Jeśli mi pomożesz, dam ci trochę brzdęku oraz uznam twoją decyzję."~ */
  IF ~  !PartyHasItem("CrumLeg")
~ THEN REPLY #61377 /* ~"W porządku. Potrzebuję twój testament do wzglądu."~ */ DO ~GiveItem("CrumLeg",Protagonist)
~ JOURNAL #61381 /* ~Obiecałem pomóc kowalowi w jego sporze z jego rodzonym bratem, gorzelnikiem, dotyczącym podziału ojcowizny.~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #61378 /* ~"W porządku. Znajdę jakieś rozwiązanie."~ */ JOURNAL #61381 /* ~Obiecałem pomóc kowalowi w jego sporze z jego rodzonym bratem, gorzelnikiem, dotyczącym podziału ojcowizny.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61332 /* ~"Cóż... No dobra... Zgadujem, żeś to musisz to przestudiować i upewnić się, że to tak, czy siak."~ */
  IF ~~ THEN REPLY #61379 /* ~"Dzięki. Powiadomię cię o wyniku."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY #61333 /* ~"On dostaje WSZYSTKO? Twarz mu zamiera. "Bedę tedy musiał dwakroć ciężko pracować. Niech cię, obcy jeden, i te twoje zwody oszukańcze. Potrzebujesz stali, przyjdziesz tu z powrotem... Ale twe ceny bendom wyższe, niż gdzie indziej w mieście."~ */
  IF ~~ THEN REPLY #61380 /* ~"Zapamiętam to."~ */ JOURNAL #61384 /* ~Zdecydowałem, że spadek należy się w całości gorzelnikowi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.1
  SAY #61334 /* ~"Wszystko?" W oczach zapala mu się płomyk. "Wszystko?" Odtańcza krótkiego giga i potrząsa twą dłonią." Jeśli byś potrzebował porządnego kowalstwa, przychodź kiedy chcesz! A teraz czas, żeby się urżnąć co nieco!"~ */
  IF ~~ THEN REPLY #61382 /* ~"Żegnaj więc."~ */ JOURNAL #61383 /* ~Zdecydowałem, że spadek należy się w całości kowalowi. On w zamian za to obiecał, że będę miał u niego specjalny upust.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY #61335 /* ~"Mówisz tedy, że bedzie podział zysku z obu interesów, ta? Toż to mi bardzo na rękę. Dobrześ się dla mnie spisał, przyjacielu. Jakbyś potrzebował porządnego kowalstwa, przychodź."~ */
  IF ~~ THEN REPLY #61385 /* ~"Dobrze. Żegnaj."~ */ JOURNAL #61386 /* ~W sprawie spadku zdecydowałem, że bracia powinni dzielić się dochodami z obu interesów,~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY #61336 /* ~"CO? Ty obślizły, podły, złodziejski gnojku! Zjeżdżaj z mojej kuźni. WON!"~ */
  IF ~~ THEN REPLY #61387 /* ~"Żegnaj..."~ */ JOURNAL #61388 /* ~Żadnemu z braci nie przyznałem prawa do spadku. Żaden z nich nie zasłużył na te pieniądze.~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",7)
~ THEN BEGIN 16 // from:
  SAY #61337 /* ~"Wróciłeś co? Masz jakąś robotę, co to ją chcesz mieć wykonaną?"~ */
  IF ~~ THEN REPLY #61389 /* ~"Zobaczmy, co tam masz..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61390 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",8)
~ THEN BEGIN 17 // from:
  SAY #61338 /* ~"Pszyszedłeś żeś, uczciwy kupcze? Zerknijmy, czy mogę ci w zamian uczciwą wymianę zaoferować."~ */
  IF ~~ THEN REPLY #61391 /* ~"Zobaczmy, co tam masz..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61392 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #61339 /* ~"Wrócił żeś, by się gapić na tego, co go zrujnowałeś, co? Czego chcesz?"~ */
  IF ~~ THEN REPLY #61342 /* ~"Zobaczmy, co tam masz."~ */ DO ~StartStore("Crumple3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61343 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",8)
~ THEN BEGIN 19 // from:
  SAY #61340 /* ~"Won z mojego sklepu, ty macherze jeden. Nic tu dziś nie załatwisz."~ */
  IF ~~ THEN REPLY #61341 /* ~"Dobrze. Żegnaj."~ */ EXIT
END
