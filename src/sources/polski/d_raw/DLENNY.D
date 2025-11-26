// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLENNY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36484 /* ~Widzisz mężczyznę w lichym ubraniu, wyglądającego na dzikusa. Rzuca dookoła spojrzenia jakby penetrował otoczenie. Zauważa kiedy nadchodzisz i przygląda ci się z rezerwą.~ */
  IF ~~ THEN REPLY #36525 /* ~Witaj.~ */ GOTO 1
  IF ~~ THEN REPLY #36526 /* ~Zignoruj tego mężczyznę.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36485 /* ~Mierzy cię z góry na dół, po czym rozgląda się. Kiedy ponownie zwraca na ciebie uwagę posyła ci szelmowski uśmieszek. "Lepiej nie niepokoić Lenny'ego, jeśli nie ma się ku temu dostatecznego powodu, trepie."~ */
  IF ~~ THEN REPLY #36527 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36528 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 32.0
  SAY #36486 /* ~Śmieje się z ciebie. "Nie jestem oprowadzaczem. Znajdź go sobie, jeśli masz pytania." Śmieje się szerzej. "Lepiej spływaj, nim będę musiał upuścić ci trochę krwi."~ */
  IF ~~ THEN REPLY #36529 /* ~"Muszę tylko zadać ci kilka pytań..."~ */ GOTO 3
  IF ~  Global("Know_Lenny","GLOBAL",1)
~ THEN REPLY #36530 /* ~"A co, gdybym powiedział ci, że przysłał mnie Byron Szpicer?"~ */ GOTO 4
  IF ~~ THEN REPLY #36531 /* ~"Mniejsza z tym, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36487 /* ~Przestaje się uśmiechać i chmurzy się na ciebie. "Nie, nie odpowiadam na pytania, trepie. Mówiłem ci już, żebyś poszukał oprowadzacza, teraz idź precz." Patrzy z nienawiścią.~ */
  IF ~~ THEN REPLY #36532 /* ~"Świetnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36488 /* ~Przestaje się uśmiechać i przez chwilę przygląda ci się badawczo. Jego wzrok zatrzymuje się na twoich bliznach, lekko przełyka ślinę. Po chwili, marszczy brwi i staje się jakby nerwowy. "Szpicer... cię przysłał. Po co?"~ */
  IF ~~ THEN REPLY #36533 /* ~"Powiedział, że możesz odpowiedzieć mi na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #36534 /* ~"Mniejsza z tym, to nie jest ważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 7.1 8.0 28.2 29.1 30.1 31.0
  SAY #36489 /* ~Marszczy brwi. "Jakie pytania..." Zauważasz, że wygląda raczej na spiętego.~ */
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36535 /* ~"Ukradziono mi czaszkę i chcę ją odzyskać. Czy wiesz, kto mógłby zrobić coś takiego?"~ */ JOURNAL #66540 /* ~Lenny, złodziej, utrzymuje, że za zniknięcie Mortego jest odpowiedzialny osobnik o imieniu Lotar. Chyba będę musiał złożyć temu Lotarowi wizytę.~ */ GOTO 6
  IF ~  Global("Stolen_Papers","GLOBAL",1)
