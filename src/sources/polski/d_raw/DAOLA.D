// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAOLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAOLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 3 2 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45487 /* ~"Witaj w katedrze Aoskara. Czy przyszedłeś go wyznawać razem ze mną? Możesz być jego drugim apostołem."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60902 /* ~"Przychodzę w poszukiwaniu porady odnośnie skrzynki i demona."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45488 /* ~"Przychodzę w poszukiwaniu porady odnośnie skrzynki i demona."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45489 /* ~"Dlaczego nie ma innych apostołów Aoskara?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45490 /* ~"Opowiedz mi więcej o Aoskarze."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45491 /* ~"Pragnę zostać apostołem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45492 /* ~"Może innym razem. Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 2 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45493 /* ~"Zagubiona dusza powróciła. Wejdź. Podziękujmy Aoskarowi i cieszmy się z twojego powrotu. Rozumiem, że przemyślałeś propozycję przyłączenia się do mojej kongregacji."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60951 /* ~"Przychodzę w poszukiwaniu porady odnośnie skrzynki i demona."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45494 /* ~"Przychodzę w poszukiwaniu porady odnośnie skrzynki i demona."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45495 /* ~"Jakiej kongregacji? Jedynym człowiekiem, jakiego tu widzę, jesteś ty."~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45497 /* ~"Opowiedz mi więcej o Aoskarze."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45498 /* ~"Pragnę zostać apostołem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45499 /* ~"Może innym razem. Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 2 // from:
  SAY #45500 /* ~"Niech Aoskar pozwoli ci przebyć drogę bezpiecznie. Jak mogę ci pomóc?"~ */
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45501 /* ~"Chcę zakupić ten klejnot, który zabrałeś ze Skrzynki Moridora."~ */ GOTO 13
  IF ~~ THEN REPLY #45503 /* ~"Opowiedz mi więcej o Aoskarze."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45504 /* ~"Dlaczego nie ma innych apostołów Aoskara?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45506 /* ~"Pragnę zostać apostołem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45507 /* ~"Co się stało? W jednej chwili staję się apostołem, a następna rzecz, jaką widzę, to to, że utknąłem w jakimś 'labiryncie',"~ */ GOTO 17
  IF ~~ THEN REPLY #45509 /* ~"W tej chwili nic. Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Disciple","Global",1)
~ THEN BEGIN 3 // from:
  SAY #45511 /* ~"Wróciłeś! Wybacz mi moje zaskoczenie, ale jesteś pierwszym apostołem, który kiedykolwiek powrócił. Większość zdaje się znikać. Jak mogę ci pomóc?"~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60964 /* ~"Przychodzę w poszukiwaniu porady odnośnie skrzynki i demona."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45599 /* ~"Przychodzę w poszukiwaniu porady odnośnie skrzynki i demona."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45600 /* ~"Chcę zakupić ten kamień, który zabrałeś ze Skrzynki Moridora."~ */ GOTO 13
  IF ~~ THEN REPLY #45601 /* ~"Opowiedz mi więcej o Aoskarze."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45602 /* ~"Co się stało? W jednej chwili staję się apostołem, a następna rzecz, jaką widzę, to to, że utknąłem w jakimś 'labiryncie',"~ */ GOTO 17
  IF ~~ THEN REPLY #45603 /* ~"W tej chwili nic. Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shutup","Global",1)
