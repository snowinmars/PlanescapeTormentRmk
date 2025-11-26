// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANTUOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANTUOK~

IF ~  Global("Current_Area","GLOBAL",1600)
Global("AR0508_Visited","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25632 /* ~Widzisz hybrydę: na wpół człowieka, na wpół szczura. Jego czerwone oczy błyszczą chytrze, a głos jego jest służalczy i insynuujący. "Więc, mamy tu dwunoga ochoczo zapuszczającego się do gmachów Wielojedności. Czego chcesz i gdzie się wybierasz? Zbliż się, intruzie i mów tu prawdę Mantuokowi."~ */
  IF ~~ THEN REPLY #25665 /* ~"Właśnie wychodziłem."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #25666 /* ~"Przychodzę z Zakopanej Wioski i oglądałem to miejsce."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #25667 /* ~"Przyszedłem zobaczyć się z tobą."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #25668 /* ~"Skąd przychodzę i dokąd idę to jest tylko i wyłącznie moja sprawa."~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #25669 /* ~"Kim *jesteś*?"~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25634 /* ~"Nie dwunogu, mylisz się. Teraz odpowiesz na moje pytanie: Czego chcesz, dwunogu, i gdzie idziesz?"~ */
  IF ~~ THEN REPLY #25670 /* ~"Przychodzę z Zakopanej Wioski i oglądałem to miejsce."~ */ GOTO 2
  IF ~~ THEN REPLY #25671 /* ~"Skąd przychodzę i dokąd idę to jest tylko i wyłącznie moja sprawa."~ */ GOTO 8
  IF ~~ THEN REPLY #25672 /* ~"Kim *jesteś*?"~ */ GOTO 9
  IF ~~ THEN REPLY #25673 /* ~"Powiedziałem, że właśnie wychodzę. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #25637 /* ~"Ach, z wioski. Odśwież mi pamięć... padlinożercy, tak? Jesteś tu pogrzebać za odpadkami?"~ */
  IF ~~ THEN REPLY #25674 /* ~"Tak, ale nie ma niczego w tym nocniku, w czym warto by było pogrzebać."~ */ GOTO 3
  IF ~~ THEN REPLY #25675 /* ~"Nie."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25638 /* ~"Nic wartego zachodu, dwunogu? Jedyną nieczystością, jaką widzę w naszym pięknym domu, jesteś ty. Obawiam się jednak, że musimy się nauczyć żyć w smrodzie - nie ujrzysz już nigdy światła dnia."~ */
  IF ~~ THEN REPLY #25676 /* ~"Co przez to rozumiesz?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25677 /* ~"Grozisz mi?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25678 /* ~"Myślę, że ujrzę."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #25639 /* ~"Zatem twoja odpowiedź zmusza Mantuoka, żeby zapytać: dlaczego tu jesteś? Niewłaściwy ruch, fałszywy krok, seria pomyłek, tak? Jesteś tu, bo szukasz mnie albo Wielojedności? A może po prostu nie wiesz, czemu tu jesteś? Wyjaśnisz mi to teraz."~ */
  IF ~~ THEN REPLY #25679 /* ~"To była seria pomyłek."~ */ GOTO 5
  IF ~~ THEN REPLY #25680 /* ~"Szukam Wielojedności."~ */ GOTO 6
  IF ~~ THEN REPLY #25681 /* ~"Kim jest Wielojedność?"~ */ GOTO 9
  IF ~~ THEN REPLY #25682 /* ~"Przyszedłem zobaczyć się z tobą."~ */ GOTO 14
  IF ~~ THEN REPLY #25683 /* ~"Nie wydaje mi się, żebym miał tu coś do załatwienia."~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 17.0
  SAY #25640 /* ~"To seria pomyłek, tak? Byłoby ci znacznie lepiej popełnić ten jeden błąd mniej i nie znaleźć tu drogi."~ */
  IF ~~ THEN REPLY #25684 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25685 /* ~"Naprawię to odchodząc..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 17.1
  SAY #25642 /* ~"Mów do mnie, dwunogu, a ja przekaże twą wiadomość Wielojedności."~ */
  IF ~~ THEN REPLY #25686 /* ~"Dobrze."~ */ GOTO 7
  IF ~~ THEN REPLY #25687 /* ~"Nie sądzę."~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #25645 /* ~Mantuok pochyla się do przodu, nadstawiając ucha.~ */
  IF ~~ THEN REPLY #25688 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25689 /* ~"Żadne sprawy, o których warto by było mówić."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25690 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25691 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25692 /* ~"Milczący Król jest zbyt silny, żeby go atakować. Trzymajcie się z daleka od Ziem Umarłych, jeśli nie chcecie, żeby was truposze zniszczyły."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.1 1.3 4.4 7.1 17.3 18.2 20.1
  SAY #25646 /* ~Uśmiecha się szyderczo. "Tak mówisz. Będziemy mieć czas, żeby ponownie zastanowić się nad tą odpowiedzią - dużo czasu." Podnosi ręce, a z jego palców wychodzi dym.~ */
  IF ~~ THEN REPLY #25693 /* ~"Co do...?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 1.2 4.2 14.1 15.4 17.2
  SAY #25647 /* ~"Naprawdę nic nie wiesz, tak? To jasne, że jesteś tu przez przypadek. Nie wyjdziesz." Podnosi ręce, a z jego palców wychodzi dym.~ */
  IF ~~ THEN REPLY #25695 /* ~"Możemy o tym porozmawiać..."~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25696 /* ~"Co robisz?"~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 15.0 15.1 20.2 20.3
  SAY #25650 /* ~Przerywa. Smaga ogonem. Spogląda przez chwilę na ciebie. "Czy moje uszy dobrze słyszą, mówisz, że to tylko blef, że Milczący Król jest truposzem. Ano, dobrze słyszą." Odwraca na chwilę spojrzenie, po czym zwraca się ponownie, triumfując wzrokiem. "Wkrótce trupy będą naprawdę leżeć nieruchomo i wtedy pożywimy się trochę..." Nagle spogląda na ciebie podejrzliwie, "...o ile to nie jest jakaś sztuczka. Porozmawiasz z Wielojednością, tak?"~ */
  IF ~~ THEN REPLY #25697 /* ~"Och, a teraz mogę rozmawiać z Wielojednością?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #25652 /* ~"Ano. Pamiętaj: Wielojedność wie już jakie były twoje słowa. Żegnaj. Spotkamy się jeszcze."~ */
  IF ~~ THEN REPLY #25698 /* ~"Żegnaj, więc."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 15.2 20.4
  SAY #25654 /* ~Mantuok syczy. "Zbyt mocny, tak? Widziałeś pokaz jego siły? Phi! Zatem Wielojedność cię wysłucha. Będziesz mógł przekazać te wieści osobiście! Chodź ze mną."~ */
  IF ~~ THEN REPLY #25699 /* ~"Nie sądzę."~ */ GOTO 13
  IF ~~ THEN REPLY #25700 /* ~"Ruszajmy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25655 /* ~"To nie była prośba." Podnosi ręce, a z jego palców wychodzi dym.~ */
  IF ~~ THEN REPLY #25701 /* ~"Co do..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 4.3
  SAY #25656 /* ~"Przyszedłeś żeby się ze *mną* zobaczyć? A któż cię przysłał z tym głupim posłannictwem?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #25702 /* ~"Soe."~ */ DO ~SetGlobal("Know_Soego_Rats","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25703 /* ~"Nikt."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25704 /* ~"Nikt. Po prostu wydawało mi się, że jesteś jednym z tych, którzy mają pozycję."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #25657 /* ~Przerywa, jak gdyby cię oceniał. "A dlaczego kapłan pyłu i popiołu nie posłużył się zwykłymi metodami? Dlaczego Soe Szczurowaty nie wykorzystał gońców? Phi. Nie ważne. Przekaż mi swe wieści i kończmy z tym."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25705 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25706 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25707 /* ~"Milczący Król jest zbyt silny, żeby go atakować. Trzymajcie się z daleka od Ziem Umarłych, jeśli nie chcecie, żeby was truposze zniszczyły."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
  IF ~~ THEN REPLY #25708 /* ~"Powiedział mi, że mam mówić tylko z Wielojednością."~ */ GOTO 16
  IF ~~ THEN REPLY #25709 /* ~"W zasadzie to nie mam żadnych wiadomości."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #25658 /* ~Ogon szczurołaka smaga wściekle. "Dobrze. Będziesz mógł rozmawiać z Wielojednością. Nie kłam, dwunogu, bo Wielojedność potrafi czytać w twoich myślach z równą łatwością, jak słyszeć twój głos."~ */
  IF ~~ THEN REPLY #25710 /* ~"Będę o tym pamiętał."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #25659 /* ~"Język twój cierpi na brak równowagi między kłamstwami, a pochwałami, znak to jest oszusta. Wyrażaj się jasno, jeśli nie chcesz cierpieć. Jakie sprawy tu załatwiasz i czego szukasz? Jesteś tu może na wskutek serii pomyłek? Co tu robisz?"~ */
  IF ~~ THEN REPLY #25711 /* ~"To była seria pomyłek."~ */ GOTO 5
  IF ~~ THEN REPLY #25712 /* ~"Szukam Wielojedności."~ */ GOTO 6
  IF ~~ THEN REPLY #25713 /* ~"Kim jest Wielojedność?"~ */ GOTO 9
  IF ~~ THEN REPLY #25714 /* ~"Nie wydaje mi się, żebym miał tu jakieś sprawy do załatwienia."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 6.1
  SAY #25660 /* ~"A dlaczego? Jakie sprawy masz do załatwienia z Wielojednością?"~ */
  IF ~~ THEN REPLY #25715 /* ~"Przynoszę wieści."~ */ GOTO 19
  IF ~~ THEN REPLY #25716 /* ~"Moje sprawy nie powinny cię obchodzić."~ */ GOTO 20
  IF ~~ THEN REPLY #25717 /* ~"Nic szczególnego."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #25661 /* ~Kiedy otwiera usta, żeby wypuścić potok obelg, oczy zwracają mu się gdzieś w oddal, a głowa przechyla na jedną stronę, jak gdyby nasłuchiwał jakichś wiadomości. Kiedy jego wzrok skierowuje się znowu na ciebie, rzuca: "Lepiej, żeby twoje wieści warte były wysłuchania, dwunogu, w przeciwnym razie twe męczarnie staną się legendą."~ */
  IF ~~ THEN REPLY #25718 /* ~"Oszczędź mi gróźb. Chodźmy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #25662 /* ~"Jestem głosem Wielojedności! Natychmiast powiedz, co cię tu sprowadza! Zaczyna mówić niższym, przymilnym głosem. "Albo mi powiesz, albo czekają cię… nieprzyjemności, jasssne?""~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #25719 /* ~"Wielojedność sprawi, że doznasz cierpienia, jeśli spróbujesz mnie skrzywdzić, Mantuoku."~ */ GOTO 21
  IF ~~ THEN REPLY #25720 /* ~"Właściwie nie mam żadnej sprawy."~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25721 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25722 /* ~"Milczący Król jest tylko martwym szkieletem. Nie ma mocy."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25723 /* ~"Milczący Król jest zbyt silny, żeby go atakować. Trzymajcie się z daleka od Ziem Umarłych, jeśli nie chcecie, żeby was truposze zniszczyły."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #25663 /* ~Mantuok podskakuje na te słowa, po czym wydaje syk. "Niedobry, niedobry, człowiek. Grozi Mantuokowi. Nie okazuje szacunku Mantuokowi. Lekceważy jego służbę. Naraża uszy Mantuoka na zadziorne groźby. Nie znalazłeś tu przyjaciół, człowieku. Idź do Wielojedności."~ */
  IF ~~ THEN REPLY #25724 /* ~"Dziękuję. Naprawdę mi pomogłeś."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #29320 /* ~Widzisz hybrydę: na wpół człowieka, na wpół szczura. Jego czerwone oczy błyszczą chytrze, a głos jego jest służalczy i insynuujący. "Więc, mamy tu dwunoga skradającego się do gniazda sług Lotara. Czego chcesz i gdzie się wybierasz? Zbliż się, intruzie i mów tu prawdę Mantuokowi."~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29351 /* ~"Szukam Lotara. Chcę odzyskać czaszkę."~ */ GOTO 23
  IF ~~ THEN REPLY #29352 /* ~"Kim jesteś?"~ */ GOTO 27
  IF ~~ THEN REPLY #29353 /* ~"Szukam kogoś kto jest tu zwierzchnikiem."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29354 /* ~"Szukam mojego przyjaciela Mortego."~ */ GOTO 32
  IF ~~ THEN REPLY #29355 /* ~"Tylko się rozglądam."~ */ GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 22.0 52.0
  SAY #29321 /* ~Szczurołak pochyla głowę na wzmiankę o Lotarze i syczy na ciebie. "Posłał bezwłosego, żeby mu wypełnił zadanie? Nie do wiary!"~ */
  IF ~~ THEN REPLY #29356 /* ~"Powiedział, że jesteś nic nie wart i potrzebuje kogoś, komu mógłby zaufać. I wybrał mnie."~ */ GOTO 24
  IF ~~ THEN REPLY #29357 /* ~"Niemniej jednak."~ */ GOTO 24
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29358 /* ~"Chciałbyś kawałek sera, Mantuoku?" Daj mu zatruty ser.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29363 /* ~"Chciałbyś kawałek sera, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #29322 /* ~Mantuok znowu syczy na ciebie. "Idź więc precz i nie wracaj bez czaszki." Przerywa i spogląda na ciebie podejrzliwie. "A może masz już tę czaszkę?"~ */
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29364 /* ~Daj mu zatruty ser. "Może sera, Mantuoku?"~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29365 /* ~Daj mu ser. "Może sera, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
  IF ~~ THEN REPLY #29366 /* ~"Właściwie, tak."~ */ GOTO 36
  IF ~~ THEN REPLY #29367 /* ~"Jeszcze nie. Ale wrócę z nią."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.0 36.8 38.8 41.1 42.3
  SAY #29323 /* ~Szczurołak chwyta zatruty ser z twojej wyciągniętej ręki i uważnie go obwąchuje, przyglądając się podejrzliwie. Pożera go, a spazmy zaczynają trząść jego ciałem. Upada na ziemię w drgawkach, a z pyska wypływa cienka strużka zakrwawionej śliny.~ */
  IF ~  NumTimesTalkedTo(0)
~ THEN REPLY #29368 /* ~"Żegnaj, szczurołaku."~ */ DO ~AddexperienceParty(2000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
  IF ~  NumTimesTalkedToGT(0)
~ THEN REPLY #29369 /* ~"Gnij w piekle, Mantuoku."~ */ DO ~AddexperienceParty(5000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.1
  SAY #29324 /* ~Szczurołak chwyta zatruty ser z twojej wyciągniętej ręki i uważnie go obwąchuje, przyglądając się podejrzliwie. Nachyla się nad nim i rzecze, "Idź, obcy. Pomówimy jeszcze, gdy wrócisz." Zabiera się za skubanie sera.~ */
  IF ~~ THEN REPLY #29370 /* ~"Smacznego, Mantuoku."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY #29325 /* ~"Jestem Mantuok. Jestem głosem Wielojedności i wysłannikiem Lotara, Pana Kości. Ja tutaj pytam, a ty odpowiadasz. Czego tu chcesz?"~ */
  IF ~~ THEN REPLY #29371 /* ~"Kim jest Wielojedność?"~ */ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29372 /* ~"Kim jest Lotar?"~ */ GOTO 30
  IF ~~ THEN REPLY #29373 /* ~"Pracujesz dla obu z nich? Czy to nie wystawia na próbę twej lojalności?"~ */ GOTO 37
  IF ~~ THEN REPLY #29374 /* ~"Tylko się rozglądam."~ */ GOTO 33
  IF ~~ THEN REPLY #29375 /* ~"Szukam pana tego miejsca."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29376 /* ~"Szukam mojego przyjaciela Mortego."~ */ GOTO 32
  IF ~~ THEN REPLY #29377 /* ~"Nie twoja sprawa."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.6 30.3 37.3
  SAY #29326 /* ~"Wszystko co się tu dzieje, to moja sprawa. Gadaj, albo moi szczurowaci pobratymcy na wieki urządzą sobie ucztę z twego ciała."~ */
  IF ~~ THEN REPLY #29378 /* ~"Tylko się rozglądam."~ */ GOTO 33
  IF ~~ THEN REPLY #29379 /* ~"Szukam pana tego miejsca."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29380 /* ~"Szukam mojego przyjaciela Mortego."~ */ GOTO 32
  IF ~~ THEN REPLY #29381 /* ~"Powiedziałem, że to nie twoja sprawa."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #29327 /* ~Pysk Mantuoka zwiera się i zaczyna mruczeć po swojemu do siebie. "Zatem. Posmakuję twej krwi i odkryję tajemnice twego ciała. Szczury! Do mnie!" Uderza.~ */
  IF ~~ THEN REPLY #29382 /* ~"Dalej, Mantuoku."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 27.1
  SAY #29328 /* ~"Tutaj, mięsisty, ja zadaję pytania. Nie odpowiadam na nie. Czego... chcesz?"~ */
  IF ~~ THEN REPLY #29383 /* ~"Tylko się rozglądam."~ */ GOTO 33
  IF ~~ THEN REPLY #29385 /* ~"Szukam pana tego miejsca."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29386 /* ~"Szukam mojego przyjaciela Mortego."~ */ GOTO 32
  IF ~~ THEN REPLY #29387 /* ~"Nie twoja sprawa."~ */ GOTO 28
END

IF ~~ THEN BEGIN 31 // from: 22.2 27.4 28.1 30.1 37.1 52.1
  SAY #29329 /* ~"Szukasz Lotara? Przecież przychodzisz z jego przybytku. Odejdź teraz, a zapomnę, że cię widziałem."~ */
  IF ~~ THEN REPLY #29388 /* ~"Dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.3 27.5 28.2 30.2 37.2 52.2
  SAY #29330 /* ~"Gadającej czaszki? Phi. Niepotrzebna strata czasu. Mam nadzieję, że dogadaliście się z Panem Kości, co do odzyskania twojego przyjaciela, bo nie ma innego sposobu, żeby go zdobyć."~ */
  IF ~~ THEN REPLY #29389 /* ~"Będę o tym pamiętał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 22.4 27.3 28.0 30.0 37.0 52.3
  SAY #29331 /* ~"To nie do przyjęcia. Musisz mieć cel, że wchodzić do gniazda mych braci."~ */
  IF ~~ THEN REPLY #29390 /* ~"Zatem, wychodzę."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29332 /* ~"Tak. Zrobisz to. Nie wracaj, jeśli nie chcesz cierpieć."~ */
  IF ~~ THEN REPLY #29391 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #29333 /* ~Mantuok patrzy na ciebie uważnie i rozważa twe słowa. "Nie myśl, że zapomnę twe słowa, człowieku. Wejdź i zobacz się z panem, jeśli chcesz, ale pamiętaj, że do końca twych dni będziesz na oku." Odchodzi na bok.~ */
  IF ~~ THEN REPLY #29392 /* ~"Będę o tym pamiętał. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN BEGIN 36 // from: 24.2
  SAY #29334 /* ~"A czy udało ci się zdobyć tę konkretną czaszkę, którą chciał pan?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29393 /* ~"Mam czaszkę."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29394 /* ~"Tak, ze szkieletu."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29395 /* ~"Tak, z zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29396 /* ~"Tak, z ghula."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29397 /* ~"Tak, ze szczurołaka."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29398 /* ~"Tak, z długo martwego szkieletu."~ */ GOTO 41
  IF ~~ THEN REPLY #29399 /* ~"Jeszcze nie."~ */ GOTO 43
  IF ~~ THEN REPLY #29400 /* ~"Zejdź mi z drogi, Mantuoku, albo zabiję cię tam, gdzie stoisz."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29401 /* ~"Chciałbyś kawałek sera, Mantuoku? Daj mu zatruty ser.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29402 /* ~"Chciałbyś kawałek sera, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY #29335 /* ~"Aniby dlaczego, co? Lotar zna tajniki mocy, a Wielojedność zna tajemnice miasta. Może kiedyś napuszczę ich na siebie, przez co zyskam na wielkości. Wielojedność dostrzega wiele zalet w takim układzie... a przystosowanie mieszkańców Zakopanej Wioski, może pomóc w rozszerzeniu zasięgu Lotara i Wielojedności. Same zalety, czyż nie? Teraz mów... co cię tu sprowadza?"~ */
  IF ~~ THEN REPLY #29403 /* ~"Rozglądam się tylko."~ */ GOTO 33
  IF ~~ THEN REPLY #29404 /* ~"Szukam pana tego miejsca."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29405 /* ~"Szukam mojego przyjaciela Mortego."~ */ GOTO 32
  IF ~~ THEN REPLY #29406 /* ~"Nie twoja sprawa."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 36.9 41.2 42.4
  SAY #29336 /* ~Porywa ser z twojej ręki i pożera go jednym kęsem. "Co do tej czaszki, człecze, masz ją?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29407 /* ~"Mam czaszkę."~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29408 /* ~"Tak, ze szkieletu."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29409 /* ~"Tak, z zombie."~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29410 /* ~"Tak, z ghula."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29411 /* ~"Tak, ze szczurołaka."~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29412 /* ~"Tak, z długo umarłego szkieletu."~ */ GOTO 41
  IF ~~ THEN REPLY #29413 /* ~"Jeszcze nie."~ */ GOTO 43
  IF ~~ THEN REPLY #29414 /* ~"Zejdź mi z drogi, Mantuoku, albo zabiję cię tam, gdzie stoisz."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29415 /* ~"Chciałbyś jeszcze kawałek sera, Mantuoku?" Daj mu zatruty ser.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0 38.0
  SAY #29337 /* ~"Czy to ta, o którą prosił cię Lotar?"~ */
  IF ~~ THEN REPLY #29416 /* ~"Tak."~ */ GOTO 41
  IF ~~ THEN REPLY #29417 /* ~"Nie."~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #29338 /* ~Mantuok wykrzywia wargę. "Zatem koniecznie wręcz ją Panu. Będzie niezmiernie rad z twojego powrotu."~ */
  IF ~~ THEN REPLY #29418 /* ~"Dziękuję, Mantuoku."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1 36.2 36.3 36.4 36.5 38.1 38.2 38.3 38.4 38.5 39.0
  SAY #29339 /* ~"Daj mi ją, a ja oddam ją Panu. Twe usługi nie są już konieczne."~ */
  IF ~~ THEN REPLY #29419 /* ~"Nie, myślę że sam mu ją zaniosę."~ */ GOTO 42
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29420 /* ~"Chciałbyś kawałek sera, Mantuoku?" Daj mu zatruty ser.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29421 /* ~"Chciałbyś kawałek sera, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29422 /* ~Daj mu bezimienną czaszkę: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29423 /* ~Daj mu czaszkę Hargrimma: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29424 /* ~Daj mu czaszkę Czerstwej Mary: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29425 /* ~Daj mu czaszkę Akasty: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29426 /* ~Daj mu czaszkę Soego: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29427 /* ~Daj mu czaszkę Milczącego Króla: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29340 /* ~"Nie rozumiesz..." Pazury Mantuoka wysuwają się i wsuwają, a ogon zaczyna machać. "To nie była prośba. Dawaj mi tę czaszkę. Nie chcemy kłopotów... nigdzie tutaj, dwunogu. Takie kłopoty, nawet taki jeden kłopot jak ty, byłby trudny do potraktowania."~ */
  IF ~~ THEN REPLY #29428 /* ~"Zapewne twoja żałosna choroba uszkodziła ci słuch. Powiedziałem, że dam Lotarowi czaszkę."~ */ GOTO 48
  IF ~~ THEN REPLY #29429 /* ~"Powiedziałem, że dam Lotarowi czaszkę."~ */ GOTO 47
  IF ~~ THEN REPLY #29430 /* ~"Pozwól mi przejść, albo zabiję cię tam, gdzie stoisz."~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29431 /* ~"Chcesz kawałek sera, Mantuoku?" Daj mu zatruty ser.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29432 /* ~"Chcesz kawałek sera, Mantuoku?"~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #29433 /* ~"Lotar obiecał mi bezpieczne przejście. Jeśli będziesz stał mi na drodze, dowie się o tym, albo ode mnie albo od mojej czaszki, gdyby przypadkiem udało ci się mnie zabić."~ */ GOTO 45
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29434 /* ~Daj mu bezimienną czaszkę: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29435 /* ~Daj mu czaszkę Hargrimma: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29436 /* ~Daj mu czaszkę Czerstwej Mary: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29437 /* ~Daj mu czaszkę Akasty: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29438 /* ~Daj mu czaszkę Soego: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29439 /* ~Daj mu czaszkę Milczącego Króla: "Proszę, więc. Weź tę czaszkę."~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.6 38.6
  SAY #29341 /* ~"Więc *przynieś* ją, dwunogu. Nie wracaj bez niej. Nie każ czekać panu."~ */
  IF ~~ THEN REPLY #29440 /* ~"Nie każę mu już dłużej czekać."~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 38.7 42.2
  SAY #29342 /* ~"Nie, człeku, myślę, że to nie ja będę tym, który dziś umrze. Wydrę tę czaszkę, którą pan pragnie, z twoich zimnych, martwych paluchów."~ */
  IF ~~ THEN REPLY #29441 /* ~"Spróbuj."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #29343 /* ~"Zatem zabiję cię i zakopię twoją czaszkę i ciało w miejscu, którego nikt nie znajdzie."~ */
  IF ~~ THEN REPLY #29442 /* ~"Spróbuj, Mantuoku."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.3 41.4 41.5 41.6 41.7 41.8 42.6 42.7 42.8 42.9 42.10 42.11
  SAY #29344 /* ~Mantuok bierze czaszkę i obwąchuje krytycznie. "Wiele, wiele miejsc w katakumbach, dwunogu, nie? Wiele miejsc, gdzie można zamurować kogoś na całą wieczność, a krzyków jego nikt nie usłyszy. Do jednego z tych miejsc cię zabierzemy i zostawimy, byś cierpiał." Odwróca się do swoich towarzyszy szczurołaków. "Dźgajcie dwunoga, dopóki nie upadnie. Ciało zabierzcie do katakumb i żywcem pochowajcie."~ */
  IF ~~ THEN REPLY #29443 /* ~"Ty skurlony..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY #29345 /* ~"Nie pozostawiasz mi zatem wyboru." Odwróca się do swoich towarzyszy szczurołaków. "Dźgajcie dwunoga dopóki nie upadnie. Ciało zabierzcie do katakumb i gdzieś zamurujcie. Niech na wieki staną się jego grobem."~ */
  IF ~~ THEN REPLY #29444 /* ~"Ty skurlony..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.0
  SAY #29346 /* ~"To nie choroba! To błogosławieństwo! Jestem o wiele potężniejszy niż ty, bardziej trup niźli człowiek."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #29445 /* ~"Jako lepszy ode mnie, zapewne masz przywilej mieszkania w ściekach, zjadania brudów i sporadycznych truposzy, ubierania się w szałowe łachmany i chodzenia z tym swoim gołym, łuskowatym ogonem ciągniętym za sobą w gnoju. Jesteś szkodnikiem, cieniem człowieka, desperacko pragnącym człowieczeństwa. Żałosne."~ */ GOTO 49
  IF ~~ THEN REPLY #29446 /* ~"Nie równasz się ze mną."~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29347 /* ~Kiedy to mówisz, oczy Mantuoka szklą się od wściekłości. Bez słowa rzuca się na ciebie.~ */
  IF ~~ THEN REPLY #29447 /* ~"Lepiej ty sam, niż ty i twoi przyjaciele..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #29348 /* ~"Nie, jesteśmy twymi zwierzchnikami. Jesteśmy drapieżnikami. Polujemy na dwunogi. Jesteś naszym pożywieniem."~ */
  IF ~~ THEN REPLY #29448 /* ~"Jesteś moim obiektem do ćwiczeń."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29349 /* ~Odwraca się do swoich towarzyszy szczurołaków. "Dźgajcie dwunoga, dopóki nie upadnie. Ciało zabierzcie do katakumb i gdzieś zamurujcie. Niech na wieki staną się jego grobem."~ */
  IF ~~ THEN REPLY #29449 /* ~"Chciałbym to widzieć..."~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedToGT(0)
~ THEN BEGIN 52 // from:
  SAY #29350 /* ~"Jesteś z powrotem, człecze. Czego chcesz?"~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29450 /* ~"Szukam Lotara. Chce odzyskać czaszkę."~ */ GOTO 23
  IF ~~ THEN REPLY #29451 /* ~"Szukam kogoś, kto jest tu zwierzchnikiem."~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29452 /* ~"Szukam mojego przyjaciela Mortego."~ */ GOTO 32
  IF ~~ THEN REPLY #29453 /* ~"Tylko się rozglądam."~ */ GOTO 33
END
