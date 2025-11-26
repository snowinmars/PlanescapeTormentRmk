// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DADABUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50108 /* ~Widzisz przed sobą wysoką postać z bujną czupryną siwych włosów. Jej skóra ma zielonkawy odcień, a z czoła wystaje para kozich rogów. Postać jest ubrana w długie, zwiewne szaty i wydaje się, że lekko unosi się nad ziemią.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50109 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #50303 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50318 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #50330 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50110 /* ~Postać odwraca się w twoim kierunku, a wokół jej głowy ukazuje się ciąg symboli. Otacza je subtelna poświata i po prostu... unoszą się w powietrzu.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 235
END

IF ~~ THEN BEGIN 2 // from:
  SAY #50119 /* ~Dabus czeka cierpliwie; jego ręce są schowane w rękawach. Nad jego głową ukazuje się ciąg symboli, który po chwili znika, a na jego miejscu pojawia się znak zapytania.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50120 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50259 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50260 /* ~Spróbuj porozmawiać z dabusem i sprawdź, czy potrafisz go zrozumieć.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50290 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50291 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50292 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50293 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50294 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50295 /* ~"Anno, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50296 /* ~"Dak'konie, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50297 /* ~"Nie-Sławo, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50298 /* ~"Przykro mi, ale cię nie rozumiem."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~~ THEN REPLY #50299 /* ~"Eee... Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1 20.0 20.1
  SAY #50121 /* ~Próbujesz zadać dabusowi kilka pytań, aby przyzwyczaić się do rebusów, które ukazują się ponad jego głową. W trakcie tej 'rozmowy', twój rozmówca jest bardzo cierpliwy. Podaje ci do przetłumaczenia proste zdania. Po pewnym czasie zaczynasz się w nich orientować... Masz wrażenie, że nie są one dla ciebie zupełnie obce.~ */
  IF ~~ THEN REPLY #50122 /* ~"Może mógłbyś mi pomóc..."~ */ GOTO 4
  IF ~~ THEN REPLY #50258 /* ~"Chciałem tylko odświeżyć moją znajomość rebusów. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.3 3.0 5.0 7.0 8.0 9.0 10.2 20.3
  SAY #50123 /* ~Dabus czeka.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50124 /* ~"Kim jesteś?"~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50130 /* ~"Czym się zajmujesz?"~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50135 /* ~"Kim jesteś?"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50139 /* ~"Czym się zajmujesz?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #50144 /* ~"Opowiedz mi o Pani Bólu."~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #50256 /* ~"Opowiedz mi o Upadłym."~ */ DO ~FloatRebus(Myself)