~ THEN BEGIN 4 // from:
  SAY #45604 /* ~Aola zdaje się znajdować w głębokim transie. Od czasu do czasu słyszysz, jak wyśpiewuje modlitwy ku chwale Aoskara.~ */
  IF ~~ THEN REPLY #45605 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #45606 /* ~Wyjaśniasz mu swój problem. Aola zdaje się rozważać sprawy przez chwilę, po czym odzywa się do ciebie: "Ja, pokorny apostoł wielkiego Aoskara, faktycznie mogę ci pomóc. Najpierw musisz wręczyć mi tę skrzynkę."~ */
  IF ~~ THEN REPLY #45607 /* ~Daj mu skrzynkę.~ */ DO ~DestroyPartyItem("Dbox",TRUE)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45608 /* ~Aola kładzie Skrzynkę Moridora w środku drucianej konstrukcji w kształcie piramidy i wypowiada modlitwę do Aoskara. Znane lśnienie portalu wkrótce wypełnia boki piramidy. Wtedy Aola sięga przez portal i otwiera Skrzynkę.~ */
  IF ~~ THEN REPLY #45609 /* ~Kontynuuj.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45610 /* ~Krzyczysz, próbując go powstrzymać, ale robisz to za późno. Prawie w tej samej chwili skrzynka zaczyna niknąć, a dławiący dym zaczyna wypełniać wnętrze piramidy. Pomieszczenie napełnia się uczuciem ogromnego przerażenia i jest to wszystko, co możesz uczynić, by powstrzymać się przed wypadnięciem z namiotu.~ */
  IF ~~ THEN REPLY #45611 /* ~Kontynuuj.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45612 /* ~Zauważasz, że w chwili, gdy smużki dymu dotykają ścian piramidy, zostają wciągnięte w wir portali. Kiedy resztki dymu się rozwiewają, uczucie przerażenia mija. Aola uśmiecha się do ciebie nieco nerwowo. "Bądź świadkiem mocy Aoskara, Strażnika Bram!"~ */
  IF ~~ THEN REPLY #45613 /* ~"Jestem pewien, że bies o takiej mocy, że jego powstrzymanie wymagało aż tylu zaklęć, nie będzie miał problemów z powrotem tutaj. A gdy tak się stanie, będzie cię szukał..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45615 /* ~"Uwzględniłem to w swoich rozważaniach. Widzisz, każda strona piramidy zawiera portal do innej sfery. W efekcie rozrzuciłem jego esencję daleko i szeroko po wieloświecie. Czy wiedziałeś, że istnieją tam rasy, które uważają demony za swego rodzaju przysmak?" Zaczyna się cicho śmiać, sięgając do środka piramidy. Przesiewa proch w skrzynce, zabierając przymocowany do niego kamień. "Zapłata za moje usługi. Użyję tego, by pomóc odbudować moją piękną katedrę."~ */
  IF ~~ THEN REPLY #45617 /* ~"Zatrzymaj klejnot. Zasłużyłeś na niego. Żegnaj."~ */ DO ~SetGlobal("FedEx","Global",10)
SetGlobal("Shutup","Global",1)
CreateItem("DGem",1,0,0)
SetGlobal("Epsilon","Global",2)
AddexperienceParty(1000)
~ JOURNAL #60389 /* ~Dzięki pomocy kapłana Aoskara, skrzynka Moridora spoczęła w spokoju. W ramach zapłaty, kapłan zabrał sobie klejnot, który wieńczył Skrzynkę Moridora. Okazuje się, że kamień ten posiadał wyjątkową wartość. W zasadzie trudno się dziwić; w końcu przedmiot ten służył do obezwładniania demona. Takie rzeczy kosztują.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.2 2.2 11.1
  SAY #45618 /* ~"Przez lata miałem wielu apostołów. Niestety, wszyscy zniknęli. Tak właściwie, to jest to dość frustrujące. Gdy tylko stają się wtajemniczeni, nigdy tu nie wracają. Ostatnio chodzi plotka, że przyczyną tego jest sama Pani. Teraz nikt już tu nie przychodzi. Jesteś pierwszą duszą, która wpadła tu, od dłuższego czasu."~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45619 /* ~"Nie obawiam się. Pragnę zostać apostołem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("Aoskar","Global",0)
~ THEN REPLY #45620 /* ~"Opowiedz mi więcej o Aoskarze."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45621 /* ~"Pani... nie chcę wchodzić jej w drogę. Najlepiej udam się w drogę. Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3 1.3 2.1 3.3 10.1
  SAY #45623 /* ~Głos Aoli przybiera wychwalający ton. "Aoskar to Strażnik Bram. W Aoskarze leży moc portali, drzwi i szansy. Sigil, znane również jako Miasto Drzwi, było kiedyś domem Aoskara, dopóki nie został 'wyrzucony' przez tę przeklętą Panią. Teraz jest tutaj tak mało wyznawców Aoskara, ponieważ Pani tego zabrania. To się jednakże wkrótce zmieni, gdy pomogę ludziom ujrzeć wielkość Aoskara. Ona nie może przeciwstawić się woli ludu!"~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45624 /* ~"Pragnę zostać apostołem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("One","Global",0)
