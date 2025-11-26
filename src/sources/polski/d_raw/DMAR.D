// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45076 /* ~Pierwsze co przychodzi ci na myśl, kiedy widzisz Szpetnego, to że koniecznie potrzeba mu długiej kąpieli, najlepiej z dala od wszelakich stworzeń, które mają zmysł węchu. Niemal widzisz, jak ten smród wydostaje się z jego ciała przez złowieszcze żółte kosmyki. Szpetny rusza gorączkowo w twoim kierunku usiłując dać ci do zrozumienia, żebyś podszedł i z nim porozmawiał.~ */
  IF ~~ THEN REPLY #45077 /* ~Podejdź do tej osoby i wysłuchaj co ma do powiedzenia.~ */ GOTO 4
  IF ~~ THEN REPLY #45399 /* ~Zatkaj nos i odejdź.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("FedEx","Global",0)
~ THEN BEGIN 1 // from:
  SAY #45400 /* ~Kiedy podchodzisz do Szpetnego, zbierasz siły, by przemóc smród. "Szpetnemu ty oddasz przysługe, tak? Musiesz dla mniem dostarczyć skrzynkie."~ */
  IF ~~ THEN REPLY #45401 /* ~"Dostarczę tę skrzynkę dla ciebie."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #45402 /* ~"Dlaczego chcesz, żebym dostarczył tę skrzynkę?"~ */ GOTO 5
  IF ~~ THEN REPLY #45403 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 16 10 even though they appear after this state */
~  GlobalGT("FedEx","Global",0)
~ THEN BEGIN 2 // from:
  SAY #45404 /* ~Kiedy widzi, że nadchodzisz, oczy Szpetnego przybierają dziki wyraz. Skrzecząc niemożliwie, pyta: "Co robisz mniem tu z powrotem! Ni wracaj mniem tu, dopóki ni dostarczysz skrzynki."~ */
  IF ~  Global("FedEx","Global",2)
Global("Demonbox","Global",0)
~ THEN REPLY #45405 /* ~"Osoba, do której miałem dostarczyć tę skrzynkę, uciekła. Co teraz?"~ */ GOTO 8
  IF ~  Global("FedEx","Global",10)
~ THEN REPLY #45406 /* ~"Pozbyłem się skrzynki."~ */ DO ~SetGlobal("FedEx","Global",11)
~ GOTO 11
  IF ~  Global("Demonbox","Global",4)
~ THEN REPLY #45407 /* ~"Zabiłem demona ze skrzynki..."~ */ GOTO 18
  IF ~  Global("Demonbox","Global",3)
~ THEN REPLY #45408 /* ~"Zabiłem demona ze skrzynki..."~ */ GOTO 19
  IF ~  Global("Demonbox","Global",1)
~ THEN REPLY #45409 /* ~"Otworzyłem skrzynkę i ukazał się bies. Uciekłem."~ */ GOTO 3
  IF ~  !Global("FedEx","Global",2)
!Global("FedEx","Global",10)
GlobalGT("FedEx","Global",0)
Global("Demonbox","Global",0)
~ THEN REPLY #45410 /* ~"Nikt nie chce tej skrzynki. Weź ją z powrotem."~ */ GOTO 9
  IF ~  !Global("FedEx","GLOBAL",10)
