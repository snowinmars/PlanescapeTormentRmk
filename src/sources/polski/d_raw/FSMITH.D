// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FSMITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~FSMITH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #4729 /* ~"Wciąż tu jesteś? Straże! Wyprowadzić mi stąd tego trepa!"~ */
  IF ~~ THEN REPLY #4730 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #4731 /* ~"Pomocy! Straże! Straże!~ */
  IF ~~ THEN REPLY #4732 /* ~Zaatakuj.~ */ EXIT
  IF ~~ THEN REPLY #4733 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY #4734 /* ~"Na moce! Nasze urządzenia są zniszczone! Skąd ten fakton weźmie teraz pieniądze, żeby nam zapłacić? To dobrze, że jesteśmy przywiązani do sprawy. No, czas wracać do pracy... teraz będzie nam po dwakroć ciężko. Cholerny test, powiadam."~ */
  IF ~~ THEN REPLY #4735 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #4736 /* ~"Witaj, bracie! Chciałbym mieć trochę czasu, aby z tobą porozmawiać, ale odlewanie stali nie czeka na nikogo. Gdyby ci było czegoś potrzeba, porozmawiaj z tamtymi nadzorcami... oni mają czas."~ */
  IF ~~ THEN REPLY #4737 /* ~"W porządku. Dużo szczęścia."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN BEGIN 4 // from:
  SAY #4738 /* ~"Więc prowadzisz śledztwo w sprawie morderstwa, co? Nie mogę powiedzieć, żeby mi było bardzo przykro na widok śmierci tego drania, choć z drugiej strony nie było nikogo, kto nie miałby na pieńku z tym żulem. Gdzie masz szukać? Nie wiem."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4739 /* ~"Ale wiesz więcej, niż chcesz mi powiedzieć, czy tak?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4740 /* ~"Ale wiesz więcej, niż chcesz mi powiedzieć, czy tak?"~ */ GOTO 6
  IF ~~ THEN REPLY #4741 /* ~"W porządku. Czy mógłbyś mi raz jeszcze dać wskazówki, co do pracy w kuźni?"~ */ GOTO 7
  IF ~~ THEN REPLY #4742 /* ~"W porządku. Dziękuję ci za poświęcony czas."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4743 /* ~"Cóż..." Kowal rozgląda się ukradkiem. "Najlepiej chyba będzie zacząć od tej kobiety-nadzorcy. Wygląda ostatnio na rozgoryczoną. Nie sądzę, aby ona to zrobiła, ale chyba domyśla się, kto."~ */
  IF ~~ THEN REPLY #4744 /* ~"Kobiety-nadzorcy? Gdzie mogę ją znaleźć?"~ */ GOTO 8
  IF ~~ THEN REPLY #4745 /* ~"Dzięki za poświęcenie mi czasu. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #4746 /* ~"Nie, to już wszystko, co mogę ci powiedzieć."~ */
  IF ~~ THEN REPLY #4747 /* ~"W porządku. Czy mógłbyś mi raz jeszcze dać wskazówki, co do pracy w kuźni?"~ */ GOTO 7
  IF ~~ THEN REPLY #4748 /* ~"W porządku. Dziękuję ci za poświęcony czas."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("G_Test1","GLOBAL",1)
~ THEN BEGIN 7 // from: 4.2 6.0
  SAY #4749 /* ~"Chcesz pracować w kuźni. Na początek będzie ci potrzebny jakiś fartuch ochronny. Potem musisz znaleźć sobie szczypce, młot i wolne kowadło. Wtedy weź bryłę żelaza, wsadź ją do ognia, aż rozgrzeje się na tyle, że można ją będzie kształtować. Wtedy wal w nią z całej siły na kowadle. Kiedy już uzyskasz pożądany kształt, zamocz go w wiadrze wody, które stoi obok. To bardzo pobieżny kurs, pamiętaj... musisz mieć trochę wprawy, aby sobie poradzić."~ */
  IF ~~ THEN REPLY #4750 /* ~"Jak ciężko bywa?"~ */ GOTO 9
  IF ~~ THEN REPLY #4751 /* ~"W porządku. Mam inne pytania."~ */ GOTO 10
  IF ~~ THEN REPLY #4752 /* ~"W porządku. Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 10.2
  SAY #4753 /* ~"Można ją zwykle znaleźć tam, przy biurze urzędnika... stamtąd nas obserwuje. Choroba, taką ma już pracę, ale i mnie można by ją powierzyć."~ */
  IF ~~ THEN REPLY #4754 /* ~"Dziękuję. Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #4755 /* ~"Gdyby można było ci to powierzyć, nadzorca byłby niepotrzebny. Do zobaczenia."~ */ EXIT
  IF ~~ THEN REPLY #4756 /* ~"Zapewne. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #4759 /* ~"Byłbyś zaskoczony, trepie. Wynocha stąd. Jestem zajęty."~ */
  IF ~~ THEN REPLY #4758 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 19 17 18 20 even though they appear after this state */
