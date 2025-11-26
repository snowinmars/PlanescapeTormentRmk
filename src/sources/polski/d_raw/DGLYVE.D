// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGLYVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGLYVE~

IF ~  Global("Water","GLOBAL",3)
~ THEN BEGIN 0 // from: 3.0
  SAY #24037 /* ~Kamienna twarz nie odzywa się. Stróżka czystej wody wypływa jej z oka, a grymas, widoczny wcześniej na twarzy, złagodniał.~ */
  IF ~~ THEN REPLY #24038 /* ~"Glifie, potrzebuję więcej odpowiedzi..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24039 /* ~"Dobrze, więc."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24040 /* ~"Dobrze, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #24041 /* ~Twarz pozostaje beznamiętna i cicha.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24042 /* ~"Dobrze, więc."~ */ EXTERN ~DMORTE~ 228
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24043 /* ~"Dobrze, więc."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #24044 /* ~Gdy podchodzisz, nieruchome oczy Glifa wydają się w ciebie wpatrywać. "Czy już... zdecydowałeś... czy chcesz... znać odpowiedź?"~ */
  IF ~~ THEN REPLY #24045 /* ~"Tak, podaj mi ją."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24046 /* ~"Nie, jeszcze nie. Najpierw odpowiedz na moje pytania."~ */ GOTO 4
  IF ~~ THEN REPLY #24047 /* ~"Nie, jeszcze nie. Żegnaj, Glifie."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 15.0
  SAY #24048 /* ~"Odszukaj... kobietę zwaną... 'Nemelle'. Mieszka... w Dzielnicy Urzędników... w Górnym Sigil. Nie wiem... gdzie dokładnie... Owocnych... poszukiwań... nieśmiertelny." Gdy mówi, jego głos wydaje się cichnąć.~ */
  IF ~~ THEN REPLY #24049 /* ~"Dziękuję, Glifie. Mam jeszcze kilka pytań."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glif powiedział mi, abym odszukał kobietę o imieniu Nemelle. Niewiasta ta zamieszkuje w Dzielnicy Urzędniczej. Ona może pomóc mi odszukać słowo, które pozwoliłoby mi wyzwolić pełną moc Karafki Niekończącej się Wody.~ */ GOTO 0
  IF ~~ THEN REPLY #24050 /* ~"Dziękuję, Glifie. Żegnaj."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",1)
~ JOURNAL #66298 /* ~Glif powiedział mi, abym odszukał kobietę o imieniu Nemelle. Niewiasta ta zamieszkuje w Dzielnicy Urzędniczej. Ona może pomóc mi odszukać słowo, które pozwoliłoby mi wyzwolić pełną moc Karafki Niekończącej się Wody.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1 8.1 9.1 10.2 11.2 12.2 13.2 14.1 16.0 18.0 18.1 19.0 22.1 23.0
  SAY #24051 /* ~"Co... chcesz... wiedzieć?"~ */
  IF ~~ THEN REPLY #24052 /* ~"Opowiedz mi o sobie. Jak się tu znalazłeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #24053 /* ~"Co możesz mi powiedzieć o tych katakumbach?"~ */ GOTO 13
  IF ~  Global("Water","GLOBAL",2)
~ THEN REPLY #24054 /* ~"Przemyślałem to, daj mi odpowiedź, którą mi obiecałeś."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #24055 /* ~"Co dokładnie miałem dla ciebie zrobić?"~ */ GOTO 9
  IF ~  Global("Water","GLOBAL",1)
PartyHasItem("Decant")
~ THEN REPLY #24056 /* ~"Przyniosłem ci tę butelkę."~ */ GOTO 14
  IF ~~ THEN REPLY #24057 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #24058 /* ~"Byłem kiedyś... szanowanym przywódcą... mej społeczności... w niższej dzielnicy. Drobny magnat... chciał więcej władzy... kosztem mego ludu... moich przyjaciół... mych krewnych... Ja i moi przyjaciele, stanęliśmy... przeciw niemu."~ */
  IF ~~ THEN REPLY #24059 /* ~"I co dalej?"~ */ GOTO 6
  IF ~~ THEN REPLY #24060 /* ~"Wiesz co? Nieważne. Odpowiedz na kilka innych pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #24061 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #24062 /* ~"A wtedy... złapał nas... jednego po drugim... i spętał nasze dusze i zmysły... zmienił w te twarze... tutaj, w katakumbach... gdzie spływa... cały brud z Sigil. A potem... pozwolił by brudne wody z góry... wypełniały nasze usta... i nosy... i oczy."~ */
  IF ~  Global("Water","GLOBAL",0)
