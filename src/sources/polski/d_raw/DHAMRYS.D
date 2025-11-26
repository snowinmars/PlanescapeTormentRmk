// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAMRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAMRYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3020 /* ~Mężczyzna z kwadratową szczęką wygląda na twardziela. Odwraca się do ciebie z szerokim uśmiechem na twarzy. "Jak się masz, śmiałku, dzień dobry, dzień dobry." Przez chwilę spogląda na ciebie, a następnie wyciąga rękę na powitanie.~ */
  IF ~~ THEN REPLY #3021 /* ~Uściśnij mu dłoń: "Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #36645 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36646 /* ~"Hamrys, do usług. Jestem członkiem Harmonium i wytwórcą świetnych trumien. Chyba się znamy, prawda...? Zobaczmy, czy potrafię sobie przypomnieć..." Przez chwilę zastanawia się. "Powiem ci, że kiedy byłem w Harmonium, miałem niezłą pamięć do imion. Znałem wszystkich w dzielnicy..."~ */
  IF ~~ THEN REPLY #36647 /* ~Kłamstwo: "Nazywam się Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Hamrys_1","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36648 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36649 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 14.2 15.3 16.1 17.1 18.0 19.0 20.1 21.0 23.1 24.1 25.1 29.1 31.1 32.1 33.1 34.1 35.1 36.1 37.2 38.3 39.1 40.1 41.1 42.1 43.1 45.0 47.0 48.1 49.2 50.2 52.1 54.2 55.2 57.1 59.1 60.0 61.3 62.1 63.1 64.1 65.0 66.0 67.2 68.2 69.1 71.2 72.2 73.0 74.1 76.0
  SAY #36650 /* ~Kiwa głową. "Pytaj." Posyła ci szeroki uśmiech.~ */
  IF ~  Global("Dream","GLOBAL",3)
Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36651 /* ~"Chcę kupić poduszkę do trumny."~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36652 /* ~"Szukam kogoś, kto zwie się Lotar, albo Pan Kości..."~ */ GOTO 19
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36653 /* ~"Miałem czaszkę, ale ktoś mi ją ukradł. Czy znasz kogoś, kto mógłby zrobić coś takiego?"~ */ GOTO 20
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #36654 /* ~"Szukam dziennika. Nie widziałeś jakiegoś?"~ */ GOTO 22
  IF ~  Global("Know_Hamrys_Father","GLOBAL",1)
~ THEN REPLY #36655 /* ~"Słyszałem, że umarł twój ojciec. Czy możesz mi powiedzieć, co się stało?"~ */ GOTO 41
  IF ~  !Global("Release_Dimtree","GLOBAL",5)
