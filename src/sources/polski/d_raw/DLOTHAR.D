// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOTHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOTHAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2951 /* ~"Znowu ty? Czego tym razem chcesz od starego Lotara? Dałem ci już czaszkę twojego przyjaciela i odpowiedzi na twoje pytania. Ostrzegam cię, nie mam całego dnia, żeby się tobą zajmować." Jego wzrok dosięga cię z siłą kowalskiego młota.~ */
  IF ~~ THEN REPLY #2952 /* ~"Chciałbym uzyskać odpowiedzi na jeszcze kilka pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #28728 /* ~"Chciałem tylko z tobą jeszcze trochę porozmawiać."~ */ GOTO 2
  IF ~~ THEN REPLY #43392 /* ~"Chciałbym skorzystać z twoich zdolności leczenia."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43393 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 53.0 57.0
  SAY #28657 /* ~"Sprężaj się, obliźniony. Nie mogę tu sterczeć przez cały dzień."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28730 /* ~"Opowiedz mi o Raveli Szaradnej."~ */ GOTO 49
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28731 /* ~"Dlaczego jestem nieśmiertelny?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ JOURNAL #67691 /* ~Lotar oznajmił mi, że powodem mojej nieśmiertelności jest fakt, że moją śmiertelność zagarnęła obrzydliwa nocna wiedźma Ravela Szaradna. Lotar dodał, że jeżeli miałbym co do tego tematu dalsze pytania, to muszę osobiście udać się do Raveli, która aktualnie przebywa we wnętrzu Labiryntu, gdzie wtrącono ją z rozkazu Pani Bólu. Teraz pozostaje mi już "tylko" odszukać ten Labirynt, a potem znaleźć w nim ową Ravelę.~ */ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28732 /* ~"Dlaczego jestem nieśmiertelny?"~ */ GOTO 47
  IF ~~ THEN REPLY #28733 /* ~"Dlaczego straciłem pamięć?"~ */ GOTO 48
  IF ~~ THEN REPLY #43394 /* ~"Chciałbym skorzystać z twoich zdolności leczenia."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43395 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 11.1
  SAY #28658 /* ~Patrzy chłodno na ciebie, lekko porusza, a ty czujesz, że już po tobie.~ */
  IF ~~ THEN REPLY #28735 /* ~"Zaczekaj chwilę..."~ */ DO ~TeleportParty("AR0500",[2270.3023],2)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #28659 /* ~"Jesteś by odebrać już tego gadułę? Nuży mnie jego niekończące się skamlenie."~ */
  IF ~~ THEN REPLY #28736 /* ~"Nie, możesz go zatrzymać."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #28737 /* ~"Tak. Proszę oddaj mi go."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28660 /* ~W oczach Lotara coraz bardziej widać srogość. "Zabierzesz go tak czy inaczej." Machnięciem ręki Lotar uwalnia Mortego, który znika z półki. "Znajdziesz go na zewnątrz, na górze, w pobliżu miejsca, przez które wkroczyłeś na moje terytorium." Odwraca się. "Żegnaj."~ */
  IF ~~ THEN REPLY #61286 /* ~"Żegnaj."~ */ JOURNAL #37700 /* ~Lotar oddał mi Mortego, mimo moich zapewnień, że nie chcę widzieć tego gaduły. Mam go odebrać na górze, w pobliżu miejsca gdzie wszedłem do królestwa Władcy Kości.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #28661 /* ~Machnięciem ręki Lotar uwalnia Mortego, który znika z półki. "Znajdziesz go na zewnątrz, na górze, w pobliżu miejsca, przez które wkroczyłeś na moje terytorium." Odwraca się. "Żegnaj."~ */
  IF ~~ THEN REPLY #61287 /* ~"Żegnaj."~ */ JOURNAL #38204 /* ~Lotar oddał mi Mortego. Mam odebrać go na górze, w pobliżu miejsca gdzie wszedłem do jego królestwa.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #28662 /* ~"Znowu jesteś, jak widzę. A czy masz dla mnie czaszkę?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28757 /* ~"Mam ludzką czaszkę."~ */ GOTO 35
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28758 /* ~"Mam czaszkę szczurołaka..."~ */ GOTO 35
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28759 /* ~"Mam czaszkę Hargrimma, kapłana-szkieletu Ziem Umarłych."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 37
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28760 /* ~"Mam czaszkę Czerstwej Mary, przywódczyni zombie Ziem Umarłych."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 38
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28761 /* ~"Mam czaszkę Akasty, przywódczyni zbuntowanych ghuli."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 39
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28762 /* ~"Mam czaszkę Soego, szczurołaka, misjonarza Grabarzy."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 40
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28763 /* ~"Mam czaszkę Milczącego Króla, władcy Ziem Umarłych."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 41
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28764 /* ~"Mam czaszkę Mantuoka."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 36
  IF ~~ THEN REPLY #54116 /* ~"Jeszcze nie."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.8
  SAY #28663 /* ~"Sugeruję zatem, byś ją znalazł, jeśli w ogóle chcesz się dowiedzieć, to co chcesz wiedzieć - i jeśli w ogóle potrzebujesz tego gadatliwego pseudo mimira."~ */
  IF ~~ THEN REPLY #28765 /* ~"Dobrze. Wrócę."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #28664 /* ~"Więc? Masz dla mnie czaszkę, której żądam byśmy mogli się wymienić?" Lotar uśmiecha się drwiąco.~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28766 /* ~"W tej trumnie nie ma czaszki, Lotarze."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28767 /* ~"Jeszcze nie."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 14.1
  SAY #28665 /* ~"Odejdź, tedy. Nie wracaj tu, dopóki jej nie znajdziesz."~ */
  IF ~~ THEN REPLY #28768 /* ~"Dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 14.0 21.2 22.2 26.0 30.0 54.2
  SAY #28666 /* ~"Co to ma znaczyć? Grobowiec był tak dobrze zabezpieczony, tak dobrze chroniony przed magią wykrywającą, że był wyzwaniem nawet dla mnie! Musi być na to jakieś wytłumaczenie, i..." wolno i w gniewie mówi następne słowa, "...TY mi to wyjaśnisz. Pójdziesz przez portal, który jest w komnatach na dole i poszukasz odpowiedzi."~ */
  IF ~~ THEN REPLY #28769 /* ~"Nie znam odpowiedzi. Skąd mam wiedzieć?"~ */ GOTO 55
  IF ~~ THEN REPLY #31897 /* ~"Wydaje mi się, że to była pułapka, żeby zniechęcić łupieżców grobów, którzy plądrują takie krypty."~ */ GOTO 55
  IF ~~ THEN REPLY #31898 /* ~"To był mój własny grobowiec."~ */ GOTO 56
