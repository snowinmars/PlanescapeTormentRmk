// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRASKEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRASKEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45442 /* ~Głośnym, tubalnym głosem Brasken pyta cię: "Co, w imię otchłani, robisz w moim domu?! Wyjdź, zanim uczynię cię jeszcze brzydszym, niż jesteś."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45443 /* ~"Poproszono mnie, abym dostarczył ci tę skrzynkę."~ */ GOTO 8
  IF ~~ THEN REPLY #45445 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45446 /* ~"Co?! To znowu ty! O ile nie masz do mnie żadnej sprawy, to sugeruję, żebyś natychmiast opuścił mój dom."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45447 /* ~"Poproszono mnie, abym dostarczył ci tę skrzynkę."~ */ GOTO 8
  IF ~~ THEN REPLY #45448 /* ~"Wybacz, zły adres. Już idę."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 14 7 5 even though they appear after this state */
~  GlobalGT("FedEx","Global",2)
~ THEN BEGIN 2 // from:
  SAY #45449 /* ~"Precz, głupcze! Już powiedziałem ci wszystko, co wiem o Skrzynce Moridora."~ */
  IF ~~ THEN REPLY #45450 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 7 5 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45451 /* ~"Po Ulu krąży pogłoska, jakoby jakiś śmiałek zabił demona uwięzionego w Skrzynce Moridora. Mówią, że bitwa ta pozostawiła blizny na całym jego ciele. To nie byłeś przypadkiem ty?"~ */
  IF ~~ THEN REPLY #45452 /* ~"Oczywiście. A kto inny mógłby tego dokonać?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45453 /* ~Wybucha tubalnym śmiechem. "Równie bezczelny, co odważny! Podoba mi się to. Staniesz się legendą, gdy tylko rozejdą się wieści o twoich bohaterskich czynach. Niech będę jednym z pierwszych, którzy ci pogratulują. Chodź... napijemy się razem, a ty opowiesz mi o swojej odwadze."~ */
  IF ~~ THEN REPLY #45454 /* ~"Z przyjemnością wychylę z tobą kielich albo dwa."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45455 /* ~"Może innym razem. Mam wiele do zrobienia. Żegnaj."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Drunk","Global",1)
~ THEN BEGIN 5 // from:
  SAY #45456 /* ~"Wielki śmiałek powrócił. Czy zmieniłeś zdanie co do napitku? Naprawdę wielcem ciekaw opowieści o twoim bohaterskim wyczynie."~ */
  IF ~~ THEN REPLY #45457 /* ~"Z przyjemnością wychylę z tobą kielich albo dwa."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45458 /* ~"Może innym razem. Mam wiele do zrobienia. Żegnaj."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0 14.0
  SAY #45459 /* ~Po kilku kielichach, kilku piosenkach i kilku dowcipach bardzo polubiłeś Braskena. Tak właściwie, to w tej chwili chyba lubiłeś wszystkich. Wkrótce Brasken upadł pijany na podłogę. Zdajesz sobie sprawę, że czas już iść.~ */
  IF ~~ THEN REPLY #45460 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drunk","Global",2)