~ THEN REPLY #36656 /* ~"Kim jest twój przyjaciel?"~ */ GOTO 42
  IF ~~ THEN REPLY #36657 /* ~"Opowiedz mi o tej dzielnicy."~ */ GOTO 46
  IF ~~ THEN REPLY #36658 /* ~"Co możesz mi powiedzieć o Sigil?"~ */ GOTO 55
  IF ~~ THEN REPLY #36659 /* ~"Muszę już iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36660 /* ~Kiwa głową. "Ach! Więc przyszedłeś żeby coś kupić. Zapewniam cię, że kocham to, co robię. Prawdziwą wartość mojej profesji poznasz po tym, jak tworzę trumnę... jak ją kształtuję. Jest to akt doskonale uporządkowanej kreacji, każdy kawałek musi być idealnie dopasowany, tak by całość była jak najlepsza. To metafora filozofii Harmonium... tworzymy porządek, a porządek to piękno..."~ */
  IF ~~ THEN REPLY #36661 /* ~"Potrzebuję tylko poduszki..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36662 /* ~Znów kiwa głową. "Potrzebuję pięćdziesiąt miedziaków na deski główne, nie licząc robocizny. Zwykle je wybielam lub maluję na taki kolor, na jaki życzy sobie klient. Deski są zwykle grube na szesnaście dłoni, czasem nawet grubsze, co zależy od tego czy nieboszczyk to człowiek, czy nie. Lub od tego, czy rodzina chce być pewna, że gość już nie wstanie z grobu." Śmieje się.~ */
  IF ~~ THEN REPLY #36663 /* ~"Potrzebuję tylko poduszki..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36664 /* ~Znów kiwa głową. "Niektórzy wolą Dwutopiańską sosnę, która jest drewnem dobrym i tradycyjnym, ale ja osobiście wolę Arboreańską dębinę, gdyż po prostu to drewno ma dobrą wagę. Nawet jedna dwudziesta cala dębiny jest mocniejsza niż jedna szesnasta dłoni sośniny..." Przerywa.~ */
  IF ~~ THEN REPLY #36665 /* ~"Mówię, że potrzebuję poduszki..."~ */ GOTO 6
  IF ~~ THEN REPLY #36666 /* ~"Mam dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36667 /* ~Kiwa głową. "Teraz, będę potrzebował około czterystu stalowych śrub do drewna, mniej więcej osiem na jeden i ćwierć cala. Można je kupić w wielu tutejszych sklepach. Do zabezpieczenia wewnętrznej okładziny będą mi potrzebne metalowe szpilki, najlepiej kupić kilkanaście. Jest też kwestia listew, ale wszystko zależy od twojej decyzji."~ */
  IF ~~ THEN REPLY #36668 /* ~"Słuchasz mnie? Mówię, że chcę tylko poduszkę!"~ */ GOTO 7
  IF ~~ THEN REPLY #36669 /* ~"Mam dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36670 /* ~Przykłada dłoń do policzka. "I chociaż zwykle pozwalam na to, by kolor trumny był taki jak kolor drewna, czasami zleceniodawca chce by ją malować lub coś na niej tłoczyć... choć jestem w tym kierunku wykwalifikowany, zwykle nie robię tak wyszukanych rzeczy, gdyż nie pozwala na to czas..." Zaczerpuje powietrza. "A, i jeszcze uchwyty..." Porozumiewawczo kiwa głową.~ */
  IF ~~ THEN REPLY #36671 /* ~Wzdychasz: "Co z tymi uchwytami?"~ */ GOTO 8
  IF ~~ THEN REPLY #36672 /* ~"Jeśli się nie zamkniesz i nie dasz mi poduszki... walnę cię."~ */ GOTO 10
  IF ~~ THEN REPLY #36673 /* ~"Mam dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #36674 /* ~Uchwyty to ważna rzecz: wszystko zależy od tego kto będzie nieść trumnę: jeśli zawodowcy, którzy noszą ją na ramionach, nie musisz zawracać sobie głowy uchwytami, oni nigdy ich nie używają. Jeśli jednak krewni i przyjaciele, to uchwyty będą potrzebne. Albo z lin albo nawet metalowe..." Rzuca pełne zadowolenia spojrzenie.~ */
  IF ~~ THEN REPLY #36675 /* ~"Wszystko pięknie, ale jestem tu po to, by dostać poduszkę... Masz jakieś?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36676 /* ~Podam ci przykład: Myślę, że najpiękniejsza trumna, jaką kiedykolwiek widziałem to taka, która była zrobiona z czystej sosny. Nie wiem skąd mieli takie drewno, czy z jakiegoś miejsca w Dwutopii, czy skąd... Tak, czy owak, została starannie złożona i pięknie wykończona sekwoją. Cały efekt psuła źle spleciona, gruba konopna lina naokoło trumny. Wiem, że należało umieścić coś, co ułatwiałoby jej niesienie, ale żeby zepsuć cały efekt źle uplecioną liną..." Hamrys kiwa głową.~ */
  IF ~~ THEN REPLY #36677 /* ~"Z pewnością jest to fascynujące i w ogóle, ale ja chcę tylko poduszkę..."~ */ GOTO 10
  IF ~~ THEN REPLY #36678 /* ~"Mam dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 9.0
  SAY #36679 /* ~"Jest też kwestia pomiarów. Lubią płatać figle, więc zwykle sam je robię, choć od czasu do czasu jakiś klient nie chce mnie poinformować co do rasy zmarłego, lub na przykład szerokości bioder... a jest to naprawdę ważne. Poza tym, jeśli klient wciąż żyje, próbuję się jakoś zabezpieczyć na wypadek, gdyby zdążył trochę przytyć, zanim umrze, rozumiesz?" Przerywa. "Jest jeszcze kwestia samej konstrukcji..."~ */
  IF ~~ THEN REPLY #36680 /* ~"Hamrys..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36681 /* ~"Jest wiele różnych sposobów łączenia boków razem ze sobą oraz z podłogą. Niektórzy używają wewnętrznych listew lub listew narożnych, oraz dużej ilości śrub do drewna. Można także zastosować metodę "na zakładkę" i po prostu wyciąć kołki i rowki wzdłuż krawędzi, tak, aby można było włożyć jedno w drugie. Wymaga to trochę więcej pracy i niezłej precyzji, ale taka trumna wygląda bardzo schludnie i jest bardzo wytrzymała." Zatrzymuje się, by zaczerpnąć powietrza.~ */
  IF ~~ THEN REPLY #36682 /* ~"Hamrys..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36683 /* ~Jest też sprawa wieka. Na brzegach musi mieć obwódkę, drewnianą obwódkę, którą przymocowuje się albo do wieka, albo do samej krawędzi. Gdy już wywiercisz w wieku dziury, musisz na górze wkręcić śruby, tak z pół dłoni od siebie..." Odnosisz wrażenie, że wpadł w trans i nigdy nie przestanie.~ */
  IF ~~ THEN REPLY #36684 /* ~"Jeśli się nie zamkniesz i nie dasz mi poduszki... walnę cię."~ */ GOTO 13
  IF ~~ THEN REPLY #36685 /* ~"Mam dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36686 /* ~W końcu chyba zwraca na ciebie uwagę. Marszczy czoło, ma wyraźnie zakłopotaną minę. "Przepraszam?"~ */
  IF ~~ THEN REPLY #36687 /* ~"Mówię, że potrzebna mi jest poduszka do trumny. Tylko to, poduszka. Masz jakieś?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36688 /* ~Uśmiecha się z wyraźną ulgą. "Poduszka? Ach, myślałem, że potrzebna ci cała trumna." Znów kładzie dłoń na policzku. "Strasznie mi przykro, ale w tej chwili nie mam żadnych. Nie wiem, kiedy znów będę je miał, skoro zamykają skład i w ogóle..."~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36689 /* ~"Skład?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36690 /* ~"Tak, wspominałeś o jakichś kłopotach. O co to chodziło?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #36691 /* ~"Mam inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36692 /* ~"Mam dość. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #36693 /* ~"Tak... Skład, w którym trzymam swoje towary, ma jakieś *problemy wewnętrzne*. Nowy zarządca, albo podobny nonsens. Nie udało mi się ostatnio uzupełnić zapasów." Marszczy czoło. "Harmonium nigdy nie pozwoliłoby na to, żeby sprawy tak się wymknęły spod kontroli, aby na tym cierpieli klienci..." Ucisza się, myśli i w końcu patrzy na ciebie. "A może sprawdziłbyś, co tam się dzieje?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36694 /* ~"Sprawa składu załatwiona. Pójdę tam tylko po poduszkę."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36695 /* ~"Widzę, że jeśli chcę mieć poduszkę, nie mam wyboru. Zrobię to."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę poduszkę do trumny, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 16
  IF ~~ THEN REPLY #36696 /* ~"To nie mój problem... czemu ty się tym nie zajmiesz?"~ */ GOTO 17
  IF ~~ THEN REPLY #36697 /* ~"Pomyślę o tym. Mam też parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #36698 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.0 67.0 68.0
  SAY #36699 /* ~Uśmiecha się szeroko. "Wspaniale. Jeśli dobrze to załatwisz, będziesz miał swoją poduszkę za darmo..." Znów ma tę *nauczycielską* minę. "Być może nie wygląda to na godziwą zapłatę, ale pozwól mi opisać jak się robi te poduszki..."~ */
  IF ~~ THEN REPLY #36700 /* ~"Nie, dzięki! Zajmę się tym. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #36701 /* ~"Innym razem. Mam parę pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY #36702 /* ~Marszczy czoło. "Próbowałem, ale nie udało mi się. Poszedłem z tą sprawą do Harmonium, ale tym razem nie mogą mi pomóc." Rzuca niewinne spojrzenie i unosi ręce w geście poddania. "Jeśli rzeczywiście potrzebujesz tej poduszki..." Obserwuje cię wyczekująco.~ */
  IF ~~ THEN REPLY #36703 /* ~"W porządku. Sprawdzę, o co tam chodzi."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę poduszkę do trumny, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 16
  IF ~~ THEN REPLY #36704 /* ~"Pomyślę o tym. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36705 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0
  SAY #36706 /* ~Strzela palcami. "Oczywiście! Adahn! Wiedziałem, że cię znam. Tak, czy owak, potrzebujesz moich usług?" Studiuje cię, a potem uśmiecha się, widząc okazję do żartu na twój koszt. "Wydaje mi się, panie, że bardzo potrzebujesz trumny i to szybko." Wydaje się być zadowolony z dowcipu.~ */
  IF ~~ THEN REPLY #36707 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36708 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.1
  SAY #36709 /* ~Myśląc, marszczy czoło. "Nie mogę powiedzieć, żebym kiedykolwiek o nim słyszał. Powiedziałeś Pan Kości? Nieźle wpada w ucho." Uśmiecha się. "W pewien sposób, chyba mógłbyś i mnie tak nazwać, w końcu tyle mam do czynienia z trupami. Wiem, że większość z nich ma ciała, ale wiele razy musiałem robić trumnę tylko dla szkieletu. Był taki jeden gość, z którego zostały same kości, po tym jak się na coś tam natknął. Nigdy nie dowiedziałem się na co..."~ */
  IF ~~ THEN REPLY #36710 /* ~Przerwij: "Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36711 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36712 /* ~Unosi brwi, potem wzrusza ramionami. "Nie mam pojęcia, kto mógłby coś takiego zrobić. Choć swego czasu pochowałem kilka czaszek. Widzisz, większość ludzi nie pomyślałoby, że można pochować w trumnie samą czaszkę, ale znam wiele opowieści o ludziach zamawiających bardzo osobliwe trumny. Wśród nich byli także tacy, co chcieli pochować samą czaszkę, ponieważ reszty ciała umarłego nie dało się odnaleźć. Był taki jeden, którego ciało zostało tak zmasakrowane przez kilku Kaosytów, że...'~ */
  IF ~~ THEN REPLY #36713 /* ~Przerwij: "Kim jest Kaosyta?"~ */ GOTO 21
  IF ~~ THEN REPLY #36714 /* ~Przerwij: "Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36715 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36716 /* ~Przestaje mówić, potem odpowiada. "Nie można odpowiedzieć na to pytanie, przyjacielu. Są jedną z frakcji w Sigil, która wierzy w chaos." Znowu myśli, potem wzrusza ramionami. "Nie da się nawet z nimi przez chwilę pogadać, bełkoczą tylko jakieś niekompletne zdania i skaczą z tematu na temat. W głowach muszą mieć jeden, wielki zamęt. A teraz, tak jak powiedziałem..."~ */
  IF ~~ THEN REPLY #36717 /* ~Przerwij: "Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36718 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.3
  SAY #36719 /* ~Wzrusza ramionami. "Nie mogę powiedzieć, żebym go widział... to znaczy nie licząc mego osobistego dziennika. Lubię robić notatki i zapisywać przemyślenia, no i jest co poczytać, wiesz, własne myśli sprzed miesiąca lub półtora." Kiwa głową, tak jakbyś dokładnie wiedział, o co mu chodzi.~ */
  IF ~~ THEN REPLY #36720 /* ~"W porządku, ale..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36721 /* ~Wciąż przynudza. "Rozmawiałem z kilkoma drukarzami z Dzielnicy Urzędników o możliwości ich wydrukowania. Powiedzieli mi, że nieźle zgłębiają różne aspekty miejskiego życia, które zaobserwowałem w czasie służby dla Harmonium. Wielu zgodziło się, że pomimo braku formalnego wykształcenia, mój styl pisarski jest zachwycający... ale dość tego. Łatwiej będzie, jeśli pozwolę ci osobiście je ocenić. Może przeczytam ci parę ustępów..."~ */
  IF ~~ THEN REPLY #36722 /* ~"Dobra, proszę bardzo."~ */ GOTO 24
  IF ~~ THEN REPLY #36723 /* ~"Nie teraz. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #36724 /* ~"Mam dość na dzisiaj, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36725 /* ~Hamrys czyta ci parę ustępów ze swego monotonnego dziennika, wszystkie w równym stopniu nudne. Już chcesz znaleźć sposób żeby się stąd urwać, gdy nagle czyta fragment o tym, jak zniknął jego ojciec. Nie bardzo wiesz dlaczego, ale z jakiegoś powodu cię to wciąga.~ */
  IF ~~ THEN REPLY #36726 /* ~"Zaczekaj, powiedziałeś, że twój ojciec zniknął?"~ */ GOTO 25
  IF ~~ THEN REPLY #36727 /* ~"W porządku, ale mam jeszcze inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36728 /* ~"Mam dość na dzisiaj, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36729 /* ~Hamrys podnosi dłoń, co ma cię powstrzymać, zanim nie skończy następnego akapitu jednej ze swych nudnych historii. "No i co o tym myślisz? Chyba bardziej wnikliwe, niż można by się było spodziewać po zwykłym członku Harmonium, no nie?" Uśmiecha się. Wydaje się ignorować fakt, że mu przerwałeś.~ */
  IF ~~ THEN REPLY #36730 /* ~"Tak, bardzo wnikliwe. Mówisz, że twój ojciec zniknął?"~ */ GOTO 26
  IF ~~ THEN REPLY #36731 /* ~"Właściwie, mam już... dość na dzisiaj. Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36732 /* ~"Twego głosu wystarczy mi na całe życie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 41.0
  SAY #36733 /* ~Przytakuje. "Och, tak. Wiele, wiele lat temu. Mój ojciec był utalentowanym kamieniarzem, i nie tylko konstruował sarkofagi, ale umiał też projektować grobowce. Ludzie z całego Sigil..." Obraz zamazuje się, gdy zaczynają otaczać cię wspomnienia..."~ */
  IF ~  !Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36734 /* ~Odpręż się i staraj się sobie przypomnieć.~ */ DO ~SetGlobal("Hamrys_Mem","AR0506",1)