~ THEN REPLY #36536 /* ~"Chcę cię zapytać o te papiery, które ukradłeś Triście."~ */ GOTO 9
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36537 /* ~"Chciałbym nauczyć się sztuki złodziejskiej. Możesz mnie nauczyć?"~ */ GOTO 27
  IF ~~ THEN REPLY #36538 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 28
  IF ~~ THEN REPLY #36539 /* ~"Nie szkodzi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36490 /* ~Waha się przez chwilę, po czym trochę rozluźnia. Masz wrażenie, że oczekiwał, że zapytasz go o coś innego. Uśmiecha się do ciebie. "Skradziona czaszka, co? To zapewne robota chłopaków Lotara, nie moja."~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36540 /* ~"Kim jest Lotar?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36541 /* ~"Słyszałem o Lotarze, muszę tylko go znaleźć."~ */ GOTO 8
  IF ~~ THEN REPLY #36542 /* ~"Mam kilka innych pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #36543 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36491 /* ~Uśmiecha się złośliwie. "Pan Kości, tak go zwą, i tym właśnie jest. To najwyższy kapłan jednej z potężnych Mocy, nie wiem jednak której. Ułożył sobie leże w miejscu zwanym Kościami Nocy."~ */
  IF ~~ THEN REPLY #36544 /* ~"Gdzie jest to miejsce?"~ */ JOURNAL #66541 /* ~Lenny twierdzi, że Lotar zamieszkuje w zrujnowanym budynku na południe od Wieży Oblężniczej. Pójdę tam i spróbuję dowiedzieć się czegoś o zniknięciu Mortego.~ */ GOTO 8
  IF ~~ THEN REPLY #36545 /* ~"Rozumiem. Mam inne pytania..."~ */ GOTO 5
  IF ~~ THEN REPLY #36546 /* ~"Dziękuję, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #36492 /* ~Marszczy brwi. "Teraz to nie wiem, czy chcę być tym, który odpowie na to pytanie..." Przeszywa cię wzrokiem przez chwilę, po czym wzrusza ramionami. "Zniszczony budynek, na południe od wieży oblężniczej, nie możesz nie trafić." Znowu uśmiecha się złośliwie.~ */
  IF ~~ THEN REPLY #36547 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #36548 /* ~"W porządku, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #36493 /* ~Ciężko przełyka ślinę i wpatruje się w ciebie. Widzisz, że jego mięśnie napinają się i wygląda, jakby gotowy był do ucieczki. Nonszalancko kładzie jedną rękę na biodrze, ale widać, że jest zwarty jak sprężyna. "Nie wiem o czym gadasz, trepie. Lepiej odejdź."~ */
  IF ~~ THEN REPLY #36549 /* ~Uśmiechnij się szelmowsko: "Wiesz o czym mówię, Lenny. Byron kazał ci ukraść pewne papiery od Tristy. Jestem tu po to, by je odebrać."~ */ GOTO 10
  IF ~~ THEN REPLY #36550 /* ~Prawda: "Daj te papiery, które ukradłeś Triście albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Lenny_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36551 /* ~Blef: "Daj te papiery, które ukradłeś Triście albo cię zabiję."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lenny_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36552 /* ~"Mam tego dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2
  SAY #36494 /* ~Ciężko przełyka ślinę, a kącik jednego oka zaczyna mu drgać. Zerka na blizny, które pokrywają twoje ciało, po czym usiłuje złapać twoje spojrzenie - ale nie udaje mu się. "Chcesz je zabrać... Ja... zniszczyłem te papiery, zaraz po tym jak je buchnąłem, tak jak kazał mi Byron." W końcu natrafia na twoje spojrzenie.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36553 /* ~"Doprawdy? Dlaczego więc jesteś taki nerwowy, Lenny? Niech no zgadnę: Byron sądzi, że zniszczyłeś te papiery, ale może nie zrobiłeś tego. Może je zatrzymałeś. Może jako materiał do szantażu?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36554 /* ~"Dlaczego zatem jesteś taki nerwowy, Lenny? Myślę, że kłamiesz."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67296 /* ~"Doprawdy? Dlaczego więc jesteś taki nerwowy, Lenny? Niech no zgadnę: Byron sądzi, że zniszczyłeś te papiery, ale może nie zrobiłeś tego. Może je zatrzymałeś. Może jako materiał do szantażu?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67297 /* ~"Dlaczego zatem jesteś taki nerwowy, Lenny? Myślę, że kłamiesz."~ */ GOTO 11
  IF ~~ THEN REPLY #67298 /* ~"Musze już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2 10.3
  SAY #36495 /* ~Gapi się na ciebie przez krótką chwilę, po czym rzuca się do ucieczki.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #36556 /* ~Chwyć go, zanim ucieknie.~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #36557 /* ~Chwyć go, zanim ucieknie.~ */ GOTO 13
  IF ~~ THEN REPLY #36558 /* ~Pozwól mu odejść.~ */ DO ~RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36496 /* ~W momencie kiedy zrywa się do biegu, skaczesz naprzód i chwytasz go za ramię. Szamota się przez chwilę, ale jest od ciebie słabszy. W końcu poddaje się. "W porządku, nie zniszczyłem ich! Oddam ci je, tylko mnie puść." Zwalniasz swój chwyt.~ */
  IF ~~ THEN REPLY #36559 /* ~"Oddaj je, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36560 /* ~"Dlaczego je zatrzymałeś, Lenny? Dla szantażu, jak sądzę."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36561 /* ~"Więc rzeczywiście je zatrzymałeś. Dlaczego?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #36497 /* ~W momencie kiedy zrywa się do biegu, skaczesz naprzód, by go pochwycić. Zwinnie wymyka się spod twojego uchwytu i zaczyna robić unik. Widząc, że ofiara jest o krok od ucieczki, rzucasz się na niego bardziej zdecydowanie. Nie udaje ci się go chwycić, ale uderzasz w niego mocno, wytrącając go z równowagi. Twoje wysiłki udaremniają jego ucieczkę. "W porządku, nie zniszczyłem ich! Oddam ci je, tylko mnie puść."~ */
  IF ~~ THEN REPLY #36562 /* ~"Oddaj je, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36563 /* ~"Dlaczego je zatrzymałeś, Lenny? Dla szantażu, jak sądzę."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36564 /* ~"Więc rzeczywiście je zatrzymałeś. Dlaczego?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #36498 /* ~Wzdycha. "Ja... nie mam ich przy sobie." Patrzysz na niego srogo i widzisz, że na jego twarzy zaczyna malować się strach. "Przysięgam! Nie mam ich! Dałem je na przechowanie!" Dalej gapi się na ciebie, ciężko oddychając.~ */
  IF ~~ THEN REPLY #36565 /* ~"Chodźmy zatem po nie."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36499 /* ~Potrząsa smutno głową. "Nie możemy. Są na składzie, a ten w tej chwili dla klientów jest zamknięty. Podobno są jakieś przetasowania w kierownictwie... ale nie wiem, czy to prawda. W każdym razie, nie mogę odebrać tych papierów." Patrzy na ciebie zmieszany.~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36566 /* ~"Zadbałem o tę drobną sprawę, możemy dostać te papiery."~ */ GOTO 16
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36567 /* ~"Zbadam to zatem i sam dostanę te papiery."~ */ GOTO 16
  IF ~~ THEN REPLY #36568 /* ~"Mam tego dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1 21.1
  SAY #36500 /* ~Wzrusza ramionami. "Dobrze. Zdaje się, że ten wąż Szpicer znowu wygrał..." Patrzy na ciebie z butą.~ */
  IF ~~ THEN REPLY #36569 /* ~"Po prostu chodźmy po te papiery, Lenny."~ */ GOTO 17
  IF ~~ THEN REPLY #36570 /* ~"W rzeczywistości to wygrała Trista, Lenny."~ */ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 16.0 26.0
  SAY #36501 /* ~"Idź do składu i powiedz urzędnikowi *Przyszedłem po pożyczkę*, a on da ci papiery. Na razie, trepie." Nagle ucieka.~ */
  IF ~~ THEN REPLY #36571 /* ~Odejdź.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Stolen_Papers","GLOBAL",3)
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ JOURNAL #36021 /* ~Lenny trzyma w magazynie dokumenty pożyczkowe Tristy. Mogę je dostać od urzędnika.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1 13.1
  SAY #36502 /* ~Parska i patrzy wyzywająco na ciebie. "Zatrzymałem je, żeby zakapować twojego szefa, Szpicera, i ocalić Tristę od niewoli!" Potrząsa głową. "Możesz sobie zaszantażować mój tyłek..."~ */
  IF ~~ THEN REPLY #36572 /* ~"Zakapować?"~ */ GOTO 19
  IF ~~ THEN REPLY #36573 /* ~"Dlaczego miałbyś go zakapować?"~ */ GOTO 21
  IF ~~ THEN REPLY #36574 /* ~"Tak przy okazji, to Szpicer nie jest moim szefem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0
  SAY #36503 /* ~"Tak, zakapować." Patrzy na ciebie przez chwilę, aż zdaje sobie sprawę, że nie wiesz o co mu chodzi. "Chodzi mi o to, że miałem go zdradzić, wydać Harmonium."~ */
  IF ~~ THEN REPLY #36575 /* ~"Dlaczego miałbyś go zakapować?"~ */ GOTO 21
  IF ~~ THEN REPLY #36576 /* ~"Tak przy okazji, to Szpicer nie jest moim szefem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.2 13.2
  SAY #36504 /* ~Parska i patrzy wyzywająco. "Zatrzymałem je, żeby zakapować twojego szefa, Szpicera, i ocalić Tristę od niewoli!"~ */
  IF ~~ THEN REPLY #36577 /* ~"Zakapować?"~ */ GOTO 19
  IF ~~ THEN REPLY #36578 /* ~"Dlaczego miałbyś go zakapować?"~ */ GOTO 21
  IF ~~ THEN REPLY #36579 /* ~"Tak przy okazji, to Szpicer nie jest moim szefem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1
  SAY #36505 /* ~Spogląda na ciebie z pewną dumą. "Może i jestem złodziejem, ale mam pewne zasady. Nie zabijam biednych skurli, i nie robię tego co Szpicer zrobił z Tristą i jej mężem." Potrząsa głową i spogląda w dal. "Mówiłem twojemu szefowi, że źle robi, ale on się tylko ze mnie śmiał."~ */
  IF ~~ THEN REPLY #36580 /* ~"Tak przy okazji, to Szpicer nie jest moim szefem."~ */ GOTO 22
  IF ~~ THEN REPLY #36581 /* ~"Chodźmy po te papiery, Lenny."~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 18.2 19.1 20.2 21.0 26.1
  SAY #36506 /* ~Patrzy na ciebie z niedowierzaniem. "Poważnie? Myślałem... ale przecież..." Przygląda ci cię bacznie przez chwilę, po czym śmieje się. "Zakpiłeś ze mnie, żebym zdradził ci co śpiewka niesie!" Potrząsa głową i patrzy z szacunkiem. "Dobra robota, śmiałku."~ */
  IF ~~ THEN REPLY #36582 /* ~"Chodźmy po te papiery, Lenny."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36507 /* ~Potrząsa smutno głową. "Nie możemy. Są na składzie, a ten w tej chwili dla klientów jest zamknięty. Podobno są jakieś przetasowania w kierownictwie... ale nie wiem czy to prawda. W każdym razie, nie mogę odebrać tych papierów." Patrzy na ciebie zmieszany. "Dlatego sam nie pomogłem Triście, śmiałku. Nie mogę dostać tych skurlowatych papierów."~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36583 /* ~"Zadbałem o tę drobną sprawę, możemy dostać te papiery."~ */ GOTO 24
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36584 /* ~"Zbadam to zatem i sam odbiorę te papiery."~ */ GOTO 24
  IF ~~ THEN REPLY #36585 /* ~"Mam tego dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 35.1 36.0
  SAY #36508 /* ~Uśmiecha się do ciebie. "Idź do składu i powiedz urzędnikowi *Przyszedłem po pożyczkę*, a on da ci papiery Tristy. Jeśli następnie powiesz mu *Przyśmiałem Szpicerowi* dostaniesz premię..."~ */
  IF ~~ THEN REPLY #36586 /* ~"Jaką premię?"~ */ DO ~AddexperienceParty(4000)
