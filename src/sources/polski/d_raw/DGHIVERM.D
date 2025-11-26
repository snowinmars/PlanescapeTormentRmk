// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVERM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVERM~

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 0 // from:
  SAY #33152 /* ~Mężczyzna stawia krok w tył, a na jego twarzy widzisz mieszaninę strachu i obrzydzenia. "W... wynoś się! Zostaw mnie w spokoju!"~ */
  IF ~~ THEN REPLY #33153 /* ~Pozwól mu odejść.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 1 // from:
  SAY #33154 /* ~Kiedy się do niego zbliżasz, oczy mężczyzny powiększają się, a on odsuwa się od ciebie. "Nie mam nic, co by ci się przydało, przysięgam - zostaw mnie w spokoju!"~ */
  IF ~~ THEN REPLY #33155 /* ~Pozwól mu odejść.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 2 // from:
  SAY #33156 /* ~"Szpicuj się! Nie chcę mieć z tobą nic wspólnego!"~ */
  IF ~~ THEN REPLY #33157 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 3 // from:
  SAY #33158 /* ~Mężczyzna robi wszystko, żeby nie zwracać na ciebie uwagi. Im bardziej próbujesz ją przyciągnąć, tym bardziej oczywiste staje się, że nie będzie z tobą rozmawiać.~ */
  IF ~~ THEN REPLY #33159 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 4 // from:
  SAY #33160 /* ~"Wyglądasz, jakbyś całe życie mieszkał w Ulu - albo w jeszcze gorszym miejscu, śmiałku. Teraz się odskurluj i zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #33161 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33162 /* ~"Nie wyglądasz zbyt dobrze. Jak chcesz odpocząć, to wpadnij do oberży... znajdziesz ją dokładnie w środkowej części tego rejonu. Teraz zostaw mnie w spokoju! Nie mam czasu na twoje pytania."~ */
  IF ~~ THEN REPLY #33163 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33164 /* ~"Byłeś już w gospodzie Proch do Prochu, trepie? Twoja gęba przypomina mi trochę tych skurli, co tam pracują..." Mężczyzna uśmiecha się cierpko.~ */
  IF ~~ THEN REPLY #33165 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33166 /* ~Mężczyzna raz po raz odrywa zębami kawałek czegoś, co wygląda jak szczur na patyku. "Co jest, trepie? Nie widziałeś nigdy gotowanego szczura? Całkiem smaczny, a jaki pożywny! Jak jesteś głodny, pogadaj z Kridenem... Znajdziesz go przed Biurem do Spraw Szkodników i Zapobiegania Chorobom."~ */
  IF ~~ THEN REPLY #33167 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33168 /* ~"Natknąłeś się kiedyś na Wygłodzone Psy? Na twoim miejscu unikałbym tych wyjących, przeklętych skurli!"~ */
  IF ~~ THEN REPLY #33169 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 9 // from:
  SAY #33170 /* ~"Nie wiem nic, co by ci się przydało, trepie... zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #33171 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 10 // from:
  SAY #33172 /* ~Mężczyzna spogląda na ciebie, a potem wyciąga rękę i robi nad sercem półkole. "Zajmuję się tylko swoimi sprawami, krwawniku i proszę cię, żebyś zrobił to samo. Żegnaj."~ */
  IF ~~ THEN REPLY #33173 /* ~Pozwól mu odejść.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 11 // from:
  SAY #33174 /* ~Kiedy się do niego zbliżasz, mężczyzna marszczy brwi. "Nie mam czasu na kłapanie jadaczką z nieznajomymi, śmiałku. A poza tym, to nie jest zbyt bezpieczne w Ulu. Niech ci się dobrze wiedzie."~ */
  IF ~~ THEN REPLY #33175 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
