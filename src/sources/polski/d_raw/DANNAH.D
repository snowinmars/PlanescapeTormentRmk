// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
GlobalLT("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #1981 /* ~Widzisz uderzającą rudowłosą dziewczynę ubraną w skórzaną zbroję. Jej prawa ręka pokryta jest kilkoma nachodzącymi na siebie płatami, które wyglądają jakby zabrano je za skóry jakiejś istoty, a lewą chroni rogaty naramiennik. Co dziwne, ma ona ogon... którym macha tam i z powrotem, gdy się jej przyglądasz. "Szpicuj się."~ [ANA377A] */
  IF ~~ THEN REPLY #1982 /* ~"Witaj."~ */ DO ~SetGlobal("Know_Annah","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #1983 /* ~Przejdź obok.~ */ DO ~SetGlobal("Know_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1984 /* ~Dziewczyna ignoruje cię.~ */
  IF ~~ THEN REPLY #1985 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #1986 /* ~"Możesz mi powiedzieć, gdzie jestem?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1987 /* ~"Szukam osoby o imieniu Farod. Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1988 /* ~"Zginął mi dziennik. Nie widziałaś może jakiegoś?"~ */ GOTO 29
  IF ~~ THEN REPLY #1989 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1990 /* ~Dziewczyna krzywi się, po czym wykonuje obsceniczny gest swoim ogonem. "Szpicuj się, ty tempy skurlu."~ */
  IF ~~ THEN REPLY #2119 /* ~"Hej, spokojnie, mam tylko kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2120 /* ~"Pilnuj swojego języka, dziewczyno. *Nie* jestem w nastroju. A teraz odpowiedz na moje pytanie. Kim jesteś?"~ */ GOTO 16
  IF ~~ THEN REPLY #2121 /* ~"Ech... Zatem żegnaj."~ */ GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.2 10.3 11.3
  SAY #1991 /* ~"Tia, mogie. Mogie powiedzieć wiencej, jeśli trochie ubarwisz pytanie, co?" Kląsa językiem i pociera o siebie dwa palce. "Brzdenk-brzdenk, tia?"~ */
  IF ~  Global("Know_Jink","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #1992 /* ~"'Brzdęk-brzdęk'?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Know_Jink","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #1993 /* ~"'Brzdęk-brzdęk'?"~ */ DO ~SetGlobal("Know_Jink","GLOBAL",1)
~ EXTERN ~DMORTE~ 39
  IF ~  Global("Know_Jink","GLOBAL",1)
~ THEN REPLY #1994 /* ~"W porządku... ile?"~ */ GOTO 6
  IF ~~ THEN REPLY #1995 /* ~"Nieważne. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 4 // from: 3.0 197.1 198.1
  SAY #1996 /* ~Dziewczyna wpatruje się w ciebie z niewiarą, a jej ogon na chwilę przestaje się ruszać. "Skondś się urwał? Brzdenk - moneta... miedź, srebro, złoto... kasa, tia?" Podnosi brew. "Masz brzdenk, to może ja wiem coś, co chcesz usłyszeć."~ */
  IF ~~ THEN REPLY #1997 /* ~"W porządku. Ile?"~ */ GOTO 6
  IF ~~ THEN REPLY #1998 /* ~"Wątpię, abyś wiedziała *cokolwiek*, co chcę usłyszeć, ale spróbuj. Wtedy zadecyduję, czy jest to tego warte."~ */ GOTO 16
  IF ~~ THEN REPLY #1999 /* ~"Nieważne. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 5 // from:
  SAY #2002 /* ~"Tia..." Patrzy na Mortego, po czym wzrusza ramionami. "Tak jak rzekła czaszka. Twarda moneta."~ */
  IF ~~ THEN REPLY #2003 /* ~"W porządku. Ile?"~ */ GOTO 6
  IF ~~ THEN REPLY #2004 /* ~"Wątpię, abyś wiedziała *cokolwiek*, co chcę usłyszeć, ale spróbuj. Wtedy zadecyduję, czy jest to tego warte."~ */ GOTO 16
  IF ~~ THEN REPLY #2005 /* ~"Nieważne. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0
  SAY #2006 /* ~"Ile jest dla ciem warte to, co chcesz usłyszeć, co?" Wpatruje się w ciebie po czym zakłada ramię na ramię. "No, nie mam całego dnia, nie mam."~ */
  IF ~  PartyGoldGT(9)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #2008 /* ~"Co sądzisz o dziesiątaku? Starczy?"~ */ GOTO 7
  IF ~  PartyGoldGT(9)
CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #2007 /* ~Spróbuj ją oczarować: "Co sądzisz o dziesiątaku? Jeśli twoje informacje będą wystarczająco dobre, może dostaniesz więcej."~ */ DO ~TakePartyGold(10)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2009 /* ~"Może dwadzieścia?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(10)
~ THEN REPLY #2010 /* ~"W takim razie nie sądze, abym miał wystarczająco dużo, żeby cię to zainteresowało."~ */ GOTO 14
  IF ~~ THEN REPLY #2011 /* ~"Nieważne. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #2012 /* ~"Ta grudka miedzi nie starczy nawet, by wzbudzić apetyt Przeznaczonych. Jeśli chcesz tu znaleźć przyjaciół, to bendziesz potrzebował wiencej, łosiu."~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #2013 /* ~"Zatem może dwadzieścia?"~ */ DO ~TakePartyGold(20)
SetGlobal("Annah_Answer","GLOBAL",1)
~ GOTO 8
  IF ~  PartyGoldLT(20)
~ THEN REPLY #2014 /* ~"W takim razie nie sądze, abym miał wystarczająco dużo, żeby cię to zainteresowało."~ */ GOTO 19
  IF ~~ THEN REPLY #2015 /* ~"Zatem nieważne. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 7.0
  SAY #2016 /* ~"Tia, w porzondku..." Chowa pieniądze. Znikają tak szybko, że nie masz pojęcia, gdzie je włożyła. "Poszukaj go w Alei na iglicem od Kostnicy... to na południe i zachód od Kostnicy, tia?"~ */
  IF ~~ THEN REPLY #2017 /* ~"Dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2018 /* ~"Bardzo dziwne... na południe i zachód od Kostnicy znajduje się aleja pełna ciężko uzbrojonych rzezimieszków. Wiesz coś o tym?"~ */ GOTO 30
  IF ~~ THEN REPLY #2040 /* ~"Południe i zachód od Kostnicy? Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1 10.2 11.2
  SAY #2019 /* ~"Zgubiłeś siem, ale zaraz znajdziesz kłopoty. Gub siem gdzie indziej, żulu."~ */
  IF ~~ THEN REPLY #2020 /* ~"Mam jeszcze kilka pytań, które chcę ci zadać..."~ */ GOTO 10
  IF ~~ THEN REPLY #2021 /* ~"A zatem żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 10 // from: 2.0 8.0 9.0 12.4 18.1 21.0 22.1 23.0 26.1 29.0 30.2 31.0
  SAY #2022 /* ~"Tia? A czegóż chcesz?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2023 /* ~"Czy wiesz, że masz ogon?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2024 /* ~"Nie mogę się powstrzymać przed zauważeniem, że masz ogon."~ */ GOTO 12
  IF ~~ THEN REPLY #2025 /* ~"Możesz mi powiedzieć, gdzie jestem?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2026 /* ~"Szukam osoby o imieniu Farod. Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2027 /* ~"Powiedziałaś, że Farod znajduje się na południe i zachód od Kostnicy, tak?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2028 /* ~"Bardzo dziwne... na południe i zachód od Kostnicy znajduje się aleja pełna ciężko uzbrojonych rzezimieszków. Wiesz coś o tym?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2029 /* ~"Zginął mi dziennik. Nie widziałaś może jakiegoś?"~ */ GOTO 29
  IF ~~ THEN REPLY #2030 /* ~"Nic. Żegnaj."~ */ GOTO 19
END

IF WEIGHT #3 /* Triggers after states #: 218 227 even though they appear after this state */
~  Global("Annah","GLOBAL",0)
Global("Know_Annah","GLOBAL",2)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #2031 /* ~Rudowłosa dziewczyna marszczy się na twój widok, a jej ogon zaczyna kiwać się tam i z powrotem. "Tia? Co jest?"~ [ANA238D] */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #2032 /* ~"Czy wiesz, że masz ogon?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #2033 /* ~"Nie mogę się powstrzymać przed zauważeniem, że masz ogon."~ */ GOTO 12
  IF ~~ THEN REPLY #2034 /* ~"Możesz mi powiedzieć, gdzie jestem?"~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #2035 /* ~"Szukam osoby o imieniu Farod. Czy wiesz, gdzie mogę go znaleźć?"~ */ GOTO 3
  IF ~  Global("Annah_Answer","GLOBAL",1)
~ THEN REPLY #2036 /* ~"Powiedziałaś, że Farod znajduje się na południe i zachód od Kostnicy, tak?"~ */ GOTO 31
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2037 /* ~"Bardzo dziwne... na południe i zachód od Kostnicy znajduje się aleja pełna ciężko uzbrojonych rzezimieszków. Wiesz coś o tym?"~ */ GOTO 30
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2038 /* ~"Zginął mi dziennik. Nie widziałaś może jakiegoś?"~ */ GOTO 29
  IF ~~ THEN REPLY #2039 /* ~"Nic. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 11.0 11.1
  SAY #2041 /* ~"*Czy* wiem?" Dziewczyna spogląda na ogon. "Tak, wiem! A myślałam, że to tylko złudzenie. Kurde, ostry z ciebie śmiałek, nie?" Ukazuje swoje zęby. "Czemu nie spadniesz do tej dziury, z której siem wyczołagałeś i nie zostawisz mnie w spokoju! Ani ja, ani mój ogon nie som na sprzedaż, kapujesz?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2042 /* ~"W porządku... Byłem tylko ciek..."~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2043 /* ~"Uch, dobra... Mam jeszcze kilka pyt..."~ */ EXTERN ~DMORTE~ 40
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2044 /* ~"Zatem nieważne. Że..."~ */ EXTERN ~DMORTE~ 40
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2045 /* ~"Tak, ale *dlaczego* masz ogon?"~ */ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2046 /* ~"Uch, dobra... Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2047 /* ~"Nieważne... Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from:
  SAY #2050 /* ~"Co masz na myśli, ty palancie?! Powtórz to!"~ */
  IF ~~ THEN REPLY #2051 /* ~"Nic nie mówił... ale wciąż jestem ciekaw... *dlaczego* masz ogon?"~ */ GOTO 15
  IF ~~ THEN REPLY #2052 /* ~"Zapomnij o nim... Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #2053 /* ~"Powiedział, że nie zarobiłabyś na życie, sprzedając się."~ */ GOTO 22
  IF ~~ THEN REPLY #2054 /* ~"Powiedział, a ja się z tym nie zgadzam, że nie zarobiłabyś na życie, sprzedając się."~ */ GOTO 23
  IF ~~ THEN REPLY #2055 /* ~"Powiedział, a ja się z tym zgadzam, że nie zarobiłabyś na życie, sprzedając się."~ */ GOTO 24
  IF ~~ THEN REPLY #2056 /* ~"Nic. Idziemy. Żegnaj."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 2.2 6.3 13.5 15.2 24.2
  SAY #2057 /* ~"Tia, w takiem razie spadaj."~ */
  IF ~~ THEN REPLY #2065 /* ~"Mam dość twojego języka, dziewczyno... czas, byś umarła."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #2066 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.3 13.0
  SAY #2058 /* ~Oczy dziewczyny zwężają się w szparki. "Czyś *głupi*? Czy może być, iżeś głupszy niż kamień alboś Mocą ignorancji? Oby dabusy cie pokryły cegłom i zmieniły w ulice!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #2059 /* ~"Posłuchaj..."~ */ EXTERN ~DMORTE~ 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2060 /* ~"Zatem trudno. Mam jeszcze kilka pytań..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2061 /* ~"Zatem żegnaj."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 2.1 4.1 5.1 13.1 15.1 24.1 27.0 28.0 30.0 30.1
  SAY #2062 /* ~"Knebel! Nie mam ci nic do powiedzenia, trepie! Spadaj!"~ */
  IF ~~ THEN REPLY #2063 /* ~"Lepiej pilnuj swojego języka, dziewczyno, albo on odleci. Lepiej pamiętaj o tym, jak będziemy następnym razem rozmawiać."~ */ GOTO 19
  IF ~~ THEN REPLY #2064 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #2070 /* ~"Lepiej zasznuruj se trumne, ty mimirze o niewyparzonej gembie, zanim podzielem ci szczenke, kapujesz?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 42
END

IF ~~ THEN BEGIN 18 // from:
  SAY #2078 /* ~"Tia, to prawda. Trzymaj swego mimira na smyczy, łosiu, albo go pogrzebiem razem z jego ciałem, kapujesz?"~ */
  IF ~~ THEN REPLY #2086 /* ~"Mimira? O czym ty mówisz?"~ */ GOTO 20
  IF ~~ THEN REPLY #2087 /* ~"Dobrze. Słuchaj, mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2088 /* ~"Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 3.3 4.2 5.2 6.4 7.1 7.2 9.1 10.7 11.7 12.5 16.0 18.2 21.1 22.2 24.3 25.2 25.3 26.2 27.1 28.1 29.1 30.3 31.2
  SAY #2081 /* ~"Tia, zatem szpicuj siem tam, skond przyszedłeś."~ */
  IF ~~ THEN REPLY #2082 /* ~"Ty również żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #2083 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #2084 /* ~"Tia, mimira! Co, przestrzeń pomiendzy twoimi uszami taka jest szeroka, że moje słowa siem odbijajom echem? Jembecyl!"~ */
  IF ~~ THEN REPLY #2085 /* ~"Wciąż nie odpowiedziałaś na moje pytanie. Co to jest mimir?"~ */ EXTERN ~DMORTE~ 43
END

IF ~~ THEN BEGIN 21 // from:
  SAY #2089 /* ~Rzuca okiem na Mortego, potem na ciebie, a następnie krzywi się. "Sondze, że wiem, kto z was ma mózg, hę?"~ */
  IF ~~ THEN REPLY #2090 /* ~"Tak, tak. Słuchaj, mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2091 /* ~"Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 13.2
  SAY #2092 /* ~"Och, tia? To w takim razie dobrze, że sprzedajem ciała, tia? Wyglonda, że nadajesz siem doskonale do pieca Grabarzy, czaszko."~ */
  IF ~~ THEN REPLY #2095 /* ~"Sprzedajesz ciała?"~ */ GOTO 25
  IF ~~ THEN REPLY #2096 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2097 /* ~"Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 23 // from: 13.3
  SAY #2093 /* ~"A to co znowu? Gracie ze mnom w złego twardogłowego, dobrego twardogłowego?" Krzywi się. "Odszpicujcie siem, zboczone świnie."~ */
  IF ~~ THEN REPLY #2098 /* ~"Jeszcze nie... Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2099 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.4
  SAY #2094 /* ~"Och, tia? To w takim razie dobrze, że sprzedajem ciała, tia? Wyglonda, że nadajesz siem doskonale do pieca Grabarzy, czaszko." Zaczyna machać ogonem tam i z powrotem. "Nie zmuszaj mnie, abym ciem umieściła w Ksiendze Umarłych."~ */
  IF ~~ THEN REPLY #2101 /* ~"Sprzedajesz ciała?"~ */ GOTO 25
  IF ~~ THEN REPLY #2102 /* ~"Uspokój się dziewczyno. Mam jeszcze kilka pytań, potem cię zostawimy w spokoju..."~ */ GOTO 16
  IF ~~ THEN REPLY #2103 /* ~"To do niczego nie prowadzi. Żegnaj."~ */ GOTO 14
  IF ~~ THEN REPLY #2104 /* ~Odejdź.~ */ GOTO 19
END

IF ~~ THEN BEGIN 25 // from: 22.0 24.0
  SAY #2100 /* ~"Tia, Grabarze płacom trochie brzdenku każdemu, kto zbiera truposzy z ulicy i przynosi ich do Kostnicy. Jednakże to mój teren, wienc nawet nie myśl o łowieniu tutaj truposzy, jasne?"~ */
  IF ~~ THEN REPLY #2105 /* ~"Co robią Grabarze ze zmarłymi?"~ */ GOTO 26
  IF ~~ THEN REPLY #2106 /* ~"Twój teren?"~ */ GOTO 28
  IF ~~ THEN REPLY #2107 /* ~"Dobrze."~ */ GOTO 19
  IF ~~ THEN REPLY #2108 /* ~"Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #2109 /* ~"Grzebiom ich odpowienio i takie tam. Posyłajom ich wszystkich do odpowiednich Sfer i upewniajom siem, że wszystko w wieloświecie jest przyjemne i czyste."~ */
  IF ~~ THEN REPLY #2111 /* ~"'Sfer'?"~ */ GOTO 27
  IF ~~ THEN REPLY #2112 /* ~"Rozumiem. Słuchaj, mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2113 /* ~"Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #2110 /* ~"Tia, *Sfer*! Czy przestrzeń pomiendzy twoimi uszami taka jest szeroka, że moje słowa siem odbijajom echem? Phi! Zadajesz zbyt wiele pytań, draniu. Odszpicuj siem i mencz kogoś innego swoimi pytaniami."~ */
  IF ~~ THEN REPLY #2114 /* ~"Mam jeszcze tylko jedno pytanie..."~ */ GOTO 16
  IF ~~ THEN REPLY #2115 /* ~"Zatem dobrze. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #2116 /* ~"Tak, *mój* teren! Co, przestrzeń pomiendzy twoimi uszami taka jest szeroka, że moje słowa siem odbijajom echem? Phi! Zadajesz zbyt wiele pytań, draniu. Odszpicuj siem i mencz kogoś innego swoimi pytaniami."~ */
  IF ~~ THEN REPLY #2117 /* ~"Mam jeszcze tylko jedno pytanie..."~ */ GOTO 16
  IF ~~ THEN REPLY #2118 /* ~"Zatem dobrze. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 29 // from: 1.3 10.6 11.6
  SAY #2122 /* ~Patrzy na ciebie dziwnie. "Nie... nie widziałam nic takiego, nie."~ */
  IF ~~ THEN REPLY #2123 /* ~"W porządku. Mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2124 /* ~"Tak czy inaczej, dzięki. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.5 11.5 31.1
  SAY #2125 /* ~"Och, tia? Cóż, może najlepiej bendzie jak spytasz ich, gdzie jest ten stary palant."~ */
  IF ~~ THEN REPLY #2126 /* ~Prawda: "Dość już twoich kłamstw. Powiedz mi, gdzie jest Farod, dziewczyno, albo wkrótce zasilisz liczbę martwych tego miasta."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Annah_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2127 /* ~Blef: "Dość już twoich kłamstw. Powiedz mi, gdzie jest Farod, dziewczyno, albo wkrótce zasilisz liczbę martwych tego miasta."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #2128 /* ~"Może tak zrobię. Słychaj, mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #2071 /* ~"Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 10.4 11.4
  SAY #2129 /* ~"Tia..." Przygląda ci się. "Powiedziałam. Czy już żeś zapomniał?"~ */
  IF ~~ THEN REPLY #2130 /* ~"Nie, ale mam jeszcze kilka pytań..."~ */ GOTO 10
  IF ~  Global("Annah_Answer","GLOBAL",1)
Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #2131 /* ~"Nie, ale zastanawiałem się, czy może *ty* nie zapomniałaś... widzisz, na południe i zachód od Kostnicy znajduje się aleja pełna ciężko uzbrojonych rzezimieszków. Wiesz coś na ten temat?"~ */ GOTO 30
  IF ~~ THEN REPLY #2132 /* ~"Nieważne. Żegnaj."~ */ GOTO 19
END

IF ~~ THEN BEGIN 32 // from:
  SAY #2359 /* ~"Zostawmy to, śmiałku, nie ma sensu gadać z githem, który nie chce rozmawiać, tia? Chodźmy."~ */
  IF ~  Global("Know_Gith","GLOBAL",0)
~ THEN REPLY #9023 /* ~"Githem?"~ */ DO ~SetGlobal("Know_Gith","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Know_Gith","GLOBAL",0)
~ THEN REPLY #9024 /* ~"Githem?"~ */ GOTO 74
  IF ~~ THEN REPLY #9025 /* ~"Jeszcze nie mogę odejść. Mam zamiar zadać mu najpierw kilka pytań..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9026 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #2365 /* ~"Nieważne... po prostu chodźmy, tia?"~ */
  IF ~~ THEN EXTERN ~DGITH~ 7
END

IF ~~ THEN BEGIN 34 // from:
  SAY #6807 /* ~"Ech..." Anna patrzy na ciebie dziwnie. "To jest dabus, o tak."~ */
  IF ~~ THEN REPLY #6961 /* ~"Co to jest 'dabus'?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #6811 /* ~Głos Anny opada. "Dabus to jeden z *Jej* rodzaju - zajmujom siem oni miastem, naprawiajonc je, niszczonc i odbudowujonc ponownie i takie tam. Mówiom symbolami-zagadkami w powietrzu - musisz je złożyć razem, by odgadnonć śpiewke." Anna wygląda na zirytowaną. "Przyprawiajom o ból głowy, oj tak."~ */
  IF ~~ THEN REPLY #6962 /* ~"'Jej' rodzaju? Czyjego?"~ */ GOTO 36
  IF ~~ THEN REPLY #6963 /* ~"Rozumiem."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #6813 /* ~"Pani Bólu." Anna w powietrzu przed sobą kreśli półkole. "Oni dla niej pracujom, a ona ich ochrania. Nie przeszkadzaj im, albo ściongniesz na siebie jej wzrok."~ */
  IF ~~ THEN REPLY #6964 /* ~"Czy możesz powiedzieć mi coś o Pani Bólu?"~ */ GOTO 37
  IF ~~ THEN REPLY #6965 /* ~"Rozumiem."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #6814 /* ~"Pssst!" Anna przeciąga palcem po gardle. "Nie trzenś o niej trumnom. Ona ma *wszendzie* uszy, tak, wienc nie wypowiadaj zbyt czensto jej imiania, tia?"~ */
  IF ~~ THEN REPLY #6966 /* ~"Och."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6967 /* ~"Dobrze, już dobrze."~ */ EXTERN ~DDABUS~ 3
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6815 /* ~Milknie na chwilę. "Tia... mogie."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6968 /* ~"Zrobisz to?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6970 /* ~"Zrobisz to?"~ */ GOTO 39
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #6971 /* ~"Zatem to zrób."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 40
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #6972 /* ~"Zatem to zrób."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 39
  IF ~~ THEN REPLY #6973 /* ~"Nieważne. Po prostu odejdźmy."~ */ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.3
  SAY #6818 /* ~Anna potrząsa głową. "Nie, nie chcem wchodzić razem z tobom w cień Pani, tak siem składa. Nie przedłużajmy, tia? Rozmawiajonc z nimi nic siem nie dowiesz, a tylko sciongniesz na siebie jej wzrok."~ */
  IF ~~ THEN REPLY #6975 /* ~"Rozumiem."~ */ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6974 /* ~"Nieważne. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.2 41.0 44.0 45.1 46.1 48.1
  SAY #6822 /* ~Anna przytakuje. Dabus dalej wpatruje się w waszą dwójkę z założonymi rękami ukrytymi w rękawach.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6976 /* ~"Spytaj go, kim jest."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6977 /* ~"Spytaj go, kim jest."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6978 /* ~"Spytaj go, kim jest."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6979 /* ~"Spytaj go, czym się zajmuje."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6980 /* ~"Spytaj go, czym się zajmuje."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6981 /* ~"Spytaj go, czym się zajmuje."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #6982 /* ~"Poproś go, by opowiedział nam o Pani Bólu."~ */ GOTO 45
  IF ~~ THEN REPLY #6983 /* ~"Poproś go, by opowiedział nam o Upadłym."~ */ GOTO 48
  IF ~~ THEN REPLY #6984 /* ~"Nieważne. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 41 // from:
  SAY #6825 /* ~"Powiedział, że jest jednym z dabusów." Wzrusza ramionami. "Oni nie majom imion."~ */
  IF ~~ THEN REPLY #6985 /* ~"Czy możesz zadać mu jeszcze jedno pytanie?"~ */ GOTO 40
  IF ~~ THEN REPLY #6986 /* ~"To wszystko, co chciałem wiedzieć. Wynośmy się stąd."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 42 // from:
  SAY #6826 /* ~"Powiedział, że jest jednym z dabusów." Wzrusza ramionami. "Oni nie majom imion."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 115
END

IF ~~ THEN BEGIN 43 // from:
  SAY #6828 /* ~"Cóż, ten nie podał swego imienia, czyż *nie*, czaszko?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 116
END

IF ~~ THEN BEGIN 44 // from:
  SAY #6835 /* ~Wzrusza ramionami. "Mówi, że wykonuje swojom prace. Wiesz, dbanie o miasto i takie tam."~ */
  IF ~~ THEN REPLY #6987 /* ~"Czy możesz zadać mu jeszcze jedno pytanie?"~ */ GOTO 40
  IF ~~ THEN REPLY #6988 /* ~"To wszystko, co chciałem wiedzieć. Wynośmy się stąd."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 45 // from: 40.6
  SAY #6840 /* ~Anna potrząsa głową. "Nie, nie chcem wchodzić razem z tobom w cień Pani, tak siem składa. Rozmawiajonc z nimi tylko sciongniesz na siebie jej wzrok."~ */
  IF ~~ THEN REPLY #6989 /* ~"Słuchaj, spytaj go po prostu o Panią, dobrze?"~ */ GOTO 46
  IF ~~ THEN REPLY #6990 /* ~"W porządku. Czy możesz zadać mu ode mnie jeszcze jedno pytanie?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6991 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.0
  SAY #6845 /* ~Anna potrząsa głową. "Nie, nie uczyniem tego."~ */
  IF ~~ THEN REPLY #6992 /* ~"Słuchaj *zrób* to. Ostrzegam cię."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 47
  IF ~~ THEN REPLY #6993 /* ~"W porządku. Czy możesz zadać mu ode mnie jeszcze jedno pytanie?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 40
  IF ~~ THEN REPLY #6994 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #6848 /* ~Anna krzyżuje ręce i zaczyna machać ogonem tam i z powrotem.~ */
  IF ~~ THEN REPLY #6995 /* ~"Pozwól zatem mi spróbować..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 3
  IF ~~ THEN REPLY #6996 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 48 // from: 40.7
  SAY #6851 /* ~"Nie, nie bendem pytać ich o Upadłego, o nie. To zła krew, a nikomu szczenścia nie przynosi mówienie o takich."~ */
  IF ~~ THEN REPLY #6997 /* ~"Słuchaj, po prostu *zadaj* to cholerne pytanie, dobrze?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 46
  IF ~~ THEN REPLY #6998 /* ~"Czy możesz zadać mu ode mnie jeszcze jedno pytanie?"~ */ GOTO 40
  IF ~~ THEN REPLY #6999 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 49 // from:
  SAY #1855 /* ~Anna jeży się, gdy chcesz odejść z kobietą. "Czyś jest *głupi*... albo jembecyl?!" Macha ogonem tam i z powrotem, po czym odwraca się w stronę przestraszonej ladacznicy. "Sss!" Wyciąga w jej stronę swoje naręczne sztylety. "Masz, pani dziwko!"~ */
  IF ~~ THEN REPLY #7469 /* ~"Hej! Uspokój się, Anno!"~ */ GOTO 50
  IF ~~ THEN REPLY #7470 /* ~"Odłóż te przeklęte ostrza!"~ */ GOTO 50
  IF ~~ THEN REPLY #7471 /* ~Obserwuj, co się stanie.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 53.0 53.1
  SAY #1856 /* ~Obraca się w twoją stronę "A ty, skurlony szpicowaczu - lepiej przestań siem w to mieszać, bo inaczej skrócem ci pniaka, tia?"~ */
  IF ~~ THEN REPLY #7472 /* ~"'Skrócisz mi pniaka?' Czy mam za to zapłacić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7473 /* ~"Przestań grozić tej kobiecie albo ja skrócę *twój* ogon, jasne?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7474 /* ~"Nie prosiłem o twoją opinię, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 51
  IF ~~ THEN REPLY #7475 /* ~"Dobrze, dobrze... uspokój się."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3
  SAY #7183 /* ~Anna trochę się uspokaja, ale jej ogon wciąż uderza tam i z powrotem. "Lepiej na siem uważaj, jeśli nie chcesz przestać oddychać i pozostać w całości."~ */
  IF ~~ THEN REPLY #7476 /* ~"Przestań mi *grozić*, Anno. To ty tutaj masz tylko jedno życie, rozumiesz?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7477 /* ~"Nie prosiłem o twoją opinię, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 52
  IF ~~ THEN REPLY #7478 /* ~"Dobrze, dobrze... uspokój się. Bo twoja biesia krew się wygotuje."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 50.0 51.0 51.1 51.2
  SAY #7184 /* ~Anna czyni swoim ogonem gest... najwyraźniej obraźliwy.~ */
  IF ~~ THEN EXTERN ~DHARLOTN~ 35
END

IF ~~ THEN BEGIN 53 // from: 49.2
  SAY #7185 /* ~Anna tnie kobietę krawędzią ostrza. Na twarzy ladacznicy pojawia się wąska strużka krwi. "Oznaczyłam ciem, tak." syczy. Kobieta wygląda na sparaliżowaną ze strachu i nie jest w stanie się poruszyć.~ */
  IF ~~ THEN REPLY #7480 /* ~"Heh. Niezła robota."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Harlot_2","GLOBALLaw",-1)
~ GOTO 50
  IF ~~ THEN REPLY #7481 /* ~"Uspokój się, Anno..."~ */ GOTO 50
END

IF ~~ THEN BEGIN 54 // from:
  SAY #1884 /* ~Anna nagle syczy, a gdy się odwracasz, widzisz, jak pijana kobieta cofa się o krok z przerażeniem.~ */
  IF ~~ THEN REPLY #7598 /* ~"O co chodzi?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #1885 /* ~Anna gestem wskazuje kobietę, po czym w jej dłoniach pojawiają się naręczne sztylety. "Ta wiedźma ciem oskubała, o tak." Jedno z ostrzy spoczywa na gardle kobiety. "Możesz mnieć nieco mniej brzdenku po tym, jak ta Pani dziwka siem o ciebie poocierała."~ */
  IF ~~ THEN REPLY #7599 /* ~"Co masz zamiar...?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #1886 /* ~Pijana kobieta spogląda na Annę, po czym na ciebie i z przerażeniem potrząsa głową. "Nic nie ukradłam, śmiałku! Ona się myli!"~ */
  IF ~~ THEN REPLY #7600 /* ~"Uch... czy jesteś pewna, Anno?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 57
  IF ~~ THEN REPLY #7601 /* ~"Odłóż te przeklęte ostrza, zanim *ja* stracę cierpliwość, dobra?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7602 /* ~"Przykro mi, kobieto, ale prędzej uwierzę diabelstwu niż tobie. Oddaj mi pieniądze."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 59
  IF ~~ THEN REPLY #7603 /* ~"Puść ją, Anno. Ona nie jest tego warta."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #1887 /* ~"Hę?" Anna parska i zaczyna wymachiwać ogonem. "Czy jestem *pewna*?!" Jej ostrze wpija się głębiej w gardło kobiety. "Tia... jestem pewna." Jej oczy zwężają się, gdy na ciebie patrzy. "Nie wierzysz mi?" Spluwa. "Nieważne. Wybebesze jom i sama zabiorem jej brzdenk."~ */
  IF ~~ THEN REPLY #7604 /* ~"Odłóż te przeklęte ostrza, zanim *ja* stracę cierpliwość, dobra?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
  IF ~~ THEN REPLY #7605 /* ~"Puść ją, Anno. Ona nie jest tego warta."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.1 56.3 57.0 57.1
  SAY #1888 /* ~"Hę?" Anna syczy jak kot. "Czyś *głupi*?! Ona ciem oskubała, o tak."~ */
  IF ~~ THEN REPLY #7606 /* ~"Nie pozwolę ci jej skrzywdzić, o ile nie udowodnisz mi, że uczyniła coś złego."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_Harlot_1","GLOBALLaw",1)
~ GOTO 61
  IF ~~ THEN REPLY #7607 /* ~"Ostatni raz. Odłóż ostrza, puść ją."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
  IF ~~ THEN REPLY #7608 /* ~"I co z tego? Nie jest tego warta."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 56.2
  SAY #1889 /* ~Kobieta na chwilę milknie, przytakuje, po czym powoli podnosi rękę do góry i podwija rękaw, ukazując małą sakiewkę przywiązaną do nadgarstka. Anna odcina ją i zabiera. "Spływaj stond." Odpycha kobietę. "Ssss! Spadaj!"~ */
  IF ~~ THEN REPLY #7609 /* ~"Wynoś się stąd, kobieto. Lepiej, żebyśmy cię więcej nie spotkali."~ */ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 60 // from: 58.1 58.2 61.1
  SAY #1890 /* ~Anna przez długi czas milczy, po czym cofa ostrze i odsuwa się. Syczy i spluwa pod nogi kobiety. "Ssss! Spadaj!"~ */
  IF ~~ THEN REPLY #7610 /* ~"Kobieto, lepiej odejdź."~ */ EXTERN ~DHARLOTD~ 27
END

IF ~~ THEN BEGIN 61 // from: 58.0
  SAY #1891 /* ~Anna parska, po czym zatacza sztyletem łuk... i przecina jeden z rękawów sukni kobiety, ukazując przywiązaną do nadgarstka sakiewkę. Wygląda na to, że znajduje się ona tam, aby szybko kraść pieniądze.~ */
  IF ~~ THEN REPLY #7611 /* ~"Wygląda na to, że miałaś rację, Anno. W porządku, kobieto, zwróć mi to, co ukradłaś."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 62
  IF ~~ THEN REPLY #7612 /* ~"To nie ma znaczenia. Zapomnij o tym, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 60
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #1892 /* ~Kobieta przytakuje, po czym powoli sięga ręką do małej sakiewki przywiązanej do nadgarstka i odwiązuje ją. Anna wyrywa jej ją z ręki i zabiera.~ */
  IF ~~ THEN REPLY #7613 /* ~"Wynoś się stąd, kobieto. Nie chcę cię więcej widzieć."~ */ DO ~GivePartyGold(100)
GiveGoldForce(38)
~ EXTERN ~DHARLOTD~ 26
END

IF ~~ THEN BEGIN 63 // from:
  SAY #7701 /* ~Gdy się odwracasz, Anna nagle podchodzi i ociera się o ciebie.~ */
  IF ~~ THEN REPLY #7702 /* ~"Co robisz?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #7703 /* ~Anna gestem wskazuje mężczyznę, który wciąż znajduje się w okolicy i wpatruje w budynki. "Ten Pan benkart ciem oskubał, o tak." Anna uśmiecha się. "Lepiej uważaj, gdy trzensiesz trumnom, albo może siem okazać, że w końcu zabraknie ci brzdenku."~ */
  IF ~~ THEN REPLY #7704 /* ~"O czym ty mówisz?"~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #7705 /* ~Wyciąga garść monet, które ci podaje. "Cały twój brzdenk z powrotem dla właściciela, tia?" Rzuca spojrzenie do tyłu. "To kiepawy łoś, o tak. Nie potrafi zapuścić łapy w dolinem nie dzwonionc wszystkimi dzwonami w Sigil. On ciem oskubał, ja oskubała jego." Uśmiecha się. "Tia?"~ */
  IF ~~ THEN REPLY #7706 /* ~"Ech... czy jesteś pewna, że mi coś ukradł, Anno?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 66
  IF ~~ THEN REPLY #7707 /* ~"Hej... dzięki."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 69
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #7708 /* ~"He?" Anna marszczy się i zaczyna wymachiwać ogonem. "Czy jestem *pewna*?!" Odsuwa się od ciebie. "Nie wierzysz mi?" Spluwa. "Nieważne."~ */
  IF ~~ THEN REPLY #7709 /* ~"Dla mnie ważne. Jeśli te pieniądze nie są nasze..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_3","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 67
  IF ~~ THEN REPLY #7710 /* ~"Zatem nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #7711 /* ~"He?" Anna syczy jak kot. "Czyś *głupi*?! On ciem oskubał, tia. Jeśliś był zbyt ślepy, aby to zauważyć, to na to zasłużyłeś, o tak!"~ */
  IF ~~ THEN REPLY #7712 /* ~"Czy możesz to udowodnić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_4","GLOBALLaw",1)
TakePartyGold(5)
~ GOTO 68
  IF ~~ THEN REPLY #7713 /* ~"Zatem nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #7714 /* ~Anna milczy przez chwilę, po czym zagarnia pieniądze z twej dłoni i rzuca je. Patrzysz, jak monety rozsypują się po ulicy, niektóre wpadają w kałuże, inne w błoto lub do rynsztoka. "Zatem niech je sobie zatrzyma!" Anna spluwa ci pod stopy. "*I tak* żeś nie zasłużył, aby zatrzymać swój brzdenk!"~ */
  IF ~~ THEN REPLY #7715 /* ~"Mów ciszej. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #7716 /* ~Anna przytakuje, i uśmiecha się złowrogo. "Tia, cała przyjemność po mojej stronie, o tak."~ */
  IF ~~ THEN REPLY #7717 /* ~"W porządku. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #7822 /* ~"Ni!" Anna wygląda na przerażoną. "Ni, nie trzenś trumnom z żadnym z nich! Te biesy zjedzom ciem żywcem!"~ */
  IF ~~ THEN REPLY #7826 /* ~"Chciałem zadać mu kilka pytań..."~ */ GOTO 71
  IF ~~ THEN REPLY #7827 /* ~"Dobra, trudno. Chodźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #7829 /* ~Anna potrząsa głową. "Z pewnościom ciem wybebeszy, o tak."~ */
  IF ~~ THEN REPLY #7830 /* ~"Zaryzykuję."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7831 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #7832 /* ~"Czyś ty *głupi*?!" Anna wtrąca się, machając ogonem. "Czyś nie słyszał, cóżem ci powiedziała?! Nie trzenś trumnom z biesami!"~ */
  IF ~~ THEN REPLY #7833 /* ~"Zaryzykuję."~ */ GOTO 73
  IF ~~ THEN REPLY #7834 /* ~"Dobra. Zostawię go w spokoju... chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #7835 /* ~"Jesteś prawdziwym królewskim jembecylem, o tak!" Anna spluwa. Wygląda na wściekłą. "Wkrótce skończom ci siem życia i wtedy ciem zostawiem, o tak!"~ */
  IF ~~ THEN REPLY #7836 /* ~"A mnie za to jeszcze będą błogosławić. A teraz pozwól mi mówić."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7837 /* ~"Zaraz przyjdę. Uspokój się."~ */ EXTERN ~ABISHAB~ 11
  IF ~~ THEN REPLY #7838 /* ~"Dobra. Zostawię go w spokoju... chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 32.0 32.1
  SAY #2360 /* ~"Tak, githem." Nie wygląda na chętną do dyskusji na ten temat, podczas gdy gith patrzy na was. "Przyśmiejmy temu miejscu, tia?"~ */
  IF ~~ THEN REPLY #9027 /* ~"Jeszcze nie mogę odejść. Mam zamiar zadać mu najpierw kilka pytań..."~ */ EXTERN ~DGITH~ 7
  IF ~~ THEN REPLY #9028 /* ~Zostaw githa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #9801 /* ~Chciała coś powiedzieć, ale spojrzałeś na nią ostro, zanim zdążyła zaprotestować. Krzywi się na ciebie, ręce ma założone i macha ogonem.~ */
  IF ~~ THEN REPLY #9835 /* ~Potrząśnij nim, by zwrócić na siebie uwagę.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9837 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #9802 /* ~Po prostu udaje, że cię nie słyszy. Przegląda zawszone ciuchy mężczyzny, podczas gdy on się zatacza. Stwierdziwszy, że nie ma ani miedziaka, popycha go lekko i odwraca się. "Phi! I tak nic nie miał. Szpicowane żule..."~ */
  IF ~~ THEN REPLY #9840 /* ~Potrząśnij nim, by zwrócić na siebie uwagę.~ */ EXTERN ~DDRUNK~ 3
  IF ~~ THEN REPLY #9842 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #9803 /* ~Anna przegląda zawszone ciuchy mężczyzny, podczas gdy on się zatacza. Zadowolona, że nie ma on grosza, popycha go lekko i odwraca się. "Phi! Nic nie miał. Szpicowane żule..."~ */
  IF ~~ THEN REPLY #9844 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #10078 /* ~"Ha! Widać ciem jak cycki osła! W tym mieście pełno jest amatorów!" Odwraca się do ciebie. "Słusznie, żeś siem na niego patrzył. On chciał oskubać jakiegoś skurla."~ */
  IF ~~ THEN REPLY #10079 /* ~"Wierzę, że masz rację, Anno. Może powinniśmy coś z tym zrobić."~ */ EXTERN ~DCSTCROG~ 4
END

IF ~~ THEN BEGIN 79 // from:
  SAY #11267 /* ~Anna odpiera ze złością: "Tia, a Otchłań to dla niego najlepsze miejsce, ale on walczy z wolnej woli. On ma wybór, demoniontko, a to wiencej, niż mogiem powiedzieć o konstrukcie z ducha takim jak ty!"~ */
  IF ~~ THEN EXTERN ~DILQUIXT~ 20
END

IF ~~ THEN BEGIN 80 // from:
  SAY #11270 /* ~Każdy mięsień na jej twarzy tężeje, a ona wybucha: "Czy ty naprawde chcesz mi powiedzieć, że masz zamiar pozwolić temu... temu... temu piekielnemu nasieniu mówić ci, jak masz żyć? Tia, uspokojem siem i bendem patrzeć, jak ona pożera twojom duszem, ty głupi trepie!"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11271 /* ~"W porządku, Ilquiksie. Mam jeszcze kilka pytań..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11272 /* ~"W porządku, Ilquiksie. Mam jeszcze kilka pytań..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY #11667 /* ~Uśmiecha się sztywno. "Tia, biesie, zobaczysz, my tutaj wierzymy w *prawdziwom* wolność. Nikt nie bendzie mnie powstrzymywał przed wyrażaniem mojej opinii." Ilquiks krzywi się przez chwilę, po czym ponownie jego twarz zmienia się w maskę.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11668 /* ~"W porządku, Ilquiksie. Mam jeszcze kilka pytań..."~ */ EXTERN ~DGRACE~ 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11669 /* ~"W porządku, Ilquiksie. Mam jeszcze kilka pytań..."~ */ EXTERN ~DILQUIXT~ 5
END

IF ~~ THEN BEGIN 82 // from:
  SAY #13084 /* ~"Wiesz, mogiem mówić za siebie! Jestem Anna, jeśli ciem to interesi." Anna krzyżuje ramiona, wydając z siebie słyszalne *hmpf*. Nalls tylko się uśmiecha i zwraca spojrzenie zdrowego oka w twoją stronę.~ */
  IF ~~ THEN REPLY #13231 /* ~"Pilnuj swego języka, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 87
  IF ~~ THEN REPLY #13232 /* ~"Nie przejmuj się nią, Nalls. Mam kilka pytań..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13233 /* ~"Nalls, mam kilka pytań..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13234 /* ~"Nieważne. Żegnaj."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 83 // from:
  SAY #13085 /* ~"Wiesz, mogiem mówić za siebie! Jestem Anna, jeśli ciem to interesi. A jeśli chodzi o *tego* palanta," rzuca ci ogniste spojrzenie, "to nie jestem jeszcze pewna, czy on jest moim przyjacielem!" Nalls uśmiecha się lekko i zwraca spojrzenie zdrowego oka w twoją stronę.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13235 /* ~Prawda: "Anno... przepraszam, jeśli byłem kimś mniej niż przyjacielem. Mam nadzieję, że wybaczysz mi, jeśli w jakiś sposób cię dotychczas uraziłem."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13236 /* ~Prawda: "Anno... przepraszam, jeśli byłem kimś mniej niż przyjacielem. Mam nadzieję, że wybaczysz mi, jeśli w jakiś sposób cię dotychczas uraziłem."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13237 /* ~Kłamstwo: "Anno... przepraszam, jeśli byłem kimś mniej niż przyjacielem. Mam nadzieję, że wybaczysz mi, jeśli w jakiś sposób cię dotychczas uraziłem."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13238 /* ~Kłamstwo: "Anno... przepraszam, jeśli byłem kimś mniej niż przyjacielem. Mam nadzieję, że wybaczysz mi, jeśli w jakiś sposób cię dotychczas uraziłem."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13239 /* ~"Nie przejmuj się nią, Nalls. Mam kilka pytań..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13240 /* ~"Nalls, mam kilka pytań..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13241 /* ~"Nieważne. Żegnaj."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 84 // from: 83.0 87.0
  SAY #13086 /* ~Anna nagle przestaje machać ogonem i odwraca głowę, aby na ciebie spojrzeć - w jej szeroko otwartych oczach widać zaskoczenie. Przez chwilę jakby chciała coś powiedzieć... a potem odwraca się, po prostu przytakując. Tył jej szyi nabiegł krwią - zastanawiasz się, czy się zaczerwieniła.~ */
  IF ~~ THEN REPLY #13242 /* ~"Nalls... Mam kilka pytań..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13243 /* ~"Nie przejmuj się mną, Nalls. Żegnaj."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 85 // from: 83.1 83.2 87.1 87.2
  SAY #13087 /* ~Anna przestaje machać ogonem. Nie odzywa się, a tylko przytakuje.~ */
  IF ~~ THEN REPLY #13244 /* ~"Nalls... Mam kilka pytań..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13245 /* ~"Nie przejmuj się mną, Nalls. Żegnaj."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 86 // from: 83.3 87.3
  SAY #13088 /* ~Oczy Anny płoną jak zielony ogień, ale ona nic nie mówi - tylko marszczy się w twoją stronę.~ */
  IF ~~ THEN REPLY #13246 /* ~"Ech... Nalls, mam kilka pytań..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13247 /* ~"Nie przejmuj się mną, Nalls. Żegnaj."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 87 // from: 82.0
  SAY #13089 /* ~Całe ciało Anny tężeje na chwilę - nic nie mówi, ale gniew zdaje się wypełniać powietrze dookoła. Oczekujesz najgorszego - ale ona dalej milczy, tylko krzywi się na ciebie z odrazą.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13248 /* ~Prawda: "Anno... przepraszam, jeśli cię obraziłem. Przejęzyczyłem się i mam nadzieję, że mi przebaczysz... chociażby w imię przyjaźni."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 84
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13249 /* ~Prawda: "Anno... przepraszam, jeśli cię obraziłem. Przejęzyczyłem się i mam nadzieję, że mi przebaczysz... chociażby w imię przyjaźni."~ */ GOTO 85
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #13250 /* ~Kłamstwo: "Anno... przepraszam, jeśli cię obraziłem. Przejęzyczyłem się i mam nadzieję, że mi przebaczysz... chociażby w imię przyjaźni."~ */ GOTO 85
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #13251 /* ~Kłamstwo: "Anno... przepraszam, jeśli cię obraziłem. Przejęzyczyłem się i mam nadzieję, że mi przebaczysz... chociażby w imię przyjaźni."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 86
  IF ~~ THEN REPLY #13252 /* ~"Nie przejmuj się nią, Nalls. Mam kilka pytań..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13253 /* ~"Nalls, mam kilka pytań..."~ */ EXTERN ~DIRONNA~ 8
  IF ~~ THEN REPLY #13254 /* ~"Nieważne, Nalls. Żegnaj."~ */ EXTERN ~DIRONNA~ 5
END

IF ~~ THEN BEGIN 88 // from:
  SAY #13090 /* ~Anna przechyla głowę i marszczy się, patrząc na Nalls. "Czemu nie przestaniesz siem martwić mnom i tym, co wiem, i nie odpowiesz na jego pytania?" Uśmiecha się półgębkiem.~ */
  IF ~~ THEN EXTERN ~DIRONNA~ 29
END

IF ~~ THEN BEGIN 89 // from:
  SAY #13751 /* ~Gdy otwierasz usta, aby się odezwać, Anna chwyta cię za ramię i syczy. "Czyś *głupi*?! Ani słowa do niego! To jeden z Wygłodzonych Psów." Zniża głos. "Chaosyta, bzik, niebezpieczny! Som grubi jak muchy i wiencej ich tu pewnie w okolicy."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13780 /* ~"Wygłodzonych Psów? O czym ty gadasz?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13781 /* ~"Wygłodzonych Psów? Jeszcze raz, kim oni są?"~ */ GOTO 90
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13782 /* ~"Tak czy inaczej wciąż mam zamiar z nim pogadać."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13783 /* ~"Może masz rację. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1
  SAY #13752 /* ~"Gang Ulowców to jest, a na dodatek Chaosytów!" Potrząsa głową, po czym kłuje cię w plecy ogonem. "Trzymaj siem z daleka i uważaj na swe plecy, o tak. Zmagałam ja siem z nimi i ich ugryzienie gorsze jest od ich warczenia, o tak."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13784 /* ~"Chaosytów?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 91
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13785 /* ~"Jeszcze raz, kim są Chaosyci?"~ */ GOTO 91
  IF ~~ THEN REPLY #13786 /* ~"Tak czy inaczej wciąż mam zamiar z nim pogadać."~ */ EXTERN ~DSDTHUG~ 4
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13787 /* ~"Myślałem, że może się czegoś od niego dowiem. Nieważne, chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1
  SAY #13753 /* ~"To frakcja, o tak, jak Graby, Guwernanci i Czuciowcy... poza tym, że nie majom oni żadnych zasad wiary..." Anna układa swój ogon w korkociąg dla podkreślenia swoich słów. "Oni som po prostu głośni, rozerwani, zbzikowani, tia?" Przełyka to przez chwilę. "Niektórzy nazywajom ich Kaosytami, ale dla nich to nie ma znaczenia, o nie."~ */
  IF ~~ THEN REPLY #13788 /* ~"W jaki sposób dołączają się do nich nowi członkowie?"~ */ GOTO 92
  IF ~~ THEN REPLY #13789 /* ~"Tak czy inaczej wciąż mam zamiar z nim pogadać."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13790 /* ~"Rozumiem. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #13754 /* ~Anna wzrusza ramionami. "Ni wiem. Po prostu to robią. Muchy do gówna, tak to widzę."~ */
  IF ~~ THEN REPLY #13791 /* ~"Sądzę, że mimo wszystko z nim porozmawiam."~ */ EXTERN ~DSDTHUG~ 4
  IF ~~ THEN REPLY #13792 /* ~"Rozumiem. Dzięki za informację."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #13831 /* ~Gdy otwierasz usta, aby się odezwać, Anna chwyta cię za ramię i syczy. "Czyś *głupi*?! Ani słowa do niego! To jeden z Wygłodzonych Psów." Zniża głos. "Chaosyta, bzik, niebezpieczny! Som grubi jak muchy i wiencej ich tu pewnie w okolicy."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #13992 /* ~"Wygłodzonych Psów? O czym ty gadasz?"~ */ DO ~SetGlobal("Know_SDB","GLOBAL",1)
~ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13993 /* ~"Wygłodzonych Psów? Jeszcze raz, kim oni są?"~ */ GOTO 94
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13994 /* ~"Tak czy inaczej wciąż mam zamiar z nim pogadać."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13995 /* ~"Może masz rację. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1
  SAY #13832 /* ~"Gang Ulowców to jest, a na dodatek Chaosytów!" Potrząsa głową, po czym kłuje cię w plecy ogonem. "Trzymaj siem z daleka i uważaj na swe plecy, o tak. Zmagałam ja siem z nimi i ich ugryzienie gorsze jest od ich warczenia, o tak."~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13996 /* ~"Chaosytów?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 95
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13997 /* ~"Jeszcze raz, kim są Chaosyci?"~ */ GOTO 95
  IF ~~ THEN REPLY #13998 /* ~"Tak czy inaczej wciąż mam zamiar z nim pogadać."~ */ EXTERN ~DBARKING~ 0
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13999 /* ~"Myślałem, że może się czegoś od niego nauczę. Nieważne, chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 94.1
  SAY #13833 /* ~"To frakcja, o tak, jak Graby, Guwernanci i Czuciowcy... poza tym, że nie majom oni żadnych zasad wiary..." Anna układa swój ogon w korkociąg dla podkreślenia swoich słów. "Oni som po prostu głośni, rozerwani, zbzikowani, tia?" Przełyka to przez chwilę. "Niektórzy nazywajom ich Kaosytami, ale dla nich to nie ma znaczenia, o nie."~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #14000 /* ~"W jaki sposób dołączają się do nich nowi członkowie?"~ */ GOTO 96
  IF ~~ THEN REPLY #14001 /* ~"Tak czy inaczej wciąż mam zamiar z nim pogadać."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14002 /* ~"Rozumiem. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #13834 /* ~Anna wzrusza ramionami. "Ni wiem. Po prostu to robią. Muchy do gówna, tak to widzę."~ */
  IF ~~ THEN REPLY #14003 /* ~"Sądzę, że mimo wszystko z nim porozmawiam."~ */ EXTERN ~DBARKING~ 0
  IF ~~ THEN REPLY #14004 /* ~"Rozumiem. Dzięki za informację."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #15337 /* ~Anna chwyta cię za ramię, zanim zdążyłeś powitać tego mężczyznę. "Stój... Słyszałam ja o tym krwawniku. Nowy w Ulu i uważa siem za miecznika, o tak. Zabił też każdego śmiałka, co z nim walczył. Lepiej omijaj podobnych mu z daleka."~ */
  IF ~~ THEN REPLY #15486 /* ~"I tak z nim pogadam."~ */ GOTO 98
  IF ~~ THEN REPLY #15487 /* ~"Zatem będę go unikać."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #15338 /* ~"Phi! Dobra! Zobaczysz, czy siem przejme! Tylko nie oczekuj, że bendem na ciebie czekać, gdy już siem przekonasz!"~ */
  IF ~~ THEN REPLY #15488 /* ~Porozmawiaj z mężczyzną.~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ EXTERN ~DADYZOEL~ 1
  IF ~~ THEN REPLY #15489 /* ~"Może masz rację, Anno. Będę go unikać."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #16621 /* ~"Co? Nie mówisz tego poważnie!"~ */
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #16902 /* ~"Tak. Czy możesz pomóc?"~ */ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #16903 /* ~"Tak, Anno. Byłbym wdzięczny, gdybyś mogła poświęcić im jedną albo dwie myśli... chociażby tylko jako przysługę dla mnie."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #16622 /* ~"Phi! Raczej mało prawdopodobne! Niech ktoś inny opłakuje twoje szpicowane drzewa. Głupiś, jeśli myślisz, że bendem marnować czas w ogóle myślonc o takich rzeczach. Głupi, mówiem ci!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16904 /* ~"Morte? Co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16905 /* ~"Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16906 /* ~"Sławo, czy byś się nad tym zastanowiła?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16907 /* ~"Dak'konie, czy mógłbyś pomóc temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16908 /* ~"Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16909 /* ~"Nordomie, czy sądzisz, że byłbyś w stanie pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16910 /* ~"Vhailorze, czy mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16911 /* ~"W porządku. Opłakujący, mam kilka pytań..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16912 /* ~"Zatem trudno. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.1
  SAY #16623 /* ~Jej uśmieszek w końcu zmienia się w uśmiech. "Ach, niech to Baator pochłonie! Jeśliś tak siem w to wszystko dał wciongnonć, to czemu nie? Pewnie, 'zatroszcze' siem o twoje drzewa, śmiałku. Ale bendziesz mi wisieć za ten czas, oj tak!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16913 /* ~"Dzięki. Morte? Co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16914 /* ~"Dzięki. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16915 /* ~"Dzięki. Sławo, czy byś się nad tym zastanowiła?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16916 /* ~"Dzięki. Dak'konie, czy mógłbyś pomóc temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16917 /* ~"Dzięki. Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16918 /* ~"Dzięki. Nordomie, czy sądzisz, że byłbyś w stanie pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16919 /* ~"Dzięki. Vhailorze, czy mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16920 /* ~"Dzięki. Opłakujący, mam kilka pytań..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16921 /* ~"Dzięki, Anno. Żegnaj, Opłakujący Drzew."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #17207 /* ~Anna ukłuła cię pod żebro, zanim zdążyłeś podejść do tego mężczny. "Na twoim mniejscu nie marnowałabym czasu na rozmowe z tym starym ghulem."~ */
  IF ~~ THEN REPLY #17348 /* ~"Cóż, ty nie marnujesz, to ja z nim rozmawiam."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17349 /* ~"Rozumiem. Najlepiej będzie, jak i tak z nim porozmawiam."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17350 /* ~"Dlaczego nie? Kim on jest?"~ */ GOTO 103
  IF ~~ THEN REPLY #17351 /* ~"Zatem będę się trzymać z daleka."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.2
  SAY #17210 /* ~Anna mówi, jakby przypominała sobie starą legendę: "Stary 'Przyjaciel Szpiku' jest tak zbizkowany, jak tylko można, o tak. Był jednym z najstarszych i najgorszych Zbieraczy na Placu. Z ledwościom udawało mu siem uciułać wystarczajonco dużo brzdenku ze sprzedaży ciał, by mieć za co kupić jeść. Kilka lat temu oszalał z głodu i aby przeżyć zaczoł jeść ciała. Teraz inni Zbieracze stroniom od niego i szydzom, obrzucajonc go gównem, gdy tylko majom okazje. On siem tylko na nich patrzy... wyobrażajonc sobie, jakom uczte by se na nich urzondził, jak mnie siem wydaje."~ */
  IF ~~ THEN REPLY #17352 /* ~"Hmm. Tak na wszelki wypadek porozmawiam z nim."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ EXTERN ~DMARROW~ 1
  IF ~~ THEN REPLY #17354 /* ~"Zatem będę się trzymać z daleka."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #17426 /* ~"Tia, on jest pewien. Nie słyszała żeś?" Anna wywraca oczami. "Na miłość Mocy, czemu nie odwalisz siem trochie od niego? Zawstydzasz siem, o tak."~ */
  IF ~~ THEN REPLY #17427 /* ~Pozwól handlarce odpowiedzieć Annie.~ */ EXTERN ~D300MER4~ 11
  IF ~~ THEN REPLY #17428 /* ~"Anno... bądź cicho."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17466 /* ~"Ona ma rację, nic nie potrzebuję. Moje pytania..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17467 /* ~"Ona ma rację, nic nie potrzebuję. Żegnaj."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #17429 /* ~Anna najpierw wygląda na przerażoną, potem na wściekłą: "*Zazdrosna*?! Knebel! Pilnuj swego jenzyka, kobieto albo ci go odetne od trumny i pogrzebie jego i ciało na przeciwnych końcach Sigil, oj tak!" Handlarka, najwyraźniej przestraszona, cofa się o kilka kroków. "A ty!" Anna zwraca się do ciebie z oczami płonącymi gniewem i krzywi się z odrazą. "Ani *słowa*! Niech ci nic głupiego nie przyjdzie do głowy od gadania tej pomylonej ździry, albo pożałujesz!"~ */
  IF ~~ THEN REPLY #17468 /* ~"Anno... bądź cicho."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 106
  IF ~~ THEN REPLY #17469 /* ~"Ona ma rację, nic nie potrzebuję. Moje pytania..."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17470 /* ~"Ona ma rację, nic nie potrzebuję. Żegnaj."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 106 // from: 104.1 105.0
  SAY #17430 /* ~"Ha! Nie sondze! Bendem mówić, kiedy chcem, o tak, i *nigdy* o tym nie zapominaj! I nie sondź, że o *tym* też zapomne, ty powalony skórogłowy."~ */
  IF ~~ THEN REPLY #17471 /* ~"W porządku, Anno. Ona ma rację, handlarko, nic nie potrzebuję. Moje pytania..."~ */ EXTERN ~D300MER4~ 8
  IF ~~ THEN REPLY #17472 /* ~"W porządku, Anno. Ona ma rację, handlarko, nic nie potrzebuję. Żegnaj."~ */ EXTERN ~D300MER4~ 9
END

IF ~~ THEN BEGIN 107 // from:
  SAY #17534 /* ~"Phi!" Anna potrząsa głową, wywracając w twoją stronę oczami. "Sondze, żeś jest jembecylem, skoro w ogóle to rozważasz. Ale one *som* słodkie... To twój brzdenk, trepie. Sam zdecyduj, co zrobić."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17589 /* ~"Morte? Co o tym sądzisz?"~ */ EXTERN ~DMORTE~ 187
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17590 /* ~"Wezmę jednego, handlarzu."~ */ DO ~TakePartyGold(40)
~ EXTERN ~D300MER5~ 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17591 /* ~"Lepiej nie wydawać pieniędzy. Ale mam parę pytań..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17592 /* ~"Wolę nie rozstawać się z moimi miedziakami. Żegnaj, kupcze."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17593 /* ~"Nie mam aż tyle, handlarzu, ale mam kilka pytań..."~ */ EXTERN ~D300MER5~ 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17594 /* ~"Nieważne, handlarzu. Nie mam tylu miedziaków. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #18796 /* ~Anna w mgnieniu oka wyciąga ostrza. "Dotknij mnie, a bendziesz zbyt martwy, żeby chodzić, oj tak."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18797 /* ~"Anno: uspokój się."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18798 /* ~Pozwól Annie działać.~ */ EXTERN ~DCOLYLFN~ 59
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18799 /* ~"Anno: uspokój się."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DCOLYLFN~ 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18800 /* ~Pozwól Annie działać.~ */ EXTERN ~DCOLYLFN~ 60
END

IF ~~ THEN BEGIN 109 // from:
  SAY #19035 /* ~Anna patrzy z odrazą. "Chodźmy."~ */
  IF ~~ THEN REPLY #19036 /* ~"Przedtem mam do niego jeszcze kilka pytań."~ */ EXTERN ~DOJO~ 12
  IF ~~ THEN REPLY #19037 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #19230 /* ~Anna parska. "Wcionż siem, wymondrzasz, Kwint? Skończ z tym."~ */
  IF ~~ THEN REPLY #19231 /* ~"Przedtem mam do niego jeszcze kilka pytań, Anno..."~ */ EXTERN ~DQUINT~ 1
  IF ~~ THEN REPLY #19232 /* ~"Żegnaj, Kwincie."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #20625 /* ~Anna przestępuje nerwowo z nogi na nogę. "Najlepiej nie zadawać siem z martwymi. To przynosi pecha, oj tak."~ */
  IF ~~ THEN REPLY #20626 /* ~"W porządku. To ciało i tak nic nie powie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #20627 /* ~Anna przestępuje nerwowo z nogi na nogę. "Najlepiej nie zadawać siem z martwymi. To przynosi pecha, oj tak."~ */
  IF ~~ THEN REPLY #20628 /* ~"Może będzie miało dla nas jakieś odpowiedzi."~ */ EXTERN ~DBODY1~ 2
END

IF ~~ THEN BEGIN 113 // from:
  SAY #20629 /* ~"Jasne, że nic tu dla nas nie ma. Idziemy, tia? Nic nie zyskamy łażonc miendzy trupami."~ */
  IF ~~ THEN REPLY #20630 /* ~"Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #20775 /* ~"Gris, ty półmózgi sempie, nie miał żeś nic z rozumu, co ci Moce dały, a teraz żeś marwy, gnijesz i odłazisz. Oby żadna moc śmierci nie zlitowała siem na twoim pokrytym muchami ciałem. Po dwakroć siem ciesze, a po trzykroć cieszy siem twoja matka, że gnijesz tutaj. Szkoda, że mówić nie możesz, bo byś mi opowiedział o tym, jak żeś zszedł."~ */
  IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN REPLY #20776 /* ~"To jest Gris?"~ */ JOURNAL #66263 /* ~Odnalazłem ciało Grisa Sępa, jednego ze Zbieraczy z Zakopanej Wioski. Ktoś wepchnął ciało do sarkofagu w grobowcu zamieszkałym przez gule. Zwłoki są w straszliwym stanie.~ */ GOTO 115
  IF ~~ THEN REPLY #20777 /* ~"To miły sentyment, Anno. Chodźmy."~ */ JOURNAL #66263 /* ~Odnalazłem ciało Grisa Sępa, jednego ze Zbieraczy z Zakopanej Wioski. Ktoś wepchnął ciało do sarkofagu w grobowcu zamieszkałym przez gule. Zwłoki są w straszliwym stanie.~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #20778 /* ~"Tak, Gris Semp, z dziobem jak padlinożerca o kiepskim temperamencie. Wybitnie był samolubny i upierdliwy, tym bardziej szkoda, że nigdy mu żem gardła nie podcięła, gdy jeszcze był ciepły."~ */
  IF ~~ THEN REPLY #20779 /* ~"W porządku, Anno. Dzięki. Wynośmy się stąd."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #20780 /* ~Anna dźga ciało palcami u nóg i odwraca się do ciebie. "Wiesz, czemu nazywano go Gris Semp, tia? Ponieważ ten idiota miał tak potenżny dziób. Jego nos zawsze szedł kilka metrów przed nim."~ */
  IF ~  Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #20781 /* ~"Gris, Kwint cię szukał. Powiedział, że masz coś, co do niego należy."~ */ EXTERN ~DGRIS~ 10
  IF ~~ THEN REPLY #20782 /* ~"Gris, co? Dam znać innym wieśniakom, że nie żyjesz."~ */ EXTERN ~DGRIS~ 19
  IF ~~ THEN REPLY #20783 /* ~"Dzięki za informacje, Anno. Mam jeszcze kilka pytań do Grisa."~ */ EXTERN ~DGRIS~ 9
  IF ~~ THEN REPLY #20784 /* ~"Dzięki, Anno. Chodźmy."~ */ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.3
  SAY #20785 /* ~"Nie wspominaj o tym." Uśmiecha się słodko. "Ja też ciem żegnam, Gris! Powiedz szczyrom, coby nie wgryzały siem za bardzo w twoje kości!" Spluwa na ciało.~ */
  IF ~~ THEN REPLY #20786 /* ~"Chodźmy, Anno."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #21611 /* ~"Sssss!" Anna wydaje z siebie ostrzegawczy syk, a gdy odwracasz się w jej stronę, widzisz, jak wpatruje się w istotę z szeroko otwartymi oczami. Ręką zatacza półokrąg w okolicy serca.~ */
  IF ~~ THEN REPLY #24723 /* ~"Co się dzieje, Anno?"~ */ GOTO 119
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #21612 /* ~"Czyś głupi?!" Anna odwraca się w twoją stronę... i nagle zdajesz sobie sprawę, że ona się *boi*. "Czyś jest tak chentny, by zatańczyć w cieniu Pani, że bendziesz z nim zamieniał słowa?! Przyśmiejmy temu miejscu, zanim nas w ksiendze umarłych zapiszom!"~ */
  IF ~~ THEN REPLY #24724 /* ~"O co chodzi?"~ */ GOTO 120
  IF ~~ THEN REPLY #24725 /* ~"Zatem pójdziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #21613 /* ~"To jest *Upadły*." Anna rzuca istocie... najprawdopodobniej Upadłemu, pełne strachu spojrzenie. "Odejdźmy, tia? Nic dobrego nie przyjdzie z tego, że tu zostaniemy, o nie!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #24726 /* ~"Pytam ponownie... o co chodzi?"~ */ GOTO 121
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #24727 /* ~"Upadły?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 7
  IF ~~ THEN REPLY #24728 /* ~"Zatem pójdziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #21614 /* ~"On jest dabusem, który nie jest dabusem, tia? On chodzi po ziemi..." Głos Anny opada do szeptu, a ona zaczyna się trząść. "Żadnych wiencej pytań, przyśmiejmy temu miejscu, tia?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24729 /* ~"Anno, nic ci się nie stanie, dopóki tu jestem. Powiedz mi, co to jest 'dabus'?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 122
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24730 /* ~"Co to jest 'dabus'?"~ */ GOTO 122
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24731 /* ~"Anno, nic ci się nie stanie, dopóki tu jestem. Powiedz mi, co jest nie tak?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 123
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #24732 /* ~"Sądzę, że najlepiej będzie jak wyjaśnimy tę sprawę."~ */ GOTO 123
  IF ~~ THEN REPLY #24733 /* ~"Zatem pójdziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1
  SAY #21615 /* ~"Dabusy to *Jej* rodzaj - zajmujom siem oni miastem, naprawiajonc je, niszczonc i odbudowujonc ponownie i takie tam. Mówiom symbolami-zagadkami w powietrzu - musisz je złożyć razem, by odgadnonć śpiewke."~ */
  IF ~~ THEN REPLY #24734 /* ~"Dobra... ale Upadły do też dabus. O co chodzi?"~ */ GOTO 123
  IF ~~ THEN REPLY #24751 /* ~"Anno, chcę tylko zadać Upadłemu kilka pytań. Za chwilkę stąd pójdziemy."~ */ GOTO 126
  IF ~~ THEN REPLY #24752 /* ~"Rozumiem. Dobrze, pójdziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 121.2 121.3 122.0
  SAY #21616 /* ~Anna rzuca Upadłemu przestraszone spojrzenie. "Upadły to dabus, co *Jom* rozgniewał. Mówi siem, że to dabus, co nie jest dabusem, a czas siem zbliża, kiedy spojrzenie Pani na niego padnie, o tak."~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #24753 /* ~"*Ją*?"~ */ GOTO 124
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #24754 /* ~"*Ją*? Masz na myśli Panią Bólu?"~ */ GOTO 125
  IF ~~ THEN REPLY #24755 /* ~"Anno, chcę tylko zadać Upadłemu kilka pytań. Za chwilkę stąd pójdziemy."~ */ GOTO 126
  IF ~~ THEN REPLY #24756 /* ~"Rozumiem. Dobrze, pójdziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #21617 /* ~"Paniom Bólu." Anna rysuje kolejny półokrąg przed sobą. "Dabusy dla niej pracujom, a ona ich ochrania... poza Upadłym." Drży. "Odejdźmy, tia?"~ */
  IF ~~ THEN REPLY #24757 /* ~"Wolałbym najpierw porozmawiać z Upadłym."~ */ GOTO 126
  IF ~~ THEN REPLY #24758 /* ~"Dobrze, pójdziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 123.1
  SAY #21618 /* ~"Tia... i uważaj na swój jenzyk." Anna rysuje kolejny półokrąg przed sobą, gdy wspominasz imię Pani. "Dabusy pracujom dla Pani, a ona ich ochrania... poza Upadłym." Drży. "Odejdźmy, tia?"~ */
  IF ~~ THEN REPLY #24759 /* ~"Wolałbym najpierw porozmawiać z Upadłym."~ */ GOTO 126
  IF ~~ THEN REPLY #24760 /* ~"Rozumiem. Dobrze, pójdziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from: 122.1 123.2 124.0 125.0
  SAY #21619 /* ~Anna chwyta ciem za ramię. "Proszę, nie, nie! Nic dobrego z tego nie bendzie - każdy, kto rozmawia z Upadłym może ściongnonć na siem jej spojrzenie. Nie chcem umierać, nie chcem!" Ku twemu zaskoczeniu, Anna jest bliska łez.~ */
  IF ~~ THEN REPLY #24761 /* ~"Bądź *cicho*... nic się nie stanie. Teraz porozmawiam z Upadłym i chcę, abyś milczała."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 127
  IF ~~ THEN REPLY #24762 /* ~Obiecaj: "Anno, nic ci się nie stanie, dopóki tu jestem - obiecuję. Po prostu chcę z nim przez chwilę porozmawiać."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Fell_2","GLOBALLaw",1)
~ GOTO 128
  IF ~~ THEN REPLY #24763 /* ~Skłam, aby uciszyć jej jęki: "Anno, nic ci się nie stanie, dopóki tu jestem - obiecuję. Po prostu chcę z nim przez chwilę porozmawiać."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Fell_2","GLOBALLaw",-1)
~ GOTO 128
  IF ~~ THEN REPLY #24764 /* ~"Dobrze, dobrze. Idziemy."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #21620 /* ~Anna czerwienieje, jakbyś ją uderzył. Parska, ogon wędruje z miejsca na miejsce, a jej znana wściekłość ponownie się pojawia. "Nie wiem, czemu siem w ogóle martwie... idź, gadaj z nim, póki twój jenzyk nie podetnie ci gardła!"~ */
  IF ~~ THEN REPLY #24765 /* ~"Dobrze."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 128 // from: 126.1 126.2
  SAY #21621 /* ~Przez dłuższą chwilę Anna po prostu się w ciebie wpatruje. Potem coś w twoim spojrzeniu zdaje się ją uspokajać, gdyż zbiera się w sobie. "Nie wiem czemu..." Potrząsa głową. "Idź, zatem, gadaj z nim! Nie obchodzi mnie to!" W jej głosie słychać ukryty strach.~ */
  IF ~~ THEN REPLY #24766 /* ~"Dobrze."~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 8
END

IF ~~ THEN BEGIN 129 // from:
  SAY #21622 /* ~Anna przystaje na chwilę. Wygląda na rozdartą. "Tia... mogie."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24767 /* ~"Zrobisz to?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24768 /* ~"Zrobisz to?"~ */ GOTO 130
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #24769 /* ~"Zatem to zrób."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 131
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #24770 /* ~"Zatem to zrób."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 130
  IF ~~ THEN REPLY #24771 /* ~"Nieważne. Po prostu chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 130 // from: 129.1 129.3
  SAY #21623 /* ~Anna potrząsa głową. "Nie, nie chcem wchodzić z tobom w cień Pani, oj nie."~ */
  IF ~~ THEN REPLY #24772 /* ~"Rozumiem. Po prostu spróbuję sam z nim porozmawiać..."~ */ EXTERN ~DFELL~ 8
  IF ~~ THEN REPLY #24773 /* ~"Dobrze. Chodźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 131 // from: 129.0 129.2 132.0 133.1 134.3 135.3 136.0 137.12 138.12 139.12 140.9 141.9 142.0 143.3 144.1 145.3 146.3 147.3 148.0 149.3 150.3 151.1 152.3 153.3 154.3 155.12 158.0 159.0
  SAY #21624 /* ~Anna przytakuje. Dabus dalej wpatruje się w waszą dwójkę z założonymi rękami ukrytymi w rękawach.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24774 /* ~"Spytaj go, kim jest."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24775 /* ~"Spytaj go, kim jest."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #24776 /* ~"Spytaj go, kim jest."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24777 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24778 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24779 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24780 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24781 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #24782 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24783 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24784 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24785 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64394 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64395 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64396 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64397 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64398 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64399 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24786 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24787 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24788 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #24789 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24790 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24791 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #24792 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24793 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24794 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24795 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24796 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24797 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #24798 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24799 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24800 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24801 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #21625 /* ~Anna wzrusza ramionami, jej ogon powoli wędruje tam i z powrotem. "Mówi, że ma na imię 'Upadły'."~ */
  IF ~~ THEN REPLY #24802 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24803 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #21626 /* ~Anna marszczy się, przyglądając się symbolom. "Nie znam wszelkich znaków, jakie on wypluwa..." Rozgląda się po ścianach budynky. "Ale... jeśli mnie oczy nie mylom, to wyglonda mi to na studio tatuażu."~ */
  IF ~~ THEN REPLY #24804 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24805 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24806 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #21627 /* ~Anna wpatruje się w symbole ze zmrużonymi oczami. "Pierwszy, powiada... nie, czekaj." Marszczy się. "Mówi, że jest to *pierwszy* raz, kiedy tu przyszedłeś... ale jednocześnie nie pierwszy." Anna syczy zirytowana, a jej ogon jak wąż wędruje raz w jedną, raz w drugą stronę. "Ssss! On jest równie zbzikowany, jak *ty* - w tym, co mówi, nie ma sensu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24807 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24808 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24809 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #24810 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24811 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #21628 /* ~Anna mruga. "Och, to cudownie. On mówi, że ciem zna, dobrze... ale twierdzi, że nie może opowiedzieć ci twojej historii."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24812 /* ~"Dlaczego nie?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24813 /* ~"Dlaczego nie?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24814 /* ~"Dlaczego nie?"~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #24815 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24816 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #21629 /* ~"Mówi, że nie może. Mówi, że mu przykro i w ogóle... potem..." Anna marszczy się. "Mówi, 'że nie może zmienić natury człowieka'." Ponownie przebiega wzrokiem przez symbole, po czym wzrusza ramionami. "Nie wiem, o co mu chodzi w tej końcówce."~ */
  IF ~~ THEN REPLY #24817 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24818 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #21630 /* ~Anna zagryza wargę. "Mówi, że wiedźma to nie bajka. Ona istnieje naprawde, o tak."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24819 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24820 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24821 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24822 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24823 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24824 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24825 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24826 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24827 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24828 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24829 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #24830 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24831 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24832 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #21631 /* ~"On..." Anna zatacza dłonią półokrąg nad sercem. "On mówi, że ona została uwienziona w labiryncie, o tak..." Jej głos opada do szeptu. "Ona jest w jednej z klatek Pani."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24833 /* ~"Uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24834 /* ~"Uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24835 /* ~"Uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24836 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24837 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24838 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24839 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24840 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24841 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24842 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24843 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24844 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24845 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24846 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #21632 /* ~"Ona..." Anna mruży oczy przyglądając się symbolom. "Coś o tym, że one we dwie nie mogły siem dogadać i Pani ukarała Ravelem. Wrzuciła jom do labiryntu, o tak." Anna odwraca się do ciebie. "Labirynty som jak cele dla trepów, którzy sondzom, że mogom wycyckać Paniom... a to nigdy nie działa. Tylko sprawia, że pojawia siem wiencej labiryntów."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24847 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24848 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24849 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24850 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24851 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24852 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24853 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24854 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24855 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24856 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24857 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24858 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24859 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24860 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #21633 /* ~Anna zdaje się coraz bardziej denerwować tym tłumaczeniem. Widzisz, jak drży. "Mówi, że ona próbowała zgnieść Sigil jak jajko."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24861 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24862 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #24863 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24864 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24865 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24866 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24867 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24868 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24869 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24870 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24871 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 141 // from: 156.5
  SAY #21634 /* ~Anna marszczy się. "Mówi nie szukajcie jej..." Drapie się niepewnie. "Mówi, że ona jest w gestii Pani." Odwraca się do ciebie. "On mówi sensownie... nie należy z Niom zadzierać, wienc najlepiej zostawić jom w spokoju, tia?"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24872 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24873 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24874 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24875 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24876 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24877 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #24878 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24879 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24880 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24881 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #24882 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #21635 /* ~"Mówi, żebyś jej nie szukał, bo..." Mruży się, wpatrując w symbole. "Bo ona ma złe serce." Milknie. "Mówi, ona uczyni wszystko, by ciem skrzywdzić i tych, co z tobom wendrujom." Anna wzdycha i rzuca ci niepewne spojrzenie. "On ma racje, wiesz. Jeśli ona żyje, to jest tylko nieszczenściem, kłopotem z tych najczarniejszych, o tak."~ */
  IF ~~ THEN REPLY #24883 /* ~"Będę o tym pamiętać. Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24884 /* ~"Sądzę, że naszym drogom przeznaczone jest się krzyżować. Żegnaj."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #21636 /* ~Ogon Anny wędruje tam i z powrotem. "Mówi, że ramię jest twoje, ale tatuaże jego." Marszczy się, przygądając się symbolom, które unoszą się w powietrzu. "...Nie rozumiem ostatniej czenści."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24885 /* ~"Jakie tatuaże?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24886 /* ~"Jakie tatuaże?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24887 /* ~"Jakie tatuaże?"~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #24888 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24889 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #21637 /* ~"Mówi, że som jego, ale zapomniał o nich. Powiedział, że może je na tobie jeszcze raz narysować, jeśli chcesz."~ */
  IF ~~ THEN REPLY #24890 /* ~"W porządku... Chciałbym zobaczyć wszystkie tatuaże, jakie oferuje."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #24891 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 131
  IF ~~ THEN REPLY #24892 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #21638 /* ~"Mówi, że nie som jego."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Czy może coś o nich powiedzieć?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Czy może coś o nich powiedzieć?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Czy może coś o nich powiedzieć?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #24896 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24897 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #21639 /* ~"Mówi... te na twoich plecach, to wskazówki. Ten drugi, na twoim ramieniu..." Nagle jeden z symboli wokół Upadłego rozjaśnia się, a reszta znika. Symbol staje się większy i bardziej skupiony.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24898 /* ~"Co to za symbol, który mam na ramieniu?"~ */ EXTERN ~DFELL~ 69
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24899 /* ~"Co to za symbol, który mam na ramieniu?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24900 /* ~"Co to za symbol, który mam na ramieniu?"~ */ EXTERN ~DFELL~ 70
  IF ~~ THEN REPLY #24901 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24902 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #21640 /* ~"Cienie." Anna znowu zaczyna machać ogonem... co dziwne, zdaje się być zdenerwowana. "Mówi, że zabiły ciem cienie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24934 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24935 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24936 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #24937 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24938 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #21641 /* ~"Mówi..." Ogon Anny przestaje uderzać, a zaczyna się poruszać wolniej, jak gotowy do ataku wąż. "Mówi, że zabiło ciem wiele cieni. Nie wie dlaczego."~ */
  IF ~~ THEN REPLY #24939 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24940 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #21642 /* ~"Mówi... to jest jego świątynia... jego galeria. Mówi... że jesteś jego *płótnem*. Zarówno ciem podziwia, jak i jest mu smutno z twojego powodu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24941 /* ~"Smutno z mojego powodu?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24942 /* ~"Smutno z mojego powodu?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24943 /* ~"Smutno z mojego powodu?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #24944 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24945 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #21643 /* ~Anna zdaje się zmagać ze sobą. "Mówi... tortura, nie... znak *udrenki* kronży nad tobom, tak. Ta tragedia... tragedie... i straty wszystkie zostały... uch, wyciente w twoim ciele. Mówi, że przeżyłeś wielki ból."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24946 /* ~"Co on ma na myśli?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24947 /* ~"Co on ma na myśli?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24948 /* ~"Co on ma na myśli?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #24949 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24950 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from:
  SAY #21644 /* ~Anna marszczy się. "Nie do końca potrafie to zrozumieć, ale..." Mruży oczy, patrząc na symbole. "On... czuje podziw... *podziwia* ciem, ponieważ siem poddałeś... nie, nie... ponieważ siem *nie* poddałeś wadze straty... strat... łańcuchów..." Anna parska, po czym spluwa na podłogę. "Cholera! Przeklente rebusy! Nie majom za grosz sensu!"~ */
  IF ~~ THEN REPLY #24951 /* ~"Weź głęboki oddech i spróbuj jeszcze raz."~ */ GOTO 152
  IF ~~ THEN REPLY #24952 /* ~"Zatem zapomnij o tym. Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24953 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #21645 /* ~"W porzondku, staruszku." Anna bierze oddech, po czym ponownie skupia się na rebusach. "Mówi, że ciem podziwia, ponieważ nie poddałeś siem wadze tych strat... nawet pomimo tego, że łańcuchy wcionż nad tobom wiszom... ech, na tobie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24954 /* ~"Poproś, żeby kontynuował."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24955 /* ~"Poproś, żeby kontynuował."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24956 /* ~"Poproś, żeby kontynuował."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #24957 /* ~"Zatem zapomnij o tym. Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24958 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #21646 /* ~Anna marszczy się. "Mówi... te straty cionżom nad tym życiem i nad każdym innym. Że penkała ci skóra... ech... *zrzucałeś* skóry... jak wonż. Kroczysz ścieżkami życia, wiele..." Milknie. "Uch, nieskończonymi ścieżkami życia."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24959 /* ~"Czy powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24960 /* ~"Czy powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24961 /* ~"Czy powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #24962 /* ~"Zatem zapomnij o tym. Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24963 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from:
  SAY #21647 /* ~"Ech... mówi, by ciem przed czymś ostrzec... każde twoje, ech, życie, przeszłe życie, życia..." Mruży oczy, po czym kontynuuje. "Karnacja... *inkarnacja* rzuca cień. I że musisz siem udać... do miejsca, gdzie som szalone cienie, gdzie żyjom szalone cienie, a ziemia jest odcienta od żalu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24964 /* ~"Rozumiem... Czy powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24965 /* ~"Rozumiem... Czy powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24966 /* ~"Rozumiem... Czy powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #24967 /* ~"Zatem zapomnij o tym. Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24968 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #21648 /* ~"Mówi też, abyś nic nie podpisywał."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24969 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24970 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24971 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24972 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24973 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24974 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24975 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24976 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #24977 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #24978 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #24979 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #24980 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #24981 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24982 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #21649 /* ~"Upadły mówi... uch, nie, on *pyta*, czy czujesz się 'niecały'." Anna marszczy się. "*Sondze*, że pytał ciem, czy czujesz siem kompletny."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24983 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24984 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24985 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #24986 /* ~"To nie twoja sprawa."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24987 /* ~Kłamstwo: "Tak, czuję się kompletny. Dlaczego pytasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #24988 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 141
  IF ~~ THEN REPLY #24989 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #21650 /* ~"Upadły mówi... żeś jest silny. I powinieneś dalej wierzyć. Wtedy znowu staniesz siem całościom."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24991 /* ~"Spróbuję."~ */ EXTERN ~DFELL~ 103
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24992 /* ~"Spróbuję."~ */ EXTERN ~DFELL~ 104
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #24993 /* ~"Spróbuję."~ */ EXTERN ~DFELL~ 105
END

IF ~~ THEN BEGIN 158 // from:
  SAY #21651 /* ~Anna mruga. "On... powiedział mi, żebym nie traciła serca."~ */
  IF ~~ THEN REPLY #24994 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24995 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #21652 /* ~"Mówi, że to tortura..." Marszczy się. "Nie, ma na myśli 'udrenkem', jak mnie siem wydaje. Coś o skórach i umyśle, nie potrafiem nic z tego odczytać." Potrząsa głową. "Przyprawia mnie o bóle głowy, o tak."~ */
  IF ~~ THEN REPLY #24996 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 131
  IF ~~ THEN REPLY #24997 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #23928 /* ~"Och, Szad, teraz już wiesz, że siem wszyscy o ciem martwiliśmy, tia? Szkoda, żeś tu jest." Patrzy na niego z większym uczuciem, niż kiedykolwiek do tej pory. "Idź i wyprowadź nas stond i sam też spadaj. Jak mnie siem wydaje, nasz stary Wyboisty zechce siem odegrać na szczurach."~ */
  IF ~~ THEN REPLY #23929 /* ~"Masz rację."~ */ EXTERN ~DSHAD~ 7
  IF ~~ THEN REPLY #23930 /* ~"Proszę, Szad."~ */ EXTERN ~DSHAD~ 7
END

IF ~~ THEN BEGIN 161 // from:
  SAY #28622 /* ~Przy tobie rozlega się syk Anny. "Sssss! O co ci chodzi, że wymieniasz z niom przyjemności? Czy rozum ciem całkiem opuścił?"~ */
  IF ~~ THEN REPLY #28623 /* ~"Anno, uspokój się i zamilknij... rozmawiam tu z kimś, dobra?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 162
  IF ~~ THEN REPLY #28624 /* ~"Anno, tylko byłem miły, aby wybaczyła mi moje nieokrzesanie, w porządku?"~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0 161.1
  SAY #28625 /* ~Anna spluwa. "Grasz dandysa, tak, i jesteś jeszcze wienkszym głupcem, bo robisz to z biesem! Czy szukasz swojej klatki?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 53
END

IF ~~ THEN BEGIN 163 // from:
  SAY #28626 /* ~"Ona jest jednym z biesów, jednym z sukkubów, o tia. Obejrzy ciem, po czym zabierze twom dusze do Sfer Niższych, o tia."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 72
END

IF ~~ THEN BEGIN 164 // from:
  SAY #28627 /* ~Anna sztywnieje, po czym zaczyna mruczeć pod nosem. "Kto powiedział, że ona z nami idzie? Nie potrzebujemy takich jak ona, o nie."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 118
END

IF ~~ THEN BEGIN 165 // from:
  SAY #28628 /* ~Anna sztywnieje, po czym zaczyna mruczeć pod nosem. "Kto powiedział, że ona z nami idzie? Nie potrzebujemy takich jak ona, o nie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 277
END

IF ~~ THEN BEGIN 166 // from:
  SAY #28629 /* ~"Najlepiej zarygluj swojom trumne, czaszke, albo potrzonsne niom tak mocno, że bendom zbierać twoje zemby z iglicy...!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 117
END

IF ~~ THEN BEGIN 167 // from:
  SAY #30829 /* ~Anna wzrusza ramionami i wywraca oczami. "Gadaj se co chcesz, śmiałku. Nie obchodzi mnie, co mówisz... to znaczy, dopóki nie trzensiesz trumnom *o mnie*."~ */
  IF ~~ THEN REPLY #30836 /* ~Spróbuj zwrócić na siebie jego uwagę.~ */ EXTERN ~DABLE~ 7
END

IF ~~ THEN BEGIN 168 // from:
  SAY #30830 /* ~"Tia, boli, jak siem na niego patrzy, o tak."~ */
  IF ~~ THEN REPLY #30837 /* ~"Bardzo zabawne, Anno. Mam do pana kilka pytań…"~ */ EXTERN ~DABLE~ 16
  IF ~~ THEN REPLY #30838 /* ~"Dziwny komentarz ze strony kogoś, kto ma co, co wygląda jak ogon potężnego szczura wystający mu z tyłka."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1
  SAY #30831 /* ~Anna odsłania zęby, machając ogonem. "*Czyżby*, ty szpicowany skórogłowy? Jeśli *chcesz*, to ja i mój ogon możemy na dobre zejść ci z oczu! Czy *to* by ciem uszczenśliwiło, hę?"~ */
  IF ~~ THEN REPLY #30839 /* ~"Nie, Anno. Zostań. Tylko się z tobą drażniłem... oko za oko."~ */ GOTO 170
  IF ~~ THEN REPLY #30840 /* ~"Anno, nie... nie chcę patrzeć, jak odchodzisz. Przepraszam za ten tekst - proszę, zostań ze mną."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 171
  IF ~~ THEN REPLY #30841 /* ~"Co ci pasuje, Anno."~ */ GOTO 172
END

IF ~~ THEN BEGIN 170 // from: 169.0 171.0 172.0 173.0
  SAY #30832 /* ~"Hmpf." Uśmiecha się do ciebie półgębkiem, ale nie rusza się.~ */
  IF ~~ THEN REPLY #30842 /* ~"Dzięki, Anno. A ty, panie... Mam kilka pytań."~ */ EXTERN ~DABLE~ 16
END

IF ~~ THEN BEGIN 171 // from: 169.1
  SAY #30833 /* ~Anna na chwilę milknie. Otwiera usta, aby coś powiedzieć, po czym zatrzymuje się...~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 172 // from: 169.2
  SAY #30834 /* ~Anna patrzy na ciebie przez chwilę, wstrząśnięta, zanim nie wybuchnie gniewem. "*DOBRA*!" krzyczy. "Niech moce powiedzom mi, *dlaczego* zmarnowałam tak wiele czasu wendrujonc z tobom!" Zaczyna odchodzić, głośno przeklinając ciebie, twoich przodków i każdego, z kim tylko się spotkałeś.~ */
  IF ~~ THEN REPLY #30843 /* ~"Anno, czekaj... przepraszam, proszę, wróć."~ */ GOTO 170
  IF ~~ THEN REPLY #30844 /* ~Schwyć ją, gdy odchodzi.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 173
  IF ~~ THEN REPLY #30845 /* ~Puść ją.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 172.1
  SAY #30835 /* ~Gdy chwytasz ją za ramię, ona wyrywa się z uścisku i syczy. "*Nigdy* już nawet na mnie nie patrz, ty skurlony idioto!" Podnosi naręczne sztylety. "I czymkolwiek mnie *dotkniesz*, ta czenść twego ciała spocznie w rynsztoku Sigil, przysiengam!"~ */
  IF ~~ THEN REPLY #30846 /* ~"Anno, czekaj... chciałem tylko przeprosić. Nie było moim zamiarem, abyś się tak zmartwiła. Proszę, nie odchodź."~ */ GOTO 170
  IF ~~ THEN REPLY #30847 /* ~"Spróbuj tylko i postaraj się dobrze, diabelski śmieciu o niewypażonym języku."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30848 /* ~"Żegnaj na dobre, Anno."~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #32668 /* ~Gdy klękasz przed kobietą, Anna wybucha gniewem. "Chyba nie masz *zamiaru* tego zrobić! Po prostu załatw te grzecznom dziwke, skurlu! Masz... załatwiem to za ciebie..."~ */
  IF ~~ THEN REPLY #32689 /* ~"Anno, poczekaj!"~ */ DO ~Attack("Sarhava")
~ EXIT
  IF ~~ THEN REPLY #32690 /* ~Stań pomiędzy Anną a kobietą.~ */ GOTO 175
  IF ~~ THEN REPLY #32691 /* ~Przyłącz się do ataku Anny.~ */ DO ~Attack("Sarhava")
~ EXTERN ~DSARHAVA~ 15
  IF ~~ THEN REPLY #32692 /* ~Pozwól Annie działać.~ */ DO ~Attack("Sarhava")
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.1
  SAY #32669 /* ~Ruszasz, by bronić kobiety. Anna tylko się w ciebie wpatruje, wyraźnie wstrząśnięta. "Co... czy... czyś *głupi*?"~ */
  IF ~~ THEN REPLY #32693 /* ~"To nie jest Ul, Anno... nie możemy po prostu walczyć jak nam się podoba. Jeśli nie będziemy ostrożni, wezwą strażników."~ */ GOTO 176
  IF ~~ THEN REPLY #32694 /* ~"Dalej, Anno. Po prostu odejdźmy."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #32670 /* ~Anna krzywi się i spluwa kobiecie pod nogi. Co dziwne, kobieta nie rusza do ataku. "Chore, oto jakie to jest... chore." Mruczy do siebie. Dochodzą do ciebie słowa "oklapł" i "pniak".~ */
  IF ~~ THEN REPLY #32695 /* ~"Słuchaj, madam... nie chcemy żadnych kłopotów. Skończmy to, zanim sam zawołam strażników."~ */ EXTERN ~DSARHAVA~ 7
  IF ~~ THEN REPLY #32696 /* ~"Dalej, Anno. Po prostu odejdźmy."~ */ EXTERN ~DSARHAVA~ 13
END

IF ~~ THEN BEGIN 177 // from:
  SAY #32671 /* ~Anna wpatruje się z furią w Sławę i Sarhawę.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 178 // from:
  SAY #32672 /* ~Anna czerwienieje i z parsknięciem wyciąga ostrza.~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DSARHAVA~ 30
END

IF ~~ THEN BEGIN 179 // from:
  SAY #32673 /* ~"Ostry masz jenzyczek, dziewczynko." Anna spluwa i ostrzy sztylety o siebie. "Zastanawiam się, jak słodko twe tanie klejnociki i pienkne ciuszki bendom na tobie wyglondać, gdy bendziesz martwa leżeć na ulicy!"~ */
  IF ~~ THEN REPLY #32674 /* ~"Anno, poczekaj!"~ */ EXTERN ~DSARHAVA~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #33296 /* ~"Zamknij pysk, znienawidzony draniu! Czyż nie powiedziałam ci ostatnim razem, byś nigdy tak do mnie nie mówił? Pani tylko wie, skond w ogóle znasz moje imie!"~ */
  IF ~~ THEN EXTERN ~DGHIVEM~ 53
END

IF ~~ THEN BEGIN 181 // from:
  SAY #33297 /* ~"Nie mów, że ciem nie ostrzegałam, truposzu!" Ostrza Anny wystrzeliwują w kierunku wyciągniętych rąk mężczyzny...~ */
  IF ~~ THEN REPLY #33298 /* ~Sam zaatakuj mężczyznę.~ */ EXIT
  IF ~~ THEN REPLY #33299 /* ~Pozwól Annie działać.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #33435 /* ~"Zamknij pysk, znienawidzony draniu! Czyż nie powiedziałam ci ostatnim razem, byś nigdy tak do mnie nie mówił? Pani tylko wie, w jaki sposób w ogóle nadałeś mi imie!"~ */
  IF ~~ THEN EXTERN ~DGHIVEF~ 51
END

IF ~~ THEN BEGIN 183 // from:
  SAY #33437 /* ~"Nie mów, że ciem nie ostrzegałam, truposzu!" Ostrza Anny wystrzeliwują w kierunku wyciągniętych rąk mężczyzny...~ */
  IF ~~ THEN REPLY #33438 /* ~Sam zaatakuj mężczyznę.~ */ EXIT
  IF ~~ THEN REPLY #33439 /* ~Pozwól Annie działać.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 218 227 even though they appear after this state */
~  GlobalGT("Annah","GLOBAL",0)
!Global("Annah_Talked_Grace","GLOBAL",5)
!InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 184 // from:
  SAY #33981 /* ~Anna patrzy się na ciebie, jak podchodzisz, uderzając ogonem tu i tam. "Wienc, uch... jeszcze potrzebujesz mojej pomocy?"~ [ANA454A] */
  IF ~~ THEN REPLY #33982 /* ~"Chciałem, abyśmy znowu razem podróżowali razem."~ */ GOTO 185
  IF ~~ THEN REPLY #33983 /* ~"Nic, przepraszam, że ci przeszkadzam."~ */ EXIT
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY #33984 /* ~"Och, a teraz już jesteś PEWIEN? Zostawiłeś mnie tu raz, a mnie to nie obchodziło. Nie mam czasu na twe umizgi, o nie. Jeśli tym razem żeś nie jest całkiem pewien, to lepiej odejdź."~ */
  IF ~~ THEN REPLY #33985 /* ~"Jestem pewny. Potrzebuję twojej pomocy, Anno."~ */ GOTO 186
  IF ~~ THEN REPLY #33986 /* ~"Zatem najlepiej będzie, jak już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY #33987 /* ~"Tsss. Nie ma w tym sensu, ale pójdem z tobom. Potrzebujesz wszelkiej pomocy, o tak."~ */
  IF ~~ THEN REPLY #33988 /* ~"Dobra. Chodźmy."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 451 460 218 227 even though they appear after this state */
~  InParty("Annah")
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 187 // from:
  SAY #33989 /* ~"Tia? Czego zatem chcesz?"~ [ANA579B] */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67680 /* ~"Więc gdzie jest to miejsce, w którym znalazłaś moje ciało?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67681 /* ~"Więc gdzie jest to miejsce, w którym znalazłaś moje ciało?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67682 /* ~"Więc gdzie jest to miejsce, w którym znalazłaś moje ciało?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67683 /* ~"Mam pytanie, o tak jak odnalazłaś moje ciało..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67684 /* ~"Anno... czy nie spotkaliśmy się w Ulu, zanim nie odnalazłem Faroda?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67685 /* ~"Anno, czy znalazłaś coś przy moim ciele, zanim nie zaniosłaś mnie do Kostnicy?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67693 /* ~"Anno, znalazłem Faroda martwego na Dworze Złych Wiatrów."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67694 /* ~"Anno, czy wiesz, jak umarł Farod?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67686 /* ~"Opowiedz mi coś więcej o Farodzie."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67687 /* ~"Anno, gdy Farod poszedł, by zwrócić mi rzeczy, które zabrał z mojego ciała, wyszedł na chwilę, po czym wrócił - ale nie opuszczał Dworu Złych Wiatrów. Czy wiesz, dokąd poszedł?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67690 /* ~"Anno, czy możesz wyszkolić mnie w złodziejskim fachu?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68261 /* ~"Anno, czy możesz wyszkolić mnie w złodziejskim fachu?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67688 /* ~"Chcę, żebyś wiedziała, że gdy pocałowałem w labiryncie Ravelę, ja..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67689 /* ~"Chcę, żebyś wiedziała, że gdy pocałowałem w labiryncie Ravelę, ja..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67695 /* ~"Tam, w labiryncie, Ravela powiedziała, że cierpisz... co miała na myśli?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67051 /* ~"Czy słyszałaś o nocnej wiedźmie zwanej Ravelą Szaradną?"~ */ GOTO 316
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67052 /* ~"Czy wiesz, gdzie mogę odnaleźć 'kawałek' Raveli?"~ */ GOTO 319
  IF ~~ THEN REPLY #33990 /* ~Nic, Anno. Po prostu sprawdzałem, czy wciąż jesteś ze mną."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #39003 /* ~"Ach, to zbieranina mózgoszkodników! Najlepiej zwińmy siem stond jak najszybciej - one zniszczom twój umysł! Widziałam jak dwadzieścia z nich robi zasadzki na pijaków, niszczy budynki, a słyszałam nawet plotkie, że mogom one rzucać zaklencia, gdy jest ich wiele. Nie potrafie sobie wyobrazić, co setka tych drani może razem dokonać..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 189 // from:
  SAY #39004 /* ~"Ach, to zbieranina mózgoszkodników! Najlepiej zwińmy siem stond jak najszybciej - one zniszczom twój umysł! Widziałam jak dwadzieścia z nich robi zasadzki na pijaków, niszczy budynki, a słyszałam nawet plotkie, że mogom one rzucać zaklencia, gdy jest ich wiele. Nie potrafie sobie wyobrazić, co setka tych drani może razem dokonać..."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 5
END

IF ~~ THEN BEGIN 190 // from:
  SAY #39005 /* ~Anna szepce do ciebie: "Udało ci siem wkurzyć mózgoszkodniki, tia? Pozwól, że ci coś powiem: Najlepiej zwińmy siem stond jak najszybciej, zanim one zniszczom nas wszystkich. W grupach som mondrzejsze - widziałam jak robią zasadzki na pijaków, niszczą budynki, a słyszałam nawet plotkie, że mogom one rzucać zaklencia, gdy jest ich wiele. Nie potrafie sobie wyobrazić, jak potenżna jest ta zbieranina - a tobie udało siem jom wszpicować. Uważaj tutaj, tia?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 191 // from:
  SAY #39006 /* ~Anna szepce do ciebie: "Udało ci siem wkurzyć mózgoszkodniki, tia? Pozwól, że ci coś powiem: Najlepiej zwińmy siem stond jak najszybciej, zanim one zniszczom nas wszystkich. W grupach som mondrzejsze - widziałam jak robią zasadzki na pijaków, niszczą budynki, a słyszałam nawet plotkie, że mogom one rzucać zaklencia, gdy jest ich wiele. Nie potrafie sobie wyobrazić, jak potenżna jest ta zbieranina - a tobie udało siem jom wszpicować. Uważaj tutaj, tia?"~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 58
END

IF ~~ THEN BEGIN 192 // from:
  SAY #39007 /* ~"Nie wiem, w jakom gre te mózgoszkodniki z tobom grajom, ale jeśli oferujom pokój, to najlepiej go przyjmij. W grupach som mondrzejsze, o tak, a nawet jeśli ich trochie zraniłeś, to tak ogromna banda wcionż może cie posłać do ksiengi umarłych."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 193 // from:
  SAY #39008 /* ~"Nie wiem, w jakom gre te mózgoszkodniki z tobom grajom, ale jeśli oferujom pokój, to najlepiej go przyjmij. W grupach som mondrzejsze, o tak, a nawet jeśli ich trochie zraniłeś, to tak ogromna banda wcionż może cie posłać do ksiengi umarłych."~ */
  IF ~~ THEN EXTERN ~DMANYAS1~ 78
END

IF ~~ THEN BEGIN 194 // from:
  SAY #39200 /* ~Anna mruczy coś wściekle. Dobiegają cię słowa "szpicowany" i "jembecyl".~ */
  IF ~~ THEN EXTERN ~DVIVIAN~ 12
END

IF ~~ THEN BEGIN 195 // from:
  SAY #39585 /* ~"Tia, nie jestem dobra w mówieniu takich rzeczy, o nie." Marszczy się i macha rękami, jakby chcąc odgonić ten pomysł. "Nie proś mnie teraz o takie bzdury."~ */
  IF ~~ THEN EXTERN ~DYVES~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #39586 /* ~Anna wygląda niepewnie, jej ogon powoli uderza raz tu, raz tam. "Cóż, znam jednom historie..." Nagle staje się wściekła, wpatruje się w Yves. "...ale może ci siem ona nie podobać, o nie, wienc nie miej *do mnie* pretensji, że jom ze mnie wydusiłaś!"~ */
  IF ~~ THEN REPLY #39764 /* ~"Dalej, Anno..."~ */ DO ~SetGlobal("Yves_Shared","AR0605",1)
~ GOTO 197
  IF ~~ THEN REPLY #39765 /* ~"Czekaj... mam opowieść, którą mogę się z tobą podzielić, Yves."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39766 /* ~"Zapomnij o tym, Anno. Mam pytanie, Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39767 /* ~"Nie przejmuj się tym, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #39587 /* ~Anna marszczy się, po czym w końcu rozluźnia z przesadnym westchnieniem. "Słyszałam tem historie, kiedy byłam małom dziewczynkom."

"Pewien trep wracał do domu naprawde późno, prawie w okolicach antyszczytu i przechodził obok bezzembnej staruchy w ciemnej i poza tym pustej ulicy. 'Dokond idziesz?' pyta siem go starucha."~ */
  IF ~~ THEN REPLY #39768 /* ~"Mów dalej, Anno..."~ */ GOTO 198
  IF ~~ THEN REPLY #39769 /* ~"Czekaj... Mam pytanie do Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39770 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #39588 /* ~"'Do domu, do żony i leża.' mówi.

'Koło Żużlowiska?' pyta ona.

'Jasne.' odpowiada."~ */
  IF ~~ THEN REPLY #39771 /* ~"Mów dalej, Anno..."~ */ GOTO 199
  IF ~~ THEN REPLY #39772 /* ~"Czekaj... Mam pytanie do Yves..."~ */ GOTO 4
  IF ~~ THEN REPLY #39773 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #39589 /* ~"Wienc ona prosi go o przysługie... By zabrał od niej skrzynke do Dziury Truposza i oddał je tamtejszej kobiecie. Ten trep jest prawdziwym idiotom, zbyt miłym by powiedzieć nie, pomimo faktu, że coś jest nie do końca *w porzondku* z tom staruchom, i zgadza siem. 'Ale jak brzmi imie kobiety?' pyta. 'Gdzie ona mieszka? Gdzie mam jej szukać, jeśli nie bendzie jej w Dziurze Truposza?'"~ */
  IF ~~ THEN REPLY #39774 /* ~"Mów dalej, Anno..."~ */ GOTO 200
  IF ~~ THEN REPLY #39775 /* ~"Czekaj... Mam pytanie do Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39776 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #39590 /* ~"Kobieta podaje mu skrzynkem - drewnianom, otulonom w kolorowy materiał - i mówi mu, by tylko tam poszedł, a ona tam bendzie. W końcu ostrzega go. 'I cokolwiek uczynisz, *NIE* otwieraj tej skrzynki!'"~ */
  IF ~~ THEN REPLY #39777 /* ~"Mów dalej, Anno..."~ */ GOTO 201
  IF ~~ THEN REPLY #39778 /* ~"Czekaj... Mam pytanie do Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39779 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #39591 /* ~"Wienc on zabiera jom ze sobom do domu i ukrywa na strychu, sondzonc, że zaniesie jom do Dziury Truposza, gdy bedndzie jasno. Jednakże jego żona, widzonc jak on chowa skrzynkem, staje siem zazdrosna, sondzonc, że to podarunek dla kochanki, albo coś i otwiera jom, gdy tylko on nie patrzy."~ */
  IF ~~ THEN REPLY #39780 /* ~"Mów dalej, Anno..."~ */ GOTO 202
  IF ~~ THEN REPLY #39781 /* ~"Czekaj... Mam pytanie do Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39782 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.0
  SAY #39592 /* ~"Cóż, okazuje siem, że skrzynka pełna było wyłupionych oczu i odcientych menskich członków wcionż z włosami. Jej krzyk spowodował, że trep przybiegł... przypomniał sobie, co powiedziałą starucha, przeraził siem i z powrotem zapakował skrzynkem."~ */
  IF ~~ THEN REPLY #39783 /* ~"Mów dalej, Anno..."~ */ GOTO 203
  IF ~~ THEN REPLY #39784 /* ~"Czekaj... Mam pytanie do Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39785 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #39593 /* ~"Ruszył prosto do Dziury Truposza i oczywiście, czekała tam na niego druga czarownica. Podaje on jej skrzynkem, a ona mówi mu: 'Tem skrzynkem otwarto i zajrzano do niej.'"~ */
  IF ~~ THEN REPLY #39786 /* ~"Mów dalej, Anno..."~ */ GOTO 204
  IF ~~ THEN REPLY #39787 /* ~"Czekaj... Mam pytanie do Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39788 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.0
  SAY #39594 /* ~"Biedny trep starał siem temu zaprzeczyć, ale ona patrzy mu w oczy. 'Zrobiłeś coś strasznego!' mówi mu, po czym znika. Gdy siem to skończyło, on pospieszył do swego leża."~ */
  IF ~~ THEN REPLY #39789 /* ~"Mów dalej, Anno..."~ */ GOTO 205
  IF ~~ THEN REPLY #39790 /* ~"Czekaj... Mam pytanie do Yves..."~ */ EXIT
  IF ~~ THEN REPLY #39791 /* ~"Posłuchamy tego innym razem, Anno. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #39595 /* ~"On nie czuł siem dobrze, gdy wracał i położył siem do łóżka. Jego żona gorzko żałowała otwarcia skrzynki i w ogóle, ale było za późno... nastempnego dnia on umarł na zgniliznę, a pierwsza rzecz, jaka mu odpadła, były to jego oczy i pniak."

Anna przytakuje ponuro, kończąc opowieść.~ */
  IF ~~ THEN EXTERN ~DYVES~ 64
END

IF ~~ THEN BEGIN 206 // from:
  SAY #41137 /* ~"Tsk." Parska Anna, wywracając oczami. "Idiota."~ */
  IF ~~ THEN REPLY #41138 /* ~Zignoruj uwagę Anny.~ */ EXTERN ~DKESAI~ 35
  IF ~~ THEN REPLY #41139 /* ~"Po prostu ją zignoruj, Kesai."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 207
  IF ~~ THEN REPLY #41140 /* ~"Anno, proszę... to tylko komplement."~ */ GOTO 207
  IF ~~ THEN REPLY #41141 /* ~"Nie martw się, Anno... jesteś równie śliczna."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 208
END

IF ~~ THEN BEGIN 207 // from: 206.1 206.2
  SAY #41142 /* ~Anna patrzy na ciebie zimno, ale nic nie mówi.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 208 // from: 206.3
  SAY #41143 /* ~"A co *to* ma znaczyć, ty szpicowany draniu?! Myślał żeś, żem *zazdrosna* o te gadatliwom szmate? Ty skurlu!" Anna spluwa i odwraca od ciebie spojrzenie.~ */
  IF ~~ THEN EXTERN ~DKESAI~ 35
END

IF ~~ THEN BEGIN 209 // from:
  SAY #43906 /* ~"Phi!" Anna parska w kierunku Mortego. "Przestań siem ślinić, ty łypliwa czaszko."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 469
END

IF ~~ THEN BEGIN 210 // from:
  SAY #43907 /* ~"Podejdź jeno ciut bliżej, czaszko, a dopilnuje, coby żaden z twoich klekoczoncych zembów nie leżał bliżej niż sto kroków od drugiego!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 470
END

IF ~~ THEN BEGIN 211 // from:
  SAY #44246 /* ~"Słodki cierpioncy *szpic*..." Parska Anna. "Ty tam! Nie bendziemy wiencej czekać, wienc lepiej..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 18
END

IF ~~ THEN BEGIN 212 // from:
  SAY #44250 /* ~Anna wygląda na zaskoczoną. "Co?" Wyraz zaskoczenia szybko przechodzi w namysł. "Co masz na *myśli*?"~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 19
END

IF ~~ THEN BEGIN 213 // from:
  SAY #44252 /* ~Anna zdaje siem być zmieszana. "Nie. Nie jestem Czuciowcem..."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 21
END

IF ~~ THEN BEGIN 214 // from:
  SAY #44253 /* ~"Nie, lubie je. Nie potrzebuje siem martwić o ciepło, czy goronco, to moja krew, jak sondze. I uważaj, jak mówisz o diabelstwach, tia?"~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 22
END

IF ~~ THEN BEGIN 215 // from:
  SAY #45721 /* ~"Wybebeszyłabym ciem, czaszko, jeśli miałbyś jakieś bebechy."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 486
END

IF ~~ THEN BEGIN 216 // from:
  SAY #46094 /* ~"'Zdybał'?! O czym, na dziewienć sfer Baator, ty gadasz, idioto? Dybać to być śledzonym, ściśnientym, ściongnientym przez Twardogłowych, ty tempy, pomylony trepie."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 1
END

IF ~~ THEN BEGIN 217 // from:
  SAY #46095 /* ~Anna śmieje się z niego, potrząsając głową. "Trzenść, skurlu. Trzenść trumnom. Chciałabym zobaczyć, jak długo byś przetrwał, jakby ciem z takim zachowaniem zostawić w środku Ula..." Anna zwraca się do ciebie. "Chodźmy. Nie ma sensu marnować czas z tym trepem o małym pniaku."~ */
  IF ~~ THEN EXTERN ~DYOBOY~ 3
END

IF WEIGHT #1 /* Triggers after states #: 227 even though they appear after this state */
~  Global("0110_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 218 // from:
  SAY #47311 /* ~"Tia, czego znowu?" Odwracasz się i dostrzegasz uderzającą rudowłosą dziewczynę ubraną w skórzaną zbroję... nawet nie słyszałeś, jak weszła do pomieszczenia. Jej prawa ręka pokryta jest kilkoma nachodzącymi na siebie płatami, które wyglądają jakby zabrano je za skóry jakiejś istoty, a lewą chroni rogaty naramiennik. Co dziwne, posiada ona ogon... którym macha tam i z powrotem, gdy się jej przyglądasz.~ [ANA229B] */
  IF ~  Global("Know_Annah","GLOBAL",0)
~ THEN REPLY #47320 /* ~"A więc to ty masz pokazać mi, gdzie znalazłaś moje ciało?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #47321 /* ~"Ty jesteś Anna? Spotkałem cię w Ulu - obok Kostnicy, prawda?"~ */ DO ~SetGlobal("Annah","GLOBAL",1)
SetGlobal("0110_Cut_Scene","GLOBAL",2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0 218.1
  SAY #47312 /* ~Dziewczyna ignoruje cię i zwraca się do Faroda. "O co zatem chodzi? Nie bendem grać w chowanego z tym obliźnionym psem, o nie. Niech zrobi to jakiś inny twój kanalarz."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 81
END

IF ~~ THEN BEGIN 220 // from:
  SAY #47313 /* ~"Hę? O co ci chodzi?" Patrzy się na ciebie ze zmrużonymi oczami. "On nie jest truposzem."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 82
END

IF ~~ THEN BEGIN 221 // from:
  SAY #47314 /* ~"Wienc?" Anna rzuca ci spojrzenie, po czym wzrusza ramionami. "Nie powinen zgrywać truposza w Ulu, podczas gdy ja jestem w okolicy, bo obudzi siem w łapach Grabów, o tak."~ */
  IF ~~ THEN REPLY #47322 /* ~"Może mogłaś SPRAWDZIĆ, czy jestem żywy, zanim mnie tam wrzuciłaś."~ */ GOTO 222
  IF ~~ THEN REPLY #47323 /* ~"Dość tego - gdzie znalazłaś moje ciało?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #47315 /* ~"Och, tia, a może TY powinieneś być ostrożniejszy i nie leżałbyś wtedy z twarzom w błocie i sztywny jak kamień na bruku, jak truposz, tia?!"~ */
  IF ~~ THEN REPLY #47324 /* ~"Może powinienem pokazać twojej brudnej, trupiej skórze, jak to jest, leżeć prawie martwym w alejce."~ */ GOTO 223
  IF ~~ THEN REPLY #47325 /* ~"Dość tego - gdzie znalazłaś moje ciało?"~ */ EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #47316 /* ~"Nie boje siem CIEBIE..." Dłonie anny opadają do boków, a ona wyciąga dwa zakrzywione naręczne sztylety z pochew. "Najlepiej odstomp, albo ci je wbijem w oczy, tak!"~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 83
END

IF ~~ THEN BEGIN 224 // from:
  SAY #47317 /* ~"Tsssk..." Anna parska na Faroda, po czym rzuca ci spojrzenie. "Zatem chodźmy. I ruszaj siem, dobra? Mało mam czasu by marnować go na takich jak ty."~ */
  IF ~~ THEN REPLY #47326 /* ~"Tak właściwie, to jeszcze nie skończyłem badać Zakopanej Wioski... gdy tu skończymy, skierujmy się do miejsca, gdzie umarłem."~ */ GOTO 225
  IF ~~ THEN REPLY #47327 /* ~"Dobrze. Udajmy się tam teraz."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
StartCutSceneMode()
StartCutSceneEx("0110cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #47318 /* ~"Ach, tia? Cóż, zatem możesz sam wywenszyć swój grób, idioto! Ja nie czek..."~ */
  IF ~~ THEN EXTERN ~DPHAROD~ 84
END

IF ~~ THEN BEGIN 226 // from:
  SAY #47319 /* ~Anna spluwa na ziemię. "Oby was obu syf..."~ */
  IF ~~ THEN REPLY #47328 /* ~"O tym właśnie myślałem... teraz chodźmy."~ */ DO ~ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Annah_AR0400_Cut_Scene","GLOBAL",1)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 227 // from:
  SAY #47329 /* ~Anna wskazuje na drzwi przed tobą. "Za nimi chcemy siem znaleźć."~ */
  IF ~~ THEN REPLY #47330 /* ~"W porządku, wejdźmy do środka."~ */ DO ~SetGlobal("Annah_AR0400_Cut_Scene","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #47849 /* ~"Tia... wysmarowano je zbzikowanymi farbami od Wygłodzonych Psów, o tak - to prawdziwe drzwi, dopóki na nie nie spojrzysz. Wtedy zmieniajom siem w obraz."~ */
  IF ~~ THEN REPLY #47850 /* ~"Jak tego dokonali?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #47851 /* ~Anna wzrusza ramionami. "Som dziwniejsze rzeczy w Sferach." Nagle się marszczy. "Mógłbyś równie dobrze spytać siem, jak wydostałeś siem z ksiengi umarłych, po tym jak byłam PEWNA, żeś trup."~ */
  IF ~~ THEN REPLY #47852 /* ~"A więc te drzwi... po prostu nie patrzę? I *wtedy* je otwieram?"~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #47853 /* ~Anna patrzy na drzwi, po czym przytakuje. "Taki jest tego cień, jeśli śpiewka mówi prawdę."~ */
  IF ~~ THEN REPLY #47854 /* ~"Zatem w porządku... uczynię tak, jak mówisz. Tylko..."~ */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #47855 /* ~"Chwila!" Anna zatrzymuje cię, zanim sięgasz po drzwi. "To jedyna droga, którom znam, by dostać siem do miejsca, gdzie znalazłam twoje ciało, ale nie jest ona najbezpieczniejsza, tia? Na pewno żeś gotów? Nie chcem być tutaj od myślenia, nieważne, co ten stary spazmatyk twierdzi."~ */
  IF ~~ THEN REPLY #47856 /* ~"Co jest takiego groźnego za tymi drzwiami?"~ */ GOTO 232
  IF ~~ THEN REPLY #47857 /* ~"Nie sądzę, abyś potrzebowała się o mnie martwić - po prostu stań za mną. A teraz pozwól mi otworzyć te drzwi."~ */ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47858 /* ~"Muszę zdobyć trochę broni i odpocząć nieco, zanim wejdziemy do środka."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #47859 /* ~"Chaosyci," Szepce Anna. "Zbzikowani, jak tylko można. Szczekają szaleńczo w dzień i w nocy, gotowi albo pomalować ciem farbami, albo rozbić głowe donicom. Niebezpieczne krwawniki, o tak."~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47860 /* ~"Nie ma się czym martwić - należę do ich frakcji."~ */ GOTO 233
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47861 /* ~"Jeśli są tak niebezpieczni, to w jaki sposób ty się przedostałaś?"~ */ GOTO 234
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47862 /* ~"Nie sądzę, abyś potrzebowała się o mnie martwić - po prostu stań za mną. A teraz pozwól mi otworzyć te drzwi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~  !Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #47863 /* ~"Hmm. W takim razie, zaopatrzymy się odpowiednio i wrócimy tu później."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #47864 /* ~"Och, wienc myślisz, że wszyscy Chaosyci som dla siebie przyjaźni?" Parska. "Zatem *JESTEŚ* wystarczajonco zbzikowany, by być jednym z nich."~ */
  IF ~~ THEN REPLY #47865 /* ~"Jeśli są tak niebezpieczni, to w jaki sposób ty się przedostałaś?"~ */ GOTO 234
  IF ~~ THEN REPLY #47866 /* ~"Nie sądzę, abyś potrzebowała się o mnie martwić - po prostu stań za mną. A teraz pozwól mi otworzyć te drzwi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47867 /* ~"Hmm. W takim razie, zaopatrzymy się odpowiednio i wrócimy tu później."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 232.1 233.0
  SAY #47868 /* ~"Wkradałam siem do środka miło i cicho. Nie mogom ciem zamalować ani zabić, skoro ciem nie WIDZOM." Ogląda cię od góry do dołu. "Z tobom to nie wyjdzie. Wyglondasz dość nieporadnie, o tak."~ */
  IF ~~ THEN REPLY #47869 /* ~"Po prostu stań za mną. A teraz pozwól mi otworzyć te drzwi..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DPAIDOOR~ 1
  IF ~~ THEN REPLY #47870 /* ~"Hmm. W takim razie, zaopatrzymy się odpowiednio i wrócimy tu później."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from:
  SAY #50111 /* ~"Ech..." Anna patrzy na ciebie dziwnie. "To jest dabus, o tak."~ */
  IF ~~ THEN REPLY #50112 /* ~"Co to jest 'dabus'?"~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #50113 /* ~Głos Anny opada. "Dabus to jeden z *Jej* rodzaju - zajmujom siem oni miastem, naprawiajonc je, niszczonc i odbudowujonc ponownie i takie tam. Mówiom symbolami-zagadkami w powietrzu - musisz je złożyć razem, by odgadnonć śpiewke." Anna wygląda na zirytowaną. "Przyprawiajom o ból głowy, oj tak."~ */
  IF ~~ THEN REPLY #50114 /* ~"'Jej' rodzaju? Czyjego?"~ */ GOTO 237
  IF ~~ THEN REPLY #50302 /* ~"Rozumiem."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #50115 /* ~"Pani Bólu." Anna w powietrzu przed sobą kreśli półkole. "Oni dla niej pracujom, a ona ich ochrania. Nie przeszkadzaj im, albo ściongniesz na siebie jej wzrok."~ */
  IF ~~ THEN REPLY #50116 /* ~"Czy możesz powiedzieć mi coś o Pani Bólu?"~ */ GOTO 238
  IF ~~ THEN REPLY #50301 /* ~"Rozumiem."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #50117 /* ~"Pssst!" Anna przeciąga palcem po gardle. "Nie trzenś o niej trumnom. Ona ma *wszendzie* uszy, tak, wienc nie wypowiadaj zbyt czensto jej imienia, tia?"~ */
  IF ~~ THEN REPLY #50118 /* ~"Ach."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50300 /* ~"Dobrze już, dobrze."~ */ EXTERN ~DADABUS~ 2
END

IF ~~ THEN BEGIN 239 // from:
  SAY #50153 /* ~"Powiedział, że jest jednym z dabusów." Wzrusza ramionami. "Oni nie majom imion."~ */
  IF ~~ THEN REPLY #50154 /* ~"Czy możesz jeszcze go o coś spytać?"~ */ GOTO 240
  IF ~~ THEN REPLY #50235 /* ~"To wszystko, co chciałem wiedzieć. Wynośmy się stąd."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 240 // from: 239.0 243.0 244.1 245.1 247.1 248.0 248.2
  SAY #50155 /* ~Anna przytakuje. Dabus dalej wpatruje się w waszą dwójkę z założonymi rękami ukrytymi w rękawach.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50156 /* ~"Spytaj go, kim jest."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50157 /* ~"Spytaj go, kim jest."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50213 /* ~"Spytaj go, kim jest."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50214 /* ~"Spytaj go, czym się zajmuje."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50215 /* ~"Spytaj go, czym się zajmuje."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50216 /* ~"Spytaj go, czym się zajmuje."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50217 /* ~"Poproś go, aby opowiedział nam o Pani Bólu."~ */ GOTO 244
  IF ~~ THEN REPLY #50229 /* ~"Poproś go, aby opowiedział nam o Upadłym."~ */ GOTO 247
  IF ~~ THEN REPLY #50234 /* ~"Nieważne. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 241 // from:
  SAY #50161 /* ~"Powiedział, że jest jednym z dabusów." Wzrusza ramionami. "Oni nie majom imion."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 490
END

IF ~~ THEN BEGIN 242 // from:
  SAY #50163 /* ~"Cóż, ten nie podał swego imienia, czyż *nie*, czaszko?!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 491
END

IF ~~ THEN BEGIN 243 // from:
  SAY #50185 /* ~Wzrusza ramionami. "Mówi, że wykonuje swojom prace. Wiesz, dbanie o miasto i takie tam."~ */
  IF ~~ THEN REPLY #50186 /* ~"Czy możesz jeszcze go o coś spytać?"~ */ GOTO 240
  IF ~~ THEN REPLY #50187 /* ~"To wszystko, co chciałem wiedzieć. Wynośmy się stąd."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 244 // from: 240.6
  SAY #50218 /* ~Anna potrząsa głową. "Nie, nie chcem wchodzić razem z tobom w cień Pani, tak siem składa. Rozmawiajonc z nimi tylko sciongniesz na siebie jej wzrok."~ */
  IF ~~ THEN REPLY #50219 /* ~"Słuchaj, po prostu spytaj go o Panią, dobra?"~ */ GOTO 245
  IF ~~ THEN REPLY #50227 /* ~"W porządku. Czy możesz zadać mu ode mnie jeszcze jedno pytanie?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50228 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 245 // from: 244.0 247.0
  SAY #50220 /* ~Anna potrząsa głową. "Nie, nie uczyniem tego."~ */
  IF ~~ THEN REPLY #50221 /* ~"Słuchaj *zrób* to. Ostrzegam cię."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 246
  IF ~~ THEN REPLY #50225 /* ~"W porządku. Czy możesz zadać mu ode mnie jeszcze jedno pytanie?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 240
  IF ~~ THEN REPLY #50226 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #50222 /* ~Anna krzyżuje ręce i zaczyna machać ogonem tam i z powrotem.~ */
  IF ~~ THEN REPLY #50223 /* ~"Pozwól zatem mi spróbować..."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50224 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 247 // from: 240.7
  SAY #50230 /* ~"Nie, nie bendem pytać ich o Upadłego, o nie. To zła krew, a nikomu szczenścia nie przynosi mówienie o takich."~ */
  IF ~~ THEN REPLY #50231 /* ~"Słuchaj, po prostu *zadaj* to cholerne pytanie, dobrze?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 245
  IF ~~ THEN REPLY #50232 /* ~"Czy możesz zadać mu ode mnie jeszcze jedno pytanie?"~ */ GOTO 240
  IF ~~ THEN REPLY #50233 /* ~"Zapomnij o tym. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 248 // from:
  SAY #50275 /* ~Milknie na chwilę. "Tia... mogie."~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50276 /* ~"Zrobisz to?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50277 /* ~"Zrobisz to?"~ */ GOTO 249
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #50281 /* ~"Zatem to zrób."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 240
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #50282 /* ~"Zatem to zrób."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 249
  IF ~~ THEN REPLY #50283 /* ~"Nieważne. Po prostu odejdźmy."~ */ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.3
  SAY #50278 /* ~Anna potrząsa głową. "Nie, nie chcem wchodzić razem z tobom w cień Pani, tak siem składa. Nie przedłużajmy, tia? Rozmawiajonc z nimi nic siem nie dowiesz, a tylko sciongniesz na siebie jej wzrok."~ */
  IF ~~ THEN REPLY #50279 /* ~"Rozumiem."~ */ EXTERN ~DADABUS~ 2
  IF ~~ THEN REPLY #50280 /* ~"Nieważne. Po prostu odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 250 // from:
  SAY #50702 /* ~"Czyś szpicowanie *zbzikował*, skurlu? Moce nad i pod nami, obyś tylko kiepsko żartował, albo przysiengam, że uczyniem co w mej mocy, by ciem położyć *na dobre*, o tak!"~ */
  IF ~~ THEN REPLY #50703 /* ~"Mówię poważnie. Czy kupisz ją, Vrisziko?"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
SetGlobal("Sell_Annah","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #50704 /* ~"Żartowałem. Mam jeszcze jedno pytanie, Vrisziko..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50705 /* ~"Masz rację... to był kiepski żart, Anno. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #52530 /* ~Anna nie odpowiada - sama obecność Raveli zdaje się ją uciszać. Jej ogon przestał się poruszać, a wzrok stracił zacięcie.~ */
  IF ~~ THEN REPLY #52531 /* ~"Dość tego, Ravelo. Jakie masz inne pytania?"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 252 // from:
  SAY #52533 /* ~Anna zdaje się być sparaliżowana, jej oczy rozszerzają się, gdy Ravela zwraca swój mroczny wzrok na nią. Widzisz, jak drży, a jej serce bije szybko.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 39
END

IF ~~ THEN BEGIN 253 // from:
  SAY #52534 /* ~"Tia, życie może go połkneło, ale nie wyszedł on *z tej* strony, wienc nie..."~ */
  IF ~~ THEN REPLY #52535 /* ~"Dość tego - słuchaj, Ravelo, zabrałaś mi moją śmiertelność i więcej to uczyniło szkód niż pożytku. Odbiorę ją teraz - wydaje mi się, że miałaś ją zbyt długo."~ */ EXTERN ~DRAVEL~ 126
END

IF ~~ THEN BEGIN 254 // from:
  SAY #52536 /* ~"*Kochałaś* go!" Anna przerywa ciszę - jej głos jest pełen zdziwienia. "*Kochałaś* go, o tak!"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 129
END

IF ~~ THEN BEGIN 255 // from:
  SAY #52537 /* ~Anna zdaje się być sparaliżowana, jej oczy rozszerzają się, gdy Ravela zwraca swój mroczny wzrok na nią. Widzisz, jak drży, a jej serce bije szybko.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 91
END

IF ~~ THEN BEGIN 256 // from:
  SAY #52639 /* ~"Nie wiem." Anna wpatruje się w twarz z niewiarą, ręce nerwowo sięgają do sztyletów. "Ale wole odejść, zanim siem dowiem, tia?"~ */
  IF ~~ THEN REPLY #52773 /* ~"Jeszcze nie. Jest coś..."~ */ EXTERN ~DPREGAL~ 1
END

IF ~~ THEN BEGIN 257 // from:
  SAY #52640 /* ~"Sondzem, że to oznacza dabusa. Oni zawsze naprawiajom rzeczy."~ */
  IF ~~ THEN REPLY #52772 /* ~"Rozumiem."~ */ EXTERN ~DPREGAL~ 9
END

IF ~~ THEN BEGIN 258 // from:
  SAY #52641 /* ~"Uch, to musi już być w 'drodze'."~ */
  IF ~~ THEN REPLY #52768 /* ~"O czym ty mówisz?"~ */ GOTO 259
END

IF ~~ THEN BEGIN 259 // from: 258.0
  SAY #52642 /* ~"Sądzę, że ona jest w ciąży."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #52769 /* ~"Och."~ */ EXTERN ~DPREGAL~ 10
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52770 /* ~"Och."~ */ EXTERN ~DMORTE~ 510
END

IF ~~ THEN BEGIN 260 // from:
  SAY #52988 /* ~Anna przygląda ci się, przerażona. Wygląda, jakby chciała podejść do przodu, pomóc ci, ale jest sparaliżowana. "Czy... wszystko w porzondku...?"~ */
  IF ~~ THEN REPLY #52989 /* ~"Tak... tak... Potrzbuję tylko chwili..."~ */ GOTO 261
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #52990 /* ~Anna milczy, wpatruje się w ciebie, zahipnotyzowana. Twoja krew skapuje na podłogę, każda łza zmienia się w karmazynowy krąg, gdy uderza w posadzkę sensorium. "Co zobaczyłeś... co zobaczyłeś w tym biesim kamieniu?"~ */
  IF ~~ THEN REPLY #52991 /* ~"Tęsknotę..."~ */ GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #52992 /* ~Anna marszczy się, jest zmieszana, po czym ostrym wzrokiem wpatruje się w kamień doznań, jakby myślała o zmiażdżeniu go. "Tia? Ja tensknie, aby *zniszczyć* ten kamień, o tak, by go rozedrzeć na strzempy!"~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52993 /* ~"Nie... nie, po prostu potrzebuję chwili, Anno. Wszystko będzie dobrze..."~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52996 /* ~"Nie... nie, po prostu potrzebuję chwili, Anno. Wszystko będzie dobrze..."~ */ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 263 // from:
  SAY #53933 /* ~"Tata! Co ty tu robisz?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 7
END

IF ~~ THEN BEGIN 264 // from:
  SAY #53974 /* ~Anna wpatruje się w słup, oczy ma zwężone, pięści zaciśnięte, a ogon sztywny. Mieszanina furii i bólu maluje się na jej drżącej twarzy.~ */
  IF ~~ THEN REPLY #53975 /* ~"Anno... czy wszystko w porządku?"~ */ GOTO 265
  IF ~~ THEN REPLY #53976 /* ~Prawda: "Chciałbym być w stanie mu pomóc, Anno. To prawdziwa tragedia."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pillar_1","GLOBALGood",1)
~ GOTO 265
  IF ~~ THEN REPLY #53977 /* ~Prawda: "To smutne, Anno, ale zasłużył sobie na taki los. Postaraj się nie cierpieć specjalnie z tego powodu."~ */ GOTO 265
  IF ~~ THEN REPLY #53978 /* ~Prawda: "Cieszę się, że ten drań tu jest - i 'ojciec', czy nie, ty też powinnaś, Anno."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_1","GLOBALGood",-1)
~ GOTO 265
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #53979 /* ~Nic nie mów.~ */ EXTERN ~DGRACE~ 171
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #53980 /* ~Nic nie mów.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1 264.2 264.3
  SAY #53982 /* ~Anna uśmiecha się półgębkiem, spluwa i odwraca od góry gnijących głów. Wzrusza ramionami, ale nie patrzy się na ciebie. "Nieważne."~ */
  IF ~~ THEN REPLY #54056 /* ~"Czy kochałaś Faroda, Anno?"~ */ GOTO 266
  IF ~~ THEN REPLY #54057 /* ~Nic nie mów.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 266 // from: 265.0 268.0
  SAY #54040 /* ~Anna odwraca się, jej oczy płoną. "On był moim *tatom*." Odsłania zęby. "*Nienawidziłam* go. Widział we mnie tylko sposób na zebranie wienkszej ilości ciał, wiencej brzdenku i wiencej śmiecia, by wypełnić swój skarbiec. 'Droga Anno', 'Anno, dziewczynko, jesteś najcenniejszom rzeczom w moim skarbcu' kłamał. I kłamał. I miał słaby umysł oraz słabe ciało. I śmierdział zgniliznom trupów i miał uczucia sempa żywioncego siem ciałami."~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY #54047 /* ~Głos Anny zniża się, ale ogień w jej oczach płonie jaśniej. "I był jedynym, który kiedykolwiek okazał mi odrobine grzeczności. Czy to żeś *chciał* usłyszeć, tak? Jesteś teraz *zadowolony*, tia?"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 268 // from:
  SAY #54050 /* ~Anna uśmiecha się półgębkiem, spluwa i odwraca od góry gnijących głów. Wzrusza ramionami, ale nie patrzy się ani na Sławę, ani na ciebie. "Nieważne."~ */
  IF ~~ THEN REPLY #54058 /* ~"Czy kochałaś Faroda, Anno?"~ */ GOTO 266
  IF ~~ THEN REPLY #54059 /* ~Nic nie mów.~ */ EXTERN ~DPILLAR~ 8
END

IF ~~ THEN BEGIN 269 // from:
  SAY #54051 /* ~"Masz na myśli *kłamstwa*!" syczy Anna.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 517
END

IF ~~ THEN BEGIN 270 // from:
  SAY #54052 /* ~"Coś, ty idiota?! To czachy tych, których kłamstwa spowodowały śmierć jakiegoś trepa. Mogom odpowiedzieć na prawie każde pytanie - ale bendom chcieć szpicowanie *dużo* za swoje odpowiedzi, o tak. Nie pytaj ich o takie rzeczy!"~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 271 // from:
  SAY #54062 /* ~"Może mnie *wzionć*, tak?! Nie sondze, ty szpicowany idioto! Co ty sobie myślisz, tak krzyczonc, co?" Nagle milknie, a jej oczy zwężają się, gdy na ciebie patrzy. "Na cień Pani, lepiej rzeknij, że nie było to poważnie... bo jeśli nie, to tak mi dopomóż, sama tobą go nakarmie, o tak..."~ */
  IF ~~ THEN REPLY #54063 /* ~Prawda: "Mówiłem poważnie. Wchodź tam, Anno, albo sam cię tam wepchnę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_4","GLOBALGood",-1)
SetGlobal("Pillar_Question","AR1001",0)
LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #54064 /* ~"Nie mówiłem poważnie. Słupie: w porządku. Jakie *inne* dary przyjmiesz?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54065 /* ~"*Oczywiście*, że żartowałem. Chodźmy."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54066 /* ~"*Oczywiście*, że żartowałem. Chodźmy."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY #54129 /* ~"Ja..." Anna drży, gdy kolejna fala zimna wydostaje się z portalu. "Tia, pójdem z tobom... poza tym straciłbyś głowe, gdyby nie była przyczepiona. Bendziesz potrzebował kogoś, kto pomyśli, oj tak."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54130 /* ~"Możliwe. Dak'konie? Jesteś ze mną?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54131 /* ~"Możliwe. Dak'konie? Jesteś ze mną?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54132 /* ~"Możliwe. Morte? Jesteś ze mną?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54133 /* ~"Możliwe. Morte? Jesteś ze mną?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54134 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54135 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54136 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 273 // from:
  SAY #54137 /* ~"Ja..." Anna patrzy na Nie-Sławę, po czym zwraca się do ciebie z ogniem w oczach. "Jeśli *ona* idzie, to ja też. Nie zostawiem cie teraz, o nie."~ */
  IF ~  NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54138 /* ~"Bardzo dobrze. Dak'konie? Jesteś ze mną?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54139 /* ~"Bardzo dobrze. Dak'konie? Jesteś ze mną?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54140 /* ~"Bardzo dobrze. Morte? Jesteś ze mną?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54141 /* ~"Bardzo dobrze. Morte? Jesteś ze mną?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54142 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54143 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54144 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 274 // from:
  SAY #56678 /* ~Oczy Anny zwężają się. "Lepiej siem na mnie nie patrz swoim ślepym okiem, duchu! Nie bendem siem z tobom zadawać, o nie."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 94
END

IF ~~ THEN BEGIN 275 // from:
  SAY #56679 /* ~Gdy oczy Vhailora padają na Annę, ona odskakuje, jak oparzona. "Nie, duszo, żaden w tym twój interes, abyś mnie pytał, o nie."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 95
END

IF ~~ THEN BEGIN 276 // from:
  SAY #56680 /* ~"Tia? A cóż to za sprawiedliwość?! Twoja sprawiedliwość to nie MOJA sprawiedliwość - jest ona równie pusta, jak twa zbroja! Ty tworzysz WŁASNOM sprawiedliwość, którom ślepo ignorujesz, gdy przychodzi ci sondzić samego siebie!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 96
END

IF ~~ THEN BEGIN 277 // from:
  SAY #56681 /* ~"Ach, tia? Cóż, ty i twoi *Łaskobójcy* zwiesili wielu moich przyjaciół z bezlistnego drzewa w imie sprawiedliwości, gdy żeście mieli na to ochote! Obyś spłonoł w ogniach Baator, przeklenta na wpół martwa istoto, a Moce olały ciem całego! Oby twa zbroja wpadła do pieców Kuźni i stopiła siem tak, by żadna płyta siem nie ostała!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 97
END

IF ~~ THEN BEGIN 278 // from:
  SAY #56682 /* ~Anna wygląda na zdesperowaną. "Nie. A teraz mnie zostaw, przeklenty!"~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 98
END

IF ~~ THEN BEGIN 279 // from:
  SAY #57162 /* ~Anna wywraca oczami i wydaje z siebie kwaśne *hmpf*.~ */
  IF ~~ THEN REPLY #57163 /* ~"Żegnaj."~ */ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 280 // from:
  SAY #57164 /* ~Anna szydzi. "Tsk! Czemu nie położysz się z nią *teraz*, tu, na ulicy, tia?"~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DJAS~ 7
END

IF ~~ THEN BEGIN 281 // from:
  SAY #61416 /* ~Anna jeży się, gdy masz odejść z kobietą. "Co ty sobie *myślisz*, jembecylu!" Wpada na kurtyzanę, wyciągając sztylety. "Precz, ty bezwstydna ladacznico!"~ */
  IF ~~ THEN REPLY #61425 /* ~"Hej! Uspokój się, Anno!"~ */ GOTO 282
  IF ~~ THEN REPLY #61427 /* ~"Odłóż te przeklęte ostrza!"~ */ GOTO 282
  IF ~~ THEN REPLY #61428 /* ~Obserwuj, co się stanie.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Harlot_1","GLOBALGood",-1)
~ GOTO 285
END

IF ~~ THEN BEGIN 282 // from: 281.0 281.1
  SAY #61417 /* ~Odwraca się w twoją stronę. "A ty, ty skurlony szpicu - najlepiej przestań siem mieszać, bo ci skrócem pniaka, tia?"~ */
  IF ~~ THEN REPLY #61429 /* ~"'Skrócisz mi pniaka?' Czy mam za to zapłacić?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Harlot_1","GLOBALLaw",-1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61430 /* ~"Przestań grozić tej kobiecie albo ja skrócę *twój* ogon, jasne?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61431 /* ~"Nie prosiłem o twoją opinię, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 283
  IF ~~ THEN REPLY #61432 /* ~"Dobrze, dobrze... uspokój się."~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 282.1 282.2 282.3
  SAY #61418 /* ~Anna trochę się uspokaja, ale jej ogon wciąż uderza tam i z powrotem. "Lepiej na siem uważaj, jeśli nie chcesz przestać oddychać i pozostać w całości."~ */
  IF ~~ THEN REPLY #61433 /* ~"Przestań mi *grozić*, Anno. To ty tutaj masz tylko jedno życie, rozumiesz?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61434 /* ~"Nie prosiłem o twoją opinię, Anno."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 284
  IF ~~ THEN REPLY #61435 /* ~"Dobrze, dobrze... uspokój się. Bo twoja biesia krew się wygotuje."~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 282.0 283.0 283.1 283.2
  SAY #61419 /* ~Anna czyni swoim ogonem gest... najwyraźniej obraźliwy.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 285 // from: 281.2
  SAY #61420 /* ~Anna rusza w stronę kobiety. Wygląda na to, że chce ją zabić.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 6
END

IF ~~ THEN BEGIN 286 // from:
  SAY #61421 /* ~Anna waha się, mrucząc: "Szpicowani twardogłowi..." Chowa ostrza do pochew, krzyżuje ramiona i zadowala się jadowitymi spojrzeniami skierowanymi w stronę twoją i kurtyzany.~ */
  IF ~~ THEN EXTERN ~DUCHO~ 5
END

IF ~~ THEN BEGIN 287 // from:
  SAY #61664 /* ~"Pilnuj swego nosa, sukkubie. Nie mam ci nic do powiedzenia."~ [ANA626A] */
  IF ~~ THEN EXTERN ~BGRACE~ 10
END

IF ~~ THEN BEGIN 288 // from:
  SAY #61665 /* ~"Nie mam ci nic do powiedzenia, sukkubie."~ [ANA625A] */
  IF ~~ THEN EXTERN ~BGRACE~ 12
END

IF ~~ THEN BEGIN 289 // from:
  SAY #61762 /* ~"Ano, stało by się... ale tobie."~ [ANA571B] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 290 // from:
  SAY #61763 /* ~"Jeśli przestaniesz kłapać jadaczką, ja przestanę machać ogonem."~ [ANA569A] */
  IF ~~ THEN EXTERN ~BMORTE~ 2
END

IF ~~ THEN BEGIN 291 // from:
  SAY #61764 /* ~"Ano, może... prosto do twego czerepu, wyrwać ci mózg."~ [ANA572C] */
  IF ~~ THEN EXTERN ~BMORTE~ 4
END

IF ~~ THEN BEGIN 292 // from:
  SAY #61765 /* ~"Akcent? O co ci chodzi?"~ [ANA614B] */
  IF ~~ THEN EXTERN ~BMORTE~ 6
END

IF ~~ THEN BEGIN 293 // from:
  SAY #61766 /* ~"Opowieść o tym jak PRÓBUJESZ mi usiąść na kolanach byłaby naprawdę wspaniała. I tragiczna."~ [ANA570C] */
  IF ~~ THEN EXTERN ~BMORTE~ 8
END

IF ~~ THEN BEGIN 294 // from:
  SAY #61767 /* ~"Nie, tylko dla ciebie."~ [ANA573A] */
  IF ~~ THEN DO ~IncrementGlobal("Morte_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from:
  SAY #61768 /* ~"Jeszcze raz odgrywaj przy mnie takiego mądralę, to ci wsadzę łeb do rzyci."~ [ANA611A] */
  IF ~~ THEN EXTERN ~BMORTE~ 11
END

IF ~~ THEN BEGIN 296 // from:
  SAY #61769 /* ~"Na wszystkie Moce, czaszko, czy nie męczy cię ciągłe słuchanie swojego jazgotu?"~ [ANA619] */
  IF ~~ THEN EXTERN ~BMORTE~ 13
END

IF ~~ THEN BEGIN 297 // from:
  SAY #61770 /* ~"Gdybyś nie był sobą cały czas, to może by była z ciebie fajna czaszka."~ [ANA610A] */
  IF ~~ THEN EXTERN ~BMORTE~ 15
END

IF ~~ THEN BEGIN 298 // from:
  SAY #61771 /* ~"Zamknij jadaczke, czaszko! Nie wypowiadaj jej imienia nadaremno!"~ [ANA622B] */
  IF ~~ THEN EXTERN ~BMORTE~ 17
END

IF ~~ THEN BEGIN 299 // from:
  SAY #61772 /* ~"Czy chcesz, żebyśmy skończyli w kawałkach?! Nie wolno tak kusić losu, czaszko!"~ [ANA622CA] */
  IF ~~ THEN EXTERN ~BMORTE~ 18
END

IF ~~ THEN BEGIN 300 // from:
  SAY #61773 /* ~"Na twoim miejscu, nauczyłabym siem zamykać jadaczke."~ [ANA616B] */
  IF ~~ THEN EXTERN ~BMORTE~ 20
END

IF ~~ THEN BEGIN 301 // from:
  SAY #61774 /* ~"Na twoim miejscu bym przestała."~ [ANA617A] */
  IF ~~ THEN EXTERN ~BMORTE~ 22
END

IF ~~ THEN BEGIN 302 // from:
  SAY #61775 /* ~"Pewnego dnia bendziesz sie szczerzył nabity na koniec piki... i to bendzie twoje najmniejsze zmartwienie, gdy już z tobom skończe."~ [ANA607C] */
  IF ~~ THEN EXTERN ~BMORTE~ 23
END

IF ~~ THEN BEGIN 303 // from:
  SAY #61776 /* ~"Dobrze ci tak, czaszko. Ty i tak wystarczajonco drażnisz całom reszte."~ [ANA624A] */
  IF ~~ THEN EXTERN ~BMORTE~ 25
END

IF ~~ THEN BEGIN 304 // from:
  SAY #61777 /* ~"Jenzyk czensto sprawia, że łamie sie nos jego właściciela, czaszko."~ [ANA618A] */
  IF ~~ THEN EXTERN ~BMORTE~ 27
END

IF ~~ THEN BEGIN 305 // from:
  SAY #61778 /* ~"*Nigdy* mu nie powiem co czujem. Ani ty nie bendziesz z nim o tym gadać. On ma na sobie pientno i nie zawrócem go z jego ścieżki. Słyszysz mnie, czaszko?"~ [ANA621B] */
  IF ~~ THEN EXTERN ~BMORTE~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY #61779 /* ~"Pozwala oddychać mojej skórze, ty jembecylu."~ [ANA620B] */
  IF ~~ THEN EXTERN ~BMORTE~ 31
END

IF ~~ THEN BEGIN 307 // from:
  SAY #61780 /* ~"Idź się skurlić z aoskańskim ogarem!"~ [ANA588A] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #62891 /* ~"Ona jest jednym z biesów, jednym z sukkubów, o tia. Obejrzy ciem, po czym zabierze twom dusze do Sfer Niższych, o tia."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 213
END

IF ~~ THEN BEGIN 309 // from:
  SAY #63485 /* ~TBD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #63693 /* ~"Nie, drapiem se nim po plecach, ty skurlone pudło!"~ [ANA565A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 23
END

IF ~~ THEN BEGIN 311 // from:
  SAY #63694 /* ~::Westchnienie::~ [ANA565BC] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 312 // from:
  SAY #63695 /* ~"A co *to* za durne pytanie, ty szpicowane pudło?!"~ [ANA566C] */
  IF ~~ THEN EXTERN ~BNORDOM~ 25
END

IF ~~ THEN BEGIN 313 // from:
  SAY #63696 /* ~"*CO?!*"~ [ANA567E] */
  IF ~~ THEN EXTERN ~DMORTE~ 643
END

IF ~~ THEN BEGIN 314 // from:
  SAY #63859 /* ~"Zostaw go juże w spokoju, nie znasz go!"~ [ANA568C] */
  IF ~~ THEN EXTERN ~BVHAILOR~ 3
END

IF ~~ THEN BEGIN 315 // from:
  SAY #64221 /* ~::Marszczy się na Mortego::~ */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 187.15 477.15
  SAY #67053 /* ~Słysząc jej imię, Anna spluwa trzy razy i zatacza dłonią półokrąg nad sercem. "Pssst! Czyś *głupi*?! Nie wymieniaj *jej* imienia, jeśli ci życie miłe!"~ */
  IF ~~ THEN REPLY #67055 /* ~"Dlaczego?"~ */ GOTO 317
  IF ~~ THEN REPLY #67054 /* ~"Zatem nieważne. Mam jeszcze inne pytania..."~ */ GOTO 477
  IF ~~ THEN REPLY #67056 /* ~"W takim razie zapomnij, że pytałem. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #67057 /* ~"To najbardziej zła z Szarych Sióstr, o tia." Głos Anny opada prawie do szeptu, jakby obawiała się, że zostanie podsłuchana. "Bardzo podstempna i wiencej ma mocy do rozdania niż niektóre Moce. Mówi siem, że cała jest cierniem - nawet *serce*. Mówi siem, że NIGDY nie można jej zabić, bo jej ciało jest jak drzewo - odetniesz jednom kończyne, a inne zawsze rosnom gdzieś *indziej* na Sferach."~ */
  IF ~~ THEN REPLY #67058 /* ~"Mówisz, jakby ona wciąż była żywa."~ */ GOTO 318
  IF ~~ THEN REPLY #67059 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67060 /* ~"W takim razie zapomnij, że pytałem. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 317.0
  SAY #67061 /* ~"Oczywiście, że jest. *Musi* być." Głos Anny znowu opada. "Jak można by *zabić* takom istote jak ona? To dlatego Pani musiała jom WYGNAĆ w Labirynty, tak mówiom."~ */
  IF ~~ THEN REPLY #67062 /* ~"Hmmm. Mam jeszcze kila pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67063 /* ~"Rozumiem. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 187.16 477.16
  SAY #67064 /* ~"Czenść tej wiedźmy? Ni, nie wiem, gdzie można by znaleźć cóś takiego." Anna zastanawia się przez chwilę, machając ogonem tam i z powrotem, po czym uśmiecha się pod nosem. "Oczywiście, pewnie zostawiła wystarczajonco dużo swego nasienia rozrzuconego po Sferach, że może uda siem poprosić któreś z nich."~ */
  IF ~~ THEN REPLY #67065 /* ~"'Nasienia?' Co masz na myśli?"~ */ JOURNAL #67068 /* ~Anna oznajmiła mi, że Ravela pozostawiła za sobą pośród Sfer jakieś żeńskie potomstwo, z tym, że nie wiadomo, czy chodzi o jedną córkę czy kilka. Ciekawe, czy będę mógł odnaleźć chociaż jedną córę Raveli... Może ktoś taki będzie wiedział, jak dotrzeć do jej labiryntu? Inna sprawa, że nie mam pojęcia od czego zacząć poszukiwania latorośli Raveli.~ */ GOTO 320
  IF ~~ THEN REPLY #67066 /* ~"Zatem nieważne. Mam jeszcze inne pytania..."~ */ GOTO 477
  IF ~~ THEN REPLY #67067 /* ~"W takim razie zapomnij, że pytałem. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #67069 /* ~"Nasienie, potomków, swoje małe - stara Ravela ponoć miała wiele córek, tak mówiom bajarze - albo tylko jednom, w zależności od tego, którego bajarza słuchać - i czy pijom bełty, gdy z nimi rozmawiasz." Głos Anny ponownie opada. "Ravela porodziła je z jakiegoś *biesa*, tak mówiom opowieści."~ */
  IF ~~ THEN REPLY #67070 /* ~"Czy sądzisz, że jedna z tych córek wciąż może gdzieś tu być? Może ona wie coś o tym, jak można odnaleźć Ravelę?"~ */ GOTO 321
  IF ~~ THEN REPLY #67071 /* ~"Interesujące. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67072 /* ~"Rozumiem. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #67073 /* ~Anna wzrusza ramionami. "Nie wiem. Z pewnościom ja nie chciałabym *odnaleźć* żadnej z nich. Jeśli som choć w połowie tak złe, jak ona..."~ */
  IF ~~ THEN REPLY #67074 /* ~"Zatem nieważne. Mam jeszcze inne pytania..."~ */ GOTO 477
  IF ~~ THEN REPLY #67075 /* ~"Może zatem poszukam jednej z nich. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 187.10 477.10
  SAY #67076 /* ~"Hem?" Marszczy się. "O co ci chodzi?"~ */
  IF ~  Class(Protagonist,FIGHTER)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67077 /* ~"Chcę porzucić na chwilę walkę i zająć się cichszymi sprawami."~ */ GOTO 325
  IF ~  Class(Protagonist,MAGE)
Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #67078 /* ~"Chcę na chwilę odłożyć Sztukę na półkę i spróbować swoich sił w cichszych sprawach."~ */ GOTO 325
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67079 /* ~"Chcę odłożyć na chwilę walkę i powrócić do złodziejskiego fachu. Możesz mnie uczyć?"~ */ GOTO 323
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #67080 /* ~"Chciałbym na chwilę odłożyć Sztukę na półkę i powrócić do złodziejskiego fachu. Możesz mnie uczyć?"~ */ GOTO 323
  IF ~  Class(Protagonist,THIEF)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67081 /* ~"Czy możesz nauczyć mnie więcej o skradaniu się i złodziejstwie?"~ */ GOTO 348
  IF ~~ THEN REPLY #67082 /* ~"Zapomnij. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67083 /* ~"Nieważne, Anno. Chodźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.2 322.3
  SAY #67085 /* ~Rzuca ci sceptyczne spojrzenie, po czym wywraca oczami. "Tia, mogie... ale do tego bendziesz musiał zatrzasnonć swojom pułapke i mnie posłuchać... i robić to co ja, kape?" Ogląda cię od góry do dołu. "Pierwsza rzecz, jakom bendziesz musiał uczynić, to zmienić swojom postawe, koniec z tym wypinaniem bioder i chodzeniem z pniakiem do przodu, co zdajesz siem tak lubić..."~ */
  IF ~~ THEN REPLY #67086 /* ~"W porządku..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0 344.0
  SAY #67087 /* ~Anna poprawia ci każdy krok. Po krótkiej chwili cofa się i kiwa głową. Zdaje się być pod wrażeniem. "Tia, złapałeś, o co chodzi. Szybko chwytasz."~ */
  IF ~~ THEN REPLY #67088 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67089 /* ~"Dzięki. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 322.0 322.1
  SAY #67090 /* ~Ogląda cię od stóp do głów - raz - po czym patrzy na ciebie z dziwnym wyrazem twarzy. "Czy mówisz *poważnie*?"~ */
  IF ~~ THEN REPLY #67091 /* ~"Tak, chcę nauczyć się, jak być złodziejem. Nauczysz mnie?"~ */ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #67092 /* ~Przygląda ci się przez chwilę, po czym potrząsa głową. "Nie, jesteś zbyt *powolny* - ruszasz siem jak worek kamieni." Marszczy się. "Musisz być szybszy w nogach i szybciej uderzać, żebym ciem miała *czegokolwiek* nauczyć."~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #67093 /* ~Schwyć ją szybko za rękę.~ */ GOTO 327
  IF ~  CheckStatGT(Protagonist,13,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67094 /* ~Schwyć ją szybko za rękę.~ */ GOTO 328
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67095 /* ~Schwyć ją szybko za rękę.~ */ GOTO 330
  IF ~~ THEN REPLY #67096 /* ~"Zatem dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67097 /* ~"Zatem trudno. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #67098 /* ~"Ssss!" Gdy wyrzucasz rękę do przodu, Anna błyskawicznie jej unika, sycząc przy tym. "Tia, widziałam *to* uderzenie jeszcze za IGLICOM, o tia. Wolnyś, a żeby mnie złapać, ZNACZNIE szybszym być musisz." Rozluźnia się trochę. "Mimo wszystko - *cośtam* z tej szybkości w tobie jednak jest..."~ */
  IF ~~ THEN REPLY #67099 /* ~"A więc będziesz mnie uczyć?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 328 // from: 326.1
  SAY #67100 /* ~"Sss!" Gdy wyrzucasz rękę do przodu, Anna cofa się - ale nie wystarczająco szybko i twoja dłoń chwyta ostrze jednego z jej sztyletów. Zaczyna płynąć krew.~ */
  IF ~~ THEN GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #67101 /* ~Anna przygląda się krwi na twoich dłoniach i patrzy, jak rana powoli się zasklepia i leczy. Po chwili spluwa. "Dobrze ci tak, idioto! Twoje kończyny powiedziały mi, żeś siem poruszył, jeszcze zanim sam o tym wiedziałeś." Rozluźnia się trochę. "Mimo wszystko - *cośtam* z tej szybkości w tobie jednak jest..."~ */
  IF ~~ THEN REPLY #67737 /* ~"A więc będziesz mnie uczyć?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 330 // from: 326.2
  SAY #67102 /* ~Twoja ręka wystrzeliwuje jak bicz i zanim Anna zdążyła cokolwiek zrobić, twoja dłoń zacisnęła się wokół jej nadgarstka. Natychmiast zaczyna syczeć, starając się wyrwać z twojego uścisku. "Puść mnie, ty idioto! Puść mnie, albo ci nowy otwór wywierce, o tia!"~ */
  IF ~~ THEN REPLY #67103 /* ~Puść ją.~ */ GOTO 331
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #67104 /* ~Anna odskakuje do tyłu. Jej policzki nabiegły krwią, a ona sama ciężko oddycha. "Trzymaj te swoje łapska *przy sobie*!" Uspokaja się i marszczy czoło. "Szybkiś, o tia, to ci przyznaje. Nikt nie był w stanie tak mnie schwycić... musisz mieć w sobie krew wenża."~ */
  IF ~~ THEN REPLY #67105 /* ~"A więc będziesz mnie uczyć?"~ */ GOTO 332
END

IF ~~ THEN BEGIN 332 // from: 327.0 329.0 331.0
  SAY #67106 /* ~Rzuca ci sceptyczne spojrzenie, po czym wywraca oczami. "Tia, mogie... ale do tego bendziesz musiał zatrzasnonć swojom pułapke i mnie posłuchać... i robić to co ja, kape?"~ */
  IF ~~ THEN REPLY #67107 /* ~"Dobrze..."~ */ GOTO 333
END

IF ~~ THEN BEGIN 333 // from: 332.0
  SAY #67108 /* ~"Jest kilka rzeczy, których musisz siem nauczyć, jeśli chcesz, żeby ciem tak łatwo nie złapano... bendziesz musiał poznać sposoby na ukrywanie siem, kiedy nie bendziesz chciał, by ciem inni widzieli."~ */
  IF ~~ THEN REPLY #67109 /* ~"W porządku."~ */ GOTO 334
  IF ~~ THEN REPLY #67110 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 334 // from: 333.0
  SAY #67111 /* ~"Musisz wiedzieć, gdzieś jest i jak szybko stać siem możesz CZENŚCIOM tego, gdzie jesteś." Z każdym słowem macha ogonem dla podkreślenia ich znaczenia. "Gdy tego siem nauczysz, bendziesz jak cień, o tia."

UWAGA: Jeśli będziesz chciał ukryć się w zaciemnionych miejscach, będziesz mieć pręmię do szansy ukrycia się w cieniu.~ */
  IF ~~ THEN REPLY #67112 /* ~"Więc jak to robię?"~ */ JOURNAL #67734 /* ~W ramach mojej złodziejskiej edukacji, Anna pokazała mi, jak ukrywać się w cieniu. Właściwie można tego dokonywać w każdym otoczeniu, ale sztuka ta nie powiedzie się, kiedy będę kogoś atakował albo rozprawiał się z zamkiem w drzwiach czy skrzyni albo też szperał po cudzych kieszeniach.~ */ GOTO 335
  IF ~~ THEN REPLY #67113 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 335 // from: 334.0
  SAY #67114 /* ~"Ważniejsze jest to, jak tego NIE robisz - nie możesz pozostać w ukryciu, gdy ktoś ciem ma na oku, gdy kogoś atakujesz, ani gdy starasz siem otworzyć zamek, wienc bondź ostrożny, KIEDY siem kryjesz, kape?"

UWAGA: By Ukryć się w Cieniu, wybierz ikonę Krycia się z przycisku Zdolności Specjalne w podręcznym menu. Gdy to uczynisz, będziesz miał możliwość ukrycia się w cieniu. Dowolna akcja, jaką podejmiesz odnośnie innej osoby lub przedmiotu zlikwiduje Ukrywanie się w Cieniu.~ */
  IF ~~ THEN REPLY #67115 /* ~"Więc jaki jest cel ukrywania się w cieniu?"~ */ JOURNAL #67735 /* ~Anna zdradziła mi jedną z korzyści ukrywania się w cieniu. Otóż kiedy nagle wypadnę z ukrycia i zaatakuję kogoś, moje ciosy sprawią ZNACZNIE WIĘCEJ szkód. Zdaje się, że już się kiedyś spotkałem z taką formą ataku. Nazywano ją wówczas "ciosem w plecy" i, nawiasem mówiąc, praktykowanie jej nie przysparzało nikomu specjalnej chluby. Ale cóż mi szkodzi spróbować.~ */ GOTO 336
  IF ~~ THEN REPLY #67116 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #67117 /* ~"PONIEWAŻ..." Anna zwija swój ogon w korkociąg. "Gdy wyjdziesz z cienia i WKRENCISZ komuś ten nóż w plecy, to bendzie go znacznie bardziej BOLEĆ. To specjalna właściwość bycia niewidzianym, o tia."

UWAGA: Gdy uderzysz kogoś z cienia, możesz zadać podwójne, potrójne, albo nawet poczwórne obrażenia.~ */
  IF ~~ THEN REPLY #67118 /* ~"Och."~ */ GOTO 337
  IF ~~ THEN REPLY #67119 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #67120 /* ~"Nastempnom rzeczom, jakiej siem nauczyszm to jak obrabiać czyjeś kieszenie. To mało ważne, ale jak bycie w cieniu - musisz wybierać cel ostrożnie, kape? Zwijanie monet ulowcom jest proste, ale potenżniejsi goście som cienżcy do obrobienia. Na tych wściekłych na ciem nie ma co próbować - raczej spore szanse na to, że bendziesz przyciongał ich wzrok."~ */
  IF ~~ THEN REPLY #67121 /* ~"Brzmi zbyt niebezpiecznie, by mogło się przydać."~ */ GOTO 338
  IF ~~ THEN REPLY #67122 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 338 // from: 337.0
  SAY #67123 /* ~"Cóż…" Anna posyła ci krzywy uśmieszek. "Po dodaniu syćkich sakiewek zbierze się niezła sumka, nie? Niektórzy noszo przy sobie cuś wincej niż miedź." Uśmiecha się. "A jak żeś jest dość chyży, to możesz nawet zwinąć coś z kramu handlarza."

^NNOTE: <PICKPOCKET> Aby ukraść coś ze sklepu, wciśnij odpowiedni przycisk na sklepowym ekranie.^-~ */
  IF ~~ THEN REPLY #67124 /* ~"A co jeśli handlarze mają swoje towary zamknięte?"~ */ GOTO 339
  IF ~~ THEN REPLY #67125 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 339 // from: 338.0
  SAY #67126 /* ~"Musisz wydumać, jak skłonić zamek, co nie chce się łotworzyć, do łotwarcia, nie? Czasem trudno to zdziałać, ale syćko, co je zamkninte, warto łotworzyć…" Marszczy brwi. "W winkszości przypadków."

^NNOTE: <PICKLOCKS>^-~ */
  IF ~~ THEN REPLY #67127 /* ~"W porządku."~ */ GOTO 340
  IF ~~ THEN REPLY #67128 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 340 // from: 339.0
  SAY #67129 /* ~"Co doprowadza nas do nastempnej rzeczy, o tia. Jeśli ktoś coś zamknoł i nie chce, żebyś to miał, to możesz być pewien, że może zostawił tam coś *jeszcze* oprócz zamka - przeważnie jedno z tych wirujoncych ostrzy pozbawiajoncych głowy, torebke śmiertelnych mrówek, odchody baatezu..." Anna wylicza wszystkie pułapki na palcach. "Albo paskudne zaklencie. Albo dwa. Albo trzy."~ */
  IF ~~ THEN REPLY #67130 /* ~"Więc jak mogę zauważyć te rzeczy?"~ */ GOTO 341
  IF ~~ THEN REPLY #67131 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #67132 /* ~"To troche jak 'bycie cieniem' - musisz *uważać* na swoje otoczenie. Jeśli gdzieś wejdziesz, to siem rozejrzyj - coś dziwnego? Podmuch w zamknientym korytarzu? Kawałek podłogi z dziwnymi wzorami? Spora skrzynia dokładnie na środku pokoju?" Anna kłuje cię ogonem. "Wtedy szukasz pułapek, o tia."

UWAGA: By szukać pułapek, włącz ikonę 'Znajdź/Usuń Pułapki' ze Zdolności Specjalnych w podręcznym menu. Gdy będzie ona włączona, masz szansę na odkrycie pułapek, które zostaną podświetlone twoim kursorem.~ */
  IF ~~ THEN REPLY #67133 /* ~"Więc jak unikam tych rzeczy?"~ */ GOTO 342
  IF ~~ THEN REPLY #67134 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 342 // from: 341.0
  SAY #67135 /* ~"Łuniknąć jej? Rzecz w tym, by łusunąć pułapkie z miejsca, do którego chcesz się dobrać. Szansa na znalezienie pułapki jest mniej wincej równa szansie jej dostrzeżenia. Jeśli jo widzisz…" Wzrusza ramionami. "To powinno się łudać. W winkszości przypadków."

^NNOTE: <DISARMTRAP> Niepowodzenie może spowodować uruchomienie pułapki.^-~ */
  IF ~~ THEN REPLY #67136 /* ~"Coś jeszcze?"~ */ GOTO 343
  IF ~~ THEN REPLY #67137 /* ~"Wydaje mi się, Anno, że rozumiem podstawy."~ */ GOTO 344
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #67138 /* ~"Nic wiencej nie jestem w stanie ci powiedzieć - to wszystko sprawa prób i błendów, o tia. Życzem ci powodzenia..." Uśmiecha się do ciebie złowrogo. "Ale nie tam, gdzie ja se wybiore, tia?"~ */
  IF ~~ THEN REPLY #67139 /* ~"W porządku."~ */ GOTO 344
END

IF ~~ THEN BEGIN 344 // from: 333.1 334.1 335.1 336.1 337.1 338.1 339.1 340.1 341.1 342.1 343.0
  SAY #67140 /* ~"Zatem dobrze..." Ogląda cię od stóp do głów. "Przejdźmy do potu i znoju, jakie niesie ze sobom ten zawód." Marszczy czoło, gdy ci się przygląda. "Pierwszom rzeczom, jakom bendziesz musiał zmienić, to postawa - koniec z tym wypinaniem bioder i chodzeniem z pniakiem do przodu, co zdajesz siem tak lubić..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #67141 /* ~"W porządku..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 324
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #67142 /* ~"W porządku..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 345
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #67143 /* ~"W porządku..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #67144 /* ~"W porządku..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
SetGlobal("Thief_Training","GLOBAL",5)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 346
END

IF ~~ THEN BEGIN 345 // from: 344.1
  SAY #67145 /* ~Anna pokazuje ci kilka rzeczy, sprawdzając twój refleks i równowagę - gdy to robi, czujesz jak budzi się w tobie jakaś odległa część ciebie, przypominasz sobie, a twoje ciało zaczyna działać zgodnie z tymi wspomnieniami. Anna zdaje się być zaskoczona twoimi umiejętnościami, ale szybko zwiększa nacisk, aż w końcu stwierdzasz, że ciężko ci dotrzymać jej kroku. W końcu przytakuje, będąc pod wrażeniem: "Tia, złapałeś. Szybko chwytasz, o tia."~ */
  IF ~~ THEN REPLY #67146 /* ~"Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67147 /* ~"Dzięki. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 344.2 344.3
  SAY #67148 /* ~Anna pokazuje ci kilka rzeczy, sprawdzając twój refleks i równowagę - gdy to robi, to jakby kamień w twoim umyśle pękł i rozpadł się: z każdym testem jakby otwierały się nowe drzwi - odległe obrazy ciemnych alejek, wart na dachach, odcinania sakiewek na ruchliwych targowiskach, otwierania zamków w bramach - te wspomnienia zdają się zalewać cię jak rzeka, aż w końcu stwierdzasz, że z łatwością jesteś w stanie sprostać każdemu testowi, jakiemu poddaje cię Anna - i potem w zamian ty testujesz ją.~ */
  IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #67149 /* ~Anna szybko... i chętnie... wdaje się we współzawodnictwo z tobą, starając się ciebie przechytrzyć raz w ten, raz w inny sposób, a ty z łatwością dostrzegasz jej sztuczki, po czym odpowiadasz innymi. Na końcu sesji, Anna cofa się i zdaje się patrzeć na ciebie zupełnie inaczej. "Czyś *pewien*, że tego już żeś nie robił? Jesteś... jesteś szybki, o tia. Sondzem, żem nauczyła siem od ciebie wiencej, niż ty ode mnie."~ */
  IF ~~ THEN REPLY #67305 /* ~"Wydaje mi się, że robiłem już kiedyś to, czego mnie uczyłaś. Tak czy inaczej, mam do ciebie jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67306 /* ~"Dzięki za szkolenie. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 322.4
  SAY #67308 /* ~"Tia... Mogłabym."~ */
  IF ~  Global("Annah_Stealth","GLOBAL",0)
~ THEN REPLY #67309 /* ~"Chciałem się nauczyć jeszcze od ciebie czegoś o skradaniu."~ */ GOTO 349
  IF ~  Global("Annah_Open_Locks","GLOBAL",0)
~ THEN REPLY #67310 /* ~"Byłym wdzięczny, gdybyś mogła mnie nauczyć otwierać zamki."~ */ GOTO 351
  IF ~  Global("Annah_Traps","GLOBAL",0)
~ THEN REPLY #67311 /* ~"Czy możesz nauczyć mnie czegoś o znajdowaniu albo usuwaniu pułapek?"~ */ GOTO 353
  IF ~  Global("Annah_Pick_Pockets","GLOBAL",0)
~ THEN REPLY #67312 /* ~"Czy możesz poradzić mi, jak kogoś okraść?"~ */ GOTO 355
  IF ~~ THEN REPLY #67313 /* ~"Tak właściwie, to myślałem, że może to ja będę w stanie czegoś ciebie nauczyć."~ */ GOTO 363
  IF ~~ THEN REPLY #67314 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67315 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #67316 /* ~Przytakuje. "Tia, dobra, sztukom bycia niezauważonym to wiedzieć, gdzie jesteś i jak szybko możesz stać siem CZENŚCIOM tego, gdzie jesteś. Jest kilka sztuczek, których siem nauczyłam - musisz siem kryć tam, gdzie inni nie spojrzom - jak na przykład sufit pokoju - albo nawet *zmienić* swojom kryjówke, gdy ciem szukajom..." Uśmiecha się z okrucieństwem. "Był taki czas, że ukrywałam siem od tych twardogłowych... 'prawa'... i to, co *zrobiłam*, to..."~ */
  IF ~~ THEN REPLY #67317 /* ~"Tak...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Stealth","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,STEALTH,RAISE,3)
~ GOTO 350
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #67318 /* ~"...no i ten twardogłowy leżał z twarzom w ścieku, bez spodni, a pozostali z jego trzech kumpli byli zamknienci w pokoju prababki wraz z niom, wołajoncom o pomste do nieba." Anna bierze oddech. "No, to tyle. Jeśli potrafiłbyś kiedyś to wykorzystać, to może ci to pomóc siem ukryć, gdy będziesz tego naprawde potrzebował."~ */
  IF ~~ THEN REPLY #67319 /* ~"Więc spójrzmy: wycofywać się do dobrze znanych miejsc, najlepiej tam, gdzie znajdują się rzeczy mogące odwrócić uwagę - a jeśli ich nie ma, to najlepiej samemu je stworzyć."~ */ GOTO 362
END

IF ~~ THEN BEGIN 351 // from: 348.1
  SAY #67320 /* ~"Otwieranie zamków - cóż, mogem powiedzieć ci, czego NIE robić. Po pierwsze, zawsze noś ze sobom troche oleju albo czegoś, by zamoczyć czubek wytrycha, jakby zamek był oporny. Jeszcze jedna rzecz, jakiej siem nauczyłam - od samego starego kulawca Faroda - to to, że wiele zamków w Sigil tak naprawde wzoruje siem na tym jednym ślusarzu z dawien dawna i wszystkie majom taki jeden dżinks..."~ */
  IF ~~ THEN REPLY #67321 /* ~"Mów dalej..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Open_Locks","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,3)
~ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0
  SAY #67322 /* ~"...wienc dochodził Szczyt i pierwsze promienie dnia siem zakradały, a ja wiedziałam, że bendom mnie szukać na strychu. Ale ponieważ zamek na strychu pochodził z Sigil, wiedziałam, jak zablokować wejście, żeby nie mogli go sforsować, co dało mi wystarczajonco dużo czasu, by uciec ze srebrem po dachach, o tia."~ */
  IF ~~ THEN REPLY #67323 /* ~"Więc na tym konkretnym typie zamka bazowane jest wiele innych... to powinno pomóc, jeśli kiedykolwiek będę potrzebował otworzyć podobne."~ */ GOTO 362
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY #67324 /* ~"Cóż, o tym to chyba najłatwiej mówić - najważniejsze jest to, że ktoś ZASTAWIŁ pułapke, i ten ktoś o tym WIE. Szukaj wienc tego oznak, gdy wejdziesz tam, gdzie trzymajom swoje kosztowności. Pewnego razu wchodziłam do Wielkiej Posiadłości w Dzielnicy Urzędników i..."~ */
  IF ~~ THEN REPLY #67325 /* ~"Tak..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Annah_Traps","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,TRAPS,RAISE,3)
~ GOTO 354
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #67326 /* ~"...i to, że na podłodze dookoła szafki znajdował siem nowy dywan powiedziało mi, że niedawno go dopasowywano, wienc podnoszem go moimi sztyletami i widzem tam na kamieniach pod spodem plamy po kwasie. Wienc wiedziałam, że musze szukać kwaśnego kwiatu, gdy otwierałam szafke i świstałam jego miedziaki."~ */
  IF ~~ THEN REPLY #67327 /* ~"A więc gdy chcesz znaleźć i rozbroić pułapkę, szukaj nie tylko znaków, że je zastawiono, ale też takich, które mówią, że ktoś próbował ominąć taką, która już działa."~ */ GOTO 362
END

IF ~~ THEN BEGIN 355 // from: 348.3
  SAY #67328 /* ~"Cóż, obrobienie czyjejś sakiewki nie jest aż tak trudne, jak ci siem wydaje..." Anna wzrusza ramionami. "To głównie sprawa zrobienia tego szybko i delikatnie, żeby nie poczuli, że ich sakiewki stajom siem lżejsze. Jeśli masz z tym problemy, to może źle to robisz." Kiwa na ciebie głową. "Pokaż mi."~ */
  IF ~~ THEN REPLY #67329 /* ~"Cóż, nie chcę nikogo ot tak okradać, jak ty się będziesz temu przyglądać. Może kiedy indziej."~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #67330 /* ~"Nie, spróbuj świsnąć trochę brzdenku ode mnie. Powiem ci, co robisz źle."~ */
  IF ~~ THEN REPLY #67331 /* ~"Dobra... uch, gdzie go trzymasz?"~ */ GOTO 357
END

IF ~~ THEN BEGIN 357 // from: 356.0
  SAY #67332 /* ~"Tego właśnie masz siem dowiedzieć, jeśli chcesz być złodziejem pełnej krwi."~ */
  IF ~~ THEN REPLY #67333 /* ~"Dobra... spróbuję świsnąć... ehm, okraść cię z niego."~ */ DO ~SetGlobal("Annah_Pick_Pockets","GLOBAL",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 358
END

IF ~~ THEN BEGIN 358 // from: 357.0
  SAY #67334 /* ~Jak tylko ruszasz ręką w jej stronę, Anna podnosi dłoń. "Dobra, przestań - już skopałeś sprawe, o tia."~ */
  IF ~~ THEN REPLY #67335 /* ~"Co?"~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 358.0
  SAY #67336 /* ~"Musisz uważać, jak podchodzisz, o tia - nie możesz cały czas zachowywać siem jak tokola brnący do celu - szczególnie gdy wyglądasz jak oni." Anna nagle kładzie dłonie na biodrach i odwraca się, by spojrzeć w bok, jakby straciła zainteresowanie. "Musisz tak działać, jakby cel był dla ciebie niczym - mniej niż niczym. Nie obchodzi ciem zupełnie, co on posiada."~ */
  IF ~~ THEN REPLY #67337 /* ~"Dobra - więc udaję, że mnie to nie obchodzi. Co dalej?"~ */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #67338 /* ~"Wtedy musisz siem upewnić, że *uderzysz* w odpowiedniej chwili - przeważnie robie to, gdy obok kogoś przechodze. Ty powinieneś to robić dokładnie *po* tym, jak obok kogoś przejdziesz, bo pewnie wienkszość bendzie zbyt przestraszona, by siem odwrócić i zobaczyć, gdzie żeś poszedł. I jeszcze jedna rzecz, jakom powinieneś robić..."~ */
  IF ~~ THEN REPLY #67339 /* ~"Tak...?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,1000)
~ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.0
  SAY #67340 /* ~"...trochem pokory, postaraj siem nie wyglondać tak groźnie, a może uda ci siem zaskoczyć twój cel."~ */
  IF ~~ THEN REPLY #67341 /* ~"W porządku. A więc spróbować być niegroźnym, odprężonym, jakby cel nic dla mnie nie znaczył, po czym uderzyć, gdy będę już poza zasięgiem wzroku?"~ */ GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 350.0 352.0 354.0 361.0
  SAY #67342 /* ~Przytakuje. "Tia, to jest tego cień."~ */
  IF ~~ THEN REPLY #67343 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67344 /* ~"Dobra. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 348.4
  SAY #67345 /* ~"Co? Mówisz *poważnie*?" Podnosi brwi. "Ty? Uczyć *mnie*?"~ */
  IF ~  Global("PC_Annah_Stealth","GLOBAL",0)
CheckStatGT(Protagonist,49,STEALTH)
~ THEN REPLY #67346 /* ~"Myślałem, że mogę dać ci parę wskazówek odnośnie tego, jak pozostać niezauważoną."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",1)
~ GOTO 364
  IF ~  Global("PC_Annah_Open_Locks","GLOBAL",0)
CheckStatGT(Protagonist,49,LOCKPICKING)
~ THEN REPLY #67347 /* ~"Jest kilka sztuczek dotyczących otwieraniu zamków, którymi mógłbym się z tobą podzielić."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",2)
~ GOTO 364
  IF ~  Global("PC_Annah_Pick_Pockets","GLOBAL",0)
CheckStatGT(Protagonist,49,PICKPOCKET)
~ THEN REPLY #67348 /* ~"Tak, jest kilka rzeczy dotyczących kradzieży, których mógłbym cię nauczyć."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",3)
~ GOTO 364
  IF ~  Global("PC_Annah_Traps","GLOBAL",0)
CheckStatGT(Protagonist,49,TRAPS)
~ THEN REPLY #67349 /* ~"Tak, dowiedziałem się kilku rzeczy na temat znajdowania i rozbrajania pułapek, które chciałem ci przekazać."~ */ DO ~SetGlobal("Annah_Training","GLOBAL",4)
~ GOTO 364
  IF ~~ THEN REPLY #67350 /* ~"Nieważne. Może nie mam cię teraz czego uczyć. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67351 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 364 // from: 363.0 363.1 363.2 363.3
  SAY #67352 /* ~"Tia?" Uśmiecha się pod nosem. "Takich jak?"~ */
  IF ~  Global("Annah_Training","GLOBAL",1)
~ THEN REPLY #67353 /* ~"Cóż, sądzę, że twój ogon zdradza znacznie więcej, niż ci się wydaje. Zauważyłem, że machasz nim, gdy ktoś na ciebie patrzy, albo gdy jesteś zdenerwowana. To wystarczy, żeby ktoś szukający w cieniu mógł cię zauważyć. I jeszcze jedna rzecz..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Stealth ","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",STEALTH,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",2)
~ THEN REPLY #67354 /* ~"Używasz złych wytrychów, gdy próbujesz otwierać zamki. Powinnaś używać ich w takiej kolejności: najpierw ten z czubkiem w kształcie Y, potem następny z..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Open_Locks","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",LOCKPICKING,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
  IF ~  Global("Annah_Training","GLOBAL",3)
~ THEN REPLY #67355 /* ~"Gdy starasz się kogoś okraść, powinnaś użyć swojego ciała, by zwiększyć efekt. Nie powinno być dla ciebie specjalnie trudne odwrócenie uwagi celu od jego własności. I..."~ */ DO ~SetGlobal("PC_Annah_Pick_Pockets","GLOBAL",1)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 365
  IF ~  Global("Annah_Training","GLOBAL",4)
~ THEN REPLY #67356 /* ~"Nie tylko powinnaś *rozglądać* się w poszukiwaniu oznak założonej pułapki, ale są też inne rzeczy, które ci mogą o tym powiedzieć, zapach siarki w powietrzu, zmiany temperatury..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("PC_Annah_Traps","GLOBAL",1)
GiveExperience("Annah",1000)
PermanentStatChange("Annah",TRAPS,RAISE,3)
SetGlobal("Annah_Training","GLOBAL",0)
~ GOTO 372
END

IF ~~ THEN BEGIN 365 // from: 364.2
  SAY #67357 /* ~"Hę?" Anna mruga. "Powiadasz, że mam zgrywać dziwke?"~ */
  IF ~~ THEN REPLY #67358 /* ~"A po co, do diabła, nosisz te swoje ciuchy? Myslałem, że taki był twój zamiar."~ */ GOTO 366
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #67359 /* ~Anna spuszcza wzrok, po czym się cofa. "Po prostu siem *grzeje*, o tia. To moja krew, jak sondze. To ubranie pomaga mojej skórze oddychać."~ */
  IF ~~ THEN REPLY #67360 /* ~"Cóż, dodaj jeszcze parę rozcięć z przodu i twojego celu nie będzie obchodzić to, czy go okradasz, czy nie. A teraz spójrz na moje ręce - gdy masz odciąć sakiewkę, musisz..."~ */ GOTO 367
END

IF ~~ THEN BEGIN 367 // from: 366.0
  SAY #67361 /* ~Gdy sięgasz, by pokazać Annie jak odcina się sakiewki, ona tężeje.~ */
  IF ~~ THEN REPLY #67362 /* ~"Co *znowu*?"~ */ GOTO 368
END

IF ~~ THEN BEGIN 368 // from: 367.0
  SAY #67363 /* ~"Nic na to nie poradze - to twoja wina!" Anna zamyka oczy. "Nie powinieneś był mówić nic o moim ubraniu, teraz cały czas o nim myśle, o tia."~ */
  IF ~~ THEN REPLY #67364 /* ~"Spójrz mi w oczy - a teraz się uspokój."~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #67365 /* ~Spojrzenie Anny napotyka twoje i zauważasz, że wciąż jest zesztywniała - i zagryza usta.~ */
  IF ~~ THEN REPLY #67366 /* ~"Słuchaj, szybko ci to pokażę i damy sobie z tym spokój."~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #67367 /* ~Pochylasz się, a gdy to robisz, Anna nagle przyciska się do ciebie, a jej dłonie otaczają ci plecy. Trzyma cię przez chwilę delikatnie, po czym mocno ściska, wąchając twój kark, a potem policzek. "Podoba... podoba mi siem twój zapach, o tia." Pociera swoim policzkiem o twój - i ku twemu zaskoczeniu czujesz, jak gładka jest jej skóra. "Twoja skóra jest taka mientka, o tia."~ */
  IF ~~ THEN REPLY #67368 /* ~Sprawdź sakiewkę.~ */ GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #67369 /* ~Sięgasz dłonią do pasa i chwytasz ogon Anny, po czym powoli wciągasz go ze swojej sakwy. Anna cofa się i uśmiecha. "Czy to miałeś na myśli? Świsnąć sakiewkę w ten sposób, tia?" Zdaje się być nieco zaczerwieniona i zauważasz, że jej serce bije szybko. "Diabelnie proste, o tia."~ */
  IF ~~ THEN REPLY #67370 /* ~"Tak... sądzę, że załapałaś, o co chodzi. Słuchaj, mam jeszcze kilka pytań..."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ GOTO 477
  IF ~~ THEN REPLY #67371 /* ~"Tak właśnie... ruszajmy dalej."~ */ DO ~GiveExperience("Annah",1000)
PermanentStatChange("Annah",PICKPOCKET,RAISE,3)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 364.0 364.1 364.3
  SAY #67372 /* ~Na koniec twojego instruktażu Anna przytakuje w milczeniu. "Tia, nie pomyślała żem o tym, o nie." Marszczy się. "W końcu bym siem tego domyśliła, wienc nie myśl sobie, żeś jakimś nauczycielem z Gmachu Rozrywki, albo coś, kape?"~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN REPLY #67373 /* ~"Tylko staram się pomóc."~ */ GOTO 373
  IF ~~ THEN REPLY #67374 /* ~"Cóż, tyle, jeśli chodzi o wdzięczność. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67375 /* ~"Nie ma sprawy. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 373 // from: 372.0
  SAY #67376 /* ~"Raczej pokazać, jaka jestem *głupia*."~ */
  IF ~~ THEN REPLY #67377 /* ~"O czym, do diabła, ty mówisz?"~ */ GOTO 374
  IF ~~ THEN REPLY #67378 /* ~"Cóż, tyle, jeśli chodzi o wdzięczność. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67379 /* ~"Nie ma sprawy. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 374 // from: 373.0
  SAY #67380 /* ~"Przyłazisz na dwór Faroda, a on siem tobie kłania i kadzi ci, liże ci buty, po czym KAŻE mi z tobom iść, czego NIGDY mi nie robił, a ty zaczynasz siem nadymać, jak to ty wiesz wiencej ode mnie... co daje ci to *prawo*? Kim ty sobie wyobrażasz, że JESTEŚ?"~ */
  IF ~~ THEN REPLY #67381 /* ~"PO PROSTU staram ci się pomóc, Anno."~ */ GOTO 375
  IF ~~ THEN REPLY #67382 /* ~"Cóż, tyle, jeśli chodzi o wdzięczność. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67383 /* ~"Nie ma sprawy. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 375 // from: 374.0
  SAY #67384 /* ~"Och tia? Czyś *pewien*, że za każdym razem, gdy świstam coś komuś z sakiewki, albo otwieram zamek, nie trzensiesz po prostu głowom za moimi plecami, myślonc 'głupia niezdara, nie wie, jak to siem robi?' Czy to ciem w jakiś sposób dowartościowuje, hem?!"~ */
  IF ~~ THEN REPLY #67385 /* ~"Anno, pokazywałem ci te rzeczy tylko po to, abyś stała się jeszcze *lepsza*, niż teraz jesteś - nie chciałem się wymądrzać. *Nie* sądzę, żebyś była niezdarna, i *nie* sądzę, żebyś była głupia."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse","GLOBAL",1)
~ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #67386 /* ~Anna marszczy się, macha ogonem. "Tia, dobrze - lepiej uważaj. Nie lubie litowania siem, o nie."~ */
  IF ~~ THEN REPLY #67387 /* ~"No dobra. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67388 /* ~"Doskonale. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 377 // from: 187.0 477.0
  SAY #67389 /* ~"To miejsce, gdzie znalazłam twoje ciało znajduje siem za Malowanymi Drzwiami w czenści Ula zwanej Dzielnicom Czerwonych Świateł - drzwi som na północnej ulicy, na północ i wschód od gospody 'Pod Gorejącym Człekiem'. Za nimi jest alejka, gdzie znalazłam twoje ciało. Dziwne to miejsce. Niewielu trepów tam łazi."~ */
  IF ~~ THEN REPLY #67390 /* ~"Dziwne miejsce? Dlaczego?"~ */ GOTO 380
  IF ~~ THEN REPLY #67391 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67392 /* ~"Zatem dobrze. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 378 // from: 187.1 477.1
  SAY #67393 /* ~"Po drugiej stronie leża Jazgoczącego Psa znajduje siem dziwna alejka - tam właśnie musimy siem udać. Z tyłu budynku znajdują siem drzwi, przez które możemy prejść."~ */
  IF ~~ THEN REPLY #67394 /* ~"Dziwna aleja? Co przez to rozumiesz?"~ */ GOTO 380
  IF ~~ THEN REPLY #67395 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67396 /* ~"Zatem dobrze. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 379 // from: 187.2 477.2
  SAY #67397 /* ~"Na południe i wschód w dół dziwnej alei, za starom bramom i kilka stopni poniżej znajduje siem miejsce, gdzie ciem znalazłam."~ */
  IF ~~ THEN REPLY #67398 /* ~"Dziwna aleja? Co przez to rozumiesz?"~ */ GOTO 380
  IF ~~ THEN REPLY #67399 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67400 /* ~"Zatem dobrze. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 380 // from: 377.0 378.0 379.0
  SAY #67401 /* ~"Niektóre co mniej odważne trepy mówiom, że jest ona *nawiedzona*, o tia." Anna spluwa, po czym czyni nad sercem półokrąg. "To stek bzdur. Czasami wiatr wieje przez aleje i wtedy słychać dziwne westchnienia, ale to nie znaczy, że som tam zjawy, duchy, czy takie tam."~ */
  IF ~~ THEN REPLY #67402 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67403 /* ~"Zatem dobrze. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 187.3 477.3
  SAY #67404 /* ~"Tia, co?"~ */
  IF ~~ THEN REPLY #67405 /* ~"Cóż, co robiłaś szukając ciał w Ciężarnej Alei? To znaczy, musiałaś się przekraść przez Kamienicę, potem obok dabusów, by się tu dostać - a to miejsce nie jest specjalnie tłoczne, w przeciwieństwie do reszty Ula, więc czemu szukałaś tu ciał?"~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #67406 /* ~Anna wzrusza ramionami "Reszta Ula jest czysta, o tia. Musisz znaleźć se nowe miejsca, by zbierać truposzy, tia."~ */
  IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383 // from: 382.0
  SAY #67407 /* ~Gdy Anna mówi, czujesz dziwne mrowienie z tyłu czaszki. Nagle zdajesz sobie sprawę, że ona kłamie.~ */
  IF ~~ THEN REPLY #67408 /* ~"Czy jesteś *pewna*, Anno?"~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #67409 /* ~W twoim tonie głosu musiało coś być, ponieważ ogon Anny zatrzymuje się na chwilę, po czym po chwili ponownie zaczyna się ruszać, nieco wolniej niż poprzednio. "Tia... tak *sondze*." Marszczy się i wygląda nieco niepewnie. "*Przeważnie* nie ide tam, by zbierać truposzy. Nie - jak siem nad tym zastanowie, to nigdy tam jeszcze nie byłam. Po prostu jakoś tak na ciebie trafiłam."~ */
  IF ~~ THEN REPLY #67410 /* ~"Więc czemu tam poszłaś?"~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #67411 /* ~"Ja... nie wiem! Po prostu to zrobiłam - i ciesz siem, bo inaczej wcionż byś tam leżał!"~ */
  IF ~~ THEN GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #67412 /* ~Czujesz to samo dziwne mrowienie co wcześniej. Zdajesz sobie sprawę jeszcze z jednej rzeczy: Anna kłamie, ale co dziwne, nie *zdaje sobie sprawy* z tego, że kłamie.~ */
  IF ~~ THEN REPLY #67413 /* ~"Anno, czy coś ci kazało tam iść? Czy w ten sposób mnie znalazłaś?"~ */ DO ~AddexperienceParty(2500)
SetGlobal("Annah_Alley_Geas","GLOBAL",1)
~ JOURNAL #67414 /* ~Kiedy myślę o tym, jak Anna znalazła moje ciało, dochodzę do wniosku, że takie było przeznaczenie. Ona *musiała* je odnaleźć. Powiedziała, że mój trup właściwie sam ją przyciągnął i sprawił, że go odszukała.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #67415 /* ~Przytakuje... powoli. "Tia, może." Wzrusza nieznacznie ramionami. "To nie było jedno z moich miejsc, ale... nie mogłam siem *powstrzymać*. Po prostu *chciałam* wtedy zobaczyć, co tam jest - i ty tam byłeś, martwy jak pień." Milknie. "Byłeś jak głaz, o tia. Nie wiem, co mnie doprowadziło do ciebie."~ */
  IF ~~ THEN REPLY #67416 /* ~"Hmmm. Ciekawe. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67417 /* ~"Po prostu chciałem wiedzieć. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 388 // from: 187.4 477.4
  SAY #67418 /* ~Przytakuje ostrożnie. "Tak - nie zapomniałam o tobie."~ */
  IF ~  GlobalGT("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67419 /* ~"Gdy pytałem o Faroda, powiedziałaś mi, że znajduje się on na południowy zachód od kostnicy - podczas gdy tak *nie było*."~ */ GOTO 389
  IF ~  Global("Annah_Answer","GLOBAL",0)
~ THEN REPLY #67420 /* ~"Co robiłaś przy Kostnicy?"~ */ GOTO 390
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #67421 /* ~"Tia, powiedziałam - i ty byś zrobił to samo, jakby jakiś pokryty bliznami gość podszedł do cie i spytał, gdzie może znaleźć twego Tate." Wzrusza ramionami. "I tak go znalazłeś, wienc nie chcem, abyś to wypominał, o nie."~ */
  IF ~~ THEN REPLY #67422 /* ~"Co robiłaś przy Kostnicy?"~ */ GOTO 390
  IF ~~ THEN REPLY #67423 /* ~"Zatem nieważne. Mam jeszcze inne pytania..."~ */ GOTO 477
  IF ~~ THEN REPLY #67424 /* ~"Cóż, gdybyś po prostu powiedziała mi, gdzie on jest, to wszystko byłoby znacznie łatwiejsze dla nas obojga. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 390 // from: 388.1 389.0
  SAY #67425 /* ~"To mój teren - szukałam truposzy, tia." Ogląda cię od stóp do głów, po czym uśmiecha się pod nosem. "Najwyraźniej znalazłam jednego, ale za to chodzoncego."~ */
  IF ~~ THEN REPLY #67426 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67427 /* ~"Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 391 // from: 187.5 477.5
  SAY #67428 /* ~Anna patrzy na ciebie ostrożnie, jej ogon na chwilę przestaje się ruszać, po czym ponownie zaczyna, lecz wolniej niż przedtem. "Tia, *może* coś i znalazłam. Ale *jeżeli* tak było, to jest to już moje, tia - reszta jest w posiadaniu Faroda."~ */
  IF ~~ THEN REPLY #67429 /* ~"Anno, nie mam czasu na gierki... *co* przy mnie znalazłaś?"~ */ GOTO 392
END

IF ~~ THEN BEGIN 392 // from: 391.0
  SAY #67430 /* ~"Cóż miałeś ze sobom kastety, o tia... i troche brzdenku, ale to zostawiłam dla Grabów, żeby myśleli, żem choć troche uczciwa. Miałeś paskudny pierścień, który zatrzymałam..." Zanurza palec w naręczakach i wyciąga mały pierścień z wprawionym kamieniem. "Wart trzy razy tyle brzdenku, co kastety." Przygląda mu się. "Szkoda, że jest zbyt brzydki, by go nosić."~ */
  IF ~~ THEN REPLY #67431 /* ~"Chciałbym dostać pierścień z powrotem. Teraz."~ */ DO ~GiveItemCreate("Ring03",Protagonist,0,0,0)
~ GOTO 393
END

IF ~~ THEN BEGIN 393 // from: 392.0
  SAY #67432 /* ~Przygląda się pierścieniowi ze zmarszczonym czołem, patrzy na ciebie, po czym z powrotem na pierścień. Z parsknięciem oddaje ci przedmiot. "I tak nie chciałam tego paskudztwa, o nie."~ */
  IF ~~ THEN REPLY #67433 /* ~"Dobrze. Gdy mówiłaś, że część moich rzeczy dostała się w 'posiadanie' Faroda, co miałaś na myśli?"~ */ GOTO 394
  IF ~~ THEN REPLY #67434 /* ~"Zatem nieważne. Mam jeszcze inne pytania..."~ */ GOTO 477
  IF ~~ THEN REPLY #67435 /* ~"Porozmawiamy o tym później. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 394 // from: 393.0
  SAY #67436 /* ~"Tia. Farod zbiera skrawki z każdego ciała, które znajdziemy. To jego prawo jako władcy Wioski i w ogóle."~ */
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67437 /* ~"Z KAŻDEGO truposza, którego znajdziecie? To bardzo *wiele* ciał."~ */ GOTO 395
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67438 /* ~"W takim razie wszystko to trzyma w Skarbcu. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~  Global("AR0105_Visited","GLOBAL",1)
~ THEN REPLY #67439 /* ~"Zatem musi wszystko to trzymać w swoim Skarbcu. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 395 // from: 187.9 394.0 429.0 477.9
  SAY #67440 /* ~"Och, tia - słyszałam, że ten stary kulawiec ma gdzieś blisko siebie jakiś składzik. Wydaje mnie siem, że to tylko dlatego założył swe leże w tym brudnym, głupim pomieszczeniu. Nic, tylko smród i cienie."~ */
  IF ~~ THEN REPLY #67441 /* ~"Naprawdę? A gdzie trzyma te wszystkie rzeczy, które dostaje?"~ */ GOTO 396
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #67442 /* ~"Tia." Mruży oczy. "A o co ci chodzi? Chcesz go obrobić?"~ */
  IF ~~ THEN REPLY #67443 /* ~Prawda: "Nie. Nie mam powodu, żeby coś takiego robić. Farod nie wyrządził mi żadnej krzywdy."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Annah_1","GLOBALLaw",1)
~ GOTO 397
  IF ~~ THEN REPLY #67444 /* ~Kłamstwo: "Nie. Nie mam powodu, żeby coś takiego robić.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_2","GLOBALLaw",-1)
~ GOTO 397
  IF ~~ THEN REPLY #67445 /* ~"Po całym tym bieganiu, gdy już znalazłem dla niego tę kulę z brązu i w zamian nie dostałem prawie nic, zastanawiam się nad tym."~ */ GOTO 398
END

IF ~~ THEN BEGIN 397 // from: 396.0 396.1
  SAY #67446 /* ~"Cóż, *dobrze* - ostrzegam ciem przed czymś takim, o tia. Farod potrafi czasem być głupi, ale gdy siem wkurzy, to jest okrutny jak wszelkie biesy." Marszczy się. "I *kocha* swoje maskotki, o tia."~ */
  IF ~~ THEN REPLY #67447 /* ~"Ale gdzie on je wszystkie trzyma? Jeśli jest w Wiosce tak długo, jak twierdzi, to musiał zgromadzić całkiem niezłą kolekcję."~ */ GOTO 399
END

IF ~~ THEN BEGIN 398 // from: 396.2
  SAY #67448 /* ~"Ostrzegam ciem przed czymś takim, o tia. Farod potrafi czasem być głupi, ale gdy siem wkurzy, to jest okrutny jak wszelkie biesy." Marszczy się. "I *kocha* swoje maskotki, o tia."~ */
  IF ~~ THEN REPLY #67449 /* ~"Ale gdzie on je wszystkie trzyma? Jeśli jest w Wiosce tak długo, jak twierdzi, to musiał zgromadzić całkiem niezłą kolekcję."~ */ GOTO 399
END

IF ~~ THEN BEGIN 399 // from: 397.0 398.0
  SAY #67450 /* ~"Cóż..." Anna przez chwilę milczy. "Wiem, że nigdy nie opuścił swego dworu, by wzionć coś, czego potrzebował."~ */
  IF ~~ THEN REPLY #67451 /* ~"Nie chciałby zapewne wędrować specjalnie daleko z tą kulawą nogą."~ */ GOTO 400
END

IF ~~ THEN BEGIN 400 // from: 399.0
  SAY #67452 /* ~"Tia, to prawda - ale tylko gdy na niego dobrze nie patrzysz. On nie jest kulawy, choć nieźle odstawia to przedstawienie ze słabom nogom."~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #67453 /* ~"Więc po co mu ta laska?"~ */ GOTO 401
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #67454 /* ~"Więc ta jego laska... może to klucz do portalu?"~ */ GOTO 402
END

IF ~~ THEN BEGIN 401 // from: 400.0
  SAY #67455 /* ~Anna wzrusza ramionami. "Nie wiem." Kiwa głową. "Równie dobrze możesz spytać, czemu masz kości dookoła bioder, o tia."~ */
  IF ~~ THEN REPLY #67456 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67457 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 402 // from: 400.1
  SAY #67458 /* ~Anna marszczy się w zamyśleniu, po czym powoli przytakuje. "Tia... to jest myśl." Wzrusza ramionami. "Nie wiem jednak, jakby jej użyć. Może po prostu trzeba jom *mieć*."~ */
  IF ~~ THEN REPLY #67459 /* ~"Może się tego dowiemy. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67460 /* ~"Może zastanowimy się nad tym później. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 403 // from: 187.8 477.8
  SAY #67461 /* ~"Stary kulawiec? To mój Tata... cóż, może nie *prawdziwy*. Znalazł mnie, gdy byłam małom dziewczynkom..." Anna wzrusza ramionami. "Potrzebował Zbieracza, który by siem wślizgnoł w miejsca, w które jego grubi kumple nie byli w stanie, wienc mnie wzioł na wychowanie."~ */
  IF ~  Global("Annah_Looks","GLOBAL",0)
~ THEN REPLY #67462 /* ~"I tak nie sądziłem, że jesteście podobni."~ */ DO ~SetGlobal("Annah_Looks","GLOBAL",1)
~ GOTO 404
  IF ~~ THEN REPLY #67463 /* ~"Możesz powiedzieć mi o nim coś jeszcze?"~ */ GOTO 424
  IF ~~ THEN REPLY #67464 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67465 /* ~"Rozumiem. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 404 // from: 403.0
  SAY #67466 /* ~Oczy Anny zwężają się, a jej ogon zaczyna bić w ziemię. "Co przez *to* rozumiesz?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67467 /* ~"Mam na myśli, że ciężko znaleźć jakieś podobieństwo między tym paskudnym, zgarbionym, chciwym, śmierdzącym trollem żlebowym a tobą."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 410
  IF ~~ THEN REPLY #67468 /* ~"Miałem na myśli to, że on nie wygląda specjalnie na diabelstwo."~ */ GOTO 405
  IF ~~ THEN REPLY #67469 /* ~"Miałem na myśli, że nie jesteś podobna do człowieka."~ */ GOTO 406
  IF ~~ THEN REPLY #67470 /* ~"Miałem na myśli to, że nie jesteście do siebie podobni."~ */ GOTO 407
  IF ~~ THEN REPLY #67471 /* ~"Nieważne. Mam jeszcze kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67472 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 405 // from: 404.1 409.1
  SAY #67473 /* ~"Tia, *nie wyglonda*... a jeśli byś wiedział o diabelstwach cokolwiek wiencej niż to, co usłyszałeś od jakiegoś Ulowca na ulicy, to dostrzegłbyś, że żadne z nas nie jest podobne do drugiego, kape?" Potrząsa głową. "Nie ma dla ciebie nadziei, to pewne."~ */
  IF ~~ THEN REPLY #67474 /* ~"Nie chciałem ciebie *obrazić*. Oboje bardzo się różnicie. Miałem na myśli to, że Farod jest... taki... *Farodowaty*, a tu nie."~ */ GOTO 407
  IF ~~ THEN REPLY #67475 /* ~"Nieważne. Mam jeszcze kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67476 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 406 // from: 404.2 409.2
  SAY #67477 /* ~"Och, to było głembokie, o tia! Zataczasz siem jak chodzonca rana i masz czelność mówić mi, jak wyglonda *człowiek*? Na Moce, możesz utononć we własnych hemoroidach!"~ */
  IF ~~ THEN REPLY #67478 /* ~"Nie chciałem ciebie *obrazić*. Oboje bardzo się różnicie. Miałem na myśli to, że Farod jest... taki... *Farodowaty*, a tu nie."~ */ GOTO 407
  IF ~~ THEN REPLY #67479 /* ~"Nieważne. Mam jeszcze kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67480 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 407 // from: 404.3 405.0 406.0 409.3
  SAY #67481 /* ~"Och, co podsuneło ci ten pomysł? Moje włosy? Moja skóra? Nie wiem, co jeszcze..." Anna uderza się lekko w czoło, po czym parska sarkastycznie. "Może to był *ogon*? O, tia, to mogło być to! Jesteś znacznie ostrzejszy, niż ja. Prawdziwy klejnot."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67482 /* ~"Mam na myśli, że ciężko znaleźć jakieś podobieństwo między tym paskudnym, zgarbionym, chciwym, śmierdzącym trollem żlebowym a tobą."~ */ GOTO 410
  IF ~~ THEN REPLY #67483 /* ~"Do diabła, jaki masz problem? Ja po prostu coś mówie, a ty to przekrencasz jak sztylet."~ */ GOTO 408
  IF ~~ THEN REPLY #67484 /* ~"Nieważne. Mam jeszcze kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67485 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 408 // from: 407.1
  SAY #67486 /* ~"Sztylet to sztylet, o tia."~ */
  IF ~~ THEN REPLY #67487 /* ~"Miałem na myśli to, że ty i Farod nie jesteście do siebie podobni. Nie macie wiele wspólnego."~ */ GOTO 410
END

IF ~~ THEN BEGIN 409 // from:
  SAY #67488 /* ~"Nie, nie rycz mi tu 'zapomnij, ruszajmy dalej'! Co miałeś na myśli mówionc to, co przed chwilom żeś rzekł?!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67489 /* ~"Mam na myśli, że ciężko znaleźć jakieś podobieństwo między tym paskudnym, zgarbionym, chciwym, śmierdzącym trollem żlebowym a tobą."~ */ GOTO 410
  IF ~~ THEN REPLY #67490 /* ~"Miałem na myśli to, że on nie wygląda specjalnie na diabelstwo."~ */ GOTO 405
  IF ~~ THEN REPLY #67491 /* ~"Miałem na myśli, że nie jesteś podobna do człowieka."~ */ GOTO 406
  IF ~~ THEN REPLY #67492 /* ~"Miałem na myśli to, że nie jesteście do siebie podobni."~ */ GOTO 407
END

IF ~~ THEN BEGIN 410 // from: 404.0 407.0 408.0 409.0
  SAY #67493 /* ~Twarz Anny pokrywa się głęboką czerwienią. "Och, *tak*? A skond to wiesz?"~ */
  IF ~~ THEN REPLY #67494 /* ~Prawda: "Słuchaj, czy kiedykolwiek na siebie *spojrzałaś*? Oprócz tego, jak się nosisz, jesteś pewna siebie, rozsądna i zgrabna. Nie mówiąc już o twoim cudownym wyglądzie: masz bujne, ognisto-rude włosy, zielone oczy i ten uderzający profil."~ */ GOTO 412
  IF ~~ THEN REPLY #67495 /* ~Kłamstwo: "Słuchaj, czy kiedykolwiek na siebie *spojrzałaś*? Oprócz tego, jak się nosisz, jesteś pewna siebie, rozsądna i zgrabna. Nie mówiąc już o twoim cudownym wyglądzie: masz bujne, ognisto-rude włosy, zielone oczy i ten uderzający profil."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_3","GLOBALLaw",-1)
~ GOTO 412
  IF ~~ THEN REPLY #67496 /* ~Prawda: "Słuchaj, spójrz na siebie. Jesteś przynajmniej dwa razy bardziej chciwym poszukiwaczem ciał niż Farod kiedykolwiek będzie, pachniesz tym dziwnym zapachem Ula, od którego łzawią mi oczy i masz ten brudny szczurzy ogon wyrastający ci z tyłu."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 411
END

IF ~~ THEN BEGIN 411 // from: 410.2
  SAY #67497 /* ~Twarz Anny wykrzywia się w parsknięcie, jej oczy błyszczą. "Och - lepiej *uważaj* na siebie, o tia. Może nastempnym razem to ciebie włożę w ksienge umarłych zamiast ciem stamtond wyciongać."~ */
  IF ~~ THEN REPLY #67498 /* ~"Spróbuj, *dziewczynko*, ale to i tak ja zbiorę twoje ciało."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #67499 /* ~"Dalej, możesz mi grozić, jeśli ci to pomaga. W międzyczasie mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67500 /* ~"Nieważne. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 412 // from: 410.0 410.1
  SAY #67501 /* ~Anna po prostu się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #67502 /* ~"Więc to właśnie miałem na myśli, gdy powiedziałem, że ty i Farod jesteście do siebie niepodobni."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 413
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #67503 /* ~Anna przytakuje, wciąż się w ciebie wpatrując. Nawet nie mrugnęła.~ */
  IF ~~ THEN REPLY #67504 /* ~"Słuchasz mnie?"~ */ GOTO 414
END

IF ~~ THEN BEGIN 414 // from: 413.0
  SAY #67505 /* ~Anna nagle pochyla się i gryzie cię mocno w kark, wydając lekkie syknięcie. Jednak zamiast się odsunąć, przyciska się do ciebie blisko i szepce ci do ucha: "Czy podobajom ci siem twoje szanse?" Jej ogon zaczyna powoli uderzać tu i tam, ale w rytmie raczej hipnotyzującym niż wściekłym."~ */
  IF ~~ THEN GOTO 415
END

IF ~~ THEN BEGIN 415 // from: 414.0
  SAY #67506 /* ~Czujesz jak serce Anny bije szybko, a jej policzki czerwienieją. Nagle zdajesz sobie sprawę, że jej skóra jest gładka, miękka. "Chcem ci coś powiedzieć, a ty nie możesz siem ze mnie śmiać."~ */
  IF ~~ THEN REPLY #67507 /* ~"W porządku..."~ */ GOTO 416
END

IF ~~ THEN BEGIN 416 // from: 415.0
  SAY #67508 /* ~"Czy wiesz, jak *pachniesz*? Och, tia - to mnie doprowadza do obłendu bardziej niż Chaosyta, o tia." Wącha twój policzek i wydaje z siebie niski, chętny syk. "Widzem, jak na mnie patrzysz i *podoba* mi siem to. Masz głodny *wzrok*, o tia. To mnie rozpala."~ */
  IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417 // from: 416.0
  SAY #67509 /* ~"Chcem ciem ugryźć, lekko w kark..." Drażni twoją szyję zębami, nie przecinając skóry, a gdy szepce, czujesz jej oddech w swoim uchu. Jej dłoń przesuwa się na tył twojej szyi i zaciska, czujesz jak jej paznokcie wpijają się w twoją skórę. "Pragne przeciongnonć paznokciami po twojej szyi i zmusić ciem, byś mnie pocałował."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 731
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67512 /* ~Trzymaj ją i słuchaj...~ */ GOTO 418
END

IF ~~ THEN BEGIN 418 // from: 417.1
  SAY #67511 /* ~"Czy wiesz, że mogem ciem *wyczuć* z pienćdziesienciu kroków, ten zapach formaliny, co siem roznosi od ciebie jak od zombich Grabów. Może jeśli byś siem nieco wymył, byłbyś niezłym konskiem." Jej oczy błyszczą. "Tak bym ciem uwielbiała, że byś spadł z iglicy." Cofa się, ogonem delikatnie przesuwa po twojej nodze, po czym obdarza cię twardym spojrzeniem. "Wienc... podobam ci siem?"~ */
  IF ~~ THEN REPLY #67514 /* ~Schwyć ją i też ugryź.~ */ GOTO 419
  IF ~~ THEN REPLY #67515 /* ~"Tak... tak."~ */ GOTO 422
  IF ~~ THEN REPLY #67516 /* ~"Anno, niech to już się więcej nie powtórzy, dobrze?"~ */ GOTO 423
END

IF ~~ THEN BEGIN 419 // from: 418.0
  SAY #67513 /* ~Chwytasz Annę i zanim zdążyła się wyrwać, gryziesz lekko w kark. Gdy twoje zęby dotykają jej skóry. Anna syczy głośno, drapiąc pazurami jak kot i odrywa się od ciebie. "Tylko ciem *drażniłam* ty, ty pokryty bliznami wampirze! Z-z-zostaw mnie!" Jednakże pomimo jej protestów, twarz ma zaczerwienioną i ciężko oddycha. "I trzymaj te swoje graby przy sobie!" Krzyżuje ręce. "Sprawiasz, że siem czerwienie, o tia!"~ */
  IF ~~ THEN REPLY #67517 /* ~Kłamstwo: "O co chodzi? Gryzienie to zwyczajowe powitanie tam, skąd pochodzę."~ */ GOTO 420
  IF ~~ THEN REPLY #67518 /* ~"Ty ugryzłaś *mnie*, ja ugryzłem *ciebie*. Jak ci się to nie podoba, to tego NIE rób."~ */ GOTO 421
  IF ~~ THEN REPLY #67519 /* ~"Słuchaj, dość tego... Mam do ciebie kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67520 /* ~"Dość tego. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 420 // from: 419.0
  SAY #67521 /* ~"Och, *dobrze*, wierzem ci." Oddech Anny zwalnia i wraca do normy. "Trzymaj tylko te swóje graby przy sobie, dobra?"~ */
  IF ~~ THEN REPLY #67522 /* ~"Słuchaj, dość tego... Mam do ciebie kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67523 /* ~"Dość tego. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 421 // from: 419.1
  SAY #67524 /* ~"Bendem robić, co *mi* siem podoba, o tia." Anna parska. Wciąż jest nieco zaczerwieniona. "Trzymaj tylko te swóje graby przy sobie, dobra?"~ */
  IF ~~ THEN REPLY #67525 /* ~"Słuchaj, dość tego... Mam do ciebie kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67526 /* ~"Dość tego. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 422 // from: 418.1
  SAY #67527 /* ~"Cóż, zatem twoje szanse som mniejsze, niż sondzisz, o tia." Anna parska. Wciąż zdaje się być lekko zaczerwieniona. "Tylko ciem *drażniłam*, ty, ty pokryty bliznami wampirze. Nie pachniesz aż *tak* dobrze, o nie."~ */
  IF ~~ THEN REPLY #67528 /* ~"Słuchaj, dość tego... Mam do ciebie kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67529 /* ~"Dość tego. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 423 // from: 418.2
  SAY #67530 /* ~"Tego siem nie obawiaj." Anna parska. Wciąż zdaje się być lekko zaczerwieniona. "Tylko ciem *drażniłam*, ty, ty pokryty bliznami wampirze. Nie pachniesz aż *tak* dobrze, o nie."~ */
  IF ~~ THEN REPLY #67531 /* ~"Słuchaj, dość tego... Mam do ciebie kilka pytań."~ */ GOTO 477
  IF ~~ THEN REPLY #67532 /* ~"Dość tego. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 424 // from: 403.1
  SAY #67533 /* ~"Jest w Wiosce dłużej ode mnie. Przybył tam jakoś strasznie dawno, niektórzy twierdzom, że *założył* to miejsce." Anna marszczy się. "To prawa renka Faroda, o tia. Ma sposoby na wyduszenie wienkszej ilości miedziaków, niż reszta i nigdy mu nie brakowało brzdenku."~ */
  IF ~  Global("Pharod_Annah_Story","GLOBAL",0)
~ THEN REPLY #67534 /* ~"Czy szukał tej kuli z brązu cały czas?"~ */ GOTO 425
  IF ~  Global("Pharod_Annah_Story","GLOBAL",1)
~ THEN REPLY #67535 /* ~"Czy szukał tej kuli z brązu cały czas?"~ */ GOTO 426
  IF ~  Global("AR0105_Visited","GLOBAL",0)
~ THEN REPLY #67536 /* ~"Z pewnością nie miał wiele bogactwa, gdy go odwiedziłem. Chyba szczypie się bardziej, niż ci się wydaje."~ */ GOTO 429
  IF ~~ THEN REPLY #67537 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67538 /* ~"Rozumiem. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 425 // from: 424.0
  SAY #67539 /* ~"Tak sondzem." Anna ponownie wzrusza ramionami. "Nie wiem, czemu był taki napalony, by jom zdobyć, o nie. Mogłam to wyczuć jak tylko żeś mu to przyniósł." Marszczy nos. "Miała smród zepsutego budyniu. Mimo to... musiało to być coś dla niego cennego, że tak tego pragnoł - prawie połowa Zbieraczy została zapisana do ksiengi umarłych, starajonc siem jom zdobyć."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #67540 /* ~"Sądzę, że szukał jej, ponieważ sądził, że ocali mu ona życie."~ */ DO ~SetGlobal("Pharod_Annah_Story","GLOBAL",1)
AddexperienceParty(2500)
~ GOTO 427
  IF ~~ THEN REPLY #67541 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67542 /* ~"Rozumiem. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 426 // from: 424.1
  SAY #67543 /* ~"Jeśli jest tak, jak powiedziałeś, to sondze, że tak było." Anna ponownie wzrusza ramionami. "Nie można zmierzyć głupoty Faroda, o nie. Drobiazg nie ocali ciem przed renkom losu. Jeśli plamy na twojej duszy som wystarczajonco czarne, żadna ilość prania ich nie wywabi." Milknie. "Chociaż jeśli sondził, że może go ona ocalić, to może w jakiś sposób *była* ważna... albo przynajmniej warta odrobine brzdenku."~ */
  IF ~~ THEN REPLY #67544 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67545 /* ~"Rozumiem. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 427 // from: 425.0
  SAY #67546 /* ~Mruga. "Co masz na myśli?"~ */
  IF ~~ THEN REPLY #67547 /* ~"Z tego co wiem, Farod nie prowadził dobrego życia - był kiedyś 'Guwernantem' w jednej z Wyższych Dzielnic. Najwyraźniej używał swojej pozycji, by kłamać, oszukiwać i ranić innych - tak bardzo, że gdy umarł, musiał pójść do piekieł. Myślał, że ta kula z brązu jakoś go ocali - tak bardzo, że odrzucił tytuł, bogactwo i pozycję, by spróbować ją odnaleźć."~ */ JOURNAL #67548 /* ~Powiedziałem Annie o tym, co dowiedziałem się w Ulu od Śmierdziwiatra. Nie wydaje się, aby Anna znała przeszłość Faroda, dlatego przysłuchiwała się moim słowom z dużym zdziwieniem.~ */ GOTO 428
END

IF ~~ THEN BEGIN 428 // from: 427.0
  SAY #67549 /* ~"Naprawdę?" Na chwilę milknie, po czym potrząsa głową. "Nie można zmierzyć głupoty Faroda, o nie. Drobiazg nie ocali ciem przed renkom losu. Jeśli plamy na twojej duszy som wystarczajonco czarne, żadna ilość prania ich nie wywabi." Milknie. "Chociaż jeśli sondził, że może go ona ocalić, to może w jakiś sposób *była* ważna... albo przynajmniej warta odrobine brzdenku."~ */
  IF ~~ THEN REPLY #67550 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67551 /* ~"Rozumiem. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 429 // from: 424.2
  SAY #67552 /* ~"Nie, nie pokazywał tego, ale jest chomikiem, o tia, i nie lubi, jak inni oglondajom jego rzeczy, wienc trzyma je w ukryciu."~ */
  IF ~~ THEN REPLY #67553 /* ~"Więc swoje kosztowności ma uryte?"~ */ GOTO 395
END

IF ~~ THEN BEGIN 430 // from: 187.14 477.14
  SAY #67554 /* ~Anna marszczy się. "Ona nie miała na myśli *nic*, o nie. Zbzikowane gadanie wiedźmy, o tia."~ */
  IF ~~ THEN REPLY #67555 /* ~"Czy jesteś pewna?"~ */ GOTO 431
  IF ~~ THEN REPLY #67556 /* ~"Zatem nieważne. Jest jeszcze coś, o co chciałbym cię spytać..."~ */ GOTO 477
  IF ~~ THEN REPLY #67557 /* ~"Zatem zapomnij o tym. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 431 // from: 430.0
  SAY #67558 /* ~"To NIC nie było. Jeśli ty nie wiesz, co ona mówiła, to ja też nie."~ */
  IF ~~ THEN REPLY #67559 /* ~"Cóż, jeśli chcesz o tym porozmawiać, to słuch..."~ */ GOTO 432
  IF ~~ THEN REPLY #67560 /* ~"Zatem nieważne. Jest jeszcze coś, o co chciałbym cię spytać..."~ */ GOTO 477
  IF ~~ THEN REPLY #67561 /* ~"Zatem zapomnij o tym. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 432 // from: 431.0
  SAY #67562 /* ~"Ja..." Głos Anny na chwilę opada. "Nie wiem, czemu z tobom podróżujem! Nie wiem, czemu poszłam z tobom, by znaleźć Ravele!" Marszczy się, ale zdaje się być bardziej skonfundowana niż wściekła. "To nie ma *sensu*, o nie, a ja tego nie lubie."~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Ravel_Torment","GLOBAL",1)
~ GOTO 433
END

IF ~~ THEN BEGIN 433 // from: 432.0
  SAY #67563 /* ~"Ja..." Anna bierze głęboki oddech. "Chyba coś do ciebie *czuje*. To dziwne, o tia... i nie sondzem, żebym kiedykolwiek *kogoś* lubiła. Ale ciebie..." Anna wzrusza niepewnie ramionami, nie patrząc ci w oczy. "Nie wiem, co w tobie jest, to znaczy - czensto jesteś *głupi*, chodzisz jakbyś miał połamane biodra, jesteś niezgrabny, śmierdzisz jak zombie, ale..." Wzdycha. "*Lubie* ciem."~ */
  IF ~~ THEN REPLY #67565 /* ~"Anno, czemu nic nie powiedziałaś? Mogliśmy to rozwiązać dawno t..."~ */ GOTO 437
  IF ~~ THEN REPLY #67566 /* ~"Anno, zależy mi na tobie... ale nie w ten sposób."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 434
END

IF ~~ THEN BEGIN 434 // from: 433.1
  SAY #67564 /* ~Anna marszczy się i patrzy w ziemię. "Tia, może to i *lepiej*, o tia. Uczucia do innych tylko ciem raniom w takich miejscach, które siem nie leczom."~ */
  IF ~~ THEN REPLY #67567 /* ~"Anno, czemu nic nie powiedziałaś? Mogliśmy to rozwiązać dawno t..."~ */ GOTO 435
END

IF ~~ THEN BEGIN 435 // from: 434.0
  SAY #67568 /* ~"To dlatego, że sondze żeś jest *zgubiony*." Anna nagle patrzy ci w oczy. "Sondze, że chodzisz w kajdanach, ale jeszcze o tym nie wiesz. Wienc... zależy mi na tobie, ale siem o ciem obawiam... i to mnie *zabija*, o tia. Nie chce, abyś doznał krzywdy, ale nie wiem co zrobić, żeby do tego nie dopuścić. Wienc... idem z tobom."~ */
  IF ~~ THEN REPLY #67569 /* ~"Doceniam to, że przy mnie stoisz, Anno."~ */ GOTO 436
  IF ~~ THEN REPLY #67570 /* ~"Cóż, sądzę, że jestem zgubiony. Słuchaj, mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67571 /* ~"Rozumiem. Słuchaj, dość już tego: idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 436 // from: 435.0 437.2
  SAY #67572 /* ~"Tia... cóż..." Milknie na chwilę, po czym wzrusza ramionami. "Nieważne."~ */
  IF ~~ THEN REPLY #67573 /* ~"Słuchaj, mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67574 /* ~"Zatem dobrze, Anno. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 437 // from: 433.0
  SAY #67575 /* ~"To dlatego, że sondze żeś jest *zgubiony*." Anna nagle patrzy ci w oczy. "Sondze, że chodzisz w kajdanach, ale jeszcze o tym nie wiesz. Wienc... zależy mi na tobie, ale siem o ciem obawiam... i to mnie *zabija*, o tia. Nie chce, abyś doznał krzywdy, ale nie wiem co zrobić, żeby do tego nie dopuścić!"~ */
  IF ~  NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67576 /* ~Pocałuj ją.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
Global("Annah_Kissing","GLOBAL",0)
~ THEN REPLY #67577 /* ~Pocałuj ją.~ */ GOTO 444
  IF ~  Global("Annah_Kissing","GLOBAL",1)
~ THEN REPLY #67696 /* ~"Doceniam to, że ze mną jesteś, Anno."~ */ GOTO 436
END

IF ~~ THEN BEGIN 438 // from: 187.13 477.13
  SAY #67578 /* ~Anna parska. "Tia, nie pierz teraz tych brudów. Jeśli chcesz siem całować z biesem, pocałowanie tej wiedźmy to była najprawdopodobniej *najbezpieczniejsza* rzecz, jakom mogłeś uczynić." Spluwa. "A teraz przestań kłapać trumnom. Nie chcem słyszeć już o tym ani słowa, o nie."~ */
  IF ~~ THEN REPLY #67579 /* ~"Zatem nieważne. Jest jeszcze coś, o co chciałbym cię spytać..."~ */ GOTO 477
  IF ~~ THEN REPLY #67580 /* ~"Zatem zapomnij o tym. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 439 // from:
  SAY #67581 /* ~Anna marszczy się, po czym przytakuje. "Tia, dobrześ zrobił, żeś nie pocałował tej wiedźmy, o tia."~ */
  IF ~~ THEN REPLY #67582 /* ~"Cóż, nie pocałowałem jej, ponieważ chciałem pocałować ciebie."~ */ GOTO 440
  IF ~~ THEN REPLY #67583 /* ~"Zatem nieważne. Jest jeszcze coś, o co chciałbym cię spytać..."~ */ GOTO 477
  IF ~~ THEN REPLY #67584 /* ~"Zatem zapomnij o tym. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #67585 /* ~"Ech? Co?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67586 /* ~Pocałuj ją.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67587 /* ~Pocałuj ją.~ */ GOTO 444
  IF ~~ THEN REPLY #67588 /* ~"Nieważne. Jest jeszcze coś, o co chciałem cię zapytać..."~ */ GOTO 477
  IF ~~ THEN REPLY #67589 /* ~"Zapomnij. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 441 // from: 187.12 477.12
  SAY #67590 /* ~Anna wywraca oczami. "Och, tia, pocałujesz najgorszom, najbrzydszom wiedźme ze wszystkich znanych w Sferach, ale nie zrobisz tego ze mnom? Och, tia, cokolwiek teraz powiesz, tylko to polepszy, o tia!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #67591 /* ~Pocałuj ją.~ */ GOTO 442
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #67592 /* ~Pocałuj ją.~ */ GOTO 444
  IF ~~ THEN REPLY #67594 /* ~"Zatem nieważne. Jest jeszcze coś, o co chciałbym cię spytać..."~ */ GOTO 477
  IF ~~ THEN REPLY #67595 /* ~"Zatem zapomnij o tym. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 442 // from: 437.0 440.0 441.0
  SAY #67596 /* ~Chwytasz ją wolną ręką za tylną część szyi i patrzysz, jak jej rysy tężeją, gdy przyciągasz i całujesz ją w usta.~ */
  IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443 // from: 442.0
  SAY #67597 /* ~Z początku jest to jak całowanie ściany, ale potem powoli ona zaczyna oddawać pocałunki, najpierw z wahaniem, potem pewniej. Jej usta lekko gryzą twoją główną wargę. Słyszysz, jak mruczy, a jej ogon zaczyna owijać się wokół twojej nogi, po czym *zaciska się*, a każde ściśnięcie to kolejne ugryzienie.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 732
END

IF ~~ THEN BEGIN 444 // from: 437.1 440.1 441.1
  SAY #67598 /* ~Chwytasz ją wolną ręką za tylną część szyi i patrzysz, jak jej rysy tężeją, gdy przyciągasz i całujesz ją w usta.~ */
  IF ~~ THEN GOTO 445
END

IF ~~ THEN BEGIN 445 // from: 444.0
  SAY #67599 /* ~Z początku jest to jak całowanie ściany, ale potem powoli ona zaczyna oddawać pocałunki, najpierw z wahaniem, potem pewniej. Jej usta lekko gryzą twoją główną wargę. Słyszysz, jak mruczy, a jej ogon zaczyna owijać się wokół twojej nogi, po czym *zaciska się*, a każde ściśnięcie to kolejne ugryzienie.~ */
  IF ~~ THEN GOTO 446
END

IF ~~ THEN BEGIN 446 // from: 445.0
  SAY #67601 /* ~Gdy ją całujesz, nagle zauważasz, że skóra Anny stała się ciepła - promieniuje gorącem jak rozżarzone węgle. Cofasz się, Anna po raz ostatni cię gryzie, po czym patrzy na ciebie ze zdziwieniem, potem z wściekłością. "O co chodzi? Nie jestem w tym dobra, tia?"~ */
  IF ~~ THEN REPLY #67602 /* ~"Nie, to twoja skóra - czemu nagle zrobiłaś się taka gorąca?"~ */ DO ~SetGlobal("Annah_Kissing","GLOBAL",1)
PermanentStatChange("Annah",RESISTFIRE,RAISE,5)
PermanentStatChange("Annah",RESISTMAGICFIRE,RAISE,5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 447
END

IF ~~ THEN BEGIN 447 // from: 446.0
  SAY #67603 /* ~"Tia?" Anna marszczy się i przygląda się sobie. Zauważasz, że spod jej kostiumu wydobywają się cieniutkie wstęgi dymu. "To biesia krew..." Wznosi brwi. "*Coś takiego* nigdy mi się nie zdarzyło."~ */
  IF ~~ THEN REPLY #67604 /* ~"Co? Nikt cię przedtem nie pocałował?"~ */ GOTO 448
END

IF ~~ THEN BEGIN 448 // from: 447.0
  SAY #67605 /* ~Wzrusza ramionami. "Nikt siem nigdy nie *odważył*. A nawet gdyby, to i tak wontpie, czy to by było tak jak teraz."~ */
  IF ~~ THEN REPLY #67606 /* ~"Uznam to zatem za komplement."~ */ GOTO 449
END

IF ~~ THEN BEGIN 449 // from: 448.0
  SAY #67607 /* ~"Tia... hem..." Anna rozgląda się dookoła i macha niezdarnie ogonem. "Czy bendziemy teraz iść dalej, czy co? Nie mamy czasu, by stać i gadać, o nie."~ */
  IF ~~ THEN REPLY #67608 /* ~"Cóż, *ja* jeszcze nie skończyłem cię całować. Chodź tutaj."~ */ GOTO 450
  IF ~~ THEN REPLY #67692 /* ~"W porządku, ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 450 // from: 449.0
  SAY #67609 /* ~Cofa się, przestraszona. "Nie - kto wie, co mogłoby siem dalej stać - może zamieniłabym siem w *płomień*, o tia! Lepiej trzymaj siem z tymi ustami z daleka!"~ */
  IF ~~ THEN REPLY #67610 /* ~"Dobra - TYM razem. Ruszajmy dalej."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 460 even though they appear after this state */
~  InParty("Annah")
InParty("Grace")
Global("Annah_Accuse_Grace","GLOBAL",0)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 451 // from:
  SAY #67611 /* ~Anna po prostu patrzy na ciebie, gdy się do niej zwracasz i marszczy brwi. "Tia? Czego *teraz* chcesz?"~ */
  IF ~~ THEN REPLY #67612 /* ~"Czy wszystko w porządku?"~ */ GOTO 452
  IF ~~ THEN REPLY #67613 /* ~"Mam kilka pytań, które chciałbym ci zadać."~ */ GOTO 453
  IF ~~ THEN REPLY #67614 /* ~Nic, Anno. Po prostu sprawdzałem, czy wciąż jesteś ze mną."~ */ EXIT
END

IF ~~ THEN BEGIN 452 // from: 451.0
  SAY #67615 /* ~Anna po prostu się w ciebie wpatruje.~ */
  IF ~~ THEN REPLY #67616 /* ~"Chciałem zadać ci kilka pytań."~ */ GOTO 453
  IF ~~ THEN REPLY #67617 /* ~"Zatem trudno. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 453 // from: 451.1 452.0
  SAY #67618 /* ~"Czemu zatem nie spytasz swojego stuk-uba, co?" Oczy Anny zwężają się w szparki. "Czemu w ogóle z nią *podróżujemy*? Nie POTRZEBUJEMY jej, o nie."~ */
  IF ~~ THEN REPLY #67619 /* ~"Nie mam na to *czasu*, Anno. Przestań zachowywać się jak banshee i pomóż mi."~ */ GOTO 455
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67620 /* ~"Anno, potrzebuję wszelkiej pomocy, jaką jestem w stanie otrzymać - w tym twojej."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67621 /* ~"Anno, *proszę*. Jesteś dla mnie bardzo ważna, a ja potrzebuję twojej pomocy."~ */ GOTO 458
  IF ~~ THEN REPLY #67622 /* ~"Anno, chcę, żebyś ty ze mną została - nie ona. Jeśli ci przeszkadza, to poproszę ją, żeby odeszła."~ */ GOTO 454
  IF ~~ THEN REPLY #67623 /* ~"Nie mam *czasu*, Anno, żeby się z tobą sprzeczać na ten temat. Jeśli nie podoba ci się towarzystwo Nie-Sławy, to odejdź."~ */ GOTO 455
  IF ~~ THEN REPLY #67624 /* ~"Omówimy to później. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 454 // from: 453.3
  SAY #67625 /* ~"Zatem to zrób!" Anna wpatruje się w ciebie. "Założe siem, że tego nie zrobisz - jeśli tak się stanie, to wyjdzie nam to na dobre. Jeśli nie, to znowu o tym bendziemy rozmawiać, o tia."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #67626 /* ~"Anno, potrzebuję wszelkiej pomocy, jaką jestem w stanie otrzymać - w tym twojej."~ */ GOTO 456
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67627 /* ~"Anno, *proszę*. Jesteś dla mnie bardzo ważna, a ja potrzebuję twojej pomocy."~ */ GOTO 458
  IF ~~ THEN REPLY #67629 /* ~"Nie mam *czasu*, Anno, żeby się z tobą sprzeczać na ten temat. Jeśli nie podoba ci się towarzystwo Nie-Sławy, to odejdź."~ */ GOTO 455
  IF ~~ THEN REPLY #67630 /* ~"Omówimy to później. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 455 // from: 453.0 453.4 454.2 457.1 457.2 460.2 461.3 462.1 463.4
  SAY #67631 /* ~"A kto ciem zatem *POTRZEBUJE*?!" Anna bierze sakwę, rzuca ją przed tobą, po czym spluwa na nią. "NIGDY już ze mnom nie rozmawiaj, albo ci flaki wyprujem, ty brudny, głupi, pokryty bliznami, śmierdzoncy WRAKU. Mam nadzieje, że ZGNIJESZ!"~ */
  IF ~~ THEN REPLY #67632 /* ~"Zatem odejdź. Nie chcę cię już więcej widzieć."~ */ DO ~LeaveParty()
DropInventory()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 456 // from: 453.1 454.0
  SAY #67633 /* ~"Jesteś paskudnym *kłamcom*, o tia. Pozwoliłeś mi siem włóczyć za sobom, ponieważ nie wiesz, co jeszcze można by ze mnom zrobić, o nie! Czemu po prostu nie powiedziałeś mi, żebym siem wypchała, jak Farod uczynił mnie twojom opiekunkom?!"~ */
  IF ~~ THEN REPLY #67634 /* ~"Ponieważ..."~ */ GOTO 457
END

IF ~~ THEN BEGIN 457 // from: 456.0
  SAY #67635 /* ~"Czy sondzisz, że PODOBA mi siem podróżowanie z tobom?! Tak SONDZISZ?! Ponieważ..." Twarz Anny wyraża obrzydzenie. "Twoje życie, jeśli można je tak NAZWAĆ, jest POBOJOWISKIEM, podobnie jak twoja *skóra* - całe pociente i pokryte bliznami. Sondzisz, że masz jakieś wielkie spotkanie z losem albo przeznaczeniem, ale nie! Jesteś po prostu *śmieciem*, o tia!"~ */
  IF ~~ THEN REPLY #67636 /* ~"Anno, nie porosiłem cię, żebyś odeszła, ponieważ nie *chciałem*, żebyś odeszła."~ */ GOTO 458
  IF ~~ THEN REPLY #67637 /* ~"*Nigdy* tak już do mnie nie mów. Będziesz milczeć i robić to, co ci się każe, albo twoje życie stanie się takim samym pobojowiskiem jak moje."~ */ GOTO 455
  IF ~~ THEN REPLY #67638 /* ~"Nie mam *czasu*, Anno, żeby się z tobą sprzeczać na ten temat. Jeśli nie podoba ci się towarzystwo Nie-Sławy, to odejdź."~ */ GOTO 455
END

IF ~~ THEN BEGIN 458 // from: 453.2 454.1 457.0
  SAY #67639 /* ~"Och, tia, a czemuż TO znowu? To powinno być głembokie, o tia. Żal ci mnie, tia? Sondzisz, że ciem spowalniam? Dalej, powiedz to!"~ */
  IF ~~ THEN REPLY #67640 /* ~"*Nie* jest mi ciebie żal i *nie* spowalniasz mnie - jesteś szybka, wyszkolona, a ja naprawdę potrzebuję wszelkiej pomocy, jaką jestem w stanie otrzymać."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Accuse_Grace","GLOBAL",1)
~ GOTO 459
END

IF ~~ THEN BEGIN 459 // from: 458.0
  SAY #67641 /* ~Anna marszczy się, jej ogon uderza raz z jednej strony, raz z drugiej. "Tia... cóż... *wiedz*, że wybebesze jom, jeśli tylko zacznie siem ona przyglondać tobie jak śniadaniu, o tia." Wpatruje się w ciebie. "I nie sondź, że zostajem, ponieważ *ty* tego chcesz - po prostu ci pomagam, tia."~ */
  IF ~~ THEN REPLY #67642 /* ~"Dobra. Mam kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67643 /* ~"Ruszajmy dalej."~ */ EXIT
END

IF WEIGHT #5 ~  !InParty("Annah")
GlobalGT("Annah","GLOBAL",0)
Global("Annah_Talked_Grace","GLOBAL",5)
!GlobalGT("Fortress_Annah","GLOBAL",2)
~ THEN BEGIN 460 // from:
  SAY #67644 /* ~"Czego chcesz?!"~ */
  IF ~  InParty("Grace")
~ THEN REPLY #67645 /* ~"Anno, potrzebuję twojej pomocy. Czy będziesz znowu ze mną podróżować?"~ */ GOTO 461
  IF ~  !InParty("Grace")
~ THEN REPLY #67646 /* ~"Anno, potrzebuję twojej pomocy. Czy będziesz znowu ze mną podróżować?"~ */ GOTO 469
  IF ~~ THEN REPLY #67647 /* ~"Jeśli nie będziesz już z nami podróżować, to chcę z powrotem swoje rzeczy. Teraz."~ */ GOTO 455
  IF ~~ THEN REPLY #67914 /* ~"Nic - nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 461 // from: 460.0
  SAY #67648 /* ~"Tam do DIABŁA, jeśli bendem! Nie z *niom*, o nie! Oboje możecie siem wykopać do Otchłani i tam ZGNIĆ, o tia!"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #67649 /* ~"Anno, potrzebuję twego towarzystwa. Czy będziesz znowu ze mną podróżować?"~ */ GOTO 462
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67650 /* ~Prawda: "Anno, Nie-Sława nie znaczy dla mnie tyle, co ty. Proszę, czy będziesz znowu z nami podróżować?"~ */ GOTO 463
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #67651 /* ~Kłamstwo: "Anno, Nie-Sława nie znaczy dla mnie tyle, co ty. Proszę, czy będziesz znowu z nami podróżować?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_5","GLOBALLaw",-1)
~ GOTO 463
  IF ~~ THEN REPLY #67652 /* ~"Jeśli nie będziesz już z nami podróżować, to chcę z powrotem swoje rzeczy. Teraz."~ */ GOTO 455
  IF ~~ THEN REPLY #67915 /* ~"Nic - nieważne. Żegnaj."~ */ GOTO 468
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #67653 /* ~"Nie, nie bendem podróżować z takom pożerajoncom dusze suką jak ona, o nie! Ona musi *odejść*, o tia!"~ */
  IF ~~ THEN REPLY #67654 /* ~"Dobre, zatem zobaczę, co się da z tym zrobić. Porozmawiamy później."~ */ EXIT
  IF ~~ THEN REPLY #67655 /* ~"Jeśli nie będziesz już z nami podróżować, to chcę z powrotem swoje rzeczy. Teraz."~ */ GOTO 455
  IF ~~ THEN REPLY #67916 /* ~"Przykro mi, że tak sądzisz... zatem trudno. Żegnaj."~ */ GOTO 468
END

IF ~~ THEN BEGIN 463 // from: 461.1 461.2
  SAY #67656 /* ~"Jeśli nie znaczy dla ciebie tak wiele, to *ona* musi odejść, o tia. Nie bendem podróżować z tom pożerajoncom dusze suką, o nie!~ */
  IF ~~ THEN REPLY #67657 /* ~Prawda: "Anno, słuchaj, ona mnie *nie obchodzi*. *Pragnę*, abyś ty ze mną podróżowała, ale potrzebuję też przez chwilę jej pomocy. Po tym wszystkim zostaniemy tylko ty i ja."~ */ GOTO 464
  IF ~~ THEN REPLY #67658 /* ~Kłamstwo: "Anno, słuchaj, ona mnie *nie obchodzi*. *Pragnę*, abyś ty ze mną podróżowała, ale potrzebuję też przez chwilę jej pomocy. Po tym wszystkim zostaniemy tylko ty i ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Annah_6","GLOBALLaw",-1)
~ GOTO 464
  IF ~~ THEN REPLY #67659 /* ~"Zatem nie będziesz podróżować z NIKIM. Ja cię tu zostawię, a ty możesz wrócić do swojego żałosnego życia i obrabiania ciał, albo pójść z nami."~ */ GOTO 465
  IF ~~ THEN REPLY #67660 /* ~"Dobre, zatem zobaczę, co się da z tym zrobić. Porozmawiamy później."~ */ EXIT
  IF ~~ THEN REPLY #67661 /* ~"Jeśli nie będziesz już z nami podróżować, to chcę z powrotem swoje rzeczy. Teraz."~ */ GOTO 455
  IF ~~ THEN REPLY #67917 /* ~"Przykro mi, że tak sądzisz... zatem trudno. Żegnaj."~ */ GOTO 468
END

IF ~~ THEN BEGIN 464 // from: 463.0 463.1
  SAY #67662 /* ~Oczy Anny wpatrują się w ciebie przez chwilę, starając się wyczytać coś z twojej twarzy. "Lepiej żebyś był ze mnom szczery, o tia."~ */
  IF ~~ THEN REPLY #67663 /* ~"Jestem. Chodź."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 463.2
  SAY #67664 /* ~Anna patrzy na ciebie - jej gniew znika, gdy wypowiadasz te słowa, a jej czoło rozpogadza. "Więc... może... tak uczynię, o tia. Do tej pory było mi dobrze!"~ */
  IF ~~ THEN REPLY #67665 /* ~"Doskonale. Po prostu wróć do obrabiania truposzy, a może pewnego dnia skończysz tak jak Farod, pokręcona, chora i *słaba*. ALBO możesz pójść z nami. Twój wybór."~ */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #67666 /* ~Anna wpatruje się w ciebie, jej ogon pozostaje bez ruchu.~ */
  IF ~~ THEN REPLY #67667 /* ~"Twój wybór. Teraz."~ */ GOTO 467
END

IF ~~ THEN BEGIN 467 // from: 466.0
  SAY #67668 /* ~"Ja... pójdem z tobom, tia."~ */
  IF ~~ THEN REPLY #67669 /* ~"Dobrze. Ruszajmy."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",0)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 468 // from: 461.4 462.2 463.5
  SAY #67670 /* ~"Tia, wracaj w ramiona tej swojej skrzydlatej dziwki!" Anna spluwa. "Nie chcem mieć wiencej do czynienia z wami obojgiem, o nie!"~ */
  IF ~~ THEN REPLY #67671 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 469 // from: 460.1
  SAY #67672 /* ~Oczy Anny zwężają się w szparki. "Gdzie jest ten stuk-ubus? Próbowała ciem ugryźć i posłać w Otchłań, tia?"~ */
  IF ~~ THEN REPLY #67673 /* ~"Ona już z nami nie podróżuje, Anno. Chciałbym, żebyś znowu do nas dołączyła."~ */ GOTO 470
  IF ~~ THEN REPLY #67674 /* ~"Nic - nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 470 // from: 469.0
  SAY #67675 /* ~"Skond mam wiedzieć, że tak ZOSTANIE, co? Co jeśli ona wróci - albo..." Anna zdaje się być sfrustrowana. "Ktoś taki jak ONA pojawi siem w okolicy, tia? Czy znowu bendzie ta sama stara śpiewka?"~ */
  IF ~~ THEN REPLY #67676 /* ~"Anno, to już się więcej nie powtórzy."~ */ GOTO 471
  IF ~~ THEN REPLY #67677 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 471 // from: 470.0
  SAY #67678 /* ~"Tia... cóż... lepiej bondź ostrożny, o tia. Bendem z tobom podróżować, o tia."~ */
  IF ~~ THEN REPLY #67679 /* ~"Doskonale. Ruszajmy dalej."~ */ DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
ChangeAIScript("pcannah",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 187.6 477.6
  SAY #67697 /* ~Ogon Anny zatrzymuje się, gdy wypowiadasz te słowa, a ona się w ciebie wpatruje. "Czy mówisz poważnie? To nie czas na żarty, o nie."~ */
  IF ~~ THEN REPLY #67698 /* ~"Nie, Anno - znalazłem go martwego na Dworze Złych Wiatrów. Czy wiesz, kto mógł go zabić?"~ */ GOTO 476
END

IF ~~ THEN BEGIN 473 // from: 187.7 477.7
  SAY #67699 /* ~"Ja..." Potrząsa głową. "*Nie wiem*. Nikt z odrobinom zdrowego rozsondku by tego nie uczynił - Farod miał długi cień, o tia. Zakapujesz go, to kończysz z kijkiem, o tia."~ */
  IF ~~ THEN REPLY #67700 /* ~"Nie musisz dalej ze mną podróżować, Anno. Jeśli chcesz zostać w Zakopanej Wiosce, to..."~ */ GOTO 474
  IF ~~ THEN REPLY #67701 /* ~"Zatem dobrze. Mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67702 /* ~"Zatem nie ważne. Ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 474 // from: 473.0
  SAY #67704 /* ~"Nie..." Przerywa ci. "Nie potrzebujem tam zostawać - i zastanawiałam siem, co bendem robić, skoro Farod został wpisany do ksiengi umarłych, o tia." Parska. "Och, cóż, najprawdopodobniej ozdabia czyjomś ściane w piekle, o tia."~ */
  IF ~~ THEN REPLY #67705 /* ~"Ale... on jest twoim ojcem. Czy ty..."~ */ DO ~SetGlobal("Annah_Discovers_Pharod","GLOBAL",3)
~ GOTO 475
END

IF ~~ THEN BEGIN 475 // from: 474.0
  SAY #67706 /* ~"Nie moim *prawdziwym* Tatom, o nie." Jej oczy przybierają twardy wyraz. "Był chciwy i głupi, samolubny i słaby." Marszczy się. "A teraz jest martwy. I to wszystko."~ */
  IF ~~ THEN REPLY #67707 /* ~"Zatem dobrze. Było jeszcze coś, o co chciałbym cię spytać..."~ */ GOTO 477
  IF ~~ THEN REPLY #67708 /* ~"Zatem ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 476 // from: 472.0
  SAY #67709 /* ~"Nie... ale *muszem* jednak zobaczyć jego ciało. Farod to niezła spryciula, może stara siem ciebie wykołować..."~ */
  IF ~~ THEN REPLY #67710 /* ~"Pokażę ci je za chwilę. Najpierw jednak mam jeszcze kilka pytań..."~ */ GOTO 477
  IF ~~ THEN REPLY #67711 /* ~"Zatem ci go pokażę."~ */ EXIT
END

IF ~~ THEN BEGIN 477 // from: 316.1 317.1 318.0 319.1 320.1 321.0 322.5 324.0 326.3 345.0 347.0 348.5 362.0 363.4 371.0 372.1 373.1 374.1 376.0 377.1 378.1 379.1 380.0 387.0 389.1 390.0 393.1 394.1 401.0 402.0 403.2 404.4 405.1 406.1 407.2 411.1 419.2 420.0 421.0 422.0 423.0 424.3 425.1 426.0 428.0 430.1 431.1 435.1 436.0 438.0 439.1 440.2 441.2 459.0 473.1 475.0 476.0
  SAY #67712 /* ~"Tia?"~ */
  IF ~  Global("AR0403_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67714 /* ~"Więc gdzie jest to miejsce, w którym znalazłaś moje ciało?"~ */ GOTO 377
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67716 /* ~"Więc gdzie jest to miejsce, w którym znalazłaś moje ciało?"~ */ GOTO 378
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67717 /* ~"Więc gdzie jest to miejsce, w którym znalazłaś moje ciało?"~ */ GOTO 379
  IF ~  Global("AR0403_Visited","GLOBAL",1)
Global("AR0401_Visited","GLOBAL",1)
Global("AR0405_Visited","GLOBAL",1)
Global("Annah_Alley_Geas","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67719 /* ~"Mam pytanie, jak odnalazłaś moje ciało..."~ */ GOTO 381
  IF ~  GlobalGT("Know_Annah","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67720 /* ~"Anno... czy nie spotkaliśmy się w Ulu, zanim nie odnalazłem Faroda?"~ */ GOTO 388
  IF ~  Global("Annah_Tribute","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67721 /* ~"Anno, czy znalazłaś coś przy moim ciele, zanim nie zaniosłaś mnie do Kostnicy?"~ */ DO ~SetGlobal("Annah_Tribute","GLOBAL",1)
~ GOTO 391
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",1)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67722 /* ~"Anno, znalazłem Faroda martwego na Dworze Złych Wiatrów."~ */ GOTO 472
  IF ~  Global("Annah_Discovers_Pharod","GLOBAL",2)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67723 /* ~"Anno, czy wiesz, jak umarł Farod?"~ */ GOTO 473
  IF ~  Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67724 /* ~"Opowiedz mi coś więcej o Farodzie."~ */ GOTO 403
  IF ~  Global("Pharod_Extortion","GLOBAL",1)
Global("AR0105_Visited","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67725 /* ~"Anno, gdy Farod poszedł, by zwrócić mi rzeczy, które zabrał z mojego ciała, wyszedł na chwilę, po czym wrócił - ale nie opuszczał Dworu Złych Wiatrów. Czy wiesz, dokąd poszedł?"~ */ GOTO 395
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #67726 /* ~"Anno, czy możesz wyszkolić mnie w złodziejskim fachu?"~ */ GOTO 322
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68260 /* ~"Anno, czy możesz wyszkolić mnie w złodziejskim fachu?"~ */ GOTO 480
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",1)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",4)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67727 /* ~"Chcę, żebyś wiedziała, że gdy pocałowałem w labiryncie Ravelę, ja..."~ */ GOTO 441
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
!Global("Ravel_Kiss","GLOBAL",5)
Global("Annah_Kissing","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67728 /* ~"Chcę, żebyś wiedziała, że gdy pocałowałem w labiryncie Ravelę, ja..."~ */ GOTO 438
  IF ~  GlobalGT("Ravel_Annah","GLOBAL",0)
Global("Annah_Ravel_Torment","GLOBAL",0)
Global("Foreign_Language_Version","GLOBAL",0)
~ THEN REPLY #67729 /* ~"Tam, w labiryncie, Ravela powiedziała, że cierpisz... co miała na myśli?"~ */ GOTO 430
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67730 /* ~"Czy słyszałaś o nocnej wiedźmie zwanej Ravelą Szaradną?"~ */ GOTO 316
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #67731 /* ~"Czy wiesz, gdzie mogę odnaleźć 'kawałek' Raveli?"~ */ GOTO 319
  IF ~~ THEN REPLY #67732 /* ~Nic, Anno. Po prostu sprawdzałem, czy wciąż jesteś ze mną."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Fortress_Annah","GLOBAL",3)
~ THEN BEGIN 478 // from:
  SAY #68184 /* ~Sięgasz do niej swoją mocą, czujesz powiew powietrza i Anna się porusza - podnosi powoli głowę, po czym potrząsa nią, zdezorientowana.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68185 /* ~"Znalazłem swoją śmiertelność, Anno - i okazuje się, że ona mnie specjalnie nie lubi. Potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Fortress_Annah","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 479
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68326 /* ~"ANNO, CZY DOBRZE SIĘ CZUJESZ?"~ */ GOTO 481
END

IF ~~ THEN BEGIN 479 // from: 478.0
  SAY #68186 /* ~Oczy Anny lśnią jak stal. Diabelstwo przytakuje. "Bendem z tobom."~ [ANA205A] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68187 /* ~"Zatem do dzieła..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68205 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68206 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68207 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68208 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68241 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68431 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68432 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68443 /* ~"Zatem do dzieła..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 480 // from: 187.11 477.11
  SAY #68258 /* ~Anna marszczy się, po czym potrząsa głową. "Nie, nie teraz - som tu w okolicy wrogowie, o tia!"~ */
  IF ~~ THEN REPLY #68259 /* ~"Zatem nieważne..."~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from: 478.1
  SAY #68327 /* ~Oczy Anny rozszerzają się, gdy słyszy twój głos. "C-co ci siem *stało*? Twój głos - jest jak echo, tia."~ */
  IF ~~ THEN REPLY #68328 /* ~"ZMIENIŁEM SIĘ. JESTEM TERAZ CZYMŚ INNYM I NIE MOGĘ POZOSTAĆ TU DŁUŻEJ. PRZENIOSĘ CIĘ Z POWROTEM DO SIGIL, JEŚLI TEGO CHCESZ."~ */ GOTO 482
END

IF ~~ THEN BEGIN 482 // from: 481.0
  SAY #68329 /* ~"Dok..." Anna otwiera usta, po czym milknie. "D-dokond *ty* idziesz?"~ */
  IF ~~ THEN REPLY #68330 /* ~"WIELE ZBRODNI POPEŁNIONO, GDY MOJA ŚMIERTELNOŚĆ I JA BYLIŚMY ROZDZIELENI. WRAZ Z NIMI PRZYCHODZI... CENA. W SFERACH NIŻSZYCH JEST MIEJSCE ZAREZERWOWANE DLA TAKICH JAK JA. TO... PEWNEGO RODZAJU KARA."~ */ GOTO 483
END

IF ~~ THEN BEGIN 483 // from: 482.0
  SAY #68331 /* ~"Ale ja... ja *nie chcem*, żebyś odchodził."~ */
  IF ~~ THEN REPLY #68332 /* ~"NIE ZAPOMNĘ, JAK WIELE BYŁAŚ GOTOWA DLA MNIE POŚWIĘCIĆ, ANNO."~ */ GOTO 484
END

IF ~~ THEN BEGIN 484 // from: 483.0
  SAY #68333 /* ~Anna przytakuje. Wygląda, jakby miała coś jeszcze powiedzieć, ale potem milknie - ale niewypowiedziana myśl wciąż pozostaje w jej umyśle, oczekując.~ */
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68334 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68335 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68336 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68337 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68338 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68339 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68493 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68494 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68495 /* ~"NIE POTRZEBUJĘ TWOICH SŁÓW, ABY WIEDZIEĆ, CO TKWI W TWYM SERCU, ANNO. ŻEGNAJ."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #9 ~  Global("Fortress_Annah","GLOBAL",4)
~ THEN BEGIN 485 // from:
  SAY #68410 /* ~Oczy Anny lśnią jak stal. Diabelstwo przytakuje. "Bendem z tobom."~ */
  IF ~~ THEN REPLY #68411 /* ~"Zatem do dzieła..."~ */ EXIT
END
