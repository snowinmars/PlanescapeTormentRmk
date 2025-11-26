// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3200 /* ~Ta starsza szlachcianka wita cię eleganckim dygnięciem. "Witaj, panie. Niech będzie mi wolno powiedzieć ci wprost, zanim mnie o cokolwiek poprosisz, że jestem tutaj klientką, a nie żadną z uczennic."~ */
  IF ~~ THEN REPLY #3201 /* ~"Jesteś klientką?"~ */ GOTO 3
  IF ~~ THEN REPLY #40085 /* ~"Rozumiem. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #40086 /* ~"Tak właściwie, to tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40087 /* ~Szlachcianka dyga z gracją, gdy do niej podchodzisz. "Witaj ponownie, panie."~ */
  IF ~~ THEN REPLY #40088 /* ~"Tak, witaj. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #40089 /* ~"Witaj. Tylko przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.0 4.2 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.2 13.1 14.0
  SAY #40090 /* ~Kobieta przytakuje. "Oczywiście."~ */
  IF ~~ THEN REPLY #40091 /* ~"Powiedziałaś, że jesteś klientką?"~ */ GOTO 3
  IF ~~ THEN REPLY #40092 /* ~"Co tu robisz?"~ */ GOTO 12
  IF ~~ THEN REPLY #40093 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40094 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40095 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40096 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40097 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40098 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40099 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 11
  IF ~~ THEN REPLY #40100 /* ~"Tak właściwie, to nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 12.0
  SAY #40101 /* ~Przytakuje. "To prawda, paniczu. Przyszłam tu pewnego wieczora, by samej zobaczyć, czemu mój mąż ciągle składa wizyty temu miejscu... zaprzyjaźniłam się z kilkoma z tutejszych kurtyzan i tak już zostało! Rozumiesz, nie tylko mężczyźni mogą się cieszyć miłymi rozmowami."~ */
  IF ~~ THEN REPLY #40102 /* ~"Prawda. Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40103 /* ~"Tak podejrzewam. W każdym wypadku, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #40104 /* ~"Przybytek to szkoła założona przez Nie-Sławę... Uczy obiecujące członkinie Stronnictwa Doznań delikatnej sztuki słowa i komunikacji. Jeśli to, co mi powiedziano jest prawdą, to Przybytek utrzymuje się z darowizn pochodzących od bardziej zamożnych klientów."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40105 /* ~"Nie-Sławę?"~ */ GOTO 14
  IF ~~ THEN REPLY #40106 /* ~"Opowiedz mi o Stronnictwie Doznań."~ */ GOTO 5
  IF ~~ THEN REPLY #40107 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40108 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #40109 /* ~Kobieta obdarza cię przez chwilę dziwnym spojrzeniem. "Z pewnością już kiedyś o nich słyszałeś, prawda? Czuciowcy? To frakcja, która wierzy, że doświadczenie jest kluczem do zrozumienia wieloświata. Ich siedziba, Miejski Gmach Rozrywki, znajduje się niedaleko... gdy stąd wyjdziesz, skręć w lewo, a potem ponownie w lewo. Znajdziesz tam wielu chętnych do rozmowy o Stronnictwie Doznań."~ */
  IF ~~ THEN REPLY #40110 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40111 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #40112 /* ~"Nie znam jej... i nie przypominam sobie jej imienia. Powiedziano mi, że nie potrafi się ona komunikować, więc nigdy nie zdecydowałam się spróbować z nią porozmawiać."~ */
  IF ~~ THEN REPLY #40113 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40114 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 13.0
  SAY #40115 /* ~"Raveli? Nie znam nikogo o tym imieniu, a już w ogóle nie mam pojęcia, czy jest ona matką Kesai. Sama Kesai powiedziała mi jednak, że jest sierotą. Że jej ojciec, pół-bies, zostawił ją w Sigil, by tu się wychowywała."~ */
  IF ~~ THEN REPLY #40116 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40117 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #40118 /* ~"Nie. Vivian mówi już o tym od pewnego czasu - jest wyjątkowo niezadowolona! Bardzo byłabym wdzięczna, gdyby jej go zwrócono, gdyż ostatnio nie prawie o niczym innym nie mówi."~ */
  IF ~~ THEN REPLY #40119 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40120 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #40121 /* ~Kobieta marszczy się. "Och, Marissa mnie nie obchodzi... jest ona wyjątkowo niemiła! A co do jej welonu, to nie... nic o nim nie wiem."~ */
  IF ~~ THEN REPLY #40122 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40123 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #40124 /* ~"Ravela... Szaradna..." Wymawia to imię powoli, jakby nigdy wcześniej tego nie robiła. "Muszę przyznać, że nie."~ */
  IF ~~ THEN REPLY #40125 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40126 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #40127 /* ~"Ja wiem tylko o dziewięciu kurtyzanach... i jestem raczej pewna, że rozmawiałam ze wszystkimi. Może pojawiła się jakaś nowa dziewczyna, której jeszcze nie spotkałam...?"~ */
  IF ~~ THEN REPLY #40128 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40129 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.1
  SAY #40130 /* ~"Wstępuję, by porozmawiać tu z kilkoma przyjaciółkami, to wszystko. Jestem jedną z niewielu klientek Przybytku Zaspokajania Żądz Intelektualnych."~ */
  IF ~~ THEN REPLY #40131 /* ~"Jesteś klientką?"~ */ GOTO 3
  IF ~~ THEN REPLY #40132 /* ~"Czy możesz polecić mi kogoś, z kim mógłbym porozmawiać?"~ */ GOTO 13
  IF ~~ THEN REPLY #40133 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40134 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #40135 /* ~"To zależy od tego, z jakimi osobami lubisz rozmawiać, paniczu. Osobiście - cóż, jestem przyjaciółką Vivian i Kesai-Serris, a czasami rozmawiam trochę z tym słodkim małym słoneczkiem, Nenny."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #40136 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 7
  IF ~~ THEN REPLY #40137 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40138 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0
  SAY #40139 /* ~"Tak... kurtyzany nazywają ją Panią Sławą. Przeważnie wita ona klientów w foyer Przybytku... możesz jej tam poszukać, jeśli chciałbyś z nią porozmawiać."~ */
  IF ~~ THEN REPLY #40140 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40141 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