~ THEN REPLY #45626 /* ~"Dlaczego nie ma innych apostołów Aoskara?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45629 /* ~"Pani... nie chcę wchodzić jej w drogę. Najlepiej udam się w drogę. Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4 1.4 2.3 10.0 11.0
  SAY #45631 /* ~"Cudownie! Tyle czasu minęło od chwili, gdy ktoś po raz ostatni o to poprosił." Aola każe ci wykonać serię skomplikowanych rytuałów, po czym mówi: "Jesteś teraz apostołem Aoskara. Idź i nieś słowo mieszkańcom Sigil, aby wszyscy mogli żyć w jego chwale!"~ */
  IF ~~ THEN REPLY #45634 /* ~"Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
SetGlobal("Lady","Global",50)
SetGlobal("Disciple","Global",1)
SetGlobal("DMaze","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 3.2
  SAY #45635 /* ~"Na szczęście dla ciebie nie miałem jeszcze czasu go sprzedać. Pozwolę ci go zatrzymać za śmieszną sumę trzystu miedziaków."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45636 /* ~"Biorę go."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldGT(99)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #61596 /* ~"Co powiesz na sto miedziaków?"~ */ GOTO 19
  IF ~  PartyGoldLT(300)
~ THEN REPLY #45638 /* ~"Nie stać mnie na niego."~ */ GOTO 15
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45639 /* ~"To rozbój... nie zapłacę tyle."~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.0 19.0
  SAY #45641 /* ~"Niech Aoskar, bóg portali, drzwi oraz 'okazji', uśmiechnie się do ciebie."~ */
  IF ~~ THEN REPLY #45643 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2 19.1 19.2
  SAY #45645 /* ~"To naprawdę pech. Nie mogę już spuścić z ceny. Może będziesz w stanie zarobić trochę brzdęku i wrócisz. Chętnie zatrzymam ten kamień dla ciebie."~ */
  IF ~~ THEN REPLY #45646 /* ~"Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY #45648 /* ~"Naprawdę potrzebuję tych pieniędzy, by pomóc odbudować moją katedrę. Czy jesteś pewien, że nie przemyślisz tego ponownie? ...ponieważ wiem, że na targu dostanę za niego co najmniej tyle."~ */
  IF ~~ THEN REPLY #45649 /* ~"Biorę go."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("DGem",Protagonist)
~ GOTO 14
  IF ~~ THEN REPLY #45651 /* ~"Zapomnij."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.4
  SAY #45654 /* ~"Wygląda na to, jakbyś został przeniesiony przez portal. Tylko doświadczeni wyznawcy Aoskara i Pani mogą uczynić taką rzecz. To może wyjaśniać zniknięcie moich pozostałych apostołów. Muszę się nad tym zastanowić. Proszę, odejdź."~ */
  IF ~~ THEN REPLY #45657 /* ~"Żegnaj."~ */ DO ~SetGlobal("DMaze","Global",2)
SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0 1.0 3.0
  SAY #60914 /* ~Gdy wyłuszczasz swój problem, Aola ogląda krótko skrzynkę, po czym zwraca ją. "Nie czuję w niej nic dziwnego. A teraz, jeśli pozwolisz, jestem zajęty."~ */
  IF ~~ THEN REPLY #60925 /* ~"Żegnaj."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #61597 /* ~"Nie wiem, co w tobie jest, ale cię lubię. Oddam ci kamień za dwieście i ani miedziaka mniej. Co ty na to?"~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #61598 /* ~"Biorę go."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(200)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldLT(200)
~ THEN REPLY #61600 /* ~"Nie stać mnie na tyle."~ */ GOTO 15
  IF ~~ THEN REPLY #61599 /* ~"Zapomnij."~ */ GOTO 15
END