Global("Demonbox","Global",2)
~ THEN REPLY #45411 /* ~"Wyszedłem z Ula i nic się nie stało."~ */ GOTO 17
  IF ~~ THEN REPLY #45412 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.4
  SAY #45413 /* ~"Ty pomylone gamoniu! Podpisujesz mniem wyrok śmierci na siebiem, otwierając tem przeklentom skrzynkie! Ucikaj, jeźli wisz co dla ciebiem dobre!" Szpetny zaczyna uciekać.~ */
  IF ~~ THEN REPLY #45414 /* ~"Żegnaj."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39511 /* ~Popełniłem dwa błędy. Pierwszy, że zignorowałem ostrzeżenie Szpetnego, by nie otwierać skrzynki. Drugim błędem była ucieczka przed biesem, gdy się pojawił. Pierwszego nie mogę zmienić, ale mogę naprawić drugi. Muszę zabić tego biesa.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #46322 /* ~Kiedy podchodzisz, na jego twarzy widać ożywienie. "Dziękujem za zatrzymanie. Na imię mniem jes Szpetny i mam do ciebiem prośbe."~ */
  IF ~~ THEN REPLY #46323 /* ~"Słucham."~ */ GOTO 5
  IF ~~ THEN REPLY #46324 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 4.0
  SAY #46325 /* ~"To jes sprawa życia i śmierci! Muszem doręczyć tem skrzynkie, albo tam będzie mojem głowa, niewątpliwiem! Pech, żem skręciłem nogem. Wspomożesz mniem w doręczeniu tej skrzynki?"~ */
  IF ~~ THEN REPLY #46326 /* ~"Dostarczę dla ciebie tę skrzynkę."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #46327 /* ~"Nie."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 5.0
  SAY #46328 /* ~Szpetny powoli wyciąga małą skrzynkę spod swoich łachów. Przez króciutką chwilę widzisz, jak żal krasi mu oblicze... po czym niknie, kiedy spogląda na ciebie i ci ją wręcza. Kiedy obaj jej dotykacie, wokół skrzynki pojawia się delikatne skrzenie. Kiedy Szpetny oddaje ci skrzynkę, rozlega się westchnienie ulgi.~ */
  IF ~~ THEN REPLY #46329 /* ~"Co teraz?"~ */ DO ~GiveItemCreate("DBox",Player1,1,0,0)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46330 /* ~"To musi być dostarczonem do Ku'atraa. Zwyklem można go znaleś gdzieś w południowo wschodniem części Ula. Aha, żebym ni słyszał, że ciem ni ostrzegałem: cokolwiek się staniem, NI OTWIERAJ SKRZYNKI! I ni wychodź z niom z Ula. Ruszaj w drogem!"~ */
  IF ~~ THEN REPLY #46331 /* ~"Wrócę, gdy dostarczę skrzynkę. Żegnaj."~ */ DO ~SetGlobal("Notalk","AR0100",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT1",FALSE)
~ JOURNAL #39481 /* ~Podjąłem się dostarczenia dziwnej skrzynki osobie o imieniu Ku'atraa. Szpetny powiedział, że tego gościa można zwykle znaleźć w południowo-wschodniej części Ula.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0
  SAY #46461 /* ~"To ni mój problem już jes. Skrzynka jes z tobom magicznie związana, do czasu aż zostaniem dostarczona." Mojem propozycjom byłoby, co by ją komuś dostarczyć! Odejdź już tera ode mniem, dopóki się tyj rzeczy ni pozbędzisz!"~ */
  IF ~  Global("FedEx","Global",2)
~ THEN REPLY #46462 /* ~Wygląda na to, że możesz liczyć tylko na siebie. Czy Ku'atraa nie wspomniał kogoś innego, komu można by oddać tę skrzynkę?~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
  IF ~  GlobalGT("FedEx","Global",2)
~ THEN REPLY #46463 /* ~Co u diabła jest w tej skrzynce...~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY #46464 /* ~Szpetny odsuwa się z przerażeniem. "Ni! Ni dotknem już nigdy tej przeklyntnej skrzynki! Zabieraj jom ode mniem! Ni zmuszałem ciem do jej wzięcia. Zatrzymaj jom, albo daj komukolwiek, bez żadnej różnicy dla mniem. Ale powim ci jedno: wolałebym umrzyć niż być uwiązanem do niej znowu! Zostaw mniem teraz w spokoju."~ */
  IF ~~ THEN REPLY #46465 /* ~"Kiedy uporam się już z tą skrzynką, wrócę żeby uporać się z tobą. Żegnaj."~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("FedEx","Global",9)