END

IF WEIGHT #5 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #28667 /* ~"Znowu tu?" Starzec, patrząc na ciebie, zatacza się z lekka. "Czego tym razem chcesz od starego Lotara?" Dałem ci już odpowiedzi na twoje pytania. Ostrzegam cię, nie mam całego dnia, żeby się tobą zajmować. Jego wzrok dosięga cię z siłą kowalskiego młota.~ */
  IF ~~ THEN REPLY #28770 /* ~"Chciałbym uzyskać odpowiedzi na jeszcze kilka pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #28771 /* ~"Chciałem tylko z tobą jeszcze trochę porozmawiać."~ */ GOTO 2
  IF ~~ THEN REPLY #28772 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #28668 /* ~"Jak widzę jesteś z powrotem. A masz dla mnie czaszkę?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28773 /* ~"Mam ludzką czaszkę."~ */ GOTO 35
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28774 /* ~"Mam czaszkę Mantuoka."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
AddexperienceParty(15000)
~ GOTO 57
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28775 /* ~"Mam czaszkę Hargrimma, kapłana-szkieletu Ziem Umarłych."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
~ GOTO 42
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28776 /* ~"Mam czaszkę Czerstwej Mary, przywódczyni zombie Ziem Umarłych."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
AddexperienceParty(15000)
~ GOTO 43
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28777 /* ~"Mam czaszkę Akasty, przywódczyni zbuntowanych ghuli."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
AddexperienceParty(15000)
~ GOTO 44
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28778 /* ~"Mam czaszkę Soego, szczurołaka, misjonarza Grabarzy."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
AddexperienceParty(15000)
~ GOTO 45
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28779 /* ~"Mam czaszkę Milczącego Króla, władcy Ziem Umarłych."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
AddexperienceParty(15000)
~ GOTO 46
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28780 /* ~"Mam czaszkę szczurołaka."~ */ GOTO 35
  IF ~~ THEN REPLY #54115 /* ~"Jeszcze nie."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.8
  SAY #28669 /* ~"Sugeruję, zatem, byś wrócił do katakumb i poszukał innej."~ */
  IF ~~ THEN REPLY #28782 /* ~"Dobrze, dobrze."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #28670 /* ~"Zatem? Masz czaszkę, za którą kupisz swe odpowiedzi?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28783 /* ~"W tej trumnie nie ma czaszki, Lotarze."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28784 /* ~"Jeszcze nie."~ */ GOTO 9