~  True()
~ THEN BEGIN 10 // from: 7.1 8.0 11.0 13.0 14.0
  SAY #4760 /* ~"Taak? Co? Szybciej, jestem zajęty."~ */
  IF ~~ THEN REPLY #4761 /* ~"Kim jesteś?"~ */ GOTO 11
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #4762 /* ~"Gdzie mogę znaleźć biuro urzędnika?"~ */ GOTO 13
  IF ~~ THEN REPLY #4763 /* ~"Gdzie jest twój nadzorca?"~ */ GOTO 8
  IF ~~ THEN REPLY #4764 /* ~"Co tutaj robisz?"~ */ GOTO 14
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #4765 /* ~"Co możesz mi powiedzieć o Bogowcach?"~ */ GOTO 15
  IF ~~ THEN REPLY #4791 /* ~"Zapomnij."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #4766 /* ~"Co? Jestem zbyt zajęty, żeby tak tutaj stać i gadać z ludźmi. Masz tu jakiś interes?"~ */
  IF ~~ THEN REPLY #4767 /* ~"No tak."~ */ GOTO 10
  IF ~~ THEN REPLY #4768 /* ~"Nie, naprawdę nie."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.5 11.1
  SAY #4769 /* ~"Więc przestań marnować mój czas. Mam wyznaczoną robotę. Miłego dnia."~ */
  IF ~~ THEN REPLY #4770 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #4771 /* ~"Widzisz ten pokój z biurkiem, za którym siedzi ten stary gość? To biuro urzędnika i sam urzędnik. Chcesz jeszcze czegoś, czy też dasz mi wrócić do pracy?"~ */
  IF ~~ THEN REPLY #4772 /* ~"Mam więcej pytań."~ */ GOTO 10
  IF ~~ THEN REPLY #4773 /* ~"Nie, tylko przechodziłem. Na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #4774 /* ~"Och, siedzę sobie z nogami na stole przez cały dzień. Posłuchaj, nie chcę być niegrzeczny, ale przecież to jasne, co ja tutaj robię - wykuwam stal. I jeżeli nie wrócę szybko do mojej kuźni, będę musiał zaczynać wszystko od nowa."~ */
  IF ~~ THEN REPLY #4775 /* ~"No, dobrze już dobrze. Mam kilka innych pytań."~ */ GOTO 10
  IF ~~ THEN REPLY #4776 /* ~"Dziękuję za twój czas. Na razie."~ */ EXIT
  IF ~~ THEN REPLY #4777 /* ~"Nie ma potrzeby na taką postawę, 'przyjacielu'. Miłego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #4778 /* ~Kowal przerywa pracę i patrzy na ciebie, jakby mierząc cię wzrokiem. "Bogowiec to hultaj, który wierzy, że wszyscy możemy stać się bogami. Nawet ty. Nie jest przy tym ważne, czy to prowadzi do dobrego, czy do złego - wszyscy przeżywamy nasze życie ucząc się rozwijać w kierunku coraz idealniejszych form. Według innej definicji, Bogowiec to ktoś taki, kto zaczyna być podejrzliwy w stosunku do ludzi, którzy pytają go o coś, na co dawno powinni już znać sami odpowiedź."~ */
  IF ~~ THEN REPLY #4779 /* ~"Innymi słowy, wszyscy przechodzimy testy i dzięki nim stajemy się więksi?"~ */ GOTO 16
  IF ~~ THEN REPLY #4780 /* ~"Innymi słowy, nie jesteś najlepszą osobą, z którą powinienem na ten temat rozmawiać?"~ */ GOTO 16
  IF ~~ THEN REPLY #4781 /* ~"Dziękuję. Idę już."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #4782 /* ~"Innymi słowy, trzeba ci porozmawiać przez drzwi w ścianie wschodniej z jakimś oddanym członkiem frakcji - nie mają niczego lepszego do roboty. Ja mam. Miłego dnia."~ */
  IF ~~ THEN REPLY #4783 /* ~"Mam jeszcze kilka pytań."~ */ EXIT
  IF ~~ THEN REPLY #4784 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",0)
GlobalLT("Forge","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #4785 /* ~"Przyjacielu, myślę, że wystarczająco długo już używałeś tej kuźni. Wszyscy wierzą, że masz... tego... jakieś zdolności w tym kierunku. Odsuń się i przepuść tego, kto naprawdę potrzebuje z niej skorzystać."~ */
  IF ~~ THEN REPLY #4786 /* ~"W porządku."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 18 // from:
  SAY #4787 /* ~"Na moce! Nasze urządzenia są zniszczone! Skąd ten fakton weźmie teraz pieniądze, żeby nam zapłacić? To dobrze, że jesteśmy przywiązani do sprawy. No, czas wracać do pracy... teraz będzie nam po dwakroć ciężko. Cholerny test, powiadam."~ */
  IF ~~ THEN REPLY #4788 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("GearRepair","GLOBAL",0)
GlobalLT("GearRepair","GLOBAL",5)
~ THEN BEGIN 19 // from:
  SAY #4789 /* ~"Na moce! Nasze urządzenia są zniszczone! Skąd ten fakton weźmie teraz pieniądze, żeby nam zapłacić? To dobrze, że jesteśmy przywiązani do sprawy. No, czas wracać do pracy... teraz będzie nam po dwakroć ciężko. Cholerny test, powiadam."~ */
  IF ~~ THEN REPLY #4790 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 ~  CreatureInArea("AR0503")
~ THEN BEGIN 20 // from:
  SAY #64514 /* ~Obrzuca cię szybkim spojrzeniem, a następnie z powrotem koncentruje się na mówiącym. "Cicho! Próbuję słuchać Keldora. Chcę się uczyć, a ty mi przeszkadzasz."~ */
  IF ~~ THEN REPLY #64515 /* ~"Przepraszam. Żegnaj."~ */ EXIT
END
