// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIA~

IF ~  Global("BariA","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #12341 /* ~Podobnie jak ciało tej istoty jest skrzyżowaniem człowieka i barana, jego głowa również - płaski, szeroki nos, kozie uszy i para zakręconych rogów. W brudnej sierści wygolone są skomplikowane wzory, a z uprzęży na pasie zwisa mu potężne drzewce o czterech krawędziach. Zdaje się ciebie nie zauważać.~ */
  IF ~~ THEN REPLY #12469 /* ~"Witaj..."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ GOTO 3
  IF ~~ THEN REPLY #12470 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  Global("BariA","AR0400",1)
~ THEN BEGIN 1 // from:
  SAY #12342 /* ~"Znowu sie spotykamy, wendrowcze. Czy jest cosz, czego ode mnie chcialesz?"~ */
  IF ~~ THEN REPLY #12471 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12472 /* ~"Nie, nieważne. Żegnaj."~ */ EXIT
END

IF ~  Global("BariA","AR0400",3)
~ THEN BEGIN 2 // from:
  SAY #12383 /* ~"Ty! Powiedzialem: nigdy, *nigdy* jusz nie wchodz mi w drogie! Przygotuj sie, dwunogi..."~ */
  IF ~~ THEN REPLY #12473 /* ~"Ale..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12474 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #12384 /* ~Odwraca się do ciebie bardzo szybko, jego czarne i podejrzliwe oczy spoczywają na tobie. Głos ma głęboki i gardłowy, nie do końca ludzki i z mocnym akcentem. "Czego chcesz, dwunogi..." Jego dłoń zaciska się na drzewcu.~ */
  IF ~~ THEN REPLY #12475 /* ~"Tylko z tobą porozmawiać. Mam kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #12476 /* ~"Jeśli szukasz guza, to właśnie go znalazłeś..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #12477 /* ~"Nic, nieważne. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0 8.0
  SAY #12385 /* ~Zdaje się uspokajać. Dłoń opada mu z broni. Wciąż jednak trzyma się od ciebie na odległość...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0 10.0 12.2 13.2 14.1 15.2 16.2 17.1 18.1 19.5 20.1 21.2 22.0 23.0 24.0 25.2 26.1
  SAY #12386 /* ~"O co chcesz mnie spytacz?"~ */
  IF ~~ THEN REPLY #12478 /* ~"Dlaczego jesteś taki nieufny?"~ */ GOTO 15
  IF ~~ THEN REPLY #12479 /* ~"Opowiedz mi o tym mieście."~ */ GOTO 12
  IF ~~ THEN REPLY #12480 /* ~"Opowiedz mi o tych slumsach dookoła."~ */ GOTO 19
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12481 /* ~"Czy możesz powiedzieć mi coś o Pani Bólu?"~ */ GOTO 24
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12482 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12483 /* ~"Zgubiłem dziennik. Czy nie widziałeś go może, albo nie wiesz, gdzie mógłbym go znaleźć?"~ */ GOTO 23
  IF ~~ THEN REPLY #12484 /* ~"Właściwie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #12387 /* ~W jednej chwili wydostaje on drzewce z uprzęży i jest gotowy do walki. "Zanim skrzyszujemy rogi, chcialbym tylko wiedziecz, czemu mnie zaatakowalesz, dwunogi." Jego podkute kopyta krzeszą na ulicy iskry, podczas gdy on przesuwa swój ciężar do przodu i do tyłu.~ */
  IF ~~ THEN REPLY #12485 /* ~"Nie miałem zamiaru..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12486 /* ~"Ja? To *ty* groziłeś *mi*."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12487 /* ~"Ja? To *ty* groziłeś *mi*."~ */ GOTO 8
  IF ~~ THEN REPLY #12488 /* ~"Obraziłeś mnie, ty czworonogi głupku o tyłku kozy!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BariA_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #12489 /* ~"Ponieważ mam na to *ochotę*..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12490 /* ~Odwróć się i odejdź.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12491 /* ~Uciekaj.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #12388 /* ~Jego drzewce się nieco opuszcza. Bariaur wydaje z siebie głębokie westchnienie. "Cósz, zatem mosze nie powinnyszmy bycz tacy chentni do przelewania naszej krwi. Czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #12492 /* ~"Chcę zadać ci kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #12493 /* ~"Zmieniłem zdanie. Wolę przelać twoją krew..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #12390 /* ~"CO? Nie, dwunogi, to *ty* podszedlesz *do mnie*. Nie odmówie ci walki, jeszli tego chcesz, ale nie stracisz honoru, jeszli sie teraz wycofasz..."~ */
  IF ~~ THEN REPLY #12494 /* ~"Dobrze... Chcę zadać ci kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #12495 /* ~"Och, nie... to byłeś *ty* i pożałujesz tego!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12496 /* ~"Zatem zapomnij o tym. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #12391 /* ~"CO?" Zdaje się być zadziwiony twoim oskarżeniem. "Nie, dwunogi, to *ty* podszedlesz *do mnie*. Nie odmówie ci walki, jeszli tego chcesz, ale nie stracisz honoru, jeszli sie teraz wycofasz..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 153
END

IF ~  Global("BariA","AR0400",2)
~ THEN BEGIN 10 // from:
  SAY #12392 /* ~"Ach, to ponownie ty, dwunogi. Co teraz?"~ */
  IF ~~ THEN REPLY #12497 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12498 /* ~"Nic... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #12393 /* ~"Dobrze, ty paciorkowlosa, pokryta bliznami, szronca odchody malpo! O ile przeszyjesz te bitwe, to najlepiej *nigdy* wiencej nie wchodz mi w drogie!" Jego kopyta uderzają o bruk, a on przygotowuje się do szarży.~ */
  IF ~~ THEN REPLY #12499 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12500 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY #12394 /* ~Milknie na chwilę, jakby oczekując od ciebie czegoś więcej. "Ach... co o tym mieszcie?"~ */
  IF ~~ THEN REPLY #12501 /* ~"Co to za miejsce?"~ */ GOTO 13
  IF ~~ THEN REPLY #12502 /* ~"Gdzie ono dokładnie się znajduje?"~ */ GOTO 14
  IF ~~ THEN REPLY #12503 /* ~"Nieważne. Pozwól, że spytam cię o coś jeszcze."~ */ GOTO 5
  IF ~~ THEN REPLY #12504 /* ~"Zapomnij, że o to pytałem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.0
  SAY #12395 /* ~"Cósz, to jest skrzyszowanie, dwunogi. Z pewnoszciom wiesz, sze wszystkie drogie wiodom przez Sigil?"~ */
  IF ~~ THEN REPLY #12505 /* ~"Drogie...? Masz na myśli 'drogi'?"~ */ GOTO 25
  IF ~~ THEN REPLY #12506 /* ~"Tak, rozumiem... gdzie dokładnie leży Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #12507 /* ~"Pozwól, że spytam cię o coś jeszcze."~ */ GOTO 5
  IF ~~ THEN REPLY #12508 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.1 25.1
  SAY #12452 /* ~"Gdzie? Hmm..." Podnosi wzrok w zamyśleniu, szarpiąc swoją kozią bródkę. "...to będzie w Zewnentrzu - Centrum Sfer. Ale poniewasz mosznaz dotrzecz do niego prawie zewszond, to Sigil znajduje sie w wienkszej iloszci miejsc nisz tylko tam. Rozumiesz?"~ */
  IF ~~ THEN REPLY #12509 /* ~"Tak sądzę. Jednakże *co* to za miejsce?"~ */ GOTO 13
  IF ~~ THEN REPLY #12510 /* ~"Rozumiem. Pozwól, że spytam cię o coś jeszcze."~ */ GOTO 5
  IF ~~ THEN REPLY #12511 /* ~"Tak, rozumiem. To wszystko, czego potrzebuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.0
  SAY #12453 /* ~Przez chwilę wydaje się być smutny. "To miejsce... zniszczone, brudne miejsce... jest pelne nieprzyjaznych, czasem zdesperowanych ludzi. Nienajlepsze miejsce dla bendoncego tu goszcinnie bariaura, dwunogi." Wzrusza ramionami. "Mam tu jednak to zalatwienia interesy, a wienc jestem."~ */
  IF ~~ THEN REPLY #12512 /* ~"Gościnnie? Nie mieszkasz tu?"~ */ GOTO 16
  IF ~~ THEN REPLY #12513 /* ~"Interesy? W jakim celu tu przybyłeś?"~ */ GOTO 17
  IF ~~ THEN REPLY #12514 /* ~"Rozumiem. Mam do ciebie inne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #12515 /* ~"Zatem nie przeszkadzam ci w twoich interesach. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #12454 /* ~Bariaur potrząsa głową, śmiejąc się. "Nie, nie, dwunogi... szaden bariaur nie móglby tu szycz."~ */
  IF ~~ THEN REPLY #12516 /* ~"Skąd pochodzisz?"~ */ GOTO 18
  IF ~~ THEN REPLY #12517 /* ~"Jakie interesy masz tu do załatwienia?"~ */ GOTO 17
  IF ~~ THEN REPLY #12518 /* ~"Rozumiem. Mam do ciebie inne pytanie."~ */ GOTO 5
  IF ~~ THEN REPLY #12519 /* ~"Zatem nie przeszkadzam ci w twoich interesach. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.1 18.0
  SAY #12455 /* ~"Innym razem, dwunogi. Jeszli spotkamy sie kiedysz w... szczeszliwszym miejscu, opowiem ci o tym."~ */
  IF ~~ THEN REPLY #12520 /* ~"Powiedziałeś, że jesteś tu gościnnie. Nie mieszkasz tutaj?"~ */ GOTO 16
  IF ~~ THEN REPLY #12521 /* ~"Zatem pozwól, że spytam cię o coś jeszcze."~ */ GOTO 5
  IF ~~ THEN REPLY #12522 /* ~"Zatem do zobaczenia kiedy indziej. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #12456 /* ~"Z Równin Ysgardu, dwunogi. One som moim domem." Uśmiecha się do swoich wspomnień, jakby go rozweselały.~ */
  IF ~~ THEN REPLY #12523 /* ~"Jakie interesy masz tu do załatwienia?"~ */ GOTO 17
  IF ~~ THEN REPLY #12524 /* ~"Mam do ciebie inne pytanie..."~ */ GOTO 5
  IF ~~ THEN REPLY #12525 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2
  SAY #12457 /* ~Patrzy na ciebie z zaciekawieniem. "Co chcesz o nich dokladnie wiedziecz?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12526 /* ~"Szukam miejsca, w którym można się zabawić."~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12527 /* ~"Szukam miejsca, w którym można się zabawić."~ */ GOTO 20
  IF ~~ THEN REPLY #12528 /* ~"Szukam pracy."~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12529 /* ~"Czy znasz kogoś o imieniu Farod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12530 /* ~"Zgubiłem dziennik. Czy nie widziałeś go może, albo nie wiesz, gdzie mógłbym go znaleźć?"~ */ GOTO 23
  IF ~~ THEN REPLY #12531 /* ~"Właściwie nic. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12532 /* ~"Jak się nad tym zastanowię, to nic. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #12458 /* ~"Nie sondze, aby bylo tu cosz, gdzie moszna by sie bawicz, dwunogi. Mosze powinienesz poszukacz gdzie indziej, w innym szwiecie."~ */
  IF ~~ THEN REPLY #12533 /* ~"A co jeśli szukałbym pracy?"~ */ GOTO 21
  IF ~~ THEN REPLY #12534 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12559 /* ~"Inna dzielnica, powiadasz? Może. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 20.0
  SAY #12459 /* ~Marszczy się. "Wontpie, aby moszna tu bylo znaleszcz jakomsz uczciwom prace... Jedynom rzeczom, jakiej jest wystarczajonco duszo w Ulu, to kłopoty."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12535 /* ~"Co z miejscem, gdzie można się zabawić?"~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12536 /* ~"Co z miejscem, gdzie można się zabawić?"~ */ GOTO 20
  IF ~~ THEN REPLY #12557 /* ~"Może zatem odpowiesz mi na inne pytania..."~ */ GOTO 5
  IF ~~ THEN REPLY #12558 /* ~"Możesz mieć rację. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.4 19.3
  SAY #12460 /* ~"Znam niewielu ludzi tutaj, dwunogi... ten 'Farod' nie jest jednym z nich. To twój przyjaciel?"~ */
  IF ~~ THEN REPLY #12537 /* ~"Nie wiem, naprawdę. Pozwól, że spytam cię o coś innego..."~ */ GOTO 5
  IF ~~ THEN REPLY #12538 /* ~"Może, sam jeszcze nie jestem pewien. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 19.4
  SAY #12461 /* ~Po prostu potrząsa głową. "Nie, dwunogi - nic takiego nie widzialem."~ */
  IF ~~ THEN REPLY #12539 /* ~"Hmmm. Mam jeszcze inne pytanie..."~ */ GOTO 5
  IF ~~ THEN REPLY #12540 /* ~"W porządku. Zatem żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY #12462 /* ~"Pani?" Rozgląda się dookoła, jakby patrząc, czy ktoś tego nie usłyszał. "Wiem tylko, sze ona wlada tym miejscem - calym Sigil - i sze miejscowi uwaszajom rozmawianie z niom za nieszczenszcie."~ */
  IF ~~ THEN REPLY #12541 /* ~"Rozumiem. Odpowiedz mi jeszcze..."~ */ GOTO 5
  IF ~~ THEN REPLY #12542 /* ~"Dzięki. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.0
  SAY #12463 /* ~Wygląda na nieco zirytowanego. "Tak, to jest to, co powiedzialem. 'Drogie'."~ */
  IF ~~ THEN REPLY #12543 /* ~"Nie... zrobiłeś to ponownie. 'Drogi', a nie 'drogie'."~ */ GOTO 26
  IF ~~ THEN REPLY #12544 /* ~"Rozumiem. Gdzie dokładnie leży Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #12545 /* ~"Rozumiem. Pozwól, że spytam cię o coś jeszcze."~ */ GOTO 5
  IF ~~ THEN REPLY #12546 /* ~"W porządku. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12464 /* ~Jego ciemne oczy zwężają się, a on zaczyna patrzeć na ciebie podejrzliwie i z gniewem w oczach. "Powiedzialem, co powiedzialem. Mosze *ty* powinienesz spróbowacz mówicz *moim* jenzykiem, dwunogi..."~ */
  IF ~~ THEN REPLY #12547 /* ~"Och, potrafię. Patrz: bee, bee!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_3","GLOBALLaw",-1)
~ GOTO 27
  IF ~~ THEN REPLY #12548 /* ~"Masz rację, przepraszam. Pozwól, że cię o coś spytam."~ */ GOTO 5
  IF ~~ THEN REPLY #12549 /* ~"Jak sobie życzysz, czworonogi. Żegnaj."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12550 /* ~"Masz rację. Przepraszam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #12465 /* ~Parska z odrazą, sięgając po broń... po czym uspokaja się. "Nigdy nie wchodz mi w... DROGIE... ponownie, szwinio-psie, albo cie zabije." Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #12551 /* ~Pozwól mu się oddalić.~ */ DO ~SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12552 /* ~Zaatakuj go, gdy odchodzi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END
