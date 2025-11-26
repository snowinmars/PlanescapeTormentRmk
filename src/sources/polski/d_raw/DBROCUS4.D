// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3204 /* ~Ten mężczyzna niczym się nie wyróżnia, poza tym, że ma podbite oko, jakby go uderzono w twarz. Kłania się lekko, gdy do niego podchodzisz. "Witam, panie."~ */
  IF ~~ THEN REPLY #3205 /* ~"Witaj. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #40154 /* ~"Witaj i żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40155 /* ~"Witaj ponownie, panie."~ */
  IF ~~ THEN REPLY #40156 /* ~"Witaj. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #40157 /* ~"Witaj i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.2 4.2 5.1 6.0 7.1 8.1 9.0 10.1 11.0 12.0 13.1 14.0 15.0 16.0 17.0
  SAY #40158 /* ~Przytakuje. "Tak, mów dalej..."~ */
  IF ~~ THEN REPLY #40159 /* ~"Jak dorobiłeś się tego podbitego oka?"~ */ GOTO 3
  IF ~~ THEN REPLY #40160 /* ~"Co tu robisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #40161 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40162 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 11
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68125 /* ~"Co możesz mi powiedzieć o milczącej kurtyzanie?"~ */ GOTO 11
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40163 /* ~"Słyszałem, że Kesai-Serris jest córką Raveli. Czy to prawda?"~ */ GOTO 12
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40164 /* ~"Usiłuję odnaleźć zapach Vivian... czy wiesz może, gdzie mógłby być?"~ */ GOTO 13
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40165 /* ~"Szukam karmazynowego welonu Marissy... Czy wiesz, gdzie mógłby być?"~ */ GOTO 15
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40166 /* ~"Czy wiesz coś o Raveli Szaradnej?"~ */ GOTO 16
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
~ THEN REPLY #40167 /* ~"Rozmawiałem już z dziewięcioma kurtyzanami... Czy wiesz może, kim jest dziesiąta? Albo gdzie można ją znaleźć?"~ */ GOTO 17
  IF ~~ THEN REPLY #40168 /* ~"Tak właściwie, to nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40169 /* ~Uśmiecha się półgębkiem. "Och, tego? To długa historia, panie. Nie byłbyś nią zainteresowany."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 426
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40170 /* ~"Ależ skąd... proszę, opowiedz."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40171 /* ~"Dobrze. Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40172 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #40173 /* ~Mężczyzna wzdycha, wywracając oczami. "Dobrze... ale nie będę się wdawał w szczegóły. Pomimo mojej wcześniejszej uwagi dotyczącej długości tej historii, mogę streścić ją w trzech słowach: Kimasxi Żmijowy Język."~ */
  IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN REPLY #40174 /* ~"Kto?"~ */ GOTO 5
  IF ~  GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40175 /* ~"Ach... tak, znam ją."~ */ GOTO 6
  IF ~~ THEN REPLY #40176 /* ~"Rozumiem. Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40177 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40178 /* ~"Ach, jak widzę, jeszcze z nią nie rozmawiałeś. Nie powiem ci, dobry panie, nic więcej o najcudowniejszej uczcie, jaką jest Kimasxi... zamiast tego nalegam, żebyś sam z nią porozmawiał. Ona jest jedną z tutejszych kurtyzan i najbardziej fascynującą uczennicą Pani Sławy." Uśmiecha się.~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40179 /* ~"Pani Sławy?"~ */ GOTO 9
  IF ~~ THEN REPLY #40180 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40181 /* ~"Zatem może pójdę jej poszukać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #40182 /* ~Mężczyzna wzdycha z rozmarzeniem. "Wspaniała, prawda?" Nagle opamiętuje się. "Ale czekaj! Nie bierz mojego wyznania za uczucie, dobry panie... jestem zaręczony i niedługo będę się żenił z kobietą, którą naprawdę kocham. Ale Kimasxi... z nią się rozmawia zupełnie... *inaczej*." Uśmiecha się.~ */
  IF ~~ THEN REPLY #40183 /* ~"Innaczej... tak. Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40184 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #40185 /* ~"Cóż, cieszę się przyjemnościami tego Przybytku! Ty nie?"~ */
  IF ~~ THEN REPLY #40186 /* ~"Przyjemnościami?"~ */ GOTO 8
  IF ~~ THEN REPLY #40187 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40188 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40189 /* ~"Dokładnie... czyż nie jesteś tu, aby rozmawiać z paniami, panie? Jest to, mimo wszystko, cel istnienia tego miejsca, przynajmniej dla klientów. Rozmawiać z kochanymi uczennicami Pani Sławy!"~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40190 /* ~"Pani Sławy?"~ */ GOTO 9
  IF ~~ THEN REPLY #40191 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40192 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 8.0 10.0
  SAY #40193 /* ~Mężczyzna przytakuje. "Tak, a jak cudownie ona wygląda. Cóż, mógłbym słuchać jej głosu godzinami! Tylko Kimasxi jest bardziej interesująca..." Jego myśli zdają się na chwilę szybować gdzieś w dali. "Och! Ale jak powiedziałem, Pani Sława jest właścicielką Przybytku. Niewątpliwie gdzieś tu się znajduje... idź i porozmawiaj z nią sam. Nie będziesz rozczarowany, zapewniam cię."~ */
  IF ~~ THEN REPLY #40194 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40195 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #40196 /* ~"Jaki mieszkaniec Sigil nie zna Przybytku Zaspokajania Żądz Intelektualnych? Musisz faktycznie być tu nowy, panie." Wzdycha. "Przejdź się... porozmawiaj z paniami... tyle, jeśli chodzi o ten przybytek. Jeśli jesteś zainteresowany jego historią i takimi tam, to porozmawiaj o tym z Panią Sławą."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40197 /* ~"Panią Sławą?"~ */ GOTO 9
  IF ~~ THEN REPLY #40198 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40199 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #40200 /* ~Mężczyzna przerywa, by pomyśleć. "Nigdy z nią nie rozmawiałem, ale wydaje mi się, że ma na imię Ecco."~ */
  IF ~~ THEN REPLY #40201 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40202 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY #40203 /* ~"Raveli... Raveli... masz na myśli tę nocną wiedźmę z legend? Ciężko mi uwierzyć w to, że ta potworna istota była matką *czegokolwiek*, nie mówiąc już o dobrej Kesai."~ */
  IF ~~ THEN REPLY #40204 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40205 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #40206 /* ~"Straciła swój zapach? Dziwne... przechodziłem obok niej kilka godzin temu i pachniała dość przyjemnie. Jak zwykle, oczywiście. Tak właściwie, to nie jestem pewien, czy kiedykolwiek znalazłem się w pobliżu kobiety o bardziej kuszącym zapachu."~ */
  IF ~~ THEN REPLY #40207 /* ~"Tak właściwie, to zginął jej *osobisty* zapach."~ */ GOTO 14
  IF ~~ THEN REPLY #40208 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40209 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40210 /* ~"Naprawdę? Nie miałem pojęcia, że coś takiego jest możliwe. Cóż, mam nadzieję, że go odzyska!"~ */
  IF ~~ THEN REPLY #40211 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40212 /* ~"Będę już szedł. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #40213 /* ~"Nie. Muszę ci się jednak przyznać, że Marissa nieco mnie przeraża. Obawiam się, że w jej komnatach czeka coś strasznego i że tylko się mną bawi, zanim nie rozerwie mnie na strzępy. Byłbym bardzo zadowolony, gdyby odzyskała swój welon i ponownie zaczęła się spotykać z klientami na zewnątrz swego ciemnego pokoju."~ */
  IF ~~ THEN REPLY #40214 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40215 /* ~"Będę już szedł. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.8
  SAY #40216 /* ~"Wszystko, co wiem o Raveli to dziecięce bajki... że jest wyjątkowo zła, że sprowadziła na siebie gniew Pani Bólu i wygnano ją na zawsze."~ */
  IF ~~ THEN REPLY #40217 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40218 /* ~"Będę już szedł. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.9
  SAY #40219 /* ~"Dziesiąta? Dziesiąta uczennica... dziesiąta kurtyzana... hmmm. Nie, nie sądzę, żebym coś o niej słyszał, nie mówiąc już o tym, kim ona może być."~ */
  IF ~~ THEN REPLY #40220 /* ~"Mam jeszcze inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #40221 /* ~"Będę już szedł. Żegnaj."~ */ EXIT
END