~ THEN BEGIN 10 // from:
  SAY #46466 /* ~"Powiedziałym ci na razie wszystko, co miałym powiedzieć."~ */
  IF ~~ THEN REPLY #46467 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #46468 /* ~"Lżej na mojem sercu, kiedy to słyszem. Nim mniem zabijesz, za to, żem ciem wrobiłem we wziecie tej skrzynki, proszem pozwól mniem siem wytumaczyć..."~ */
  IF ~~ THEN REPLY #46469 /* ~"Jesteś już martwy."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Moja sprawiedliwość nie cierpi zwłoki i litości. Dopilnowałem, aby Szpetny zapłacił za swoje zbrodnie własnym życiem. Teraz jedynym moim pragnieniem jest ruszenie w dalszą drogę. Nie interesują już mnie żadne magiczne skrzynki.~ */ EXIT
  IF ~~ THEN REPLY #46470 /* ~"Słucham. Wytłumacz się."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #46471 /* ~"Krótko mówionc ta skrzynka jes tu odkąd ktokolwiek pamięta. Śpiewka podajem, że jakieś ludzie toczyli byli bitwe, a kiedy skończyli, ogromny demon został był uwięziony w skrzynce. Inni ludzie mówiom, że jakiś zły czarnuksiężnik jom zrobił, tyko po to, żeby widzieć jak inne cierpiom. Nik tak po prawdzie ni wie, jaka prawda kryje siem za tom skrzynkom. Ale właściciel skrzynki, jeźli jom otworzy, zemrze."~ */
  IF ~~ THEN REPLY #46472 /* ~"Dlaczego właściciel nie zostawił skrzynki gdzieś, gdzie nie nikt by jej nie odnalazł?"~ */ GOTO 13
  IF ~~ THEN REPLY #46473 /* ~"Nie chcę tego słuchać. Co z tego będę miał?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #46474 /* ~"Ano, wydaje siem to prostem być. Ale, kto z nas mógby żyć ze swiadomościom wyroku śmirci? To by doprowadziło każdego kto jes przy zdrowem zmyśle nad skraj wyczerpania nerwuwego, jeźli musiałby sie martwić, całemi czasy, gdzie siem ta przeklynta skrzynka podziewa."~ */
  IF ~~ THEN REPLY #46475 /* ~"Dlaczego ja?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46476 /* ~"Po piersze nie widziałem ciem tu przedtem. Widziesz, potrzebowałem takiegótkiego tępego trepa jak ty, który *przyjmie* skrzynkie i stanie sie jej nowem właścicielem. Wszyscy wokoło tu wiedzom, żeby nie brać tej skrzynki; za żadnom cenę. Po drugie, jeźliby ci nie przyszło do głowy dokładnie oglądać skrzynki, to może ni zwróciłbyś uwagi, że jakakolwiek magia rzucona na niom, traci moc. Tera jes jasne czemu będąc obecnym właścicielem musiałem siem jej pozbyć tak szybko. Poza tem jeźli, ktokolwiek miałby wyglądać na gotowego do wkroczenia do następnej krainy, to właśnie ty."~ */
  IF ~~ THEN REPLY #46477 /* ~"Chcesz mówić o przejściu do następnej krainy? Mów dalej, albo sam się o tym dowiesz."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #46478 /* ~"Oczywiściem wybrałem śmiałka, który nie był pirwszy lepszy. Z pewnościom dla koguś takiego jak ty, to była tylko drobna niedogodność. Proponujem tom broń i troche brzdęku, co by zasilić twom sakiewkem za twoje kłopoty. To wszysko co posiadam... a przypadkiem tak siem składa, że to samo dał kiedyś mnie, ten szczur Ku'atraa, żebym zabrał te skrzynkie."~ */
  IF ~~ THEN REPLY #46479 /* ~"Zabiję cię i tak czy inaczej zabiorę nagrodę."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~Moja sprawiedliwość nie cierpi zwłoki i litości. Dopilnowałem, aby Szpetny zapłacił za swoje zbrodnie własnym życiem. Teraz jedynym moim pragnieniem jest ruszenie w dalszą drogę. Nie interesują już mnie żadne magiczne skrzynki.~ */ EXIT
  IF ~~ THEN REPLY #46480 /* ~"Daj mi moją nagrodę i odejdź."~ */ DO ~GiveItem("Hax",Protagonist)
AddexperienceParty(1250)
GivePartyGold(500)
~ JOURNAL #39484 /* ~Może to nie najlepszy pomysł, ale zdecydowałem się wybaczyć Szpetnemu to co zrobił. Choć chcę odzyskać utracone wspomnienia, to tę akurat przygodę wolałbym zapomnieć.~ */ EXIT
END