SetGlobal("Stolen_Papers","GLOBAL",3)
SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36509 /* ~Śmieje się. "Dowody, śmiałku. Sprawią, że Szpicer zniknie z ulic na bardzo, bardzo długo, jeśli tylko oddasz je właściwej osobie..." Myśli przez chwilę. "Jeśli w Harmonium jest ktoś, komu twoim zdaniem można zaufać, to oddaj mu te dowody."~ */
  IF ~  Dead("Byron")
~ THEN REPLY #36587 /* ~"Nie ma go już na ulicach, Lenny. Byron nie żyje."~ */ GOTO 41
  IF ~~ THEN REPLY #39445 /* ~"W porządku. Żegnaj."~ */ JOURNAL #36022 /* ~Lenny trzyma w magazynie dowody przestępczej działalności Byrona Szpicera. Zasugerował, żebym zaniósł je komuś w Harmonium, któremu mogę zaufać. Dowody będzie można odebrać jeśli porozmawiam z urzędnikiem.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY #36510 /* ~Chmurzy się. "Co masz na myśli?"~ */
  IF ~~ THEN REPLY #36588 /* ~"Nie twój interes."~ */ GOTO 17
  IF ~~ THEN REPLY #36589 /* ~"Nie pracuję dla Szpicera, Lenny."~ */ DO ~AddexperienceParty(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 5.2 33.1 34.1 38.1 40.1
  SAY #36511 /* ~"Na pewno chcesz zarzucić swą obecną profesję i zostać złodziejem?"~ */
  IF ~~ THEN REPLY #36590 /* ~"Tak..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 42
  IF ~~ THEN REPLY #52390 /* ~"Nie, pozwól mi się chwilę nad tym zastanowić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #36512 /* ~Rozgląda się dokoła, po czym wzrusza ramionami. "To jest Niższa Dzielnica, dom wielu zwyczajnych ludzi. Życie tu, nie jest tak rozpaczliwe jak w Ulu, ale nie tak dobre jak w Dzielnicy Urzędników." Znowu się rozgląda. "Poza tym, niewiele więcej można powiedzieć."~ */
  IF ~~ THEN REPLY #36591 /* ~"Co możesz powiedzieć mi o Ulu?"~ */ GOTO 29
  IF ~~ THEN REPLY #36592 /* ~"Co możesz mi powiedzieć, o Dzielnicy Urzędników?"~ */ GOTO 30
  IF ~~ THEN REPLY #36593 /* ~"Mam kilka innych pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #36594 /* ~"Dziękuję, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 30.0
  SAY #36513 /* ~Potrząsa głową i uśmiecha się. "Można by to nazwać slumsami Sigil. Jest tu wielu biednych skurli, którzy prócz Księgi Umarłych, nie mają się gdzie znaleźć." Przerywa. "Tyle co mogę powiedzieć."~ */
  IF ~~ THEN REPLY #36595 /* ~"Co możesz powiedzieć mi o Dzielnicy Urzędników?"~ */ GOTO 30
  IF ~~ THEN REPLY #36596 /* ~"Mam kilka innych pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #36597 /* ~"Dziękuję, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.0
  SAY #36514 /* ~Uśmiecha się. "Nazwa mówi sama za siebie, trepie. Urzędnicy, urzędnicy i jeszcze raz urzędnicy. Jeśli chcesz opchnąć jakieś papiery, albo żeby ktoś opchnął je tobie, to tam właśnie trzeba pójść. Tyle co mogę powiedzieć."~ */
  IF ~~ THEN REPLY #36598 /* ~"Co możesz powiedzieć mi o Ulu?"~ */ GOTO 29
  IF ~~ THEN REPLY #36599 /* ~"Mam kilka innych pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #36600 /* ~"Dziękuję, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #36515 /* ~Uśmiecha się i warkliwie śmieje. "Większość uważa Sigil za centrum wieloświata. Osobiście uważam, że to dziura zabita dechami, a skurle, które tu mieszkają są gnojem przez nią wydzielanym." Uśmiecha się dalej do ciebie.~ */
  IF ~~ THEN REPLY #36601 /* ~"Mam kilka innych pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #36602 /* ~"Dziękuję, muszę już iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 32 // from:
  SAY #36516 /* ~Widzisz Lenny'ego. Kiedy się zbliżasz, posyła ci kpiący uśmiech. "Witaj znowu, trepie. Czemu zawdzięczam tę przyjemność?"~ */
  IF ~~ THEN REPLY #36603 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36604 /* ~"Dziękuję, muszę już iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 38 40 even though they appear after this state */