END

IF WEIGHT #8 /* Triggers after states #: 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 15 // from:
  SAY #28671 /* ~"Ach! Gościu. Cóż sprowadza cię do mojego skromnego salonu, bez zaproszenia, bez pozwolenia?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #28785 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #28786 /* ~"Co to za miejsce?"~ */ GOTO 20
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28787 /* ~"Kim jesteś?"~ */ GOTO 20
  IF ~~ THEN REPLY #47559 /* ~"Nic. Wybacz, moje najście."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #28672 /* ~"Ale chyba zdajesz sobie sprawę, że nie możesz wchodzić do Kości Nocy bez zaproszenia i oczekiwać, że można sobie odejść, kiedy ci się podoba. Sprzedaję tu odpowiedzi, chłopcze, i na wszystkie moce, dostanę jedną od ciebie, albo twa głowa, również upiększy mą półkę."~ */
  IF ~~ THEN REPLY #28788 /* ~"Chciałbym, żebyś spróbował starcze."~ */ GOTO 18
  IF ~~ THEN REPLY #28789 /* ~"Sprzedajesz odpowiedzi? Powiedz mi więc: Kim jestem? Dlaczego jestem nieśmiertelny?"~ */ GOTO 20
  IF ~~ THEN REPLY #28791 /* ~"Nie wydaje mi się. Żegnaj."~ */ GOTO 17
  IF ~~ THEN REPLY #43396 /* ~"Chciałbym skorzystać z twoich zdolności leczenia. Słyszałem o tobie."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #28673 /* ~"Została ci dokładnie jedna szansa, by udzielić mi odpowiedzi, zanim wydrę ją z twojej uśmiechniętej czaszki."~ */
  IF ~~ THEN REPLY #28792 /* ~"Więc, jestem tu by kupić kilka odpowiedzi."~ */ GOTO 20
  IF ~~ THEN REPLY #28793 /* ~"I masz dokładnie jedną szansę, żeby się szpicować, zanim cię zabiję."~ */ GOTO 18
  IF ~~ THEN REPLY #43397 /* ~"Chciałbym skorzystać z twoich zdolności leczenia. Słyszałem o tobie."~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.1 22.0 34.1
  SAY #28674 /* ~Oczy starca błyszczą, kiedy zaczyna intonować poprzekręcany zwrot tajemnych sylab. Ból rozdziera twe ciało. Zapada ciemność...~ */
  IF ~~ THEN REPLY #28794 /* ~"Aaach..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",1)
~ EXIT
END

IF WEIGHT #0 ~  GlobalLT("KidMorte_Speak","AR0508",2)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #28675 /* ~Błysk światła i dymu oślepia cię przez chwilę, a uschnięty starzec staje przed tobą. "Mamy gości, czaszko?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Lothar","GLOBAL",1)
SetGlobal("KidMorte_Speak","AR0508",2)
~ EXTERN ~DKIDMORT~ 4
END

