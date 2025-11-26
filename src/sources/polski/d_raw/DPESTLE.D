// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTLE~

IF ~  Global("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 0 // from:
  SAY #2968 /* ~Widzisz przed sobą jakiegoś człowieka, którego całe ciało jest pokryte zmarszczoną i pozwijaną skórą. Człowiek zwilża swoje popękane wargi językiem pokrytym plamami. Gdy tak na niego patrzysz, jego prawe oko spoczywa na tobie, choć lewe pozostaje nieruchome. Chwilę później lewe oko także spoziera na ciebie, a potem powraca do swojej poprzedniej pozycji. Prawe oko mruga. Z gardła mężczyzny wydobywa się dziwny, bulgoczący odgłos.~ */
  IF ~~ THEN REPLY #2969 /* ~"Witaj..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",1)
~ GOTO 1
  IF ~~ THEN REPLY #42001 /* ~Zostaw go w spokoju."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42002 /* ~Mężczyzna uśmiecha się lekko jedną stroną twarzy i wskazuje na siebie swoim prawym kciukiem. "Pestle, zwą mnie, Pestle - *bulg* - alchemik." Jeszcze raz wskazuje na siebie, tym razem lewym palcem wskazującym. "Moje nazwisko brzmi Kilnn. *Harkk*! Potrzebujesz czegoś?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42003 /* ~"Dobrze się czujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42004 /* ~"Co można u ciebie kupić?"~ */ GOTO 2
  IF ~~ THEN REPLY #42005 /* ~"Tak, mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #42006 /* ~"Nie, wszystko w porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #42007 /* ~"*Harrk!*" Lewa ręka mężczyzny uderza w powierzchnię lady. Wypisano na niej listę dostępnych przedmiotów, przy każdym z nich znajduje się cena. Wygląda na to, że można tu kupić wiele mikstur i czarów leczniczych.~ */
  IF ~~ THEN REPLY #42008 /* ~"Chcę coś u ciebie kupić..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42009 /* ~"Dobrze się czujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42010 /* ~"Prawdę mówiąc, mam do ciebie parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #42011 /* ~"Na razie nic mi nie potrzeba. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.2 4.1 5.1 6.1 7.0 8.3
  SAY #42012 /* ~Połowa ust mężczyzny opada na dół. Pestle wykonuje przeczący ruch głową. "Przez cały dzień pracuję w tym składzie. *Gaaaak!*" Przez jego ciało przechodzi nagły dreszcz, a potem, nie wiadomo skąd, nad nosem otwiera się trzecie oko... lewe oko zjeżdża w bok, a nowe zajmuje jego miejsce. "Mogę rozmawiać tylko o - *fnak!* - sklepie." Gdy kończy mówić, skóra na jego twarzy 'zjada' nowe oko, a lewe powraca na swoje stare miejsce.~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42013 /* ~"Dobrze się czujesz?"~ */ GOTO 4
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42014 /* ~"Stary inżynier z Kuźni powiedział mi, że muszę przynieść próbkę mojej krwi i skóry, aby jego maszyna mogła działać. Chcę abyś mi w tym pomógł."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 12
  IF ~~ THEN REPLY #42015 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.0 8.1 12.0
  SAY #42016 /* ~"Owszem. *Gak!*" Przez gardło mężczyzny przechodzi skurcz, ale potem następuje rozluźnienie. Nagle na jego szyi pojawia się duży, świecący na zielono ropień. "Potrzebujesz czegoś? *Gak!*" Jego gardło znowu się zaciska, a zielony ropień zostaje wchłonięty przez falę drżącego ciała. Mężczyzna kaszle przez chwilę, a potem rozluźnia się. "Uff."~ */
  IF ~~ THEN REPLY #42017 /* ~"Można wiedzieć co ci się stało?"~ */ GOTO 5
  IF ~~ THEN REPLY #42018 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #42019 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42020 /* ~Lewe oko mężczyzny łypie do góry w zdziwieniu. Prawe spogląda na ciebie niedowierzająco. "Za dużo wypiłem na raz."~ */
  IF ~~ THEN REPLY #42021 /* ~"Za dużo *czego*?"~ */ GOTO 6
  IF ~~ THEN REPLY #42022 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #42023 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42024 /* ~"Mikstur. Wypiłem za dużo mikstur. *Faohg!*" Usta mężczyzny zsuwają się pod brodę, ale lewa dziurka nosa zaraz tworzy nowe. "Jeszcze nigdy *tyle* nie wypiłem, sto procent! To były mikstury polimorfii, a do tego warzone w... *Hgrk!*... Limbo."~ */
  IF ~~ THEN REPLY #42025 /* ~"Można ci jakoś pomóc?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_PK_1","GLOBALGood",1)
SetGlobal("Pestle_Kilnn","AR0612",2)
SetGlobal("PK_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #42026 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #42027 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42028 /* ~Oczy mężczyzny zwracają się ku sobie, a potem z powrotem na ciebie. "Nie mam pojęcia. *Fng!*" Jego ciało przechodzi dreszcz. Usta spod jego brody przesuwają się do góry i wchłaniają te utworzone przez nos. "Takie coś dzieje się dość często. Nie możemy się powstrzymać - *Fnug!* - żeby nie wypróbować nowego towaru. Gdyby udało ci się nam pomóc, obaj bylibyśmy ci - *gukak!* - wdzięczni."~ */
  IF ~~ THEN REPLY #42029 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 3
  IF ~~ THEN REPLY #42030 /* ~"Jeśli znajdę na to jakiś sposób, dam ci znać. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 8 // from:
  SAY #42031 /* ~Widzisz przed sobą Pestle Kilnna. W dalszym ciągu przedstawia - albo przedstawiają - specyficzny widok, gdyż jego ciało cały czas podlega zmianom. "Witam - *snrf!* - ponownie, panie."~ */
  IF ~  PartyHasItem("ElixirS")
Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42032 /* ~"Mam Eliksir Przerażającej Separacji... Może on by wam pomógł?"~ */ GOTO 9
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42033 /* ~"Dobrze się czujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42034 /* ~"Chcę coś u ciebie kupić..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42035 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #42036 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #42037 /* ~Nagle oczy zwracają się na buteleczkę, którą trzymasz w rękach. Kupiec przytakuje oblizując usta.~ */
  IF ~~ THEN REPLY #42038 /* ~"W takim razie trzymaj..."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42039 /* ~"Rozumiem, że należy mi się jakaś nagroda."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_PK_1","GLOBALGood",-2)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #42040 /* ~Pestle Kilnn ujmuje butelkę w obie ręce i umieszcza ją pod ladą. Jego lewe oko jest skupione na tobie, podczas gry prawe i ręka są zajęte pisaniem czegoś na powierzchni lady. "Będziemy mogli tego użyć, żeby zrobić coś, co nam zaraz - *hark!* - pomoże. Jeśli dasz nam teraz chwilę czasu, żebyśmy doszli do - *gak* - siebie, to przygotujemy ci w nagrodę coś uzdrawiającego." Odwraca się, żeby oddalić się na tył sklepu...~ */
  IF ~~ THEN REPLY #42042 /* ~"W porządku... w takim razie do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #42043 /* ~Lewe oko kupca odwraca się od ciebie, ale prawe ciągle spoczywa na tobie. Mężczyzna przytakuje. "Czy wystarczy parę przedmiotów - *fng!* - uzdrawiających, panie?"~ */
  IF ~~ THEN REPLY #42044 /* ~"Wystarczy. Trzymaj."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42045 /* ~"Nie... Na razie się wstrzymam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #42046 /* ~"Chcesz trochę zeskrobać, mówisz? Bardzo - *sznik!* - dobrze." Mężczyzna bierze brzytwę i butelkę z dużą szyjką. Potem zdejmuje ci z przedramienia mały wycinek skóry i umieszcza go w butelce razem z małą ilością twojej krwi. Potem kładzie na ranie trochę gazy i wręcza ci butelkę. "Potrzebujesz czegoś - *ga-gak!* - jeszcze, panie?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42047 /* ~"Nie, ale... Dobrze się czujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #42048 /* ~"Tak... Chcę coś u ciebie kupić."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42049 /* ~"Nie, to wszystko. Dzięki i do zobaczenia."~ */ EXIT
END