NumTimesTalkedTo(0)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 12 // from:
  SAY #33176 /* ~"Mówię ci, życie w Ulu to przekleństwo."~ */
  IF ~~ THEN REPLY #33177 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33178 /* ~"Nie wyglądasz zbyt dobrze. Jak chcesz odpocząć, to wpadnij do oberży... znajdziesz ją dokładnie w środkowej części tego rejonu. Teraz zostaw mnie w spokoju! Nie mam czasu na twoje pytania."~ */
  IF ~~ THEN REPLY #33179 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33180 /* ~"Byłeś już w gospodzie Proch do Prochu, trepie? Twoja gęba przypomina mi trochę tych skurli, co tam pracują..." Mężczyzna uśmiecha się cierpko.~ */
  IF ~~ THEN REPLY #33181 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33182 /* ~Mężczyzna raz po raz odrywa zębami kawałek czegoś, co wygląda jak szczur na patyku. "Co jest, trepie? Nie widziałeś nigdy gotowanego szczura? Całkiem smaczny, a jaki pożywny! Jak jesteś głodny, pogadaj z Kridenem... Znajdziesz go przed Biurem do Spraw Szkodników i Zapobiegania Chorobom."~ */
  IF ~~ THEN REPLY #339 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #340 /* ~"Natknąłeś się kiedyś na Wygłodzone Psy? Na twoim miejscu unikałbym tych wyjących, przeklętych skurli!"~ */
  IF ~~ THEN REPLY #341 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #3921 /* ~"Słyszałek o tobie, trepie... Pytosz wszystkich o starego Faroda, nie? Jak go jeszcze nie znalazłeś, to poszukaj na północ stąd, na Placu Szmaciarzy."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33184 /* ~"W takim razie spróbuję tam pójść. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33188 /* ~"Już go znalazłem, ale dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33192 /* ~"Słyszołeś o Alei Niebezpiecznych Węgłów? Kiedyś była pełna życia, a teraz wszystko stoi wypalone. Kręcą się tam teraz tylko sami bandyci."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33193 /* ~"Tak, byłem tam."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33194 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33195 /* ~"Jak nie masz zbyt delikatnego nosa, to tu niedaleko jest gość o imieniu Śmierdziwiatr. Można od niego usłyszeć ciekawe historie."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33196 /* ~"Może pójdę go poszukać. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33197 /* ~"Tak, już go spotkałem. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33198 /* ~"Strasznie lubię wpadać do gospody 'Pod Gorejącym Człekiem'... to najlepszy wyszynk w Ulu... Czasami strasznie tam gorąco, no wiesz... to przez tego dymiącego truposza."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33199 /* ~"Teraz nie ma tam już żadnego truposza. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33200 /* ~"Tak, też tam byłem. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33201 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 21 // from:
  SAY #33202 /* ~Mężczyzna skłania przed tobą głowę. "Witaj, śmiałku. Pomógłbym ci, jakbym mógł... ale nie wiem o niczym, co mogłoby ci się przydać."~ */
  IF ~~ THEN REPLY #33203 /* ~"Ale i tak dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 22 // from:
  SAY #33205 /* ~"Nie cierpię tego miejsca... Może kiedyś zarobię na tyle brzdęku, żeby wynieść się z Ula na dobre. Posłuchaj mojej rady, śmiałku, uciekaj stąd, dopóki jeszcze możesz."~ */
  IF ~~ THEN REPLY #33206 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 23 // from:
  SAY #33207 /* ~"Uważaj na siebie, trepie... Przemoc to w Ulu sposób na życie."~ */
  IF ~~ THEN REPLY #33208 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33209 /* ~"Nie wyglądasz zbyt dobrze. Jak chcesz odpocząć, to wpadnij do oberży... znajdziesz ją dokładnie w środkowej części tego rejonu. Teraz zostaw mnie w spokoju! Nie mam czasu na twoje pytania."~ */
  IF ~~ THEN REPLY #33210 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33211 /* ~"Słyszałek o tobie, trepie... Pytosz wszystkich o starego Faroda, nie? Jak go jeszcze nie znalazłeś, to poszukaj na północ stąd, na Placu Szmaciarzy."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"W takim razie spróbuję tam pójść. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"Już go znalazłem, ale dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33214 /* ~"Jest tu w pobliżu krwawnik imieniem Porfiron... Może cię nauczyć walczyć, oj tak."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33215 /* ~"W takim razie może pójdę go poszukać. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33216 /* ~"Tak, spotkałem go. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33217 /* ~"Jak chcesz się zorientować, gdzie co jest, to idź pod Drogowskaz. Stoi przed gospodą Proch do Prochu."~ */
  IF ~~ THEN REPLY #33218 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33219 /* ~"Słyszołeś o Alei Niebezpiecznych Węgłów? Kiedyś była pełna życia, a teraz wszystko stoi wypalone. Kręcą się tam teraz tylko sami bandyci."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33220 /* ~"Tak, byłem tam. Żegnaj."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33221 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33222 /* ~"Przychodzi tu wielu ludzi, żeby opłakiwać swoich zmarłych... Przy Kamieniu Pamiątkowym jest taki jeden dziwnie wyglądający Grabarz, który może ci powiedzieć, czy ktoś, kogo szukasz, umarł, albo jak będziesz chciał upamiętnić czyjeś imię, to on wygraweruje je dla ciebie na Kamieniu."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #1252 /* ~"Tak, nazywa się 'Grzebiący Imiona'. Żegnaj."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #1254 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33223 /* ~"Praktycznie każdy Grabarz w Sigil spędza trochę swojego czasu w gospodzie Proch do Prochu. Jak szukasz jednego z nich, to dobrze jest rozpocząć poszukiwania od tego miejsca."~ */
  IF ~~ THEN REPLY #33225 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33228 /* ~Mężczyzna raz po raz odrywa zębami kawałek czegoś, co wygląda jak szczur na patyku. "Co jest, trepie? Nie widziałeś nigdy gotowanego szczura? Całkiem smaczny, a jaki pożywny! Jak jesteś głodny, pogadaj z Kridenem... Znajdziesz go przed Biurem do Spraw Szkodników i Zapobiegania Chorobom."~ */
  IF ~~ THEN REPLY #33230 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33232 /* ~"Jak nie masz zbyt delikatnego nosa, to tu niedaleko jest gość o imieniu Śmierdziwiatr. Można od niego usłyszeć ciekawe historie."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33233 /* ~"Może pójdę go poszukać. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33234 /* ~"Tak, spotkałem go. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33235 /* ~"Jak ci czegoś trza, to idź na Targ. Tam można dostać prawie wszystko, czego dusza zapragnie."~ */
  IF ~~ THEN REPLY #33236 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33237 /* ~"Słuchałeś kiedyś Profiry na Targu? Jak ta baba ma rację, to w Sigil będzie niezłe zamieszanie i chaos. Chyba że ma bzika, jak mówią ludzie."~ */
  IF ~~ THEN REPLY #33238 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33239 /* ~"Słyszołeś o Alei Niebezpiecznych Węgłów? Kiedyś była pełna życia, a teraz wszystko stoi wypalone. Kręcą się tam teraz tylko sami bandyci."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33240 /* ~"Tak, byłem tam."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33241 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33242 /* ~"Natknąłeś się kiedyś na Wygłodzone Psy? Na twoim miejscu unikałbym tych wyjących, przeklętych skurli!"~ */
  IF ~~ THEN REPLY #33243 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33244 /* ~"Strasznie lubię wpadać do gospody 'Pod Gorejącym Człekiem'... to najlepszy wyszynk w Ulu... Czasami strasznie tam gorąco, no wiesz... to przez tego dymiącego truposza."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33246 /* ~"Teraz nie ma tam żadnego truposza. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33247 /* ~"Tak, też tam byłem. Żegnaj."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33248 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33249 /* ~"Spotkałeś już tego zbzikowanego skurla, 'Opłakującego'? Ale kretyn... Jakby ktoś się tu przejmował tymi szpicowanymi drzewami. Przede wszystkim chciałbym wiedzieć, jaki kretyn je tu w ogóle przywlókł...!"~ */
  IF ~~ THEN REPLY #33250 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33251 /* ~"Mogę ci tylko poradzić, żebyś uważał na swój tyłek, śmiałku... strasznie tu dużo kieszonkowców."~ */
  IF ~~ THEN REPLY #33252 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33253 /* ~"Czasami można tu spotkać pewną wariatkę... Słyszałem, że to jakaś Tępaczka, która zbzikowała, próbując znaleźć drogę do domu."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33254 /* ~"Tak... powinna już być w domu, albo wróci już niedługo. Żegnaj."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33255 /* ~"Spotkałem ją. Ma na imię Ingressa. Żegnaj."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33256 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33257 /* ~"Jak masz trochę wolnego czasu i za dużo brzdęku, poszukaj Gaohy na Targu."~ */
  IF ~~ THEN REPLY #33258 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33259 /* ~"Niezłe te twoje tatuaże, śmiałku. Tu w pobliżu jest salon, gdzie można sobie zrobić takie cacka... prowadzi go pewien dabus!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33260 /* ~"Wiem. Ma na imię Upadły. Żegnaj."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33261 /* ~"Tak, byłem tam. Żegnaj."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33262 /* ~"Może tam pójdę. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_A","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33263 /* ~"A niech to, Thliumie! Myślałem, że cię już nigdy nie zobaczę. Ile to już? Cztery lata? Wyglądasz... no cóż, nieważne. Masz tu tę setkę miedziaków, które ci byłem winien. Oddałbym je wcześniej, ale jakbyś się pod ziemię zapadł! Muszę już iść, Thliumie... niech ci się dobrze wiedzie!"~ */
  IF ~~ THEN REPLY #33264 /* ~"Ee..."~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33265 /* ~Pozwól mu odejść.~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_B","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #33266 /* ~Oczy mężczyzny rozszerzają się, a z jego twarzy odpływa cała krew. "N-n-na wszystkie moce... Mówili, że wrócisz, a-a-ale im nie wierzyłem!" Mężczyzna odwraca się i przygotowuje do ucieczki.~ */
  IF ~~ THEN REPLY #33267 /* ~Spróbuj go złapać.~ */ DO ~Enemy()