IF ~~ THEN BEGIN 20 // from: 15.0 15.1 15.2 16.1 16.3 17.0 17.2
  SAY #28676 /* ~"Na wszystkie odpowiedzi i wszystkie zaklęcia, jest cena. W twoim przypadku..." starzec przerywa. "Czaszki są mą walutą. Zadaje im pytania, a umarli odpowiadają. Podczas swego życia zgromadzili niejedno. Im czaszka cenniejsza, tym więcej pytań można jej zadać, tym większe zaklęcie rzucę dla ciebie."~ */
  IF ~~ THEN REPLY #28795 /* ~"No i?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 21 // from: 54.0
  SAY #28677 /* ~W oczach Lotara pojawia się niebezpieczny błysk. "To nie była prośba."~ */
  IF ~~ THEN REPLY #28797 /* ~"Zapomnij o tym, powiedziałem."~ */ GOTO 22
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28798 /* ~"Dobrze, dobrze. Przyniosę ci twoją czaszkę."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47560 /* ~"Grobowiec, jest już pusty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #28678 /* ~"Dostaniesz, obliźniony, jeszcze jedną szansę, zanim w zamian zabiorę twą czaszkę."~ */
  IF ~~ THEN REPLY #28799 /* ~"Spróbuj, Lotarze."~ */ GOTO 18
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28800 /* ~"Nie ma potrzeby wpadać w gniew. Przyniosę ci czaszkę."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64538 /* ~"Grobowiec jest już pusty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from:
  SAY #28679 /* ~Starzec ignoruje Mortego. "Witaj, wędrowcze. Kimże jesteś, że wchodzisz do skromnego salonu Lotara bez zaproszenia?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28801 /* ~"Porwałeś mojego przyjaciela. Oddaj mi go. Natychmiast."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28802 /* ~"Porwałeś mojego przyjaciela. Oddaj mi go. Natychmiast."~ */ GOTO 25
  IF ~~ THEN REPLY #28803 /* ~"Zechciej wybaczyć panie, ale zdaje się, że masz coś, co należy do mnie."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28680 /* ~"Porwałem? Twojego przyjaciela? Niczego takiego nie zrobiłem. Gdzie jest ten przyjaciel?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 5
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28681 /* ~"Porwałem? Twojego przyjaciela? Niczego takiego nie zrobiłem. Gdzie jest ten przyjaciel?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 6
END

IF ~~ THEN BEGIN 26 // from: 21.1 22.1 54.1
  SAY #28682 /* ~"Musisz przejść albo przez Labirynty Myśli, opanowane przez czaszkoszczury albo przez Ziemie Umarłych, kontrolowane przez chodzących umarlaków, przejdź przez wodne królestwo Zatopionych Ziem i znajdź katakumbę tego bezimiennego lorda. Taki wytrawny... poszukiwacz przygód jak ty, nie powinien mieć tu żadnych trudności. Przesuń tę otomanę tutaj, przejdź przez portal we wschodniej ścianie komnat na dole. Do twojego powrotu portal pozostanie aktywny. Kiedy będziesz miał tę czaszkę, dostaniesz swoje odpowiedzi."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28804 /* ~"Byłem tam, ale w tej krypcie nie ma żadnego ciała."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28805 /* ~"Wrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY #28683 /* ~"Ach, tak? Co mogłoby to być?"~ */
  IF ~~ THEN REPLY #28806 /* ~"Czaszka, która należy do mnie jest tam na półce."~ */ GOTO 28
  IF ~~ THEN REPLY #28807 /* ~"Mój wkurzony przyjaciel Morte na półce."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #28684 /* ~"Chcesz tę trajkocącą czaszkę, której wdzięku i manier starcza ledwie na połowę zwyczajnej istoty? Daj mi lepszą czaszkę w zamian, jeśli chcesz ją dostać z powrotem," odpowiada Lotar. "Nie muszę targować się o coś, co jest już moje."~ */
  IF ~~ THEN REPLY #28809 /* ~"Nigdy nie był twój... czy czyjkolwiek... zacznijmy od tego."~ */ GOTO 32
  IF ~~ THEN REPLY #28810 /* ~"On jest mój."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28811 /* ~"Gdzie mogę znaleźć lepszą czaszkę?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64539 /* ~"Gdzie mogę znaleźć lepszą czaszkę?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from:
  SAY #28685 /* ~.~ */
  IF ~~ THEN REPLY #28812 /* ~"Dobrze. Gdzie mogę znaleźć lepszą czaszkę?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #28813 /* ~"On jest mój."~ */ GOTO 33
  IF ~~ THEN REPLY #28814 /* ~"Nigdy nie był twój, zacznijmy od tego."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3 29.0 32.0 32.2 34.0 34.2 51.2 51.3
  SAY #28686 /* ~"Przesuń otomanę na środku sali i przechodząc przez portal we wschodniej ścianie komnat na dole, dostaniesz się do katakumb. Do twojego powrotu portal pozostanie aktywny. W katakumbach jest wiele czaszek. Ta cenna znajduje się wewnątrz krypt Grabarzy, za Zatopionymi Ziemiami. Przynieś czaszkę do mnie, jako że mym sługom - szczurołakom, nie udało się to, a ja już dopilnuję, żeby zwrócono ci twojego przyjaciela. Być może odpowiem nawet na niektóre twoje pytania."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #2970 /* ~"Byłem w grobowcu, o którym mówisz. Jest pusty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #66222 /* ~Lotar powiedział mi, abym odsunął otomanę stojącą w środku pomieszczenia i odsłonił przejście prowadzące do pieczar położonych pod jego domem. Kiedy już się tam znajdę, będę mógł przejść do katakumb i odnaleźć grobowiec, usytuowany poza Zatopionymi Ziemiami. W grobowcu tym znajduje się czaszka o wielkiej wartości. Kiedy przyniosę ją Lotarowi, on zwróci mi Mortego.~ */ GOTO 10
  IF ~~ THEN REPLY #2971 /* ~"Jaką mam gwarancję, że dotrzymasz słowa?"~ */ JOURNAL #66222 /* ~Lotar powiedział mi, abym odsunął otomanę stojącą w środku pomieszczenia i odsłonił przejście prowadzące do pieczar położonych pod jego domem. Kiedy już się tam znajdę, będę mógł przejść do katakumb i odnaleźć grobowiec, usytuowany poza Zatopionymi Ziemiami. W grobowcu tym znajduje się czaszka o wielkiej wartości. Kiedy przyniosę ją Lotarowi, on zwróci mi Mortego.~ */ GOTO 31
  IF ~~ THEN REPLY #28853 /* ~"Dobrze. Wrócę, a ty oddasz mi Mortego. Żegnaj."~ */ JOURNAL #66222 /* ~Lotar powiedział mi, abym odsunął otomanę stojącą w środku pomieszczenia i odsłonił przejście prowadzące do pieczar położonych pod jego domem. Kiedy już się tam znajdę, będę mógł przejść do katakumb i odnaleźć grobowiec, usytuowany poza Zatopionymi Ziemiami. W grobowcu tym znajduje się czaszka o wielkiej wartości. Kiedy przyniosę ją Lotarowi, on zwróci mi Mortego.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #28687 /* ~"Masz moje słowo. To powinno ci wystarczyć. Chyba że, nie chcesz już ujrzeć swojego przyjaciela..."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 7
