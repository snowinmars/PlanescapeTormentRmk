// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUINT~

IF ~  Global("Quint_Item","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #2833 /* ~"Ech. Wielkie dzięki. Czego chcesz?"~ */
  IF ~~ THEN REPLY #2834 /* ~"Chcę porozmawiać o interesach."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19039 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #19040 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1 3.5 4.1 6.1 7.1 8.1 9.0
  SAY #19041 /* ~"Co chcesz wiedzieć?"~ */
  IF ~~ THEN REPLY #19042 /* ~"Opowiedz mi jeszcze raz o sobie."~ */ GOTO 2
  IF ~~ THEN REPLY #19043 /* ~"Opowiedz mi o innych ludziach."~ */ GOTO 3
  IF ~~ THEN REPLY #19044 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 9
  IF ~~ THEN REPLY #19045 /* ~"Nic. Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19046 /* ~"Kwint. Sprzedaż i kupno. Mieć wszystko. Chcesz czego?"~ */
  IF ~~ THEN REPLY #19047 /* ~"Porozmawiajmy o interesach."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19048 /* ~"Jeszcze nie. Odpowiedz na kilka moich innych pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #19049 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.0 6.0 7.0 8.0
  SAY #19050 /* ~"O kim?"~ */
  IF ~~ THEN REPLY #19051 /* ~"O Farodzie."~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #19052 /* ~"O Annie."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #19053 /* ~"O Annie."~ */ GOTO 6
  IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN REPLY #19054 /* ~"O Marcie."~ */ GOTO 7
  IF ~  GlobalGT("Know_Ojo","GLOBAL",0)
~ THEN REPLY #19055 /* ~"O Ojo."~ */ GOTO 8
  IF ~~ THEN REPLY #19056 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #19057 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19058 /* ~"Ten stary kuternoga, ech? On przygotował to miejsce, on mnie ustawił, mamy układ, ech?"~ */
  IF ~~ THEN REPLY #19059 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 3
  IF ~~ THEN REPLY #19060 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #19061 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #19062 /* ~Gdy mężczyzna przygląda się Annie, jego szczęka nieco drży. "Ładna dziewczyna, miła dziewczyna, ostra dziewczyna, ech? Jest uparta." Wznosi do góry ręce, aby pokazać, że nie miał na myśli niczego obraźliwego.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #19063 /* ~"To nagroda Faroda, ech? Ona zajmuje się niebezpiecznymi rzeczami, ech? Mądra jest. Ostry język." Pociera głowę, jak gdyby przypomniał sobie o jakiejś starej ranie. "Nie zbliżaj się, ech?"~ */
  IF ~~ THEN REPLY #19064 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 3
  IF ~~ THEN REPLY #19065 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #19066 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY #19067 /* ~"Ech. Marta, od której lepiej trzymać się z daleka. Pomylona szwaczka. Ogołaca trupy z wszystkich zębów, ubrań, i różnych drobiazgów, daje je mnie, a ja wymieniam te śmieci na górze na coś innego."~ */
  IF ~~ THEN REPLY #19068 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 3
  IF ~~ THEN REPLY #19069 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #19070 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY #19071 /* ~"Bzik. Nie na wiele się zda, ech?"~ */
  IF ~~ THEN REPLY #19072 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 3
  IF ~~ THEN REPLY #19073 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #19074 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY #19075 /* ~"O tym miejscu? Wioska. Dabus wybrukował ją wciągu jednego dnia, dawno temu, zapomnij o tym. Zbieracze rozkopują ją w trakcie poszukiwań brzdęku w górach szmat... Ja sam natknąłem się na nią przez przypadek w trakcie handlu ze Zbieraczami." Porusza brwiami. "Niezłe miejsce do zarobienia brzdęku, ech? Martwi to dobry interes."~ */
  IF ~~ THEN REPLY #19076 /* ~"Rozumiem. Mam kilka innych pytań do ciebie..."~ */ GOTO 1
  IF ~~ THEN REPLY #19077 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN BEGIN 10 // from:
  SAY #19078 /* ~"Ty, ech? Masz to, czego potrzebuję?"~ */
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19079 /* ~"Powtórz, czego szukasz?"~ */ GOTO 11
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19080 /* ~"Tak. Oto ta rzecz."~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ GOTO 12
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19081 /* ~Kłamstwo: "Nie. Jeszcze nie. Wciąż szukam."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_One","GLOBALLaw",-1)
~ GOTO 13
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19082 /* ~"Nie. Jeszcze nie. Wciąż szukam."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #19083 /* ~"Amuletu, ech? Naszyjnika z nawleczonymi spróchniałymi zębami. Odszukaj go, a opłaci ci się, ech? Bierz się do dzieła." Zajmuje się swoimi zapasami, widocznie cię ignorując.~ */
  IF ~~ THEN REPLY #19084 /* ~"W porządku. Biorę się do roboty."~ */ EXIT
  IF ~~ THEN REPLY #66306 /* ~"Pohandlujmy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 23.1 24.1
  SAY #19085 /* ~Podajesz mu przedmiot, a on go głaszcze, oglądając dokładnie ze wszystkich stron w poszukiwaniu pęknięć i zarysowań. "Zrobiona twoja część, ech? Ja robić moją." Podaje ci ciężką torbę, która wydaje brzęk monet. "Teraz my być kwita. Ty czegoś potrzebować, porozmawiać z Kwintem, ech?" Odwraca się do ciebie tyłem, zachwycony swoim nabytkiem.~ */
  IF ~~ THEN REPLY #19086 /* ~"Pohandlujmy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66304 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 10.3
  SAY #19087 /* ~Jego świńska twarz robi się obwisła. "Ach, serce starego Kwinta pęka. Wróć, kiedy to znajdziesz, ech?" Odwraca się do ciebie tyłem i zajmuje się swoimi rzeczami.~ */
  IF ~~ THEN REPLY #19088 /* ~"Odpowiedz na jeszcze kilka moich pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #66305 /* ~"Pohandlujmy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66307 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from: 13.0 15.2 16.5 17.1 19.1 20.1 21.1 22.0 23.2 24.0 35.1 40.0 41.1 43.1 44.1 46.3 47.2 48.0 49.1
  SAY #19089 /* ~Kwint przygląda ci się uważnie. "Czego chcesz, ech?"~ */
  IF ~  !Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #19090 /* ~"Opowiedz mi jeszcze raz o sobie."~ */ GOTO 15
  IF ~~ THEN REPLY #19091 /* ~"Co robisz?"~ */ GOTO 46
  IF ~~ THEN REPLY #19092 /* ~"Opowiedz mi o innych ludziach."~ */ GOTO 16
  IF ~~ THEN REPLY #19093 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 22
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19094 /* ~"Pohandlujmy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66308 /* ~"Nic. Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19095 /* ~"Kwint. Sprzedaż i kupno. Mieć wszystko. Chcesz? A może chcesz jakąś robotę, ech?"~ */
  IF ~~ THEN REPLY #19096 /* ~"Jaką robotę?"~ */ GOTO 23
  IF ~  Global("Quint_Trade","GLOBAL",0)
~ THEN REPLY #19097 /* ~"Porozmawiajmy o interesach."~ */ GOTO 32
  IF ~~ THEN REPLY #19098 /* ~"Jeszcze nie. Odpowiedz mi na kilka innych pytań."~ */ GOTO 14
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19099 /* ~"Pohandlujmy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66309 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 17.0 19.0 20.0 21.0
  SAY #19100 /* ~"O kim?"~ */
  IF ~~ THEN REPLY #19101 /* ~"O Farodzie."~ */ GOTO 17
  IF ~  NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19102 /* ~"O Annie."~ */ GOTO 18
  IF ~  !NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19103 /* ~"O Annie."~ */ GOTO 19
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #19104 /* ~"O Marcie."~ */ GOTO 20
  IF ~  Global("Know_Ojo","GLOBAL",1)
~ THEN REPLY #19105 /* ~"O Ojo."~ */ GOTO 21
  IF ~~ THEN REPLY #19106 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19107 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 46.1
  SAY #19108 /* ~"Ten stary kuternoga, ech? On przygotował to miejsce, on mnie ustawił, my układ mamy, ech?"~ */
  IF ~~ THEN REPLY #19109 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 16
  IF ~~ THEN REPLY #19110 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19111 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #19112 /* ~Gdy mężczyzna przygląda się Annie, jego szczęka nieco drży. "Ładna dziewczyna, miła dziewczyna, ostra dziewczyna, ech? Jest uparta." Wznosi do góry ręce, aby pokazać, że nie miał na myśli niczego obraźliwego.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #19113 /* ~"To nagroda Faroda, ech? Ona zajmuje się niebezpiecznymi rzeczami, ech? Mądra jest. Ostry język." Pociera głowę, jak gdyby przypomniał sobie o jakiejś starej ranie. "Nie zbliżaj się, ech?"~ */
  IF ~~ THEN REPLY #19114 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 16
  IF ~~ THEN REPLY #19115 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19116 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.3 46.0
  SAY #19117 /* ~"Ech. Marta, od której lepiej trzymać się z daleka. Pomylona szwaczka. Ogołaca trupy z wszystkich zębów, ubrań, i różnych drobiazgów, daje je mnie, a ja wymieniam to ścierwo na coś innego."~ */
  IF ~~ THEN REPLY #19118 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 16
  IF ~~ THEN REPLY #19119 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19120 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.4
  SAY #19121 /* ~"Bzik. Nie na wiele się zda, ech?"~ */
  IF ~~ THEN REPLY #19122 /* ~"W porządku. Opowiedz mi o innych."~ */ GOTO 16
  IF ~~ THEN REPLY #19123 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19124 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.3
  SAY #19125 /* ~"O tym miejscu? Wioska. Dabus wybrukował ją wciągu jednego dnia, dawno temu, zapomnij o tym. Zbieracze rozkopują ją w trakcie poszukiwań brzdęku w górach szmat... Ja sam natknąłem się na nią przez przypadek w trakcie handlu ze Zbieraczami." Porusza brwiami. "Niezłe miejsce do zarobienia brzdęku, ech? Martwi to dobry interes."~ */
  IF ~~ THEN REPLY #19126 /* ~"Rozumiem. Mam do ciebie kilka innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19127 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.0
  SAY #19128 /* ~"Gris, ech... Gris Sęp, zwali go. Wyruszył dwa tygodnie temu. Nikt go nie widział, ani nie słyszał o nim od tamtej pory. Prawdopodobnie coś go dopadło w katakumbach, wiele rzeczy w ciemnych miejscach tam na dole, ech... nie dobrze, że Gris być w księdze umarłych... dobry zbieracz, ech. Czarne serce. Miał wyczulony nos na nowe krypty. Miał również coś, co należało do mnie. Znajdź go i odbierz to, a zostaniesz wynagrodzony, ech? Dam ci brzdęk i pohandlujemy, ech?"~ */
  IF ~~ THEN REPLY #19129 /* ~"Umowa stoi."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",1)
~ JOURNAL #66300 /* ~Handlarz Trupami Quint poprosił mnie o odzyskanie przedmiotu należącego do zbieracza zwanego Grisem, który zniknął w katakumbach jakiś czas temu.~ */ GOTO 24
  IF ~  PartyHasItem("PSCharm")
~ THEN REPLY #19130 /* ~Pokaż mu amulet, który znalazłeś obok domu Marty: "Och, może o to ci chodzi?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Kwinto Handlarz Zwłokami poprosił mnie, abym wydostał dla niego pewien przedmiot od Zbieracza o imieniu Gris, który jakiś czas temu zniknął w katakumbach. Pokazałem Kwincie amulet, jaki znalazłem niedaleko domostwa Marty, a on wówczas powiedział, że rzecz ta należy do niego.~ */ GOTO 12
  IF ~~ THEN REPLY #19131 /* ~"Zastanowię się nad tym. Odpowiedz na kilka moich pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #66301 /* ~"Zastanowię się nad tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #19132 /* ~Mężczyzna parska. Wygląda prawie na szczęśliwego. "Szukaj amuletu trucizny, naszyjnika z zepsutych zębów. Prawdopodobnie będzie tam, gdzie jest Gris. Daj mi znać, jak coś znajdziesz, ech?"~ */
  IF ~~ THEN REPLY #19133 /* ~"Jasne. Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19134 /* ~Pokaż mu amulet, który znalazłeś obok domu Marty: "Och, może o to ci chodzi?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Kwinto Handlarz Zwłokami poprosił mnie, abym wydostał dla niego pewien przedmiot od Zbieracza o imieniu Gris, który jakiś czas temu zniknął w katakumbach. Pokazałem Kwincie amulet, jaki znalazłem niedaleko domostwa Marty, a on wówczas powiedział, że rzecz ta należy do niego.~ */ GOTO 12
  IF ~~ THEN REPLY #66303 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 25 // from:
  SAY #19135 /* ~Widzisz niskiego faceta o nalanej twarzy, pokrytego brudem i sadzą. Cuchnie, i ma zepsute zęby. Sapie, mierząc cię od stóp do głów, i mówi: "Jestem Kwint. Ty nowy?"~ */
  IF ~~ THEN REPLY #19136 /* ~"Kto chce wiedzieć?"~ */ GOTO 26
  IF ~~ THEN REPLY #19137 /* ~"Tak."~ */ GOTO 29
  IF ~~ THEN REPLY #19138 /* ~"Nie, jestem tu od jakiegoś czasu."~ */ GOTO 42
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #19139 /* ~"Ja, ech? Ty nowy?"~ */
  IF ~~ THEN REPLY #19140 /* ~"Tak."~ */ GOTO 29
  IF ~~ THEN REPLY #19141 /* ~"Nie."~ */ GOTO 42
  IF ~~ THEN REPLY #19142 /* ~"Nie twój interes."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #19143 /* ~"Moja sprawa. Ty nowy?"~ */
  IF ~~ THEN REPLY #19144 /* ~"Tak."~ */ GOTO 29
  IF ~~ THEN REPLY #19145 /* ~"Nie."~ */ GOTO 42
  IF ~~ THEN REPLY #19146 /* ~"Odwal się, dobra?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY #19147 /* ~"Ech, nawzajem! Wynocha!"~ */
  IF ~~ THEN REPLY #19148 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.1 26.0 27.0
  SAY #19149 /* ~Przygląda ci się podejrzliwie. "Ty sprzedawać albo wymieniać? Ech?"~ */
  IF ~~ THEN REPLY #19150 /* ~"Tak."~ */ GOTO 30
  IF ~~ THEN REPLY #19151 /* ~"Sprzedaję."~ */ GOTO 30
  IF ~~ THEN REPLY #19152 /* ~"Wymieniam."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1 29.2
  SAY #19153 /* ~Jego oczy zwężają się jeszcze bardziej. "Handlować, ech? Ze mną? Czy kimkolwiek, trepie? Z kim? Ech?"~ */
  IF ~~ THEN REPLY #19154 /* ~"Z tobą."~ */ GOTO 31
  IF ~~ THEN REPLY #19155 /* ~"Ze wszystkimi."~ */ GOTO 39
  IF ~~ THEN REPLY #19156 /* ~"Z kimkolwiek zechcę, trepie."~ */ GOTO 39
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #19157 /* ~"Tylko ze mną? Ze mną? Ech?"~ */
  IF ~~ THEN REPLY #19158 /* ~"Tak, tylko z tobą."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19159 /* ~"Nie, z każdym."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 15.1 31.0 36.2 37.0
  SAY #19160 /* ~"To co? Interesik, Ech?"~ */
  IF ~~ THEN REPLY #19161 /* ~"W porządku."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19162 /* ~"Szukasz może czegoś?"~ */ GOTO 33
  IF ~~ THEN REPLY #19163 /* ~"Czym zazwyczaj handlujesz?"~ */ GOTO 36
  IF ~~ THEN REPLY #19164 /* ~"W zasadzie, to niczego nie szukam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #19165 /* ~"Wszytkiego co ciekawe, ech?" Uśmiecha się. "A ty szukasz czegoś, ech?"~ */
  IF ~~ THEN REPLY #19166 /* ~"Zobaczmy co tu masz."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #19167 /* ~"Dziennika."~ */ GOTO 34
  IF ~~ THEN REPLY #19168 /* ~"Nie. Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #19169 /* ~"Dziennika, ech? Ze złotymi stronicami może?"~ */
  IF ~~ THEN REPLY #19170 /* ~"Nie wiem."~ */ GOTO 35
  IF ~~ THEN REPLY #19171 /* ~"Porozmawiajmy po prostu o innych interesach."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #19172 /* ~"Ani ja." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #19173 /* ~"Porozmawiajmy zatem o interesach."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19174 /* ~"W porządku. Odpowiedz więc na kilka moich pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #19175 /* ~Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2
  SAY #19176 /* ~"Dratwa, zęby, tu i ówdzie rzeczy należące do najdroższych, którzy odeszli, ech? Trzeba przeszukać wiele trupów tam w dole, w katakumbach, przynieś kilka rzeczy należących do truposzy, urny, trochę brzdęku, kilka drobiazgów... oto moja umowa, trepie. Ci żyjący tutaj - schodzą w głąb tego, co niebezpieczne, ci zbieracze, zdobywają trochę rzeczy, zabierają kilka ciał, przynoszą je Farodowi, pokazują mu, on bierze swoją działkę, a później się ze mną układa."~ */
  IF ~~ THEN REPLY #19177 /* ~"Co Farod robi z ciałami?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #19178 /* ~"A gdybym tak współpracował bezpośrednio z tobą?"~ */ GOTO 38
  IF ~~ THEN REPLY #19179 /* ~"Chcę z tobą robić interesy."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19180 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #19181 /* ~"Jego umowa." Uśmiecha się. "Odsprzedaje truposzy Grabarzom, ech? Grabarze zakopują ich z powrotem, my ich wykopujemy na nowo, ech? Ech!" Wydaje z siebie grzmiące parsknięcie, które mogłoby przypominać śmiech.~ */
  IF ~~ THEN REPLY #19182 /* ~"Rozumiem. Mógłbym być zainteresowany robieniem interesów."~ */ GOTO 32
  IF ~~ THEN REPLY #19183 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #19184 /* ~"Teraz nie mógłbym mieć żadnej części z tego, ech? Być może stary Kwint ma trochę dość zbierania resztek Faroda i zajmowania się pozostałościami po trupach, podczas gdy mógłbym mieć kilka urn i skarbów truposzy bezpośrednio, ech? Gdybyś jednak miał mi powiedzieć, że to pochodzi od Faroda, nie mógłbym wiedzieć lepiej, czyż nie, ech? Pomyślałbym z kpiną, że to wszystko jest uczciwe, ech?"~ */
  IF ~~ THEN REPLY #19185 /* ~"No to pohandlujmy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19186 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.1 30.2 31.1
  SAY #19187 /* ~Jego twarz staje się jasno czerwona. "Szpicuj się trepie! Won! Won! To leże jest moje! Należy się mnie w pierwszej kolejności. Nie masz do niego żadnego prawa! Sprawię, że Farod wypatroszy cię jak rybę!"~ */
  IF ~~ THEN REPLY #19188 /* ~Kłamstwo: "Farod powiedział, że mogę tu pohandlować."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_Two","GLOBALLaw",-1)
SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #19189 /* ~"Uspokój się. Będę handlował tylko z tobą."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #19190 /* ~"Zamorduję go! Mówi, 'Kwint, ty moja krew, przyjrzałeś się temu miejscu' i odchodzi dając kawałek parszywemu skurlowi takiemu jak ty. Kulejący bękart! Ech!"~ */
  IF ~~ THEN REPLY #19191 /* ~"To jest okazja... Mam do ciebie kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19192 /* ~"To chcesz robić interes, czy nie?"~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19193 /* ~"Naprawdę trudno się z nim dogadać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #19194 /* ~Blednie nieco na twarzy. "W porządku. Ech." Ociera pot z brwi. "Chcesz pohandlować, ech?"~ */
  IF ~~ THEN REPLY #19195 /* ~"Tak. Porozmawiajmy o interesach."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19196 /* ~"Tak naprawdę, to miałem kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19197 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 25.2 26.1 27.1
  SAY #19198 /* ~"Taak? Widzem cię po raz pierwszy, trepie." Parska. "Jestem tu od jakiegoś czasu. Pierwszeństwo praw do kopania pod ziemią, wiesz? Ech?"~ */
  IF ~~ THEN REPLY #19199 /* ~"Taak, cóż, jestem tu od dłuższego czasu. Pewnie nie szukałeś dość uważnie."~ */ GOTO 43
  IF ~~ THEN REPLY #19200 /* ~"Co?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19201 /* ~"Ty szukać kłopotów, trepie, dostałem słowo Faroda... a ty? Ty masz tylko blizny."~ */
  IF ~~ THEN REPLY #19202 /* ~"Chcesz walczyć, czy handlować?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19203 /* ~"Cokolwiek. Odpowiedz tylko na kilka moich pytań, duży człowieku."~ */ GOTO 14
  IF ~~ THEN REPLY #19204 /* ~"Nie mam ci nic do powiedzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY #19205 /* ~"Ślepyś, czy głupiś? Powiedziałem pierwszeństwo praw do kopania pod ziemią, trepie. Ja tu rozdaję karty, nie Ty... chyba że ze mną tylko. Ech?"~ */
  IF ~~ THEN REPLY #19206 /* ~"Chcesz walczyć, czy handlować?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19207 /* ~"Obojętne. Odpowiedz tylko na kilka moich pytań, duży człowieku."~ */ GOTO 14
  IF ~~ THEN REPLY #19208 /* ~"Nie mam ci nic do powiedzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.0 44.0
  SAY #19209 /* ~"Będę handlował, ech? Jestem kupcem, a nie wojownikiem." Parska.~ */
  IF ~~ THEN REPLY #19210 /* ~"No to pohandlujmy."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19211 /* ~"Odpowiedz najpierw na kilka moich pytań..."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 14.1
  SAY #19212 /* ~"Czekam, aż Marta i Farod dadzą mi towary."~ */
  IF ~~ THEN REPLY #19213 /* ~"Marta?"~ */ GOTO 20
  IF ~~ THEN REPLY #19214 /* ~"Farod?"~ */ GOTO 17
  IF ~~ THEN REPLY #19215 /* ~"Jakie towary?"~ */ GOTO 47
  IF ~~ THEN REPLY #19216 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19217 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.2
  SAY #19218 /* ~"Resztki z grobów znajdujących się w katakumbach."~ */
  IF ~~ THEN REPLY #19219 /* ~"Jakie resztki?"~ */ GOTO 48
  IF ~~ THEN REPLY #19220 /* ~"Katakumbach?"~ */ GOTO 49
  IF ~~ THEN REPLY #19221 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19222 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0 49.0
  SAY #19223 /* ~"Zęby, ubrania trupów, drobiazgi wydobywają z ciała, znajdują kilka monet w bandażach, ech. Ludzie płacą więcej, niż byś sobie wyobraził, ech?"~ */
  IF ~~ THEN REPLY #19224 /* ~"Rozumiem. Mam do ciebie kilka innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19225 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #19226 /* ~"Pod wioską. Mnóstwo nowych ciał i starych krypt w tej okolicy ponieważ nikt nie mógł się do nich wcześniej dostać, ech? Ta wioska, ta wioska... niewielu wie o tej wiosce. Jeszcze mniej wie o prostym przejściu do katakumb i wszystkich tych truposzach na dole..." Oblizuje chciwie usta. "Dziewicze tereny, ech?"~ */
  IF ~~ THEN REPLY #19227 /* ~"Oczywiście. Opowiedz mi o resztkach..."~ */ GOTO 48
  IF ~~ THEN REPLY #19228 /* ~"Oczywiście. Mam kilka innych pytań..."~ */ GOTO 14
  IF ~~ THEN REPLY #19229 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END