PlaySoundNotRanged("SPTR_01")
AddexperienceParty(500)
~ JOURNAL #36029 /* ~Wydaje mi się, że nająłem ojca Hamrysa, by zbudował mi grobowiec, a następnie go zabiłem. Nie wiem czemu miałbym to zrobić...~ */ GOTO 27
  IF ~~ THEN REPLY #36735 /* ~Przemóż się i zostań z Hamrysem.~ */ GOTO 29
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #68426 /* ~Odpręż się i staraj się sobie przypomnieć.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.2
  SAY #36736 /* ~Widzisz siebie w tym samym sklepie, rozmawiasz ze starszym mężczyzną. W rogu bawi się dziecko. Na ladzie, między tobą a właścicielem sklepu, leżą plany. Wydaje się wyjaśniać zawiłości dotyczące konstrukcji grobowca. Obraz znika, właśnie wtedy, gdy próbujesz dojrzeć szczegóły planów.~ */
  IF ~~ THEN REPLY #36737 /* ~Wytrzymaj.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #36738 /* ~Gdy wraca ci wzrok stoisz w jakiejś grocie, tuż przed grobowcem. Nad wejściem widzisz napis wyżłobiony w kamieniu: "Zbudowany by trwać po wieki." Właściciel sklepu stoi obok, szeroko się uśmiechając. Kiwa na ciebie i wchodzi do grobowca. W równym tempie posuwasz się za nim. Dobywasz miecza...~ */
  IF ~~ THEN REPLY #36739 /* ~Wytrzymaj.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.1 28.0
  SAY #36740 /* ~Znowu jesteś w sklepie Hamrysa. Patrzy na ciebie troskliwie. "Czy dobrze się czujesz, panie?"~ */
  IF ~~ THEN REPLY #36741 /* ~"Powiedz mi co się stało z twoim ojcem."~ */ GOTO 30
  IF ~~ THEN REPLY #36742 /* ~"W porządku, mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36743 /* ~"Nie, muszę cię pożegnać."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36744 /* ~"Po prostu zniknął pewnego dnia, zostawiając większość ze swoich zamówień nie ukończonych. Co najbardziej zawstydzające, zabrało mi sporo czasu wydostanie się z długów, które powstały po jego zniknięciu, co więcej, wciąż reguluję należności. A jednak mam pewną zdolność do pracy i..." Wzdycha lekko, patrzy gdzieś daleko.~ */
  IF ~~ THEN REPLY #36745 /* ~"Mów dalej."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #36746 /* ~Wzrusza ramionami. "Wybacz, myślałem tylko... Zniknięcie mojego ojca było powodem, dla którego przyłączyłem się, a później wystąpiłem z Harmonium. Na początku czułem nieprzepartą chęć dowiedzenia tego, co się z nim stało, ale później poczułem jakiś przymus, by kontynuować pracę jego życia." Wzdycha. "Nigdy nie znalazłem odpowiedzi. To, co się stało pozostało okryte tajemnicą..." Po chwili nie słychać jego głosu.~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36747 /* ~"Czy twój ojciec przechowywał plany grobowców, które wybudował?"~ */ GOTO 32
  IF ~~ THEN REPLY #36748 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36749 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36750 /* ~Myśli przez chwilę. "Tak. Po tym jak stałem się pełnoletni i odziedziczyłem interes przejrzałem wszystkie notatki. Były całkiem obszerne. Dlaczego pytasz?"~ */
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36751 /* ~"Gdybym opisał ci grobowiec, poznałbyś czy to robota twego ojca?"~ */ GOTO 33
  IF ~~ THEN REPLY #36752 /* ~"Bez powodu, mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36753 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36754 /* ~Myśląc marszczy czoło, potem wzrusza ramionami. "Mogę tylko spróbować. Mój pobyt w Harmonium sprawił, że mam niezłą pamięć. Powinienem rozpoznać dzieło mojego ojca, jeśli podasz mi wystarczającą liczbę szczegółów." Patrzy wyczekująco.~ */
  IF ~~ THEN REPLY #36755 /* ~Opisz grobowiec z pamięci.~ */ GOTO 34
  IF ~~ THEN REPLY #36756 /* ~"Mam następne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36757 /* ~"Nie ważne. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36758 /* ~Myśli przez jakiś czas. "Nie ma wątpliwości, że grobowiec, który opisujesz, to dzieło mojego ojca. Napis, o którym wspomniałeś, od wielu pokoleń był znakiem firmowym mojej rodziny." Zatrzymuje się i posyła ci dziwne spojrzenie. "Ten grobowieć, gdzie on jest?"~ */
  IF ~~ THEN REPLY #36759 /* ~Opisz, gdzie się znajduje.~ */ GOTO 35
  IF ~~ THEN REPLY #36760 /* ~"Mam inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36761 /* ~"Nieważne. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36762 /* ~Szczegółowo opisujesz jego położenie, zaskoczony swoją znajomością terenu. Hamrys troskliwie cię obserwuje. "Dziwne, nie przypominam sobie żadnej wzmianki, która świadczyłaby o tym, że dostał choćby tylko pozwolenie na zbudowanie tam grobowca. Grabarze są bardzo skrupulatni, jeśli chodzi o prawa budowlane i nieruchomości, zwłaszcza poza granicami Sigil..."~ */
  IF ~~ THEN REPLY #36763 /* ~"A więc rozpoznajesz to miejsce?"~ */ GOTO 36
  IF ~~ THEN REPLY #36764 /* ~"Mam inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36765 /* ~"Nieważne. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36766 /* ~Z entuzjazmem kiwa głową. "Och, tak. Wygląda mi to na katakumby Zatopionych Ziem." Przerywa. "Nigdy tam nie byłem, ale, gdy jeszcze byłem w Harmonium, niejeden raz słyszałem, jak ktoś je opisywał."~ */
  IF ~~ THEN REPLY #36767 /* ~"Muszę wiedzieć, czy twój ojciec zachował plany tego grobowca."~ */ GOTO 37
  IF ~~ THEN REPLY #36768 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36769 /* ~"Nieważne. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #36770 /* ~"Tak... W składzie, w którym trzymam towary, znajdują się też moje dokumenty. Tak, czy inaczej, mają jakieś problemy wewnętrzne. Nowy zarządca, czy podobny nonsens. Nie udało mi się ostatnio uzupełnić towarów i wątpię, czy zdołam odzyskać moje papiery." Marszczy czoło. "Harmonium nigdy nie pozwoliłoby na to, żeby sprawy tak się wymknęły spod kontroli, aby na tym cierpieli klienci..." Ucisza się, myśli i w końcu patrzy na ciebie. "A może sprawdziłbyś, co tam się dzieje?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36771 /* ~"W składzie?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36772 /* ~"Tak, wspomniałeś coś o kłopotach. Czy mógłbyś to powtórzyć?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #36773 /* ~"Mam inne pytania..."~ */ GOTO 2
  IF ~~ THEN REPLY #36774 /* ~"Nieważne. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #36775 /* ~"Tak... Skład ma jakieś *problemy wewnętrzne*, cokolwiek by to nie miało znaczyć. Nie będę miał towaru, zanim czegoś tam nie wyjaśnią." Marszczy czoło. "Harmonium nigdy nie pozwoliłoby na to, żeby sprawy tak się wymknęły spod kontroli, aby na tym cierpieli klienci..." Ucisza się, myśli i w końcu patrzy na ciebie. "A może sprawdziłbyś, co tam się dzieje?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36776 /* ~"Załatwiłem sprawy w składzie. Pójdę teraz po plany."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36777 /* ~"Widzę, że jeśli chcę mieć te plany, nie mam wyboru. Zrobię to."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę plany grobowca, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 39
  IF ~~ THEN REPLY #36778 /* ~"To nie mój problem... czemu ty się tym nie zajmiesz?"~ */ GOTO 40
  IF ~~ THEN REPLY #36779 /* ~"Pomyślę o tym. Mam parę pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #36780 /* ~"Muszę iść, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1 40.0 71.0 72.0
  SAY #36781 /* ~Szeroko się uśmiecha. "Wspaniale. Jeśli dobrze to załatwisz, dostaniesz te plany za darmo." Znów ma tę *nauczycielską* minę. "Być może nie wygląda to na godziwą zapłatę, ale pozwól mi opisać ci cały trud, jaki trzeba włożyć w ich stworzenie..."~ */
  IF ~~ THEN REPLY #36782 /* ~"Nie, dziękuję! Natychmiast się tym zajmę. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #36783 /* ~"Innym razem. Mam parę pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #36784 /* ~Marszczy czoło. "Próbowałem, ale nie udało mi się. Poszedłem z tą sprawą do Harmonium, ale tym razem nie mogą mi pomóc." Rzuca niewinne spojrzenie i unosi ręce w geście poddania. "Jeśli rzeczywiście potrzebujesz tych planów..." Obserwuje cię wyczekująco.~ */
  IF ~~ THEN REPLY #36785 /* ~"W porządku. Sprawdzę, o co tam chodzi."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 39
  IF ~~ THEN REPLY #36786 /* ~"Pomyślę o tym. Mam parę pytań..."~ */ JOURNAL #36028 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę plany grobowca, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 2
  IF ~~ THEN REPLY #36787 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.4
  SAY #36788 /* ~Marszczy czoło. "Cóż, zniknął jakiś czas temu, więc mogę tylko przypuszczać, że nie żyje. Skąd o tym wiesz?"~ */
  IF ~~ THEN REPLY #36789 /* ~"Nie przypominam sobie. Mówisz, że zniknął?"~ */ GOTO 26
  IF ~~ THEN REPLY #36790 /* ~"Nieważne. Mam kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36791 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.5
  SAY #36792 /* ~Patrzy na klienta. "Dimtri?" Wzrusza ramionami, jak gdyby wcześniej nie brał przyjaciela pod uwagę. "Nie mówi za dużo - no nie, Dimtri?" Dimtri nie odpowiada, wciąż ma to samo obojętne spojrzenie. Parę sekund później, kiwa głową. Hamrys wzrusza ramionami, odwraca się do ciebie. "Przyplątał się pewnego dnia parę tygodni temu, odtąd jest tu regularnie. Jeszcze nic nie kupił, ale nie sprawia problemów, więc pozwalam mu zostać. Wydaje się być dość nieszkodliwy. Widzisz, kiedy służyłem Harmonium, naszym zadaniem było między innymi brać ludzi pod nasze skrzydła, dawać schronienia przed chaosem ulic i przygotowywać ich do życia..."~ */
  IF ~  Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36793 /* ~"Wiesz, że on jest zombie, prawda?"~ */ GOTO 43
  IF ~  !Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36794 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36795 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #36796 /* ~Marszczy czoło, patrzy na Dimtriego i znowu na ciebie. "Co za bzdury gadasz? Dimtri nie jest żadnym zombie. Jasne, jest spokojny i nie za wiele się porusza, ale to dlatego, że jest dobrym słuchaczem."~ */
  IF ~~ THEN REPLY #36797 /* ~Uderz Dimtriego: "Patrz, Dimtri to zombie."~ */ GOTO 44
  IF ~~ THEN REPLY #36798 /* ~"Nieważne. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36799 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #36800 /* ~Hamrys patrzy na ciebie, jest zszokowany. "Co, w imię Harmonium, robisz...?!" Uderzasz Dimtriego w głowę. Mocno. Nawet nie mrugnął. Hamrys czerwienieje i zaczyna krzyczeć. "Za daleko się posuwasz! Nie pozwolę, żebyś bił moich klientów! Aresztuję cię w imieniu Harmonium..." Przerywa i gapi się zdziwiony, gdyż Dimtri wciąż nie reaguje.~ */
  IF ~~ THEN REPLY #36801 /* ~"On jest zombie, Hamrysie..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #36802 /* ~Hamrys z zakłopotaniem patrzy na Dimtriego. "Ciekawe jak umarł." Masz uczucie, że jeszcze do niego nie dotarło. "Któregoś dnia wydawał się całkiem żwawy." Nie wiedząc, co powiedzieć, chrząka. "Cóż, wygląda na to, że stary Dimtri będzie potrzebował trumny. Dobrze się stało, że skończył właśnie tutaj. Tylko, jakiego rodzaju trumna..." Patrzy tak, jakby miał zacząć wykład.~ */
  IF ~~ THEN REPLY #36803 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36804 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 2.6
  SAY #36805 /* ~"Tak, Niższa Dzielnica..." Pochyla się, jak gdyby chciał coś wyjaśnić małemu dziecku. "...wiesz, nowi prawie nic o tym nie wiedzą, a i ludzie z dzielnicy też nie zdają sobie sprawy: większość myśli, że ta dzielnica nazywa się tak, ponieważ nie jest tak prestiżowa jak inne, ale zupełnie nie o to chodzi. Zupełnie. Wiesz skąd pochodzi jej nazwa? Hmmm?" Patrzy wyczekująco.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #36806 /* ~"Od tych wszystkich portali do Niższych Sfer?"~ */ GOTO 47
  IF ~~ THEN REPLY #36807 /* ~"Nie, nie wiem skąd wzięła się jej nazwa."~ */ GOTO 48
  IF ~~ THEN REPLY #36808 /* ~"Nie obchodzi mnie skąd wzięła się jej nazwa. Powiesz mi, co można zobaczyć w tej dzielnicy?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #36809 /* ~Przytakuje, chociaż wydaje się trochę rozczarowany faktem, że wiesz. "Tak, rzeczywiście. Portale do Niższych Sfer to prawdziwa przyczyna smogu, który widać na niebie..." Patrzy w górę, jak gdyby nad waszymi głowami było niebo. "...ale, jestem pewien, że już wiesz o chorobach, które nękają tę dzielnicę."~ */
  IF ~~ THEN REPLY #36810 /* ~"Tak, mam parę innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36811 /* ~"Nie, opowiedz mi."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.1
  SAY #36812 /* ~"To z powodu portali do Niższych Sfer! Oto prawdziwa przyczyna smogu, który wypełnia niebo, i który bucha na nas trującymi gazami. Na szczęście wiatry z Iglicy pomagają w pozbyciu się najgorszych oparów, ale i tak może się zdarzyć, że osoby o słabszym organizmie zachorują." Smutno kiwa głową. "Na szczęście, mój pobyt w Harmonium przygotował mnie na wszystkie niebezpieczne warunki, a po tym, jak byłem w Niższych Sferach, smog w tej dzielnicy wydaje się niczym..."~ */
  IF ~~ THEN REPLY #36813 /* ~"Co można zobaczyć w tej dzielnicy?"~ */ GOTO 49
  IF ~~ THEN REPLY #36814 /* ~"Rozumiem. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36815 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2 48.0
  SAY #36816 /* ~Uśmiecha się szeroko. "Bardzo, bardzo dużo. Gdzie by tu zacząć... Gdybym miał przejść obok wszystkich piekarni, warsztatów kowalskich, browarów i gorzelni porozrzucanych pomiędzy wieloma płonącymi śmietnikami, nie mówiąc już o norach alchemików, krematoriach, rzeźniach, i spalarniach drzewa, i sam zbadał całą dzielnicę, mógłbym powiedzieć... No dobra, jest tu kuźnia, wieża oblężnicza i..." Przerywa, i zaczyna myśleć.~ */
  IF ~~ THEN REPLY #36817 /* ~"Opowiedz mi o tej kuźni."~ */ GOTO 50
  IF ~~ THEN REPLY #36818 /* ~"Opowiedz mi o tej wieży."~ */ GOTO 51
  IF ~~ THEN REPLY #36819 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36820 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0 52.0
  SAY #36821 /* ~"Wielka Kuźnia to kwatera główna Wyznawców Źródła, którzy znani są także niektórym laikom jako 'Bogowcy', z powodu ich wiary w to, że każdy może osiągnąć boskość." Potrząsa głową. "Wielka Kuźnia jest taka sama, jak ich filozofia: wielka, rozciągnięta konstrukcja, która wydaje się nie wytwarzać nic, poza smogiem." Śmieje się. "To znaczy, kiedy ostatnio widziałeś, żeby jeden z Wyznawców Źródła nagle stał się Mocą. Nigdy w całej historii frakcji."~ */
  IF ~~ THEN REPLY #36822 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 53
  IF ~~ THEN REPLY #36823 /* ~"Opowiedz mi o tej wieży."~ */ GOTO 51
  IF ~~ THEN REPLY #36824 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36825 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1 54.0
  SAY #36826 /* ~"Ten zniszczony, żelazny wrak? Jest to jedna z tajemnic dzielnicy, ale mam swoje zdanie na ten temat. Po pierwsze, z tego, co wiem, nie zawsze tu była. Po prostu pojawiła się pewnej nocy, ale nikt nie widział jak. Widziałeś, co jest na zewnątrz? Widziała niejedną bitwę, i wygląda na to, że były to bitwy, o jakich ludziom się nie śniło. Ja jednak widziałem kawałek Wojny Krwi, a nawet stawiłem czoło jednemu, lub dwóm potworom tanar'ri, w tej strasznej chwili mając obok siebie tylko towarzyszy z Harmonium... A te ślady na wieży wyglądają tak, jak gdyby powstawały przynajmniej parę wieków." Na chwilę przerywa.~ */
  IF ~~ THEN REPLY #36827 /* ~"Mów dalej."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #36828 /* ~"A teraz posłuchaj uważnie: Dzięki memu doświadczeniu udało mi się rozpoznać ślady na bokach wieży: niektóre pochodzą od kul kwasowych, które na pewno stworzyła wyższa magia, inne wyglądają na pozostałości po ostrzach zębowych tanar'ri, jeszcze inne na zrobione kulami 'loth lub biczami kornugonów baatezu. Co więcej, wiele z tych śladów pochodzi od broni, których chyba nikt nigdy nie widział, a całkiem dobrze znam się na broni pochodzącej zarówno z różnych światów, jak i wielu różnych sfer. Zastanawiasz się, co jest w środku wieży? Hultaj, który umiałby się tam dostać, mógłby tam znaleźć całkiem niezłe muzeum. Zaciekawiło cię?" Obserwuje cię.~ */
  IF ~~ THEN REPLY #36829 /* ~"Opowiedz mi o tej kuźni."~ */ GOTO 50
  IF ~~ THEN REPLY #36830 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36831 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.0
  SAY #36832 /* ~"Właściwie, mój przyjacielu, 'Bogowcy' to laicka nazwa ich frakcji; prawdziwa nazwa ich organizacji to, Wyznawcy Źródła. Hołdują interesującej, ale ostatecznie nie pozbawionej słabych punktów, filozofii: wierzą, że każdy może starać się o status boga, po prostu przykładając się do tego..." Myśląc pobłażliwie kiwa głową.~ */
  IF ~~ THEN REPLY #36833 /* ~"Mów dalej."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #36834 /* ~"Jak okazało się podczas mojej służby w Harmonium, jest wielu ludzi, którzy nigdy nie mogliby otrzymać statusu boga, bez względu na to jak długo by tego szukali lub jak bardzo by się przykładali..." Śmieje się. "Pomimo to, Wyznawcy Źródła ciężko pracują..." Wzrusza ramionami. "...a ich mała frakcja jest dostatecznie przyjemna."~ */
  IF ~~ THEN REPLY #36835 /* ~"Opowiedz mi o tej wieży."~ */ GOTO 51
  IF ~~ THEN REPLY #36836 /* ~"Czy możesz mi opowiedzieć o innych frakcjach?"~ */ GOTO 61
  IF ~~ THEN REPLY #36837 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36838 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 2.7
  SAY #36839 /* ~"Sigil..." Głęboko wzdycha. "Sigil to miasto w centrum wszystkiego, tak wierzy wielu ludzi. Jest to miasto drzwi; są tam dosłownie tysiące portali. Jest to dom samej Pani Bólu." Wzrusza ramionami. "Sigil... to temat, który mógłby wypełnić całe tomy tomów..."~ */
  IF ~~ THEN REPLY #36840 /* ~"Opowiedz mi o Pani Bólu."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #36841 /* ~"Wspomniałeś o portalach. Wiesz coś o którymś?"~ */ GOTO 65
  IF ~~ THEN REPLY #36842 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36843 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #36844 /* ~"Pani Bólu..." Hamrys pochyla się i trochę zniża głos. "Każdy się zgodzi, że to jedna z największych tajemnic Wieloświata. Myślę, że bez cienia wątpliwości udowodniła, że kobiety są najbardziej niebezpiecznymi stworzeniami w całym wieloświecie..." Wzdycha.~ */
  IF ~~ THEN REPLY #36845 /* ~"Mów dalej."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #36846 /* ~"Niektórzy mówią, że to bogini, Moc, która wybrała sobie Sigil na dom. Prawda jest taka, że łamie ona prawa każdej Mocy, na jaką kiedykolwiek się natknąłem. Moce potrzebują wyznawców - to daje im siłę - ale Pani Bólu nie lubi, gdy się jej oddaje cześć. Ci, którzy próbują, kończą z ciałami pociętymi przez niewidzialne ostrza. Widziałem w życiu parę okropnych rzeczy, takich, po których miękną kolana i traci się ochotę do życia. Nie umywa się to jednak do widoku jednej z ofiar Pani Bólu."~ */
  IF ~~ THEN REPLY #36847 /* ~"Ciekawe. Co jeszcze możesz mi powiedzieć?"~ */ GOTO 58
  IF ~~ THEN REPLY #36848 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36849 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #36850 /* ~"Następna sprawa. Pani Bólu nie lubi tych, co próbują w Sigil udawać Boga. Widzisz, może tego nie wiesz, ale po pierwsze, żadna z Mocy nie może wejść do Sigil, ani Zeus, ani Ra; żadna. Chodzi o to, że obecność Pani Bólu jakoś trzyma ich z daleka. Nie mogą tu wejść, ani jeden, a złości ich to tak, że nie masz pojęcia. Sigil to taki słodki owoc, który każdy chciałby zerwać, więc inne Moce wciąż szukają sposobu, aby się do niego dostać. Jeszcze im się nie udało."~ */
  IF ~~ THEN REPLY #36851 /* ~"Mów dalej."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #36852 /* ~"Jest coś więcej. Pani Bólu nie tylko trzyma ich z daleka, ale też nie pozwala, by komuś z miasta coś się stało. Oczywiście nasza frakcja, Harmonium, pomaga jej, bo lubimy porządek. Ale od czasu do czasu, jakiemuś głupiemu hultajowi ubzdura się walka na ulicach miasta, zabicie kilku dabusów, rozpętanie chaosu, lub rzucanie zaklęć masowej zagłady. Niedobrze. Denerwuje ją to. Nie lubi patrzeć jak jej miasto cierpi. Gdybyś tak zrobił... zabije cię... lub wtrąci do labiryntów."~ */
  IF ~~ THEN REPLY #36853 /* ~"Wtrąci do labiryntów?"~ */ GOTO 60
  IF ~~ THEN REPLY #36854 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36855 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #36856 /* ~"Nie słyszałeś o labiryntach?" Patrzy na ciebie protekcjonalnie. "Jesteś zupełnie zielony. Pani Bólu ma wielopoziomowe lochy, w których trzyma wyjątkowych przestępców. Widzisz, bierze kawałeczki Sigil, układa w labirynty, a potem wycina je z miasta. Pewnego dnia idziesz sobie do domu, albo przechodzisz pod znanym ci sklepionym przejściem, a tu nagle wszystko się zmienia. Nie poznajesz miejsca, w którym jesteś. Jesteś w pułapce. Chodzi o to, że nie ma jednej drogi wyjścia z danego labiryntu i prędzej wykorkujesz, niż znajdziesz sposób ucieczki."~ */
  IF ~~ THEN REPLY #36857 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36858 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.1 62.0 63.0 64.0
  SAY #36859 /* ~Uśmiecha się, chętnie mówi. "Oczywiście, przyjacielu. Mogę ci trochę opowiedzieć o Harmonium, Łaskobójcach, lub o Guwernantach. Od których mam zacząć?"~ */
  IF ~~ THEN REPLY #36860 /* ~"Od Guwernanatów."~ */ GOTO 62
  IF ~~ THEN REPLY #36861 /* ~"Od Harmonium."~ */ GOTO 63
  IF ~~ THEN REPLY #36862 /* ~"Od Łaskobójców."~ */ GOTO 64
  IF ~~ THEN REPLY #36863 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36864 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #36865 /* ~Przytakuje. "Stowarzyszenie Porządku to prawidłowa nazwa ich frakcji. Oddani są prawu i wiedzy; większość czasu spędzają badając aspekty prawne. I nie chodzi tylko o prawa człowieka. Nie, ich badania są o wiele głębsze. Chcą w ogóle wiedzieć Jak i Dlaczego. Z powodu ich oddania prawu, rządzą także sądami w Sigil działając jako prawnicy, sędziowie, adwokaci i tym podobne."~ */
  IF ~~ THEN REPLY #36866 /* ~"Powiedz mi coś o innej frakcji..."~ */ GOTO 61
  IF ~~ THEN REPLY #36867 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36868 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #36869 /* ~Prostuje się z dumą. "Główną frakcją Sigil jest oczywiście Harmonium. Dbamy o przestrzeganie prawa i porządku w Sigi i jest to nasza najważniejsza funkcja. Postęp możliwy jest tylko w warunkach pokoju i harmonii. Są tacy, co myślą inaczej, ale nie są tak zdecydowani, jak my, i dlatego przegrają."~ */
  IF ~~ THEN REPLY #36870 /* ~"Opowiedz mi o innej frakcji..."~ */ GOTO 61
  IF ~~ THEN REPLY #36871 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36872 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #36873 /* ~Uśmiecha się. "Łaskobójcy reprezentują sprawiedliwość. Jest dla nich wszystkim. Jest absolutna i doskonała. Poświęcają życie wymierzaniu sprawiedliwości, ale robią to właściwie, zgodnie z prawem. Mocno wierzą, że narzucając sprawiedliwość w wieloświecie, można oczyścić go ze zła i sprawić, by stał się doskonały."~ */
  IF ~~ THEN REPLY #36874 /* ~"Opowiedz mi o innej frakcji..."~ */ GOTO 61
  IF ~~ THEN REPLY #36875 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36876 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 55.1
  SAY #36877 /* ~Śmieje się. "Portale? Czy wiem coś o portalach?" Przerywa. "Cóż, żadnego nie spotkałem osobiście, może poza tymi najbardziej popularnymi. Myślę, że można je spotkać praktycznie w każdej Dzielnicy... są zabawne, czasami są dookoła, a kiedy indziej znikają... Ciężko jest je wyśledzić." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #36878 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36879 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 66 // from:
  SAY #36880 /* ~"Dzień dobry. Czyżby już po trumnę?" Miło się uśmiecha.~ */
  IF ~~ THEN REPLY #36881 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36882 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 68 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",1)