END

IF ~~ THEN BEGIN 32 // from: 28.0 29.2 51.0
  SAY #28688 /* ~"Stopień twojej ignorancji mnie zadziwia. Wiesz bardzo niewiele o bardzo niewielu rzeczach. A teraz: Przynieś mi kolejną czaszkę w zastępstwie albo pożegnaj się ze swym kolegą."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28854 /* ~"Więc dobrze. W jaki sposób mogę zdobyć czaszkę, wartą jego czaszki?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28855 /* ~"Po prostu mi go oddaj. Jest mój."~ */ GOTO 33
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64540 /* ~"Więc dobrze. W jaki sposób mogę zdobyć czaszkę, wartą jego czaszki?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 28.1 29.1 32.1 51.1
  SAY #28689 /* ~Ręce Lotara zaciskają się na lasce. "Ta czaszka jest MOJA. Jak będziesz mnie naciskał, to twoją też wezmę."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 9
END

IF ~~ THEN BEGIN 34 // from:
  SAY #28690 /* ~"Czaszka odzywa się mądrze. Rozważ to."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28856 /* ~"Więc dobrze. Jak mogę znaleźć lepszą czaszkę?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28857 /* ~"Nie wydaje mi się. Oddaj go, albo pożałujesz."~ */ GOTO 18
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64541 /* ~"Więc dobrze. Jak mogę znaleźć lepszą czaszkę?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 6.0 6.1 12.0 12.7
  SAY #28691 /* ~Lotar trzyma w górze czaszkę i dokładnie ją ogląda. "Phi. To nic nie warte. Ona mi nic nie powie. Przynieś mi wartościową czaszkę, jeśli mam tracić swój czas na ciebie. Precz!"~ */
  IF ~~ THEN REPLY #28858 /* ~"Dobrze, dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 6.7
  SAY #28692 /* ~Oczy Lotara błyskają w złości. "Zabijasz moje sługi, co? Daj mi jego czaszkę." Ogląda czaszkę dokładnie i rzecze: "Poprzez kość jego wyczuwam zdradę. Ostrożny próżniak, ale nie dość ostrożny, co? Zabiorę mu jego tajemnice, bez obaw, i poznam jego obłudę." Jego palce wykręcają się w tajemnym geście. "Twój przyjaciel będzie czekał na ciebie nad ziemią, w miejscu przez które wszedłeś. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28859 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 37 // from: 6.2
  SAY #28693 /* ~Lotar zabiera od ciebie czaszkę i ogląda ją krytycznym okiem. "Hargrimm, mówisz? Przywódca Ziem Umarłych? On dostarczy mi sporo informacji. Dobra transakcja." Jego palce wykręcają się w tajemnym geście. "Twój przyjaciel będzie czekał na ciebie na górze, w miejscu przez które wszedłeś. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28860 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 38 // from: 6.3
  SAY #28694 /* ~Lotar bierze od ciebie czaszkę Czerstwej Mary, obiera jeszcze resztki ciała i przygląda się jej dokładnie. "Przywódczyni zombie Ziem Umarłych, mówisz? To wystarczy." Jego palce wykręcają się w tajemnym geście. "Twój przyjaciel będzie czekał na ciebie nad ziemią, w miejscu przez które wszedłeś. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28861 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 39 // from: 6.4
  SAY #28695 /* ~Lotar bierze od ciebie czaszkę Akasty, obiera jeszcze resztki ciała i przygląda się jej dokładnie. "Królowa ghuli? To wystarczy." Jego palce wykręcają się w tajemnym geście. "Twój przyjaciel będzie czekał na ciebie nad ziemią, w miejscu przez które wszedłeś. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28862 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 40 // from: 6.5
  SAY #28696 /* ~Lotar bierze od ciebie czaszkę Soego i przygląda się jej dokładnie, sprawdzając zęby. "Grabarz misjonarz i szpieg, co? To wystarczy." Jego palce wykręcają się w tajemnym geście. "Twój przyjaciel będzie czekał na ciebie nad ziemią, w miejscu przez które wszedłeś. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28863 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 41 // from: 6.6
  SAY #28697 /* ~Lotar bierze od ciebie czaszkę Milczącego Króla i tuli ją delikatnie. "Milczący Król, tak? To wystarczy, zaiste. Dostaniesz swoje odpowiedzi." Szepcze do czaszki: "Wyjawisz mi wszystkie swoje tajemnice, mój nowy przyjacielu." Jego palce wykręcają się w tajemnym geście. "Twój przyjaciel będzie czekał na ciebie nad ziemią, w miejscu przez które wszedłeś. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28864 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 42 // from: 12.2
  SAY #28698 /* ~Lotar zabiera od ciebie czaszkę i ogląda ją krytycznym okiem. "Mówisz, Hargrimm? Przywódca Ziem Umarłych? On dostarczy mi sporo informacji. Dobra transakcja." Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28865 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 43 // from: 12.3
  SAY #28699 /* ~Lotar bierze od ciebie czaszkę Czerstwej Mary, obiera jeszcze resztki ciała i przygląda się jej dokładnie. "Przywódczyni Zombie Ziem Umarłych, mówisz? To wystarczy. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28866 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 44 // from: 12.4
  SAY #28700 /* ~Lotar bierze od ciebie czaszkę Akasty, obiera jeszcze resztki ciała i przygląda się jej dokładnie. "Królowa ghuli? To wystarczy. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28867 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 45 // from: 12.5
  SAY #28701 /* ~Lotar bierze od ciebie czaszkę Soego i przygląda się jej dokładnie, sprawdzając zęby. "Grabarz misjonarz i szpieg, co? Będzie dobra, a przynajmniej zabawna. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28868 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 46 // from: 12.6
  SAY #28702 /* ~Lotar bierze od ciebie czaszkę Milczącego Króla i tuli ją delikatnie. "Milczący Król, tak? To wystarczy, zaiste. Dostaniesz swoje odpowiedzi." Szepcze do czaszki: "Wyjawisz mi wszystkie swoje tajemnice, mój nowy przyjacielu."~ */
  IF ~~ THEN REPLY #28869 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 47 // from: 1.1 1.2 48.0 48.1
  SAY #28703 /* ~"Twa śmiertelność - twa dusza, jeśli zechcesz, ta która pozwala ci żyć i umrzeć - odeszła od ciebie. Odarły ją z ciebie magia i wiedźma nocy - Ravela Szaradna. Twa śmiertelność jest kluczem do twojego istnienia - gdy ją znajdziesz, znajdziesz też swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #28870 /* ~"Opowiedz mi o tej Raveli."~ */ GOTO 49
  IF ~~ THEN REPLY #28871 /* ~"Kto taki?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 1.3
  SAY #28704 /* ~"To skutek uboczny utracenia śmiertelności."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28872 /* ~"Straciłem swoją śmiertelność? Co masz na myśli?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28873 /* ~"Straciłem swoją śmiertelność? Co masz na myśli?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 1.0 47.0 47.1
  SAY #28705 /* ~"Ravela Szaradna jest zagadką, nawet pośród wiedźm nocy. Niektórzy zwą ją świrem; inni mówią, że jej gra ma głębsze znaczenie, niż można to przejrzeć. Jest zła na wskroś, robiąc sobie wrogów zobaczysz, że przy niej są święci. Jest teraz poza zasięgiem ludzi, dzięki niech będą mocom, bo została uwięziona w labiryncie przez Panią Bólu."~ */
  IF ~~ THEN REPLY #28874 /* ~"Uwięziona w labiryncie? Jak ją znajdę?"~ */ DO ~SetGlobal("bd_lothar_ravel_maze","global",1)