~ THEN BEGIN 7 // from:
  SAY #45461 /* ~"Och, moja głowa! Chyba nigdy nie wydobrzeję."~ */
  IF ~~ THEN REPLY #45462 /* ~Zostaw Braskena jego kłopotom.~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0
  SAY #45463 /* ~"Cóż, czemu nie powiedziałeś od razu? Daj mi ją i możesz odejść." Gdy podajesz Braskenowi skrzynkę, jego twarz zmienia wyraz z oczekiwania na rozbawienie. "Hej! Drugi raz się na to nie nabiorę. Zabieraj to i odejdź."~ */
  IF ~~ THEN REPLY #45464 /* ~"Nie rozumiem. Czemu nikt nie chce wziąć tej skrzynki? Najpierw Ku'atraa, a teraz ty."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45465 /* ~"Powiedziałeś Ku'atraa?" Brasken śmieje się przez chwilę. "Cóż, to ten, co ode mnie odkupił tę skrzynkę. Myślał, że robi niezły interes. Sądzę, że zdawało mu się, że sam kamień jest wart więcej, niż mi zapłacił. Biedak nie zdawał sobie sprawy w co się wpakował, dopóki nie było już za późno."~ */
  IF ~~ THEN REPLY #45466 /* ~"Co jest takiego strasznego w tej skrzynce?"~ */ GOTO 10
  IF ~~ THEN REPLY #46623 /* ~"Nie obchodzi mnie historia tej rzeczy. Po prostu powiedz mi, jak mam się jej pozbyć."~ */ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45467 /* ~"Chcesz powiedzieć, że naprawdę nie wiesz nic o tej skrzynce? Cóż, nie zaszkodzi ci, jeśli podzielę się z tobą moją wiedzą. Po pierwsze, żeby nic głupiego ci nie przyszło do głowy, klątwa dotyka tylko obecnego właściciela tej skrzynki, a żeby nim zostać musisz przyjąć ją z własnej woli."~ */
  IF ~~ THEN REPLY #45468 /* ~"Tyle jeśli chodzi o pomysł zostawienia skrzynki, aby znalazł ją ktoś inny... A więc co w niej jest?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #45469 /* ~"A to jest dobre pytanie. Ta skrzynka krąży po Ulu od zawsze. Słyszałem o niej wiele plotek. Jak zapewne jesteś w stanie sobie wyobrazić, z każdym kolejnym powtórzeniem jej historii, prawda była coraz bardziej przekręcana."~ */
  IF ~~ THEN REPLY #45470 /* ~"Mów dalej."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45471 /* ~"Słyszałem o niej wiele historii, a wszystkie zdają się mieć kilka wspólnych motywów. Nazwano tę przeklętą rzecz 'Skrzynką Moridora', a jej właściciel ponoć umrze, gdy on lub ktoś inny ją otworzy. Jeśli chodzi o zawartość, to kto wie? Niektórzy twierdzą, że jest tam pradawny smok, a inni, że zły duch samego Moridora. Nie mogę nic stwierdzić z pewnością, ale patrząc na nią każdy może powiedzieć, że jest to coś złego i otworzy ją tylko głupiec."~ */
  IF ~~ THEN REPLY #45472 /* ~"Co mam z nią zrobić?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 9.1 12.0
  SAY #45473 /* ~"Sugerowałbym, żebyś udał się do Szilandry. Mieszka ona w północno-wschodniej części Ula. To od niej 'wygrałem' tę skrzynkę. Kto wie, może ona będzie wiedzieć coś więcej o tym, co należy z nią uczynić. Albo może znajdziesz jakiegoś innego tępego trepa, który zabierze ją od ciebie. Wszystko w twoich rękach. Życzę ci powodzenia."~ */
  IF ~~ THEN REPLY #45474 /* ~"Żegnaj."~ */ DO ~SetGlobal("FedEx","Global",3)
SetGlobal("Beta","Global",2)
SetGlobal("Delta","Global",1)
AddexperienceParty(250)
~ JOURNAL #60387 /* ~Moja rozmowa z Braskenem przyniosła obfity plon. Wygląda na to, że jestem nieszczęsnym posiadaczem przeklętej skrzynki. Tak jakbym dotychczas mógł narzekać na brak kłopotów! Ów przeklęty przedmiot zwie się Skrzynką Moridora. Wygląda na to, że osoba, która z własnej woli stanie się właścicielem skrzynki, umrze w momencie, kiedy ta zostanie otwarta. Jeśli natomiast chodzi o jej zawartość, to wciąż pozostaje tajemnicą. Brasken poradził mi, abym złożył wizytę Shilandrze, która mieszka w Kostnicy w północno-wschodniej części Ula. Czy możliwe, żeby przekleństwo związane z tą skrzynką polegało również na tym, że jego aktualny właściciel musi zamęczać się poszukiwaniami poprzednich posiadaczy tego cacka?~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 14 // from:
  SAY #45475 /* ~"Wieści już krążą! Gratulacje z przełamania klątwy Skrzynki Moridora. Muszę przyznać, że byłem nieco sceptyczny, że ktoś tak paskudny jak ty będzie mógł dokonać takiej rzeczy. Mimo to wciąż myślę, że jesteś brzydszy niż dupa baku... ale mam szacunek dla tego, co zrobiłeś. Chodź, napijemy się razem, to opowiesz mi, jak tego dokonałeś."~ */
  IF ~~ THEN REPLY #45476 /* ~"Z przyjemnością wychylę z tobą kielich albo dwa."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(3)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45477 /* ~"Może innym razem. Mam wiele do zrobienia. Żegnaj."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END