~ THEN BEGIN 67 // from:
  SAY #36883 /* ~Hamrys uśmiecha się. "Witam ponownie, panie. Czy myślałeś o tym, aby pomóc mi poradzić sobie z sytuacją w składzie?"~ */
  IF ~~ THEN REPLY #36884 /* ~"Tak, pomogę ci."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę poduszkę do trumny, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 16
  IF ~~ THEN REPLY #36885 /* ~"Nie, wciąż nad tym myślę. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #36886 /* ~"Mam kilka pytań..."~ */ GOTO 2
END

IF WEIGHT #7 /* Triggers after states #: 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",2)
~ THEN BEGIN 68 // from:
  SAY #36887 /* ~Hamrys uśmiecha się. "Witam ponownie, panie. Czy zmieniłeś zdanie i pomożesz mi poradzić sobie z sytuacją w składzie?"~ */
  IF ~~ THEN REPLY #36888 /* ~"Tak, pomogę ci."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę poduszkę do trumny, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 16
  IF ~~ THEN REPLY #36889 /* ~"Nie, jeszcze nie. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #36890 /* ~"Mam kilka pytań..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",3)
~ THEN BEGIN 69 // from:
  SAY #36891 /* ~Hamrys uśmiecha się. "Witam ponownie, panie. Czy załatwiłeś już sprawy związane z sytuacją w składzie?"~ */
  IF ~~ THEN REPLY #36892 /* ~"Nie, wciąż nad tym pracuję. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #36893 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 2