~  Global("Stolen_Papers","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #36517 /* ~Widzisz Lenny'ego. Nie wygląda na zbyt zadowolonego z twojego przyjścia. "Czego chcesz, trepie?"~ */
  IF ~~ THEN REPLY #36605 /* ~"Mam kilka pytań..."~ */ GOTO 34
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36606 /* ~"Chciałbym nauczyć się sztuki złodziejskiej. Możesz mnie nauczyć?"~ */ GOTO 27
  IF ~~ THEN REPLY #36607 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36518 /* ~Chmurzy się. "Żadnych więcej pytań, żadnych odpowiedzi. Wracaj do swojego szefa, Szpicera, i powiedz mu, żeby mnie zostawił w spokoju. "Posyła ci piorunujące spojrzenie.~ */
  IF ~~ THEN REPLY #36608 /* ~"Szpicer nie jest moim szefem."~ */ GOTO 35
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36609 /* ~"Chciałbym nauczyć się sztuki złodziejskiej. Możesz mnie nauczyć?"~ */ GOTO 27
  IF ~~ THEN REPLY #36610 /* ~"Świetnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36519 /* ~Patrzy na ciebie z niedowierzaniem. "Poważnie? Myślałem... ale wcześniej mówiłeś, że... " Przygląda ci cię bacznie przez chwilę, po czym śmieje się. "Zakpiłeś ze mnie, żebym ci zdradził co śpiewka niesie!" Potrząsa głową i patrzy z szacunkiem. "Dobra robota, śmiałku." Przerywa. "Zamierzasz przyśmiać Szpicerowi?"~ */
  IF ~~ THEN REPLY #36611 /* ~"Przyśmiać mu?"~ */ GOTO 36
  IF ~~ THEN REPLY #36612 /* ~"Tak, chciałbym tego."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36613 /* ~"Nie, nie zależy mi, teraz kiedy mam to, po co przyszedłem."~ */ GOTO 37
  IF ~~ THEN REPLY #36614 /* ~"Nie wydaje mi się, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36520 /* ~Uśmiecha się. "Tak, przyśmiać mu... Zdjąć go z ulic, sprzątnąć go, no wiesz."~ */
  IF ~~ THEN REPLY #36615 /* ~"Tak, chciałbym tego."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36616 /* ~"Nie, nie zależy mi, teraz kiedy mam to, po co przyszedłem."~ */ GOTO 37
  IF ~~ THEN REPLY #36617 /* ~"Nie wydaje mi się, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2 36.1
  SAY #36521 /* ~Wzrusza ramionami. "No, to chyba wszystko jasne. Na razie, trepie."~ */
  IF ~~ THEN REPLY #36618 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 40 even though they appear after this state */
~  GlobalGT("Evidence_Papers","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #36522 /* ~Widzisz Lenny'ego. Kiedy się zbliżasz, uśmiecha się. "Witaj śmiałku. Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #36619 /* ~"Mam kilka pytań..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36620 /* ~"Chciałbym nauczyć się sztuki złodziejskiej. Możesz mnie nauczyć?"~ */ GOTO 27
  IF ~~ THEN REPLY #36621 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.0
  SAY #36523 /* ~"Powiedziałem ci wszystko co wiem, śmiałku. Nie mam już więcej żadnych odpowiedzi dla ciebie."~ */
  IF ~~ THEN REPLY #36622 /* ~"Świetnie, żegnaj..."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Byron_Arrested","GLOBAL",0)
~ THEN BEGIN 40 // from:
  SAY #36524 /* ~Widzisz Lenny'ego. Kiedy się zbliżasz, uśmiecha się. "Witaj śmiałku. Słyszałem o Byronie i wielce się uradowałem." Szczerzy zęby. "Co mogę dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #36623 /* ~"Mam kilka pytań..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36624 /* ~"Chciałbym nauczyć się sztuki złodziejskiej. Możesz mnie nauczyć?"~ */ GOTO 27
  IF ~~ THEN REPLY #36625 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 25.0
  SAY #39446 /* ~Waha się, po czym uśmiecha szelmowsko. "Doprawdy? Cudownie... nikomu milszemu nie mogło się to przytrafić."~ */
  IF ~~ THEN REPLY #39447 /* ~"Żegnaj, Lenny."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.0
  SAY #52391 /* ~"Pokaż mi co umiesz, a dam ci kilka wskazówek." Patrzy na ciebie ostrożnie, kiedy pokazujesz mu co potrafisz. Przerywa ci chwilami i wskazuje na sposoby udoskonalenia twoich umiejętności. Po kilku godzinach, wydaje ci się, że twoje umiejętności złodziejskie są wystarczające.~ */
  IF ~  Global("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Dziękuję, Lenny."~ */ DO ~SetGlobal("Thief_Training","GLOBAL",3)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 43
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Dziękuję, Lenny."~ */ GOTO 43
  IF ~  !HasItem("Zpunch",Myself)
~ THEN REPLY #64222 /* ~"Dziękuję. Muszę iść."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 42.1
  SAY #64223 /* ~Lenny uśmiecha się potakuje głową zamyślony. "Proszę, śmiałku. Weź również to. Prezent od Lenny'ego, żeby pomóc ci w twojej nowej profesji... nie będę ich już potrzebował." Wręcza ci parę sztyletów naręcznych.~ */
  IF ~~ THEN REPLY #64224 /* ~"Dziękuję, Lenny. Żegnaj."~ */ DO ~GiveItem("Zpunch",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #64783 /* ~"Pokaż mi co umiesz, a dam ci kilka wskazówek." Patrzy na ciebie ostrożnie, kiedy pokazujesz mu co umiesz. Przerywa ci chwilami i wskazuje na sposoby udoskonalenia twoich umiejętności. Po kilku godzinach, wydaje ci się, że twoje umiejętności złodziejskie są wystarczające.~ */
  IF ~~ THEN REPLY #64784 /* ~"Dziękuję. Muszę iść."~ */ EXIT
END