IF WEIGHT #1 ~  Global("FedEx","Global",11)
~ THEN BEGIN 16 // from:
  SAY #46481 /* ~"Ludzie tu w okolicy będom mogli teraz spać spokojnie wiedząc, że udało ci sie zniszczyc te przeklyntom skrzynkie. Jeszcze raz dziękujem!"~ */
  IF ~~ THEN REPLY #46482 /* ~"Rad jestem, że mogłem pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #46483 /* ~"Ty zatracony gamoniu! Mówiłem ci, żeby nie wychodzić z Ula. Szybko, zmywaj się stąd, nim przyjdzie i ciem dopadnie!"~ */
  IF ~~ THEN REPLY #46484 /* ~Szpetny ucieka.~ */ DO ~SetGlobal("Boxleft","Global",1)
SetGlobal("Gamma","Global",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39482 /* ~Opuszczając Ul najwyraźniej wyswobodziłem uwięzione w skrzynce stworzenie. Nie wiem dlaczego, ale boję się, że cokolwiek to jest, wciąż szuka ostatniego właściciela skrzynki. Lepiej, żebym się pilnował, tak na wszelki wypadek.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY #46485 /* ~"Skrzynka otwarta za twojem przyczynom, a ty ciągle żyjesz i mi o tem mówisz! Wydawało mi siem, że ci mówiłem, żeby nie otwierać tej przeklyntej rzeczy. Obawiam się, że skoro skrzynka nie dotarła tam gdzie trzeba, nie mogem ci zapłacić. Zejdź mnie teraz z oczu."~ */
  IF ~  Global("FedEx","Global",1)
~ THEN REPLY #46486 /* ~"Żegnaj."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39507 /* ~Powiedziałem Szpetnemu, że otworzyłem skrzynkę i zabiłem zamkniętego w niej biesa. Początkowo byłem na niego wściekły, że mi nie powiedział co zawiera skrzynka, ale to moja wina, że nie posłuchałem jego ostrzeżeń. Muszę się na przyszłość nauczyć trzymać moją ciekawość na wodzy.~ */ EXIT
  IF ~  GlobalGT("FedEx","Global",1)
~ THEN REPLY #46487 /* ~"Żegnaj."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39505 /* ~Powiedziałem Szpetnemu, że otworzyłem skrzynkę, gdy już nie wiedziałem komu mam ją dostarczyć. Nie chce teraz zapłacić za moje starania. Jestem tym dość wzburzony, gdyż uważam, że powinienem był otrzymać jakąś, choćby niewielką, zapłatę. W końcu chciałem dostarczyć tę skrzynkę... tyle tylko, że nikt nie chciał jej ode mnie przyjąć. Tak więc otworzyłem ją pomimo ostrzeżeń, by tego nie robić. Zmieszany, opuściłem Szpetnego bez zapłaty i komentarza. Jestem po prostu zadowolony, że zakończyłem sprawę skrzynki i zamkniętego w niej biesa.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #46488 /* ~"Ostrzegałem ciem, żeby nie wychodzić z Ula z tom skrzynkom. Dziwi mniem tylko, dlaczego bies nie porwał ciem na strzępy. Jęźli przychodzisz do mniem, po zapłatem, to mówiem ci, nic z tego! Umowa była, że dostarczysz skrzynkie, a nie, że zabijesz biesa."~ */
  IF ~~ THEN REPLY #46489 /* ~"Żegnaj."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseH","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39504 /* ~Powiedziałem Szpetnemu, że zabiłem biesa, którego uwolniłem, gdy opuściłem Ul. Mimo, że fakt zabicia biesa zrobił na nim wrażenie, odmawia zapłaty za moje usługi. Raczej nie mogę się z nim kłócić, bo nie posłuchałem ostrzeżeń i nie dostarczyłem skrzynki zgodnie z jego zaleceniami.~ */ EXIT
END

IF WEIGHT #2 ~  Global("notalk","AR0100",1)
~ THEN BEGIN 20 // from:
  SAY #46490 /* ~"Powiedziałem ci już wszysko, co miałem do powiedzenia."~ */
  IF ~~ THEN REPLY #46491 /* ~"Żegnaj."~ */ EXIT
END