~ GOTO 50
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28875 /* ~"Co zrobiła?"~ */ GOTO 52
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28876 /* ~"Rozumiem. Dziękuję. Żegnaj, Lotarze."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28706 /* ~"Labirynty są jak kieszeń... małe miejsca między miejscami. By dojść do jednego z nich, musisz znaleźć portal i klucz. Nie wiem gdzie są drzwi albo klucz. Może trzeba szukać wśród swoich starych znajomych - na pewno ciągnie się za tobą ich ślad. Znajdą cię, bez wątpienia - módl się, by życzyli ci dobrze. Może dobrze by było odwiedzić Miejski Gmach Rozrywki - znajdziesz tam wiele odpowiedzi."~ */
  IF ~~ THEN REPLY #28877 /* ~"Co Ravela zrobiła?"~ */ JOURNAL #31882 /* ~Lotar zasugerował, żebym odwiedził Miejski Gmach Rozrywki w poszukiwaniu odpowiedzi na moje pytanie odnośnie Raveli Szaradnej.~ */ GOTO 52
  IF ~~ THEN REPLY #28878 /* ~"Dziękuję, Lotarze. Żegnaj."~ */ JOURNAL #31882 /* ~Lotar zasugerował, żebym odwiedził Miejski Gmach Rozrywki w poszukiwaniu odpowiedzi na moje pytanie odnośnie Raveli Szaradnej.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #28707 /* ~"Nie pozwoliłem ci się odzywać, czaszko!" Morte drży na surowy głos Lotara. "Słuchaj no, pokryty bliznami, jeśli chcesz odzyskać czaszkę, musisz przynieść mi z katakumb na dole, wartościowszą czaszkę. Nie będę targował się o coś, co jest już moje. Zaakceptuj to, lub nie."~ */
  IF ~~ THEN REPLY #28880 /* ~"Nigdy nie był twój... czy czyjkolwiek... zacznijmy od tego."~ */ GOTO 32
  IF ~~ THEN REPLY #28881 /* ~"On jest mój."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28882 /* ~"Gdzie mogę znaleźć lepszą czaszkę?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64542 /* ~"Gdzie mogę znaleźć lepszą czaszkę?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 52 // from: 49.1 50.0
  SAY #28708 /* ~"Była twórczynią gierek i zagadek, rozwiązywała problemy, które nie wymagały rozwiązania. Wymyśliła sobie, że Sigil, Klatka, jest największą zagadką ze wszystkich i że ona tę zagadkę rozwiąże - że postawi do swojej dyspozycji armię biesów, zaburzy równowagę w mieście i obróci cały gród w kostnicę. Dziękuj w modlitwie wszystkim znanym ci mocom, że się jej nie udało."~ */
  IF ~~ THEN REPLY #28883 /* ~"Więc znajdę ją i zmuszę by oddała mi mą śmiertelność. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #31864 /* ~Oczy Lotara błyskają ze złości. "Zabijasz moje sługi, co? Daj mi jego czaszkę." Ogląda czaszkę dokładnie i rzecze: "Poprzez kość jego wyczuwam zdradę. Ostrożny próżniak, ale nie dość ostrożny, co? Zabiorę mu jego tajemnice, bez obaw, i poznam jego obłudę."~ */
  IF ~~ THEN REPLY #31865 /* ~"Mam wiele pytań."~ */ GOTO 1