END

IF WEIGHT #5 /* Triggers after states #: 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",4)
~ THEN BEGIN 70 // from:
  SAY #36894 /* ~Hamrys uśmiecha się. "Witam ponownie, śmiałku. Czy zdobyłeś poduszkę, której szukałeś."~ */
  IF ~~ THEN REPLY #52763 /* ~"Tak. Załatwiłem sprawy w składzie i zdobyłem poduszkę."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Pillow_Quest","GLOBAL",5)
~ JOURNAL #66530 /* ~Widziałem się z Hamrysem i powiedziałem mu, że jestem w stanie odzyskać dla niego trumienną poduszkę. Przynajmniej raz nie utopił mnie w swojej paplaninie.~ */ GOTO 76
END

IF WEIGHT #4 /* Triggers after states #: 72 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #36897 /* ~Hamrys uśmiecha się. "Witam ponownie, panie. Czy myślałeś o tym, aby pomóc mi poradzić sobie z sytuacją w składzie?"~ */
  IF ~~ THEN REPLY #36912 /* ~"Tak, pomogę ci."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę plany grobowca, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 39
  IF ~~ THEN REPLY #36913 /* ~"Nie, wciąż nad tym myślę. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #36914 /* ~"Mam kilka pytań..."~ */ GOTO 2