~ THEN REPLY #24063 /* ~"Jak mogę pomóc?"~ */ DO ~SetGlobal("Water","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #24064 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #24065 /* ~"Hm. Ciekawe. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #24066 /* ~"To okropne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #24067 /* ~"Jestem przeklęty... muszę tu pozostać tak długo... aż czysta woda dotknie mych ust... Istnieje magiczna butelka z wodą... w Zatopionych Ziemiach. Przynieś mi ją... daj jej posmakować... a powiem ci... o kimś... kto może pomóc ci odkryć... jej możliwości... i nigdy już... nie będzie brakować ci... wody."~ */
  IF ~~ THEN REPLY #24068 /* ~"Gdzie jest ta butelka?"~ */ JOURNAL #66299 /* ~Kamienna twarz z katakumb Łkających Kamieni opowiedziała mi o swoim losie. Tkwi w niej nieszczęśnik, którego wszystkie zmysły zostały związane w kamieniu i pozostaną tam do chwili, aż przepłynie przez niego całe plugastwo Sigil. Zaklęcie to można odwrócić, jeśli da mu się do skosztowania czystej wody. Ale tylko zbieracz i artysta w jednej osobie o imieniu Chad będzie wiedział, gdzie szukać takiej wody.~ */ GOTO 8
  IF ~~ THEN REPLY #24069 /* ~"Ciekawe. Odpowiedz jeszcze na kilka innych pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #24070 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #24071 /* ~"Nie... wiem. Był taki... artysta, nazywał się... Chad, który często... odwiedzał te tunele... On wiedział. Znajdź go... a może ci powie."~ */
  IF ~~ THEN REPLY #24072 /* ~"Jak się dostać do Zatopionych Ziem?"~ */ GOTO 10
  IF ~~ THEN REPLY #24073 /* ~"W porządku. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #24074 /* ~"Odnajdę go. Żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #24075 /* ~"Odnajdę go. Żegnaj."~ */ EXTERN ~DMORTE~ 229
  IF ~~ THEN REPLY #24076 /* ~"Zobaczę, co da się zrobić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #24077 /* ~"Woda... świeża woda... z magicznej butelki... w Zatopionych Ziemiach..."~ */
  IF ~~ THEN REPLY #24078 /* ~"Jak się tam dostać?"~ */ GOTO 10
  IF ~~ THEN REPLY #24079 /* ~"Rozumiem. Odpowiedz jeszcze na kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #24080 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #24081 /* ~"Poprzez Ziemie Umarłych... w których spacerują... i rządzą umarli... lub przez Labirynty Myśli... gdzie włada Wielojedność... Wszędzie... może cię spotkać coś złego."~ */
  IF ~~ THEN REPLY #24082 /* ~"Ziemie Umarłych?"~ */ GOTO 11
  IF ~~ THEN REPLY #24083 /* ~"Wielojedność?"~ */ GOTO 12
  IF ~~ THEN REPLY #24084 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #24085 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #24086 /* ~"Umarli... na swój sposób... odzyskali życie... Rządzą... częścią tych... katakumb. Walczą z... Wielojednością... o serce tych... tuneli."~ */
  IF ~~ THEN REPLY #24087 /* ~"Opowiedz mi o katakumbach."~ */ GOTO 13
  IF ~~ THEN REPLY #24088 /* ~"Opowiedz mi o Wielojedności."~ */ GOTO 12
  IF ~~ THEN REPLY #24089 /* ~"Daj mi jeszcze kilka odpowiedzi..."~ */ GOTO 4
  IF ~~ THEN REPLY #24090 /* ~"Dziękuję, Glifie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.1 13.1
  SAY #24091 /* ~"Słyszałeś o... czaszkoszczurach? Kiedy zbierają się... stają się jeszcze potężniejsze... są jak jeden umysł. One i ich słudzy... szczurołaki... próbują opanować... podtunele. Toczą wojnę... z mieszkańcami Ziem Umarłych."~ */
  IF ~~ THEN REPLY #24101 /* ~"Opowiedz mi o Ziemiach Umarłych."~ */ GOTO 11
  IF ~~ THEN REPLY #24102 /* ~"Powiedz mi coś więcej o tych katakumbach."~ */ GOTO 13
  IF ~~ THEN REPLY #24103 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #24105 /* ~"Dzięki, Glifie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.1 11.0 12.1
  SAY #24108 /* ~"Katakumby stworzono... wieki temu... miały przyjmować... umarłych z miasta... którzy nie godzili się... na to, co robią Grabarze... Stały się... ziemią zakazaną... gdzie mieszkają potwory... które rzadko widzi... ludzkie oko... gdzie ludzie... grasują jak padlinożercy... wśród padlinożerców... Wielojedność patroluje tunele... i wielu obróciła przeciw... ich własnej naturze... Mieszkańcy Ziem Umarłych... też tam są... chronią tunele przed... ludźmi... którzy do nich przychodzą."~ */
  IF ~~ THEN REPLY #24111 /* ~"Opowiedz mi o Ziemiach Umarłych."~ */ GOTO 11
  IF ~~ THEN REPLY #24113 /* ~"Opowiedz mi o Wielojedności."~ */ GOTO 12
  IF ~~ THEN REPLY #24115 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #24116 /* ~"Dzięki, Glifie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.4 17.1
  SAY #24118 /* ~Nuta podniecenia pojawia się w głuchym głosie Glifa: "Masz ją? Wylej... trochę wody... na moje usta... a powiem ci... to, co obiecałem... powiedzieć."~ */
  IF ~~ THEN REPLY #24120 /* ~"Proszę."~ */ DO ~SetGlobal("Water","GLOBAL",2)