END

IF ~~ THEN BEGIN 54 // from: 20.0
  SAY #2912 /* ~"W twoim przypadku, Lotar zażąda tylko jednej, jedynej czaszki, która znajduje się w katakumbach na dole, w zamian za to, czego ode mnie żądasz. Jest taki grobowiec, zamknięty na klucz, poza obrębem Zatopionych Ziem, gdzie moi słudzy nie zdołali jeszcze dotrzeć. Przynieś mi czaszkę tego, który leży w środku, a odpowiem ci na wszystkie twoje pytania. Na wszystkie, jeśli będę potrafił. ZDOBĘDZIESZ tę czaszkę."~ */
  IF ~~ THEN REPLY #31867 /* ~"Mowy nie ma."~ */ JOURNAL #66223 /* ~Lotar powiedział mi, abym odsunął otomanę stojącą w środku pomieszczenia i odsłonił przejście prowadzące do pieczar położonych pod jego domem. Kiedy już się tam znajdę, będę mógł przejść do katakumb i odnaleźć grobowiec, usytuowany poza ziemią Zatopionych Ludów. W grobowcu tym znajduje się czaszka o wielkiej wartości. Kiedy przyniosę ją Lotarowi, on zechce odpowiedzieć na moje pytania.~ */ GOTO 21
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #31869 /* ~"Umowa stoi."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lotar powiedział mi, abym odsunął otomanę stojącą w środku pomieszczenia i odsłonił przejście prowadzące do pieczar położonych pod jego domem. Kiedy już się tam znajdę, będę mógł przejść do katakumb i odnaleźć grobowiec, usytuowany poza ziemią Zatopionych Ludów. W grobowcu tym znajduje się czaszka o wielkiej wartości. Kiedy przyniosę ją Lotarowi, on zechce odpowiedzieć na moje pytania.~ */ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47561 /* ~"Grobowiec, jest już pusty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lotar powiedział mi, abym odsunął otomanę stojącą w środku pomieszczenia i odsłonił przejście prowadzące do pieczar położonych pod jego domem. Kiedy już się tam znajdę, będę mógł przejść do katakumb i odnaleźć grobowiec, usytuowany poza ziemią Zatopionych Ludów. W grobowcu tym znajduje się czaszka o wielkiej wartości. Kiedy przyniosę ją Lotarowi, on zechce odpowiedzieć na moje pytania.~ */ GOTO 10
END