END

IF WEIGHT #3 /* Triggers after states #: 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",2)
~ THEN BEGIN 72 // from:
  SAY #36915 /* ~Hamrys uśmiecha się. "Witam ponownie, panie. Czy zmieniłeś zdanie i pomożesz mi poradzić sobie z sytuacją w składzie?"~ */
  IF ~~ THEN REPLY #36916 /* ~"Tak, pomogę ci."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Zdaje się, że w magazynie są jakieś problemy. Jeśli chcę plany grobowca, będę musiał się dowiedzieć o co chodzi i odpowiednio się tym zająć.~ */ GOTO 39
  IF ~~ THEN REPLY #36917 /* ~"Nie, wciąż nad tym myślę. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #36918 /* ~"Mam kilka pytań..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 73 // from: 15.0 38.0
  SAY #36919 /* ~Uśmiecha się szeroko. "Wspaniale. Czy jeszcze w czymś mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #36920 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #36921 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",3)
~ THEN BEGIN 74 // from:
  SAY #50440 /* ~Hamrys uśmiecha się. "Witam ponownie, panie. Czy załatwiłeś już sprawy w składzie?"~ */
  IF ~~ THEN REPLY #50441 /* ~"Nie, jeszcze nad tym pracuję. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #50442 /* ~"Nie, ale mam parę pytań..."~ */ GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",4)