AddexperienceParty(5000)
~ GOTO 15
  IF ~~ THEN REPLY #24122 /* ~"Zaczekaj. Mam jeszcze kilka pytań."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #24123 /* ~Czysta woda z butelki sączy się przez kamienne usta, oczyszczając strumień brudu, który wypływa kącikami ust. Patrzysz, jak powoli woda z kanałów całkowicie rozprasza się, jej brud zastąpiony zostaje czystą, świeżą wodą. Glif mruczy z rozkoszy. Po chwili, mówi: "Czy chcesz dostać odpowiedź teraz, czy później?"~ */
  IF ~~ THEN REPLY #24125 /* ~"Daj mi ją już teraz."~ */ DO ~SetGlobal("Water","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #24127 /* ~"Później. Mam jeszcze kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #24128 /* ~"Później. Żegnaj, Glifie."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2
  SAY #24130 /* ~"Będę... przytomny... aż wrócisz... po odpowiedź..."~ */
  IF ~~ THEN REPLY #24132 /* ~"Dobrze. A teraz odpowiedz na kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #24137 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~  Global("Water","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #24138 /* ~"Czy znalazłeś... butelkę... o której mówiłem?"~ */
  IF ~~ THEN REPLY #24140 /* ~"Jeszcze nie."~ */ GOTO 18
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #24142 /* ~"Tak."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #24144 /* ~"Błagam cię... znajdź ją... i złagodź moje cierpienia."~ */
  IF ~~ THEN REPLY #24145 /* ~"Zrobię, co tylko możliwe. Tymczasem, mam parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #24146 /* ~"Zobaczymy. Odpowiedz na parę pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #24147 /* ~"Próbuję. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #24148 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",1)
~ THEN BEGIN 19 // from:
  SAY #24149 /* ~"Wróciłeś... Czemu zawdzięczam... ten zaszczyt?"~ */
  IF ~~ THEN REPLY #24151 /* ~"Muszę znać parę odpowiedzi."~ */ GOTO 4
  IF ~~ THEN REPLY #24153 /* ~"Dobre pytanie. Żegnaj."~ */ EXIT
END

IF ~  Global("Glyve_Talk","AR1400",0)
~ THEN BEGIN 20 // from:
  SAY #24155 /* ~Przechodząc obok jednej z poskręcanych, kamiennych twarzy na ścianach, słyszysz jak woła do ciebie skrzeczącym głosem, który brzmi jakby przesuwano głazy. "Nieśmiertelny... Spójrz na mnie... Jestem... Glif. Chcę z tobą... zamienić słowo."~ */
  IF ~~ THEN REPLY #24157 /* ~"Skąd wiedziałeś, że jestem nieśmiertelny?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 21
  IF ~~ THEN REPLY #24158 /* ~"Co chciałeś mi powiedzieć?"~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
  IF ~~ THEN REPLY #24160 /* ~"Nie sądzę."~ */ DO ~SetGlobal("Glyve_Talk","AR1400",1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #24161 /* ~"Jest... w tobie... jakaś pilna potrzeba. Widzę... wiele w opadającym... pyle tych... tuneli. Brakuje ci... czegoś ważnego... i to trzyma cię z dala... od słodkich objęć śmierci."~ */
  IF ~~ THEN REPLY #24162 /* ~"Co chciałeś mi powiedzieć?"~ */ GOTO 22
  IF ~~ THEN REPLY #24163 /* ~"Wszystko dobrze, ale..."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 21.0 21.1
  SAY #24165 /* ~"Słuchaj: To miejsce... jest dla ciebie niebezpieczne. Na powierzchni... oczekuje cię zdrada... a twoja droga jest... długa i kręta. W końcu... znajdziesz... to, czego szukasz... ale być może... nie będziesz tego chciał."~ */
  IF ~~ THEN REPLY #24167 /* ~"Jesteś jakąś wyrocznią?"~ */ GOTO 23
  IF ~~ THEN REPLY #24168 /* ~"Może masz dla mnie kilka odpowiedzi..."~ */ GOTO 4
  IF ~~ THEN REPLY #24169 /* ~"Rozumiem. Być może powrócę."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #24170 /* ~"Wyrocznią? Nie... ja tylko obserwuję. To wszystko."~ */
  IF ~~ THEN REPLY #24171 /* ~"W takim razie, może odpowiesz na moje pytania..."~ */ GOTO 4
  IF ~~ THEN REPLY #24172 /* ~"To wszystko? Zapomnij więc o tym. Żegnaj."~ */ EXIT
END