~ GOTO 17
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #50257 /* ~"Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #50125 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. Chyba mówi, że jest dabusem.~ */
  IF ~~ THEN REPLY #50126 /* ~"Mam do ciebie jeszcze jedno pytanie."~ */ GOTO 4
  IF ~~ THEN REPLY #50127 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.12 3.1 4.8 5.1 7.1 7.2 8.1 9.1 9.2 10.3 18.10 20.16
  SAY #50128 /* ~Dabus lekko skłania głowę. Ponad nią zaczynają wirować symbole. Potem odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #50129 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #50131 /* ~Ponad głową dabusa ukazuje się grupa symboli. Chyba mówi, że wykonuje swój obowiązek... albo obowiązki.~ */
  IF ~~ THEN REPLY #50132 /* ~"Mam do ciebie jeszcze jedno pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #50133 /* ~"Bardzo opisowe. Dziękuję. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50134 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #50136 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. (Jestem dabusem.)~ */
  IF ~~ THEN REPLY #50137 /* ~"Mam do ciebie jeszcze jedno pytanie."~ */ GOTO 4
  IF ~~ THEN REPLY #50138 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #50140 /* ~Ponad głową dabusa ukazuje się grupa symboli. (Wypełniam swoje obowiązki.)~ */
  IF ~~ THEN REPLY #50141 /* ~"Mam do ciebie jeszcze jedno pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #50142 /* ~"Bardzo opisowe. Dziękuję. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50143 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY #50145 /* ~Nad głową dabusa ukazuje się pojedynczy symbol. Pokazuje on metaliczną, kobiecą maskę, z której boków wychodzą ostrza. Już samo patrzenie na ten upiorny wizerunek sprawia, że czujesz się nieswojo.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50146 /* ~"Eee... Nie takiej odpowiedzi się spodziewałem."~ */ EXTERN ~DGRACE~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50253 /* ~"Eee... Rozumiem. Dak'konie, czy możesz mu zadać następne pytanie?~ */ EXTERN ~DDAKKON~ 165
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50254 /* ~"Eee... Mam do ciebie jeszcze jedno pytanie..."~ */ GOTO 4
  IF ~~ THEN REPLY #50255 /* ~"Eee... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from:
  SAY #50151 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50152 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50236 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50237 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50238 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50158 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. Chyba mówi, że jest dabusem.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50159 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50160 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50167 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50212 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50174 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. (Jestem dabusem.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50175 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50176 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50177 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50178 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50183 /* ~Ponad głową dabusa ukazuje się grupa symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50184 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50188 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50192 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50197 /* ~Ponad głową dabusa ukazuje się grupa symboli. Chyba mówi, że wykonuje swój obowiązek... albo obowiązki.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50198 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50199 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50200 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 16 // from:
  SAY #50202 /* ~Ponad głową dabusa ukazuje się grupa symboli. (Wypełniam swoje obowiązki.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50203 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50204 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50205 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 17 // from: 4.5
  SAY #50208 /* ~Ponad głową dabusa ukazuje się pojedynczy symbol. To biały owal przecięty czarną błyskawicą. Po chwili symbol znika, a dabus odwraca się od ciebie i przestaje zwracać na ciebie uwagę.~ */
  IF ~~ THEN REPLY #50209 /* ~"Eee... w takim razie, żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2 20.2
  SAY #50261 /* ~Próbujesz zadać dabusowi kilka pytań, aby przyzwyczaić się do rebusów, które ukazują się ponad jego głową. Choć w trakcie tej 'rozmowy' twój rozmówca jest bardzo cierpliwy, to nie udaje ci się zrozumieć symboli. W końcu dabus przestaje wyświetlać symbole i po prostu czeka.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50262 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50265 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50268 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50271 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50274 /* ~"Anno, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50284 /* ~"Dak'konie, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50285 /* ~"Nie-Sławo, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50286 /* ~"Przykro mi, ale cię nie rozumiem."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #50289 /* ~"Eee... Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 2.11 18.7 20.6
  SAY #50287 /* ~Ponad głową dabusa ukazuje się ciąg symboli. Potem dabus kłania się i odwraca od ciebie.~ */
  IF ~~ THEN REPLY #50288 /* ~"Eee... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.1 22.0
  SAY #50304 /* ~Dabus odwraca się w twoim kierunku, a wokół jego głowy ukazuje się ciąg symboli. Otacza je subtelna poświata i po prostu... unoszą się w powietrzu.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50305 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50306 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50307 /* ~Spróbuj z nią porozmawiać i sprawdź, czy potrafisz go zrozumieć.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50308 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 4
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50309 /* ~"Przykro mi, ale cię nie rozumiem."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50310 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50311 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50312 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50313 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50314 /* ~"Anno, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50315 /* ~"Dak'konie, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50316 /* ~"Nie-Sławo, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50317 /* ~"Mniejsza z tym. Przepraszam za najście. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY #50319 /* ~Postać odwraca się w twoim kierunku, a wokół jej głowy ukazuje się ciąg symboli. Otacza je subtelna poświata i po prostu... unoszą się w powietrzu.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 496
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 22 // from:
  SAY #50331 /* ~Widzisz przed sobą dabusa. Jest ubrany w długie, zwiewne szaty i lekko unosi się nad ziemią.~ */
  IF ~~ THEN REPLY #50332 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #50333 /* ~Zostaw dabusa w spokoju.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Pregnant_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #50334 /* ~Widzisz przed sobą dabusa. Jest ubrany w długie, zwiewne szaty i lekko unosi się nad ziemią.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50340 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50341 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~~ THEN REPLY #50342 /* ~Zostaw dabusa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #50335 /* ~Dabus odwraca się w twoim kierunku, a wokół jego głowy ukazuje się ciąg symboli. (Muszę wracać do swoich obowiązków. Nie mam czasu na rozmowę.)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50343 /* ~"Rozumiem. Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61176 /* ~"Rozumiem. Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #61177 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.6 4.7 20.4 20.5 24.0 24.1
  SAY #50336 /* ~Dabus przechyla lekko głowę w jedną stronę. Ponad jego głową ukazuje się ciąg symboli, z których większość wyraża zdziwienie i strapienie, a nie słowa. (Nieżywy? Gdzie?)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50345 /* ~Prawda: "Leży niedaleko stąd, w opuszczonym budynku. Wygląda na to, że wpadł w jakąś pułapkę."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50346 /* ~Kłamstwo: "Leży niedaleko stąd, w opuszczonym budynku. Nie mam pojęcia, jaka była przyczyna jego śmierci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61178 /* ~"Leży niedaleko stąd, w opuszczonym budynku. Nie mam pojęcia, jaka była przyczyna jego śmierci."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2 28.0 28.1 28.2
  SAY #50337 /* ~Dabus wpatruje się w ciebie przez krótką chwilę, potem kłania ci się lekko i odpływa w kierunku opuszczonego budynku.~ */
  IF ~~ THEN REPLY #50347 /* ~"Żegnaj."~ */ DO ~SetGlobal("Dabus_Trap","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #50338 /* ~Dabus odwraca się w twoim kierunku, a wokół jego głowy ukazuje się ciąg symboli. Otacza je subtelna poświata i po prostu... unoszą się w powietrzu.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61165 /* ~"Ee... Pomyślałem tylko, że powinieneś się dowiedzieć o tym, że na tej Alei odkryłem ciało Dabusa."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #61169 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.8 18.9 20.7 20.8 27.0 27.1
  SAY #50339 /* ~Dabus przechyla lekko głowę w jedną stronę. Ponad jego głową ukazuje się ciąg symboli. Choć nie możesz zrozumieć, co mówi, to spostrzegasz, że koniec wiadomości jest zaznaczony jasno świecącym znakiem zapytania.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50350 /* ~Prawda: "Leży niedaleko stąd, w opuszczonym budynku. Wygląda na to, że wpadł w jakąś pułapkę."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50351 /* ~Kłamstwo: "Leży niedaleko stąd, w opuszczonym budynku. Nie mam pojęcia, jaka była przyczyna jego śmierci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61172 /* ~"Leży niedaleko stąd, w opuszczonym budynku. Nie mam pojęcia, jaka była przyczyna jego śmierci."~ */ GOTO 26
END