IF ~~ THEN BEGIN 55 // from: 10.0 10.1
  SAY #31900 /* ~"W tym co mówisz jest jednak pewien sens... Jest coś związanego z tą kryptą, z czym bym wiązał spore nadzieje. Pomyślę o tym, zachęcam cię też, byś zrobił to samo." Odwraca się, po czym niemal natychmiast zwraca się z powrotem do ciebie. "Przynieś mi więc inną czaszkę, a nasza umowa będzie aktualna. Nie próbuj mnie też oszukać byle jaką czaszką - jestem kimś w rodzaju konesera. Nie wracaj bez niczego wartościowego."~ */
  IF ~~ THEN REPLY #31901 /* ~"Dobrze. Żegnaj."~ */ JOURNAL #31875 /* ~Lotar polecił mi znaleźć inną czaszkę, w zamian za tę, której nie znalazłem w  zamkniętym grobowcu.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.2
  SAY #31902 /* ~"Twój grobowiec? TWÓJ grobowiec?" Przygląda ci się uważnie. "Przyjrzymy się temu dokładniej. Przynieś mi więc inną czaszkę, jako że widzę twe przywiązanie do tej, i zobaczymy na co będę ci mógł odpowiedzieć. Nasza umowa będzie aktualna. Nie próbuj mnie też oszukać byle jaką czaszką - jestem kimś w rodzaju konesera. Nie wracaj bez niczego wartościowego."~ */
  IF ~~ THEN REPLY #31905 /* ~"Dobrze. Żegnaj."~ */ JOURNAL #31874 /* ~Lotar polecił mi znaleźć inną czaszkę, w zamian za tę, której nie mogło być w moim zamkniętym grobowcu.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 12.1
  SAY #54113 /* ~Oczy Lotara błyskają ze złości. "Zabijasz moje sługi, co? Daj mi jego czaszkę." Ogląda czaszkę dokładnie i rzecze: "Poprzez kość jego wyczuwam zdradę. Ostrożny próżniak, ale nie dość ostrożny, co? Zabiorę mu jego tajemnice, bez obaw, i poznam jego obłudę. Dostaniesz swoje odpowiedzi."~ */
  IF ~~ THEN REPLY #54114 /* ~"Mam wiele pytań do ciebie."~ */ GOTO 1
END