EscapeArea()
SetGlobal("Hive_OT_B","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #33268 /* ~Pozwól mu odejść.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_C","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33269 /* ~Mężczyzna spogląda na ciebie z ukosa. "Morrik? To ty?"~ */
  IF ~~ THEN REPLY #33270 /* ~Kłamstwo: "Tak... Mam na imię Morrik."~ */ GOTO 47
  IF ~~ THEN REPLY #33271 /* ~"Może..."~ */ GOTO 47
  IF ~~ THEN REPLY #33272 /* ~"Nie, przykro mi."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #33273 /* ~"W takim razie wybacz mi, śmiałku. Niech ci się dobrze wiedzie."~ */
  IF ~~ THEN REPLY #33274 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0 45.1
  SAY #33275 /* ~"Czy nie mówiłeś, że nigdy już nie powrócisz do Sigil...? Jeśli Amatael się dowie, że tu jesteś, to już nie żyjesz! W każdym razie, ciągle mam ten zwój, który mi pożyczyłeś. Masz... weź go i odejdź, zanim ktoś nas zobaczy razem."~ */
  IF ~~ THEN REPLY #33276 /* ~"Ale..."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33277 /* ~"Dziękuję... żegnaj."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Morte","GLOBAL",0)
InParty("Morte")
~ THEN BEGIN 48 // from:
  SAY #33278 /* ~Mężczyzna wskazuje na Mortego. "Oj! Spójrz! Latająca czaszka!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 321
END

IF ~~ THEN BEGIN 49 // from:
  SAY #33279 /* ~"Co?! Szukasz guza, ty trajkoczący gaduło?" Mężczyzna zbliża się do Mortego ze złym ognikiem w oczach.~ */
  IF ~~ THEN REPLY #33280 /* ~Zatrzymaj go.~ */ GOTO 50
  IF ~~ THEN REPLY #33281 /* ~Pozwól Mortemu się tym zająć.~ */ EXTERN ~DMORTE~ 322
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #33282 /* ~Stajesz pomiędzy Morte, a nieznajomym. Mężczyzna w końcu daje za wygraną. "Szkoda czasu!" Potem odwraca się, aby odejść.~ */
  IF ~~ THEN REPLY #33283 /* ~Pozwól mu odejść.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #33284 /* ~Zdenerwowany mężczyzna spogląda na Mortego, a potem na ciebie. W końcu kręci głową. "Szkoda czasu!" Potem odwraca się, aby odejść.~ */
  IF ~~ THEN REPLY #33285 /* ~Pozwól mu odejść.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Annah","GLOBAL",0)
InParty("Annah")
~ THEN BEGIN 52 // from:
  SAY #33286 /* ~"Anno! Cóż ty robisz z *tym* skurlem? Myśłałem, że będziesz *moją* dziewczyną..." Mężczyzna wybucha śmiechem, klepiąc się po udach.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 180
END

IF ~~ THEN BEGIN 53 // from:
  SAY #33287 /* ~"Ach, tylko gadasz, Anno... *tylko* gadasz... *Nigdy* nie wybebeszyłabyś jedynego mężczyzny, który może cię *naprawdę* zadowolić! Chodź tutaj i daj mi mokrego całuska, moja kaducza królewno!" Mężczyzna wyciąga rękę, aby pomacać Annę.~ */
  IF ~~ THEN DO ~Enemy()
Attack("Annah")
~ EXTERN ~DANNAH~ 181
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 54 // from:
  SAY #33288 /* ~Ten człowiek nie ma ci nic więcej do powiedzenia.~ */
  IF ~~ THEN REPLY #33289 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 55 // from:
  SAY #33290 /* ~Ten człowiek nie ma ci już nic ciekawego do powiedzenia.~ */
  IF ~~ THEN REPLY #33291 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 56 // from:
  SAY #33292 /* ~Ten człowiek nie ma do powiedzenia nic, co by cię zainteresowało.~ */
  IF ~~ THEN REPLY #33293 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 57 // from:
  SAY #33294 /* ~Ten człowiek nie ma ci nic więcej do powiedzenia.~ */
  IF ~~ THEN REPLY #33295 /* ~Odejdź.~ */ EXIT
END