~ THEN BEGIN 75 // from:
  SAY #50443 /* ~Hamrys uśmiecha się. "Witaj ponownie, śmiałku. Czy zdobyłeś plany, których szukałeś?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52766 /* ~"Tak. Załatwiłem sprawy w składzie i zdobyłem plany grobowca. Mam też poduszkę."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",5)
AddexperienceParty(2000)
SetGlobal("Plans_Quest","GLOBAL",5)
~ JOURNAL #66531 /* ~Widziałem się z Hamrysem i powiedziałem mu, że wydostałem dla niego z Krypty plany grobowca i trumienną poduszkę. Przynajmniej raz zapomniał języka w gębie.~ */ GOTO 76
  IF ~  !Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52767 /* ~"Tak. Załatwiłem sprawy w składzie i zdobyłem plany grobowca."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",5)
AddexperienceParty(2000)
~ JOURNAL #66532 /* ~Widziałem się z Hamrysem i powiedziałem mu, że wydostałem dla niego z Krypty plany grobowca. Przynajmniej raz zapomniał języka w gębie.~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 70.0 75.0 75.1
  SAY #52764 /* ~Uśmiecha się, i potakuje. "Dobra robota, śmiałku. Tak jak powiedziałem, jako nagrodę, możesz sobie zatrzymać wszystko, co udało ci się odzyskać w składzie."~ */
  IF ~~ THEN REPLY #61971 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #61972 /* ~"Żegnaj, Hamrysie."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Hamrys_Done","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #64164 /* ~"A witam, witam. Czy potrzebujesz trumny?" Uśmiecha się uprzejmie. "Nie mam już żadnej pracy dla ciebie, więc... Czym mogę służyć?"~ */
  IF ~~ THEN REPLY #64165 /* ~"Mam kilka pytań..."~ */ EXIT
  IF ~~ THEN REPLY #64166 /* ~"Nic. Żegnaj."~ */ EXIT
END
