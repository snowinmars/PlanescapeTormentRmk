// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAKKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAKKON~

IF ~~ THEN BEGIN 0 // from:
  SAY #2844 /* ~.~ */
  IF ~~ THEN REPLY #2845 /* ~.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0
  SAY #6855 /* ~Dak'kon skinął głową.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7000 /* ~"Zapytaj go, kim jest."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7001 /* ~"Zapytaj go, kim jest."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7002 /* ~"Zapytaj go, kim jest."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7003 /* ~"Zapytaj go, co robi."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7004 /* ~"Zapytaj go, co robi."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7005 /* ~"Zapytaj go, co robi."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7006 /* ~"Poproś go, by powiedział nam o Pani Bólu."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7007 /* ~"Poproś go, by powiedział nam o Upadłym."~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7008 /* ~"Mniejsza z tym. Chodźmy już."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6856 /* ~"Mówi, że jest dabusem."~ */
  IF ~~ THEN REPLY #7009 /* ~"Czy mogę mu zadać jeszcze parę pytań?"~ */ GOTO 1
  IF ~~ THEN REPLY #7010 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6857 /* ~"Mówi, że wykonuje swoje obowiązki."~ */
  IF ~~ THEN REPLY #7011 /* ~"Czy mogę mu zadać jeszcze parę pytań?"~ */ GOTO 1
  IF ~~ THEN REPLY #7012 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6471 /* ~"Mój towarzysz chciałby porozmawiać z tobą odnośnie funkcjonowania tego urządzenia. Czy może mówić za nas dwóch?"~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 35
END

IF ~~ THEN BEGIN 5 // from:
  SAY #6473 /* ~"Należy ona do Ludu. Znaki jej mówią o jednej z tych, którzy odeszli z Limbo i zostali zmuszeni do tego, by nie *poznać* domu naszych przodków. Znaki jej mówią wszystkim gihtzerai, by służyli jej pomocą, mówią im też, że wciąż należy ona do Ludu. Cześć, jaką mi okazuje, to cześć okazywana wszystkim *zerthom*."~ */
  IF ~~ THEN REPLY #7999 /* ~"Dobrze. Kel'laro, mam kilka pytań..."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 6 // from:
  SAY #5688 /* ~"Będzie to dla mnie zaszczyt móc poznać innego wyrzutka, innego wygnańca. Podzielenie się naszym wstydem może sprawić, iż będzie on nas kąsać mniej zjadliwie."~ */
  IF ~~ THEN REPLY #5689 /* ~"Dobre dla ciebie. Nie pytałem. Mam jeszcze kilka pytań do tego drugiego skurla."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~GFWEAPS~ 14
  IF ~~ THEN REPLY #5690 /* ~"Porozmawiamy z nią już wkrótce, przyjacielu. W międzyczasie mam parę innych pytań do naszego przyjaciela."~ */ EXTERN ~GFWEAPS~ 14
END

IF ~~ THEN BEGIN 7 // from:
  SAY #8694 /* ~Dak'kon mówi powoli, jakby chciał ułagodzić githa. "Jego słowa nie są Doktryną Anarchów. Jego ordynarność nie jest zamierzona."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8994 /* ~"Och, ależ jest. Nie zapomnij o swojej położeniu, Dak'konie. Jesteś moim niewolnikiem i *będziesz* mi posłuszny."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_4","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8995 /* ~"Och, ależ jest. Nie mogłem tu stać i wysłuchiwać waszego wzajemnego oszczekiwania się, githowie, choćby chwilę dłużej."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_4","GLOBALLaw",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8996 /* ~"Jeśli obraziłem, przepraszam. Wybaczysz mi?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Githzerai_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Githzerai_1","GLOBALGood",1)
~ EXTERN ~DGITH~ 9
  IF ~~ THEN REPLY #8997 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8695 /* ~"Dla moich uszu on mówi prawdę Anarcha i z autorytetem Anarcha. Mój umysł... nie może być podzielony w tej sprawie."~ */
  IF ~~ THEN REPLY #8998 /* ~Poczekaj i przekonaj się, co zrobi gith.~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #8999 /* ~"Wspieramy się wzajemnie, githcie. Sugeruję, żebyś się poddał."~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9000 /* ~"Zrób choćby krok w mym kierunku, githcie, a on zaatakuje. Jeśli się z nim uporasz, przyrzekam, że cię zabiję. Teraz się poddaj."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9001 /* ~"Dosyć już. Przyszła na ciebie pora by umrzeć, githcie."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #8696 /* ~"Nie atakuj. Nie wolno mi wymówić posłuszeństwa."~ */
  IF ~~ THEN REPLY #9002 /* ~Poczekaj i przekonaj się, co zrobi gith.~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9003 /* ~"Wspieramy się wzajemnie, githcie. Sugeruję, żebyś się poddał."~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9004 /* ~"Zrób choćby krok w mym kierunku, githcie, a on zaatakuje. Jeśli się z nim uporasz, przyrzekam, że cię zabiję. Teraz się poddaj."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9005 /* ~"Dosyć już. Przyszła na ciebie pora by umrzeć, githcie."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #8697 /* ~Po raz kolejny Dak'kon przemawia powoli. "Wybór T'cha jest moim wyborem." Wydaje się, iż kiedy mówi, jego skóra zaczyna przybierać popielaty odcień... Sprawia to wrażenie, jakby każde słowo powoli go zabijało. "Okowy są moimi okowami. Stuletni Anarch, nie istnieje klepsydra, która mogłaby zmierzyć tę historię. To sprawa splątana niczym korzenie Fri'hi. Jej rozwiązanie należy do grona rzeczy niemożliwych i może nigdy nie nadejść." Dak'kon marszczy brwi. "Nie atakuj, albo zabójcą pobratymca się stanę."~ */
  IF ~~ THEN REPLY #9006 /* ~Poczekaj...~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9007 /* ~"Twój wybór, githcie. Chcesz, byśmy przelewali tu teraz krew?"~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9008 /* ~"Dosyć już. Przyszła na ciebie pora by umrzeć, githcie."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #8698 /* ~Dak'kon odpowiada w tym samym języku. Zdanie zbudowane jest w dziwny sposób. Zdaje ci się, iż powiedział: "Ten oto zalicza się do grona wiernych."~ */
  IF ~~ THEN REPLY #9009 /* ~"Dak'konie, co on mówi?"~ */ EXTERN ~DGITH~ 56
  IF ~~ THEN REPLY #9010 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXTERN ~DGITH~ 56
END

IF ~~ THEN BEGIN 12 // from:
  SAY #8699 /* ~Dak'kon odpowiada tak samo jak poprzednio - ton wypowiedzi zmienia się nieznacznie, jednak sens pozostaje taki sam. "Ten oto zalicza się do grona wiernych." Dak'kon zamilkł, czekając jakby, aż słowa dotrą do adresata. "Ten za mną przemawia. Wysłuchasz go?"~ */
  IF ~~ THEN REPLY #9011 /* ~Słuchaj.~ */ EXTERN ~DGITH~ 58
  IF ~~ THEN REPLY #9012 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #8700 /* ~Odpowiedź Dak'kona jest krótka, wymawia ją jednak bardzo powoli, jakby musiał wydzierać słowa ze swego gardła. "Wybór T'cha stał się moim wyborem."~ */
  IF ~~ THEN REPLY #9013 /* ~Słuchaj.~ */ EXTERN ~DGITH~ 59
  IF ~~ THEN REPLY #9014 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #8701 /* ~Po raz kolejny Dak'kon przemawia powoli. "Okowy są moimi okowami. Stuletni Anarch, nie istnieje klepsydra, która mogłaby zmierzyć tę historię. To sprawa splątana niczym korzenie Fri'hi. Jej rozwiązanie należy do grona rzeczy niemożliwych i może nigdy nie nadejść." Dak'kon marszczy brwi, jego głos przybiera na sile. "Ten za mną przemawia. Wysłuchasz go?"~ */
  IF ~~ THEN REPLY #9015 /* ~Poczekaj.~ */ EXTERN ~DGITH~ 60
  IF ~~ THEN REPLY #9016 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #8702 /* ~Dak'kon odwraca się w twoją stronę. "Wysłucha cię."~ */
  IF ~~ THEN REPLY #9017 /* ~"Gdybyś mógł go zapytać, czy..."~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9018 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #8703 /* ~Dak'kon przytakuje, robi to jednak tak powoli, jakby sprawiało mu to ból. "Mylisz... się. Człowiek ów nie zabił nikogo spośród Ludu."~ */
  IF ~~ THEN REPLY #9019 /* ~"Widzisz? Odłożysz teraz to swoje ostrze?"~ */ EXTERN ~DGITH~ 72
END

IF ~~ THEN BEGIN 17 // from:
  SAY #8704 /* ~Dak'kon odwraca się w stronę githzerai i przemawia do niego - tym razem utrzymując spokojniejsze, bardziej wyważone tempo. Odpowiedź githzerai jest krótka.~ */
  IF ~~ THEN REPLY #9021 /* ~"Co on powiedział?"~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9022 /* ~"Nieważne, Dak'konie. Chodźmy."~ */ EXIT
END

IF ~  Global("Dakkon","GLOBAL",0)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #14980 /* ~Stojący przed tobą mężczyzna jest *stary*. Jego wysuszona, pożółkła skóra pokryta jest zmarszczkami właściwymi dla tych, którzy byli już wszędzie, nigdzie jednak zbyt długo miejsca nie zagrzali. Jego ściągnięta twarz jest nieludzko kanciasta, z czaszki wyrastają mu długie, ostro zakończone uszy. Ubrany jest w luźną, pomarańczową tunikę, przez plecy zaś przewieszone ma niezwykłe, błyszczące ostrze. Ostrze owo zdaje się być glewią wykonaną z jakiegoś metalu, którego powierzchnia lśni niczym unosząca się na wodzie warstwa oleju.~ */
  IF ~~ THEN REPLY #15055 /* ~"Witaj."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #15056 /* ~Zignoruj mężczyznę.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #14982 /* ~Mężczyzna kieruje w twą stronę swe przypominające wypolerowany węgiel oczy. Patrzy się jakby przez ciebie i przez chwilę zastanawiasz się, czy aby nie jest on niewidomy. Niespodziewanie, broń jego zasnuwa grobowa, głęboka czerń - odzwierciedlająca oczy mężczyzny.~ */
  IF ~~ THEN REPLY #15058 /* ~"Wszystko w porządku?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #14984 /* ~Przez chwilę nic nie mówi, tylko szuka swymi oczami twojej twarzy. "Witaj... wędrowcze." Głos jego brzmi cicho i posępnie, niczym wiatr szepczący w konarach olbrzymiego drzewa.~ [DAK001B] */
  IF ~~ THEN REPLY #15060 /* ~"Witaj."~ */ GOTO 21
  IF ~~ THEN REPLY #15061 /* ~"Wybacz, że cię kłopotałem. Żegnaj."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #14985 /* ~Napotkał twój wzrok; jego oczy zagłębiają się w twoich. Z broni zniknęła czerń i odzyskała ona blask, jaki u niej zauważyłeś, zanim rozpocząłeś rozmowę. "Oczy twe wskazują na kogoś, kto sporo przebył, aby się tutaj dostać."~ [DAK001C] */
  IF ~~ THEN REPLY #15062 /* ~"Można tak powiedzieć."~ */ GOTO 24
  IF ~~ THEN REPLY #15063 /* ~"Wybacz, że cię kłopotałem. Żegnaj."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #14986 /* ~"Stój." Głos jego brzmi cicho i posępnie, niczym wiatr szepczący w konarach olbrzymiego drzewa. Z jakiegoś powodu głos ów dodaje ci otuchy. Kiedy się odwracasz, dostrzegasz, iż jego wzrok śledzi cię, oceniając twój wygląd. "Oczy twe wskazują na kogoś, kto sporo przebył, aby się tutaj dostać."~ */
  IF ~~ THEN REPLY #15064 /* ~"Można tak powiedzieć."~ */ GOTO 24
  IF ~~ THEN REPLY #15065 /* ~"Nie miałem zamiaru ci przeszkadzać. Żegnaj."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY #14987 /* ~"Nie przeszkodziłeś mi. Myśli me mogą poczekać." Mężczyzna wpatruje się w ciebie niezachwianie i trudno ci się odwrócić, gdy jesteś w centrum jego uwagi. "*Znany* jestem jako Dak'kon." Nacisk, jaki wkłada w słowo *znany*, wydaje ci się uderzająco dziwny... i znajomy zarazem. "Ty... nie jesteś mi *znany*."~ */
  IF ~~ THEN REPLY #15066 /* ~"Nie znam samego siebie."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15067 /* ~"Nie miałem zamiaru ci przeszkadzać. Żegnaj."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 24 // from: 21.0 22.0
  SAY #14989 /* ~Mężczyzna wpatruje się niezachwianie w twoje oczy. "*Znany* jestem jako Dak'kon." Nacisk, jaki wkłada w słowo *znany*, wydaje ci się uderzająco dziwny... i znajomy zarazem. "Ty... nie jesteś mi *znany*."~ */
  IF ~~ THEN REPLY #15068 /* ~"Nie znam samego siebie."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15069 /* ~Jestem jedną z goszczących w tym mieście osób."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #15070 /* ~"Nie jesteś mi znany."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #14990 /* ~"Tak jest najlepiej. *Poznanie* samego siebie sprawiłoby, że w Sferach niewiele zostałoby wartego *poznania*." Milczy przez chwilę, wciąż obserwując cię swymi czarnymi niczym węgiel oczyma. "Chciałbym *poznać*, dlaczego przybyłeś do tego miasta."~ */
  IF ~~ THEN REPLY #15071 /* ~"Szukam odpowiedzi... Mam mnóstwo pytań."~ */ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14991 /* ~Dak'kon milczy przez chwilę, wciąż obserwując cię swymi czarnymi niczym węgiel oczami. "Liczba Sfer ciągnie się w nieskończoność, ty jednak jesteś tu. Chciałbym *poznać*, dlaczego przybyłeś do tego miasta."~ */
  IF ~~ THEN REPLY #15072 /* ~"Szukam odpowiedzi... Mam mnóstwo pytań."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #14993 /* ~"Tak więc znajdujemy się pod tym samym niebem." Dak'kon milczy przez chwilę, wciąż obserwując cię swymi czarnymi niczym węgiel oczami. "Liczba Sfer ciągnie się w nieskończoność, ty jednak jesteś tu. Chciałbym *poznać*, dlaczego przybyłeś do tego miasta."~ */
  IF ~~ THEN REPLY #15073 /* ~"Szukam odpowiedzi... Mam mnóstwo pytań."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.0 26.0 27.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.1 38.7 39.3 40.2 41.1 42.0 43.2 44.2 45.2 46.2 47.2 48.2 49.2 50.2 51.1 52.1 53.1 54.1 55.1 56.1 57.0 58.3 59.2 60.1 61.2 62.3 63.2 64.0 65.0 66.0 73.0
  SAY #14995 /* ~"Wypowiedz swoje pytania. Wysłucham cię."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15074 /* ~"Rysy twe są... mi obce. Coś ty za jeden?"~ */ GOTO 29
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15075 /* ~"Mógłbyś powiedzieć mi raz jeszcze o ludzie githzerai?"~ */ GOTO 33
  IF ~~ THEN REPLY #15076 /* ~"Mógłbyś mi opowiedzieć o tym mieście?"~ */ GOTO 35
  IF ~~ THEN REPLY #15077 /* ~"Zdajesz się przykładać szczególną wagę do słowa 'poznanie'. Dlaczego?"~ */ GOTO 52
  IF ~~ THEN REPLY #15078 /* ~"Co to za ostrze, które posiadasz?"~ */ GOTO 58
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15079 /* ~"Znasz może mężczyznę imieniem Farod? Powiedziano mi, że wie on coś o mnie."~ */ GOTO 65
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15080 /* ~"Straciłem dziennik. Nie wiesz, gdzie się on może znajdować?"~ */ GOTO 66
  IF ~~ THEN REPLY #15081 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14997 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #15082 /* ~"Githzerai?"~ */ GOTO 30
  IF ~~ THEN REPLY #15083 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15084 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 30 // from: 29.0 62.0
  SAY #14998 /* ~"Githzerai jest jednym spośród Ludu."~ */
  IF ~~ THEN REPLY #15125 /* ~"Jednym spośród ludu?"~ */ GOTO 31
  IF ~~ THEN REPLY #15126 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15127 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #14999 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #15128 /* ~"Tak, ale kim dokładnie są githzerai?"~ */ GOTO 32
  IF ~~ THEN REPLY #15129 /* ~"Dziękuję za wytłumaczenie. Sporo ono wyjaśnia. Mam kilka innych pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15130 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15000 /* ~Dak'kon milczy przez chwilę, po czym przemawia. "Nie ma *potrzeby*, byś poznał naszą historię. Ostrze czasu wycisnęłoby z nas ostatnią kroplę krwi, zanim wyrecytowałbym ci choćby cząstkę historii naszego Ludu."~ */
  IF ~~ THEN REPLY #15131 /* ~"Nie ma potrzeby, bym poznawał wasze historie... Chciałbym jednak poznać to, co się tyczy twego ludu obecnie."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 33
  IF ~~ THEN REPLY #15132 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15133 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 33 // from: 28.1 32.0 62.1
  SAY #15002 /* ~Dak'kon milczy przez chwilę. "*Wiedz* to i przyjmij to za odpowiedź: Jesteśmy Ludem, który za swój dom obrał niestałą sferę Limbo. Zręcznym ruchem wyjmuje zza pleców miecz i unosi przed sobą.~ */
  IF ~~ THEN REPLY #15134 /* ~Poczekaj by się przekonać, co się stanie.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 34
  IF ~~ THEN REPLY #15135 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15136 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #15004 /* ~"Tam, kształtujemy materię Limbo naszymi umysłami. Wykuwamy miasta za pomocą naszych myśli." Dostrzegasz, że na ostrzu zaczyna formować się wychodząca z jego środka fala. Jej poziom i wysokość dostosowują się do zmian w głosie Dak'kona. "Żyjemy pośród jego chaosu, chroni nas jedynie nasze *poznanie*. Jesteśmy githzerai."~ */
  IF ~~ THEN REPLY #15137 /* ~"Co to za ostrze, które posiadasz...? Porusza się ono, zmienia w odpowiedzi na twój głos."~ */ GOTO 58
  IF ~~ THEN REPLY #15138 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15139 /* ~"Dobrze. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY #15005 /* ~"*Znane* jest pod nazwą 'Sigil'. Wśród Ludu *znane* jest jako miasto, które nie *zna* samego siebie."~ */
  IF ~~ THEN REPLY #15140 /* ~"Nie zna samego siebie? Co przez to rozumiesz?"~ */ GOTO 36
  IF ~~ THEN REPLY #15141 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15142 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #15006 /* ~"Miasto istnieje, nie *zna* jednak samego siebie. Poprzez nie *znanie* samego siebie jego istnienie jest spaczone."~ */
  IF ~~ THEN REPLY #15143 /* ~"W jaki sposób jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15144 /* ~"Mówisz, jakby miasto było żywe."~ */ GOTO 37
  IF ~~ THEN REPLY #15145 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15146 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 37 // from: 36.1 38.6
  SAY #15007 /* ~"Nie może być mieć świadomości i *znać* siebie w taki sposób, w jaki ty lub ja możemy siebie *poznać*, żyje jednak. Rozrasta się, zmienia, ma wpływ na umysły wszystkich tych, którzy tu żyją."~ */
  IF ~~ THEN REPLY #15147 /* ~"Dlaczego uważasz, że miasto nie zna samego siebie?"~ */ GOTO 38
  IF ~~ THEN REPLY #15148 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15149 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 38 // from: 36.0 37.0 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.0
  SAY #15008 /* ~"Miasto istnieje w sprzeczności z samym sobą. Oddzieliło się od sfer, stara się jednak być zarazem wszędzie. Jego mury są drzwiami, trzyma jednak te drzwi zamknięte. Takie bytowanie świadczy o tym, że nie *zna* ono siebie samego. Poprzez nie *znanie* samego siebie jest ono spaczone."~ */
  IF ~~ THEN REPLY #15150 /* ~"Co masz na myśli, kiedy mówisz, że miasto jest zarazem wszędzie?"~ */ GOTO 43
  IF ~~ THEN REPLY #15151 /* ~"Jego mury są drzwiami?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15152 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone? Przedmiotem nie musi rządzić porządek, nie musi on mieć celu, by znać siebie samego. Co, jeśli te przeciwieństwa stanowią wzmocnienia, których nie dostrzegasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15153 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone? Przedmiotem nie musi rządzić porządek, nie musi on mieć celu, by znać siebie samego. Co, jeśli te przeciwieństwa stanowią wzmocnienia, których nie dostrzegasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15154 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone, a ty po prostu nie dostrzegasz powodów uzasadniających te sprzeczności? We wszystkim znaleźć można porządek. Być może istnieje jakiś podstawowy wzór, którego ty nie możesz spostrzec."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15155 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone, a ty po prostu nie dostrzegasz powodów uzasadniających te sprzeczności? We wszystkim znaleźć można porządek. Być może istnieje jakiś podstawowy wzór, którego ty nie możesz spostrzec."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #15156 /* ~"Mówisz, jakby miasto było żywe."~ */ GOTO 37
  IF ~~ THEN REPLY #15157 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15158 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 39 // from: 38.2 38.3 38.4 38.5
  SAY #15010 /* ~"Na twe pytanie - pytanie: Co, jeśli miasto jest spaczone, a ty wszędzie wokół widzisz jego sprzeczności?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #15159 /* ~Prawda: "Na twe pytanie - pytanie: Twierdzisz, że istnienie miasta jest spaczone. Zaakceptowałeś to, zamiast zgłębiać możliwość, iż sprawa ta ma jakiś szerszy wymiar. To sugeruje, że jesteś spaczony... i że nie szukasz wiedzy, a jedynie pasujących ci odpowiedzi."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #15160 /* ~Prawda: "Na twe pytanie - pytanie: Twierdzisz, że istnienie miasta jest spaczone. Zaakceptowałeś to, zamiast zgłębiać możliwość, iż sprawa ta ma jakiś szerszy wymiar. To sugeruje, że jesteś spaczony... i że nie szukasz wiedzy, a jedynie pasujących ci odpowiedzi."~ */ GOTO 40
  IF ~~ THEN REPLY #15161 /* ~"Co miałeś na myśli, kiedy mówiłeś, że miasto jest zarazem wszędzie?"~ */ GOTO 43
  IF ~~ THEN REPLY #15162 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15163 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15012 /* ~Dak'kon zamilkł. "Nie ma *znanej* odpowiedzi na zadane przeze nas pytania. Miasto po prostu istnieje. To wszystko."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #15164 /* ~"Mimo to wciąż będę utrzymywał, że *poznajemy* samych siebie przez pytania, jakie zadajemy, a nie przez te nie zadane. Jeśli zaprzestaniemy zadawać pytania i przyjmiemy jedynie to, co możemy dostrzec..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 41
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #15165 /* ~"Mimo to wciąż będę utrzymywał, że *poznajemy* samych siebie przez pytania, jakie zadajemy, a nie przez te nie zadane. Jeśli zaprzestaniemy zadawać pytania i przyjmiemy jedynie to, co możemy dostrzec..."~ */ GOTO 41
  IF ~~ THEN REPLY #15166 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15167 /* ~"Nie miałem zamiaru ci przeszkadzać. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #15014 /* ~"Wtedy zaprzestaniemy *poznawania* samych siebie." Głos Dak'kona zmienia się nieznacznie, staje się cięższy. "Słowa takie wypowiedziano wcześniej. Słyszałem je i *znam* je."~ */
  IF ~~ THEN REPLY #15168 /* ~"Gdzie je słyszałeś?"~ */ GOTO 42
  IF ~~ THEN REPLY #15169 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15170 /* ~"Nie miałem zamiaru ci przeszkadzać. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15016 /* ~"Słowa te są moje. Kiedyś *znałem* je, *znałem* też ich sens. Nie pamiętałem ich, póki nie przemówiłeś." Dak'kon zdaje się patrzyć prze twe ciało, jego ostrze zaś przestaje błyszczeć, zaczyna tracić barwę, aż staje się półprzeźroczyste. Przez chwilę panuje cisza, po czym Dak'kon podnosi wzrok. "Chciałbym podążyć twą ścieżką razem z tobą."~ */
  IF ~~ THEN REPLY #15171 /* ~"Rozważę to. Wpierw mam kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15172 /* ~"Zgadzam się. Z chęcią przywitam dodatkowe ostrze."~ */ GOTO 72
  IF ~~ THEN REPLY #15173 /* ~"Jesteś już stary. Jaki miałbym z ciebie pożytek?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15175 /* ~"Nie tym razem. Żegnaj."~ */ GOTO 68
END

IF ~~ THEN BEGIN 43 // from: 38.0 38.1 39.2
  SAY #15018 /* ~"Miasto samo w sobie zbudowane jest z drzwi. Drzwi te wiodą wszędzie."~ */
  IF ~~ THEN REPLY #15174 /* ~"Gdzie się te drzwi znajdują?"~ */ GOTO 44
  IF ~~ THEN REPLY #15176 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15177 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15178 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15020 /* ~"Są wszędzie..." Dak'kon zamilkł na chwilę. "Powiada się, że każda mieszcząca się w granicach miasta przestrzeń to drzwi dokądś wiodące."~ */
  IF ~~ THEN REPLY #15179 /* ~"Nie rozumiem."~ */ GOTO 45
  IF ~~ THEN REPLY #15180 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15181 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15182 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #15021 /* ~"Wyobraź sobie drzwi wiodące do gospody Pod Gorejącym Człekiem. Usuń te drzwi. Pozostanie framuga. Znajdująca się we framudze przestrzeń to w dalszym ciągu drzwi."~ */
  IF ~~ THEN REPLY #15183 /* ~"Ale ja przeszedłem przez te drzwi, by się tu dostać... To po prostu... pusta przestrzeń."~ */ GOTO 46
  IF ~~ THEN REPLY #15184 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15185 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15186 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #15022 /* ~"Wiele jest drzwi, których się nigdy nie widzi. Możesz przejść przez nie, jakby były powietrzem i nie *poznać*, że tam były. Znajdują się poza zasięgiem twego wzroku i dotyku."~ */
  IF ~~ THEN REPLY #15187 /* ~"I te niewidzialne drzwi są w Sigil *wszechobecne*?~ */ GOTO 47
  IF ~~ THEN REPLY #15188 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15189 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15190 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #15023 /* ~"Powiada się, że każda mieszcząca się w granicach miasta przestrzeń to drzwi dokądś wiodące. Nie *wiadomo* tego jednak na pewno. Drzwi przesuwają się. Drzwi się zmieniają. Drzwi znikają. Wszystkie są zamknięte na klucz."~ */
  IF ~~ THEN REPLY #15192 /* ~"Zamknięte na klucz?"~ */ GOTO 48
  IF ~~ THEN REPLY #15191 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15193 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15194 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #15024 /* ~"Drzwi są niczym powietrze, póki nie masz klucza, który je otwiera. Kiedy masz klucz, drzwi *ujawnią* ci się same."~ */
  IF ~~ THEN REPLY #15195 /* ~"Skąd wiadomo, jaki jest klucz?"~ */ GOTO 49
  IF ~~ THEN REPLY #15196 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15197 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15198 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #15025 /* ~"Do każdych drzwi istnieje inny klucz. Niektóre klucze są *znane*, inne zaś nie *znane*."~ */
  IF ~~ THEN REPLY #15199 /* ~"Co to za klucze?"~ */ GOTO 50
  IF ~~ THEN REPLY #15200 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15201 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15202 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15026 /* ~"Istnieje tyle kluczy, ile jest drzwi. Klucze to nie zawsze rzeczy wykonane z metalu. Kluczem może być szczęk ścierającej się ze sobą pary mieczy, kropla krwi upuszczona z języka umierającego człowieka, wspomnienie przeszłej miłości, bądź ciśnięte pod adresem niebios przekleństwo. Kiedy klucz i drzwi pasują do siebie, drzwi ujawniają się same."~ */
  IF ~~ THEN REPLY #15204 /* ~"Zdaje się, że odnalezienie tych wszystkich kluczy i drzwi byłoby trudnym zadaniem."~ */ GOTO 51
  IF ~~ THEN REPLY #15208 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15215 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15218 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #15027 /* ~"Podejmowano się takiego zadania, nigdy go jednak nie ukończono. Tak jak zmienia się miasto, zmieniają się i drzwi. Nic *znanego* nie pozostaje *znanym* zbyt długo."~ */
  IF ~~ THEN REPLY #15220 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 38
  IF ~~ THEN REPLY #15222 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15224 /* ~"Dziękuję za informacje. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 52 // from: 28.3
  SAY #15028 /* ~"Wszystkie rzeczy - wykreowane czy żywe - ich istnienie określane jest poprzez *poznawanie* siebie."~ */
  IF ~~ THEN REPLY #15226 /* ~"A jeśli człowiek nie zna samego siebie?"~ */ GOTO 53
  IF ~~ THEN REPLY #15228 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15231 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #15030 /* ~"Kiedy umysł nie *zna* siebie, jest spaczony. Gdy umysł jest spaczony, człowiek jest również spaczony. Kiedy człowiek jest spaczony, wszystko, czego dotyka, jest również spaczone." Dak'kon przerwał na chwilę. "Powiada się, że to, na co spojrzy spaczony człowiek, zostanie zniszczone jego rękami."~ */
  IF ~~ THEN REPLY #15234 /* ~"Czy znasz siebie samego?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #15236 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15237 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #15032 /* ~Dak'kon zamilkł na moment. Jego czarne jak węgiel oczy zdają się być tak samo nieobecne jak wtedy, gdy po raz pierwszy do niego przemówiłeś.~ */
  IF ~~ THEN REPLY #15238 /* ~"Pytam ponownie: Czy znasz siebie samego?"~ */ GOTO 55
  IF ~~ THEN REPLY #15240 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15241 /* ~"Nie miałem zamiaru ci przeszkadzać. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #15034 /* ~Gdy zaczyna mówić ponownie, jego głos się zmienia. Słowa wybrzmiewają jak echo, niczym głaz zrzucony w przepaść. Wygląda to, jakby siłą wydobywał słowa ze swej klatki piersiowej. "Nie jest moją *wolą*, byś to *poznał*."~ */
  IF ~~ THEN REPLY #15242 /* ~"Być może wyraziłem to pytanie nazbyt uprzejmie: Powiedz mi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #15243 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15244 /* ~"Wybacz. Mniejsza z tym. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #15036 /* ~Słowa wypływały z ust Dak'kona powoli, jakby były dobierane jedno po drugim. "Wyszło... na jaw, że nie *znam* samego siebie."~ */
  IF ~~ THEN REPLY #15245 /* ~"Dlaczego?"~ */ GOTO 57
  IF ~~ THEN REPLY #15246 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15247 /* ~"Wybacz. Mniejsza z tym. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15038 /* ~Głos Dak'kona brzmi niczym szmer, jak piasek. "Nie *wiem* dlaczego. *Wiem*, że to się wydarzyło. Nie *wiem* jednak jak ani kiedy... Ani jak *poznać* siebie ponownie."~ */
  IF ~~ THEN REPLY #15248 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15249 /* ~"Wybacz. Mniejsza z tym. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 58 // from: 28.4 34.0
  SAY #15039 /* ~"To ostrze *karach*. To przedmiot, który pozwala innym *poznać* rangę dzierżącej go osoby."~ */
  IF ~~ THEN REPLY #15250 /* ~"*Karach*? Co to znaczy?"~ */ GOTO 61
  IF ~~ THEN REPLY #15251 /* ~"Wykonane jest z dziwnego metalu... Przez to, iż zmienia się ono w te i we wte, ma wręcz hipnotyczne właściwości."~ */ GOTO 61
  IF ~~ THEN REPLY #15252 /* ~"Jaką rangę wskazuje?"~ */ GOTO 59
  IF ~~ THEN REPLY #15253 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15254 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 59 // from: 58.2 63.1
  SAY #15040 /* ~"To ostrze to symbol noszony przez *zertha*. *Zerth* to ten, który *zna* słowa Zerthimona. Poprzez *poznanie* słów Zerthimona - *poznali* siebie."~ */
  IF ~~ THEN REPLY #15255 /* ~"Zerthimona?"~ */ GOTO 60
  IF ~~ THEN REPLY #15256 /* ~"Jeszcze raz: Z czego zrobione jest to ostrze?"~ */ GOTO 61
  IF ~~ THEN REPLY #15257 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15259 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #15041 /* ~"Zerthimon stworzył naszą rasę. "*Znał* on githzerai, zanim oni *poznali* samych siebie. To on wykreował Lud. Dał im jeden umysł."~ */
  IF ~~ THEN REPLY #15258 /* ~"Jeszcze raz: Z czego zrobione jest to ostrze?"~ */ GOTO 61
  IF ~~ THEN REPLY #15260 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15261 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 59.1 60.0
  SAY #15042 /* ~Dak'kon milczy przez chwilę, jakby poszukiwał odpowiednich słów. "W twoim języku najbliższym tłumaczeniem będzie 'materia chaosu'. Lud może kształtować ją swoimi myślami."~ */
  IF ~~ THEN REPLY #15262 /* ~"Lud?"~ */ GOTO 62
  IF ~~ THEN REPLY #15263 /* ~"Kształtują go siłą umysłu?"~ */ GOTO 63
  IF ~~ THEN REPLY #15264 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15265 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #15043 /* ~"Githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15266 /* ~"Co to githzerai?"~ */ GOTO 30
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15267 /* ~"Jeszcze raz: Co to są githzerai?"~ */ GOTO 33
  IF ~~ THEN REPLY #15268 /* ~"I mówisz, że githzerai potrafią formować *karach*... za pomocą swych myśli?"~ */ GOTO 63
  IF ~~ THEN REPLY #15269 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15270 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 63 // from: 61.1 62.2
  SAY #15044 /* ~"*Karach* nie jest formowane przez ciepło, ale poprzez *poznanie* kogoś. Jest lustrem, które odzwierciedla na swej powierzchni i na ostrzu wolę dzierżącej go osoby. Kiedy ktoś *zna* siebie, ostrze posiada siłę - jest twardsze i bardziej wytrzymałe niż stal. Kiedy ktoś nie *zna* siebie, ostrze jest niczym woda - bezkształtne i słabe."~ */
  IF ~~ THEN REPLY #15271 /* ~"Nie chciałbyś go sprzedać?"~ */ GOTO 64
  IF ~~ THEN REPLY #15272 /* ~"Jaką rangę wskazuje ostrze?"~ */ GOTO 59
  IF ~~ THEN REPLY #15273 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15274 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #15045 /* ~"W rękach kogoś innego stałoby się ono niczym. Ostrze *zna* mój umysł, ja zaś *znam* jego serce. Przyjdzie po nas jedna śmierć."~ */
  IF ~~ THEN REPLY #15275 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15276 /* ~"Rozumiem. Muszę już iść. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 65 // from: 28.5
  SAY #15046 /* ~"Osoba ta nie jest mi *znana*."~ */
  IF ~~ THEN REPLY #15277 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15278 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 28.6
  SAY #15047 /* ~"Położenie tego przedmiotu nie jest mi *znane*."~ */
  IF ~~ THEN REPLY #15279 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #15280 /* ~"Nie ma o czym mówić. Żegnaj."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 23.1 28.7 29.2 30.2 31.2 32.2 33.2 34.2 35.2 36.3 37.2 38.8 39.4 40.3 41.2 43.3 44.3 45.3 46.3 47.3 48.3 49.3 50.3 51.2 52.2 53.2 54.2 55.2 56.2 57.1 58.4 59.3 60.2 61.3 62.4 63.3 64.1 65.1 66.1
  SAY #15048 /* ~Kiedy się odwracasz by odejść, mężczyzna przemawia ostro - po raz pierwszy od początku waszej rozmowy słyszysz zmianę tonu jego głosu. "Stój." Poziom jego głosu wyrównuje się. "To miasto nie jest ci *znane*. Chciałbym podążyć z tobą twoją ścieżką."~ */
  IF ~~ THEN REPLY #15281 /* ~"Zgadzam się. Z chęcią przywitam dodatkowe ostrze."~ */ GOTO 72
  IF ~~ THEN REPLY #15282 /* ~"Jesteś już stary. Jaki miałbym z ciebie pożytek?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15283 /* ~"Nie tym razem. Żegnaj."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 42.3 67.2 70.1 71.1
  SAY #15049 /* ~"Chcę, byś mnie wysłuchał." Zanim zdążyłeś odwrócić się by odejść, Dak'kon przemawia ponownie. Ciężko ci jest odejść, póki pozostajesz w centrum jego uwagi. "Jesteś obcym w tym mieście. Przez to, że go nie *znasz*, miasto jest dla ciebie niebezpieczne. Dwa ostrza znaczą więcej niż jedno, nawet jeśli ukryte są w pochwie."~ */
  IF ~~ THEN REPLY #15284 /* ~"Świetnie. Z chęcią przywitam dodatkowe ostrze, Dak'konie."~ */ GOTO 72
  IF ~~ THEN REPLY #15285 /* ~"Słuchaj no, bo zdaje się, że to do ciebie nie dociera. Nie chcę, być się do mnie przyłączył. Stój tu dalej, jak stałeś, kiedy tu przyszedłem. Teraz żegnaj."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY #15050 /* ~"Będę tu, kiedy powrócisz. *Zapoznaj* mnie z twą wolą, a ścieżka twa stanie się moją ścieżką."~ */
  IF ~~ THEN REPLY #15286 /* ~"Zapamiętam to sobie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 42.2 67.1
  SAY #15051 /* ~Wzrok Dak'kona zmienia się. Spogląda on tak, jakby patrzył przez ciebie - tak jak czynił, gdy po raz pierwszy do niego przemówiłeś. "Jestem stary, sporo jednak przewędrowałem. *Znane* są mi wojenne rzemiosła. *Znane* są mi trudy tego miasta."~ */
  IF ~~ THEN REPLY #15287 /* ~"Niemniej jednak..."~ */ GOTO 71
  IF ~~ THEN REPLY #15288 /* ~"Nie tym razem. Żegnaj."~ */ GOTO 68
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #15052 /* ~"Tam, gdzie ty zadajesz ciosy po omacku, me ostrze celnie uderza. Zamknięte przed tobą drzwi - dla mnie są korytarzami. Poprzez *poznanie* tych rzeczy poprzez mnie, staniesz się silny. Chcę kroczyć z tobą twoją ścieżką."~ */
  IF ~~ THEN REPLY #15289 /* ~"Świetnie. Zgadzam się."~ */ GOTO 72
  IF ~~ THEN REPLY #15290 /* ~"Nie sądzę. Żegnaj."~ */ GOTO 68
END

IF ~~ THEN BEGIN 72 // from: 42.1 67.0 68.0 71.0 73.1
  SAY #15053 /* ~"Twa ścieżka jest moją ścieżką." Co dziwne, głos jego zdaje się być odległy, wybrzmiewa tak, jakby mówił z daleka.~ [DAK206] */
  IF ~  GlobalLT("Dakkon","GLOBAL",2)
~ THEN REPLY #15291 /* ~"Świetnie. Chodźmy."~ */ DO ~SetGlobal("Dakkon","GLOBAL",2)
AddexperienceParty(1000)
ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalGT("Dakkon","GLOBAL",1)
~ THEN REPLY #66762 /* ~"Dobrze. Chodźmy."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  Global("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY #15054 /* ~Kiedy się zbliżasz, Dak'kon kieruje w twym kierunku swe czarne niczym węgiel oczy. Patrzy się jakby przez ciebie i przez chwilę zastanawiasz się, czy aby nie jest on niewidomy.~ */
  IF ~~ THEN REPLY #15292 /* ~"Witaj ponownie, Dak'konie. Mam kilka pytań do ciebie..."~ */ GOTO 28
  IF ~~ THEN REPLY #15293 /* ~"Skorzystałbym z twojego ostrza, Dak'konie."~ */ GOTO 72
  IF ~~ THEN REPLY #15294 /* ~Zignoruj go.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #16628 /* ~"Twoja prośba jest wyjątkowo ciekawa. Drzewa, w Ulu? Niczym miasta w Limbo. Są świadectwem woli ludu, który nie ukorzy się przed tym co go otacza i niszczy, lecz raczej naprawia to co zostało zniweczone. Także i ja zajmę się tymi drzewami."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16936 /* ~"Dzięki. Morte? Co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16937 /* ~"Dzięki. Anno? Zechciałabyś?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16938 /* ~"Dzięki. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16939 /* ~"Dzięki. Sławo, jak ty to widzisz?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16940 /* ~"Dzięki. Nordomie, sądzisz, że mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16941 /* ~"Dzięki. Vhailorze, czy mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16942 /* ~"Dzięki. Mam kilka innych pytań, Opłakujący..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16943 /* ~"Dzięki, Dak'konie. Żegnaj, Opłakujący Drzewa."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #16629 /* ~Dak'kon przytakuje. "O... czywiście."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16944 /* ~"Dobrze. Morte? Co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16945 /* ~"Dobrze. Anno? Zechciałabyś?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16946 /* ~"Dobrze. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16947 /* ~"Dobrze. Sławo, jak ty to widzisz?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16948 /* ~"Dobrze. Nordomie, sądzisz, że mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16949 /* ~"Dobrze. Vhailorze, czy mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16950 /* ~"No widzisz, Opłakujący. Mam kilka pytań..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16951 /* ~"Powinno to trochę pomóc, Opłakujący Drzewa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #17626 /* ~"Przyprawa może smakować tak, jak ktoś sobie zażyczy. Potrzeba jedynie trochę więcej koncentracji i siły woli, by zmienić jej smak zgodnie z czyjąś zachcianką."~ */
  IF ~~ THEN REPLY #17725 /* ~Spróbuj.~ */ DO ~TakePartyGold(5)
~ EXTERN ~D300MER6~ 20
  IF ~~ THEN REPLY #17726 /* ~"Chyba nie będzie mi smakować. Spróbuję czegoś innego."~ */ EXTERN ~D300MER6~ 6
  IF ~~ THEN REPLY #17727 /* ~"Zmieniłem zdanie. Ale mam kilka pytań..."~ */ EXTERN ~D300MER6~ 2
  IF ~~ THEN REPLY #17728 /* ~"Chyba tego nie chcę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 78.0 79.1 80.3 81.3 82.0 83.12 84.12 85.12 86.9 87.9 88.0 89.2 90.5 91.5 92.4 93.8 94.3 95.3 96.3 97.1 98.3 99.5 100.3 101.1 102.3 103.0 104.3 105.0 106.3 107.3 108.3 109.3 110.3 111.12 112.5 113.0
  SAY #22541 /* ~Dak'kon przytakuje.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25004 /* ~"Zapytaj go, kim jest."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25005 /* ~"Zapytaj go, kim jest."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25006 /* ~"Zapytaj go, kim jest."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25007 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25008 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25009 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25010 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25011 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25012 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25013 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25014 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25015 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64400 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64401 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64402 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64403 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64404 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64405 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25016 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25017 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25018 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25019 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25020 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25021 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25022 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25023 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25024 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25025 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25026 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25027 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25028 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25029 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25030 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25031 /* ~"Mniejsza z tym. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #22542 /* ~"Jest *znany* jako Upadły."~ */
  IF ~~ THEN REPLY #25032 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25033 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #22543 /* ~"Zajmuje się on tutaj umieszczaniem na ciele rysunków. 'Tatuaży'."~ */
  IF ~~ THEN REPLY #25034 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25035 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25036 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #22544 /* ~"W jego słowach wybrzmiewają sprzeczności." Dak'kon przerywa na moment, jego wzrok przepływa po symbolach. "Mówi, że to pierwszy raz, kiedy u niego jesteś. Mówi, że to nie pierwszy raz, kiedy u niego jesteś."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25037 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25038 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25039 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25040 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25041 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #22545 /* ~"Jesteś mu *znany*. Nie może ci jednak powiedzieć tego, co chciałbyś *wiedzieć*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25042 /* ~"Czemu nie?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25043 /* ~"Czemu nie?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25044 /* ~"Czemu nie?"~ */ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25045 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25046 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #22546 /* ~"Zamiast udzielić odpowiedzi, wykręca się on przeprosinami za swe milczenie." Dak'kon przerywa na chwilę, po czym przemawia ponownie, a słowa jego są niczym lód. "Mówi, że nie może zmienić *natury człowieka*." Gdy Dak'kon powtarza te słowa, czujesz straszny ucisk w głowie... Znika, gdy wybrzmiewa ostatnie słowo.~ */
  IF ~~ THEN REPLY #25047 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25048 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #22547 /* ~"Ona istnieje naprawdę."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25049 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25050 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25051 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25052 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25053 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25054 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25055 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25056 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25057 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25058 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25059 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25060 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25061 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25062 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #22548 /* ~"Została uwięziona w jednym z labiryntów Pani."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25063 /* ~"Labiryntów?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25064 /* ~"Labiryntów?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25065 /* ~"Labiryntów?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25066 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25067 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25068 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25069 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25070 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25071 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25072 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25073 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25074 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25075 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25076 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #22549 /* ~"Wola Raveli nie zgadzała się z wolą Pani. Pani ją ukarała."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25077 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25078 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25079 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25080 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25081 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25082 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25083 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25084 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25085 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25086 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25087 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25088 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25089 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25090 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #22550 /* ~"Usiłowała zniszczyć mury Sigil."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25091 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25092 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25093 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25094 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25095 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25096 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25097 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25098 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25099 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25100 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25101 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #22551 /* ~"Sposób, w jaki można się do niej dostać, nie jest mu *znany*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25102 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25103 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25104 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25105 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25106 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25107 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25108 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25109 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25110 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25111 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25112 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #22552 /* ~"Ostrzega nas, byśmy nie szukali wiedźmy nocy. Mówi, że jej serce jest czarne i że będzie ona starała się nas zranić."~ */
  IF ~~ THEN REPLY #25113 /* ~"Będę o tym pamiętać. Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25114 /* ~"Sądzę, że naszym drogom przeznaczone jest się krzyżować. Żegnaj."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #22553 /* ~Dak'kon analizuje symbole, ale nic nie mówi.~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25115 /* ~"Dak'konie? Co on mówi?"~ */ GOTO 90
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25116 /* ~"Dak'konie?"~ */ GOTO 96
  IF ~~ THEN REPLY #25117 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25118 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #22554 /* ~"Ramię jest twoje. Tatuaże są jego."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #25119 /* ~"Czy powiedział coś oprócz tego?"~ */ JOURNAL #25126 /* ~Poprosiłem Dak'kona o przetłumaczenie tego co Upadły powiedział o znalezionej przeze mnie wytatuowanej ręce. Skłamał, mówiąc że nie wie. Z jakiegoś powodu nie chciał wytłumaczyć co znaczył tatuaż.~ */ GOTO 91
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #25120 /* ~"Czy powiedział coś oprócz tego?"~ */ GOTO 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25121 /* ~"Co może mi on o tych tatuażach powiedzieć?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25122 /* ~"Co może mi on o tych tatuażach powiedzieć?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25123 /* ~"Co może mi on o tych tatuażach powiedzieć?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25124 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25125 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #22555 /* ~Dak'kon na chwilę zamilkł... i nagle, instynktownie uświadamiasz sobie, że Dak'kon *kłamie*. Kontynuuje jednolitym tonem. "Reszta symboli nie jest mi *znana*."~ */
  IF ~~ THEN REPLY #25127 /* ~"Dlaczego mnie okłamujesz?"~ */ GOTO 93
  IF ~~ THEN REPLY #25128 /* ~"Sądzę, że to, co powiedział, JEST ci *znane*. Przetłumacz. Natychmiast."~ */ DO ~SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25129 /* ~"Uch... W porządku. Co może mi on powiedzieć o pokrywających me ramię tatuażach?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25130 /* ~"Uch... W porządku. Co może mi on powiedzieć o pokrywających me ramię tatuażach?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25131 /* ~"Uch... W porządku. Co może mi on powiedzieć o pokrywających me ramię tatuażach?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25132 /* ~"Dobrze. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~~ THEN REPLY #25133 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #22556 /* ~Dak'kon milczy przez chwilę. "Reszta symboli nie jest mi *znana*."~ */
  IF ~~ THEN REPLY #25134 /* ~"Jesteś pewien?"~ */ GOTO 95
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25135 /* ~"Uch... W porządku. Co może mi on powiedzieć o pokrywających me ramię tatuażach?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25136 /* ~"Uch... W porządku. Co może mi on powiedzieć o pokrywających me ramię tatuażach?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25137 /* ~"Uch... W porządku. Co może mi on powiedzieć o pokrywających me ramię tatuażach?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25138 /* ~"Dobrze. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~~ THEN REPLY #25139 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.0
  SAY #22557 /* ~Dak'kon zamilkł ponownie. Nie obraca się, by na ciebie spojrzeć - zdaje się wpatrywać w coś wyjątkowo odległego. "Te symbole... *Poznanie* odpowiedzi na to, o co pytasz, w niczym ci nie pomoże."~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25140 /* ~"Tracę cierpliwość. Szukam odpowiedzi, powiedz mi więc lepiej wszystko, co wiesz, nim stracę nad sobą panowanie."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Przekonałem Dak'kona, aby powiedział mi co znaczył tatuaż na mojej odciętej ręce, choć zrobił to bardzo niechętnie. Powiedział, że tatuaż opowiadał o "czwórce, z którą podróżowałem w przeszłości".~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25141 /* ~"Od kiedy to niepoznanie prawdy jest w stanie komuś naprawdę pomóc, Dak'konie? Adwokat, który doradza ignorancję, zdradza swój zawód."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Przekonałem Dak'kona, aby powiedział mi co znaczył tatuaż na mojej odciętej ręce, choć zrobił to bardzo niechętnie. Powiedział, że tatuaż opowiadał o "czwórce, z którą podróżowałem w przeszłości".~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25142 /* ~"Od kiedy to niepoznanie prawdy jest w stanie komuś naprawdę pomóc, Dak'konie? Adwokat, który doradza ignorancję, zdradza swój zawód."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Przekonałem Dak'kona, aby powiedział mi co znaczył tatuaż na mojej odciętej ręce, choć zrobił to bardzo niechętnie. Powiedział, że tatuaż opowiadał o "czwórce, z którą podróżowałem w przeszłości".~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25143 /* ~"Od kiedy to *nie* poznanie prawdy jest w stanie komuś naprawdę pomóc, Dak'konie? Adwokat, który doradza ignorancję, zdradza swój zawód."~ */ DO ~GiveExperience(Protagonist,750)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~Przekonałem Dak'kona, aby powiedział mi co znaczył tatuaż na mojej odciętej ręce, choć zrobił to bardzo niechętnie. Powiedział, że tatuaż opowiadał o "czwórce, z którą podróżowałem w przeszłości".~ */ GOTO 94
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25144 /* ~"Mów, Dak'konie."~ */ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25145 /* ~"W takim razie mniejsza z tym. Co Upadły może powiedzieć o tatuażach na ramieniu?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25146 /* ~"W takim razie mniejsza z tym. Co Upadły może powiedzieć o tatuażach na ramieniu?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25147 /* ~"W takim razie mniejsza z tym. Co Upadły może powiedzieć o tatuażach na ramieniu?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25148 /* ~"W takim razie zapomnij o tym. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~~ THEN REPLY #25149 /* ~"Dobrze więc. Zachowaj sobie te swoje przemyślenia, Dak'konie. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.1 93.2 93.3
  SAY #22558 /* ~"W twych słowach zawiera się prawda. Ta prawda... powinna być mi *znana*." Dak'kon zamilkł na chwilę, po czym odwraca się w twą stronę, patrząc na ciebie twardo. "Symbole mówią o czwórce, z którą podróżowałeś w przeszłości."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25151 /* ~"Mów dalej... Co to za czwórka?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25152 /* ~"Mów dalej... Co to za czwórka?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25153 /* ~"Mów dalej... Co to za czwórka?"~ */ JOURNAL #24274 /* ~Upadły przetłumaczył runy z mojej starej ręki... powiedział, że opisują one czwórkę, która kiedyś podążała ze mną jedną ścieżką. Ta czwórka to: 'jedna niekochana, która kocha niekochającego', 'jeden, który nie widzi tego co inni, ale widzi czego inni nie widzą', 'jeden, który jest chowańcem i związany służbą' oraz 'jeden, który jest niewolnikiem, a jego łańcuchami jest słowo'. Powiedział, że wszyscy byli równie udręczeni co ja, a poprzez swoje cierpienie także innych skazywałem na ból.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25154 /* ~"Dobrze. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~~ THEN REPLY #25155 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.0
  SAY #22559 /* ~Dak'kon odwraca się w twoją stronę i patrzy twardo. "Tak."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25156 /* ~"Mniejsza z tym. Co Upadły powiedział ci o tatuażach?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25157 /* ~"W takim razie mniejsza z tym. Co Upadły może powiedzieć o tatuażach na ramieniu?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25158 /* ~"W takim razie mniejsza z tym. Co Upadły może powiedzieć o tatuażach na ramieniu?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25159 /* ~"Dobrze. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~~ THEN REPLY #25160 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 89.1 91.1 93.0 93.4
  SAY #22560 /* ~Dak'kon odwraca się w twoją stronę i patrzy twardo. "Symbole mówią o czwórce, z którą podróżowałeś w przeszłości."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25161 /* ~"Mów dalej... Co to za czwórka?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25162 /* ~"Mów dalej... Co to za czwórka?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25163 /* ~"Mów dalej... Co to za czwórka?"~ */ JOURNAL #24274 /* ~Upadły przetłumaczył runy z mojej starej ręki... powiedział, że opisują one czwórkę, która kiedyś podążała ze mną jedną ścieżką. Ta czwórka to: 'jedna niekochana, która kocha niekochającego', 'jeden, który nie widzi tego co inni, ale widzi czego inni nie widzą', 'jeden, który jest chowańcem i związany służbą' oraz 'jeden, który jest niewolnikiem, a jego łańcuchami jest słowo'. Powiedział, że wszyscy byli równie udręczeni co ja, a poprzez swoje cierpienie także innych skazywałem na ból.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25164 /* ~"Dobrze. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~~ THEN REPLY #25165 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #22561 /* ~Dak'kon nawet nie patrzy na symbole. "Tatuaże mówią o czterech umysłach. Jednym z nich byłą kobieta, która kochała mężczyznę, który *znał* ją, ale nie *znał* miłości. Innym był niewidomy mężczyzna, który widział rzeczy, jakich oczy śmiertelników nie mogły dostrzec. Kolejnym był chowaniec, ulubieniec maga, kupiony i spętany. Ostatnim zaś był niewolnik."~ */
  IF ~~ THEN REPLY #25166 /* ~"Czemu nie chciałeś mi tego powiedzieć?"~ */ GOTO 98
  IF ~  False()
~ THEN REPLY #25167 /* ~"Dobrze. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25168 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #22562 /* ~"Czwórka ta połączona jest z symbolem, który nie jest mi *znany*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25169 /* ~"Jakim symbolem?"~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25170 /* ~"Jakim symbolem?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25171 /* ~"Jakim symbolem?"~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25172 /* ~"Dobrze. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25173 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22563 /* ~"Ten symbol to udręka. Mówi on, że zawsze go nosiłeś. Twe ciało *wie*, że cierpi, nawet jeśli umysł nie *wie*."~ */
  IF ~~ THEN REPLY #25174 /* ~"O symbolu już starczy. Powiedz mi wszystko, co wiesz o przedstawionej na tatuażu czwórce."~ */ GOTO 100
  IF ~~ THEN REPLY #25175 /* ~"Rozumiem. Może mi coś więcej powiedzieć o znajdującej się na tatuażu czwórce?"~ */ GOTO 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25176 /* ~"Czy Upadły mówi coś o innych umieszczonych na ramieniu tatuażach?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25177 /* ~"Czy Upadły mówi coś o innych umieszczonych na ramieniu tatuażach?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25178 /* ~"Czy Upadły mówi coś o innych umieszczonych na ramieniu tatuażach?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25179 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25180 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1
  SAY #22564 /* ~Dak'kon zamilkł na chwilę. "Nie będę tu o tym mówił. Zapytaj mnie o to, kiedy nasza rozmowa na ten temat będzie mogła być słyszana jedynie przez uszy tych, którzy z tobą kroczą."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25181 /* ~"Świetnie. Czy Upadły mówi coś o innych znajdujących się na ramieniu tatuażach?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25182 /* ~"Świetnie. Czy Upadły mówi coś o innych znajdujących się na ramieniu tatuażach?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25183 /* ~"Świetnie. Czy Upadły mówi coś o innych znajdujących się na ramieniu tatuażach?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25184 /* ~"W porządku... Wpierw jednak chcę zadać Upadłemu inne pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25185 /* ~"Dobrze, Dak'konie. Odejdźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #22565 /* ~"Mówi, że na ramieniu znajdują się zapomniane tatuaże. Teraz je sobie przypomniał. Są twoje, jeśli je chcesz."~ */
  IF ~~ THEN REPLY #25186 /* ~"W porządku... Chciałbym zobaczyć wszystkie tatuaże, jakie oferuje."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25187 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25188 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22566 /* ~"Mówi, że tatuaże nie są jego."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Czy może coś o nich powiedzieć?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Czy może coś o nich powiedzieć?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Czy może coś o nich powiedzieć?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25189 /* ~"Rozumiem. Mam inne pytanie, które bym mu chciał zadać."~ */ GOTO 77
  IF ~~ THEN REPLY #25190 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #22567 /* ~"Symbole na twoich plecach to pozostawione dla ciebie wskazówki. Znak na twoim barku to znak udręki. Mówi on, że znak ten znajduje się na tobie, ponieważ ciało *wie*, że cierpi, nawet jeśli umysł nie *wie*."~ */
  IF ~~ THEN REPLY #25191 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25192 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #22568 /* ~"Cienie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25193 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25194 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25195 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25196 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25197 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #22569 /* ~"Mówi, że przyszło po ciebie wiele cieni. Powód, dla którego odebrały ci życie, nie jest mu *znany*."~ */
  IF ~~ THEN REPLY #25198 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25199 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #22570 /* ~"To jego galeria. Mówi, że *zna* cię jako swoje płótno. Z respektem mówi o twojej sile." Dak'kon zamilkł na chwilę. "Po czym obraża cię, okazując ci swoje współczucie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25200 /* ~"Swoje współczucie?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25201 /* ~"Swoje współczucie?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25202 /* ~"Swoje współczucie?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25203 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25204 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #22571 /* ~"Współczuje ci blizn, które pozostawiła na tobie udręka. Mówi, że wytrwałeś. Poprzez wytrwanie urosłeś w siłę."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25205 /* ~"Co przez to rozumie?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25206 /* ~"Co przez to rozumie?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25207 /* ~"Co przez to rozumie?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25208 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25209 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #22572 /* ~"Mówi, że jego podziw wynika z tego, że znosisz stratę. Mówi, że strata ciąży na tobie niczym łańcuchy, mimo to stoisz i chodzisz."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25210 /* ~"Poproś go, by mówił dalej."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25211 /* ~"Poproś go, by mówił dalej."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25212 /* ~"Poproś go, by mówił dalej."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25213 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25214 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #22573 /* ~"Mówi, że strata pokrywa to życie i wszystkie inne wcześniejsze. Mówi, że zrzucasz skórę niczym wąż - krocząc ścieżką życia pozostawiasz za sobą wcześniejsze życia."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25215 /* ~"Czy mówi coś jeszcze?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25216 /* ~"Czy mówi coś jeszcze?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25217 /* ~"Czy mówi coś jeszcze?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25218 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25219 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #22574 /* ~"Chce, żebyś *poznał* takie ostrzeżenie: Każde z twoich żyć rzuca cień na istnienie. Ścieżka twa doprowadzi cię w takie miejsce, gdzie cienie nie *znają* samych siebie, zaś ściany zbudowane są z żalów."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25220 /* ~"Ro... zumiem. Czy mówi coś jeszcze?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25221 /* ~"Ro... zumiem. Czy mówi coś jeszcze?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25222 /* ~"Ro... zumiem. Czy mówi coś jeszcze?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25223 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25224 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #22575 /* ~"Mówi, żebyś niczego nie podpisywał."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25225 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25226 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25227 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25228 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25229 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25230 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25231 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25232 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25233 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25234 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25235 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25236 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25237 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25238 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #22576 /* ~"Pyta, czy czujesz, że jesteś kompletny."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25239 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25240 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25241 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25242 /* ~"To nie twoja sprawa."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25243 /* ~Kłamstwo: "Tak, czuję się kompletny. Dlaczego pytasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25244 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 77
  IF ~~ THEN REPLY #25245 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #22577 /* ~"Podziwia twoją siłę. Mówi, żebyś zachował wiarę, a *poznasz* siebie ponownie."~ */
  IF ~~ THEN REPLY #25246 /* ~"Spróbuję. Mam inne pytanie, które bym mu chciał zadać..."~ */ GOTO 77
  IF ~~ THEN REPLY #25247 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #32703 /* ~Dak'kon zdaje się nawet nie zauważać obecności młodej kobiety - wpatruje się jedynie przed siebie.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 33
END

IF ~~ THEN BEGIN 115 // from:
  SAY #32704 /* ~Dak'kon w dalszym ciągu nie odpowiada - tak jakby dla niego kobieta w ogóle nie istniała.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 35
END

IF ~~ THEN BEGIN 116 // from:
  SAY #32705 /* ~Dak'kon przemawia nagle niskim barytonem - jakby nauczał małe dziecko. "Kiedy Zerthimon przybył do Sfery Shale, a githzerai wkroczyli na ścieżkę ludzi, powiedział on, że w ich postępowaniu wiele jest rzeczy godnych podziwu, muszą jednakże przebyć ciężką drogę, by wyzbyć się swej ignorancji..."~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #32706 /* ~Dak'kon ciągnie dalej swój 'dowcip': "Tak jak wielu ludzi - rzekł Zerthimon - mówią oni o wielkich rzeczach, robią jednak niewiele, w związku z tym w ich wzorcach kryje się niebezpieczeństwo. Człowieczeństwo jest uosobieniem koszmaru. Zagrożeniem dla ludzi pozbawionych prawdziwej historii oraz zdolności wyciągania nauk z tego, co zaszło."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 36
END

IF ~  GlobalGT("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 118 // from:
  SAY #33972 /* ~Gdy się zbliżasz, Dak'kon obraca się w twoją stronę, obserwując cię czarnymi jak węgiel oczami. "Było mi to *wiadome*, że powrócisz. Czy twoją wolą jest, by nasze ścieżki połączyły się w jedną?"~ [DAK207] */
  IF ~~ THEN REPLY #33973 /* ~"Tak, potrzebuję twojej pomocy, Dak'konie."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 119
  IF ~~ THEN REPLY #33974 /* ~"Nie w tej chwili, Dak'konie. Nie."~ */ GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #33975 /* ~"Twa ścieżka jest moją ścieżką."~ [DAK206] */
  IF ~~ THEN REPLY #33976 /* ~"Ruszajmy więc."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY #33977 /* ~"W takim razie nasze ścieżki rozdzielą się."~ */
  IF ~~ THEN REPLY #33978 /* ~"Żegnaj, Dak'konie."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #33979 /* ~"Jaka jest twoja wola?"~ [DAK205] */
  IF ~~ THEN REPLY #33980 /* ~"W tej chwili nic. Chciałem jedynie sprawdzić, czy wciąż ze mną jesteś."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #39583 /* ~Dak'kon skłania się uroczyście. "Przekażę ci opowieść o 'Utonięciu Ach'ali'."

Dak'kon opowiada historię mitologicznej Ach'ali, nierozgarniętej githzerai, która zatraciła się w chaosie limbo. Normalnie, każdy githzerai może użyć swej koncentracji i siły woli, by przemienić otaczający go chaos w niezbyt rozległe przyjazne środowisko. Jednakże Ach'ali, podczas swej drogi powrotnej do domu, zadała tyle bezcelowych i rozpraszających uwagę pytań, że znajdująca się wokół niej wysepka materii rozproszyła się, ona zaś utonęła.~ */
  IF ~~ THEN EXTERN ~DYVES~ 61
END

IF ~~ THEN BEGIN 123 // from:
  SAY #39584 /* ~Dak'kon spogląda uważnie, może nawet z lekkim zdziwieniem.~ */
  IF ~~ THEN REPLY #39761 /* ~"Mów dalej, Yves..."~ */ DO ~SetGlobal("Yves_Story_10","GLOBAL",1)
AddexperienceParty(500)
~ EXTERN ~DYVES~ 62
  IF ~~ THEN REPLY #39762 /* ~"Poczekaj, Yves... Mam pytanie..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39763 /* ~"Reszty wysłucham następnym razem, Yves. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #42437 /* ~Dak'kon wpatruje się w ciebie i mówi. "Nie może zrozumieć tego, co do niej mówisz. Ona umiera."~ */
  IF ~~ THEN REPLY #42438 /* ~"Od czego umiera?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ GOTO 125
  IF ~~ THEN REPLY #42439 /* ~"Może więc lepiej by było, gdybyś ją zabił. Zrób to jednak tak, by zabolało."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42440 /* ~"Czy jest coś, co możemy dla niej zrobić?"~ */ GOTO 127
  IF ~~ THEN REPLY #42441 /* ~"Wspaniale. Musimy iść."~ */ GOTO 128
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #42442 /* ~"Na imię ma An'azi. Mówi, że pracowała w przetwórni mięsa, aż, pół miesiąca temu, ciężar choroby tak przybrał na sile, że nie była w stanie go udźwignąć. Została opuszczona, wyrzucona z domu, pozostawiona na śmierć. Mówienie sprawia jej ból, choroba zaś uczyniła spustoszenie w jej umyśle. Mówi, że nie może dać ci nic wartościowego."~ */
  IF ~~ THEN REPLY #42443 /* ~"I?"~ */ GOTO 127
  IF ~~ THEN REPLY #42444 /* ~"No to ją zostawmy. Może z tego wyjdzie."~ */ GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 124.1 127.0 132.0
  SAY #42445 /* ~Oczy Dak'kona matowieją, ale kłania się przed tobą. Obraca się w stronę starej kobiety, pokazuje jej Nieprzerwany Krąg Zerthimona i wypowiada do niej kilka urywanych sylab. Ona przeszywa cię pełnym obrzydzenia spojrzeniem i ponownie odwraca się w stronę Dak'kona. Dak'kon wyciąga swe ostrze; ona zaś staje przed nim, wpatrując się w jego oczy. Dak'kon unosi miecz...~ */
  IF ~~ THEN REPLY #42446 /* ~"Stój, Dak'konie. Zostawimy ją samą. Chodźmy."~ */ GOTO 128
  IF ~~ THEN REPLY #42447 /* ~"Zamiast tego dźgnij ją, Dak'konie. Powiedziałem, że ma boleć."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ JOURNAL #67287 /* ~Za moją sprawą, Dak'kon zadał chorej kobiecie githzerai bolesną śmierć. Myślę, że doceniła tej gest, jeśli nie poświęcenie.~ */ GOTO 129
  IF ~~ THEN REPLY #42448 /* ~Pozwól mu kontynuować.~ */ JOURNAL #67287 /* ~Za moją sprawą, Dak'kon zadał chorej kobiecie githzerai bolesną śmierć. Myślę, że doceniła tej gest, jeśli nie poświęcenie.~ */ GOTO 131
END

IF ~~ THEN BEGIN 127 // from: 124.2 125.0 125.1
  SAY #42449 /* ~"*Wiedz*, że ona nie wyzdrowieje. Mogę ją wyzwolić od tego cierpienia. To wszystko. Jako *zerth* spośród Ludu, mam obowiązek dać jej alternatywę."~ */
  IF ~~ THEN REPLY #42450 /* ~"Zrób to więc. Ale tak, by poczuła ból."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42451 /* ~"Okaż więc miłosierdzie, Dak'konie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42452 /* ~"Nie rób tego. Mamy co innego do roboty."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 124.3 126.0 127.2 132.2
  SAY #42453 /* ~Dak'kon patrzy na ciebie obojętnie i kiedy odchodzisz, odwraca się, by złożyć pokłon kobiecie githzerai.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.1
  SAY #42454 /* ~Dak'kon nie spojrzał na ciebie, tylko wbił ostrze *karach* w jej ciało. Westchnęła cicho, z ust trysnęła jej krew. Oczy jej zakryły się mgłą, a nogi odmówiły posłuszeństwa. Ześlizgnęła się z ostrza i upadła bezwładnie.~ */
  IF ~~ THEN REPLY #42455 /* ~"Zabierajmy się stąd."~ */ DO ~AddexperienceParty(4000)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 127.1 132.1
  SAY #42456 /* ~Dak'kon wyciąga ostrze i czeka, aż kobieta się przygotuje. Przez chwilę dotyka ona noszonego przez niego Nieprzerwanego Kręgu Zerthimona. Na jej twarzy maluje się stoicki spokój. Ostrze Dak'kona jest niczym smuga, a gdy już zadał cios, kobieta padła krwawiąc na twardy bruk pokrywający ulice Sigil.~ */
  IF ~~ THEN REPLY #42457 /* ~"Dobra robota, Dak'konie. Chodźmy."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ JOURNAL #67288 /* ~Pozwoliłem Dak'konowi pomóc kobiecie z jego ludu, chorej githzerai, która nie mogła znieść ciężkiego, zanieczyszczonego powietrza Niższej Dzielnicy. Dak'kon zgładził ją, na jej własne życzenie.~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.2
  SAY #42458 /* ~Dak'kon wyciąga ostrze i czeka, aż kobieta się przygotuje. Przez chwilę dotyka ona noszonego przez niego Nieprzerwanego Kręgu Zerthimona. Na jej twarzy maluje się stoicki spokój. Ostrze Dak'kona jest niczym smuga, a gdy już zadał cios, kobieta padła krwawiąc na twardy bruk pokrywający ulice Sigil.~ */
  IF ~~ THEN REPLY #42459 /* ~"Chodźmy, Dak'konie."~ */ DO ~AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #42460 /* ~"Na imię ma An'azi. Choroba jej jest śmiertelna. Sprawia jej ból. Odporność przedstawicieli Ludu na złe powietrze unoszące się w tej Dzielnicy jest niższa od ludzkiej. Jestem *zerthiem*. Zapewnienie alternatywy jest moim obowiązkiem. Błagała mnie, żebym to zrobił, ponieważ żaden z Ludu się tu nie zjawi."~ */
  IF ~~ THEN REPLY #42461 /* ~"Zrób to więc. Ale tak, by poczuła ból."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42462 /* ~"Okaż więc miłosierdzie, Dak'konie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42463 /* ~"Nie rób tego. Mamy co innego do roboty."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 133 // from:
  SAY #43544 /* ~Zanim się odezwałeś, Dak'kon się wtrąca. "Chcę, żebyś mnie wysłuchał."~ */
  IF ~~ THEN REPLY #43545 /* ~"O co chodzi, Dak'konie?"~ */ GOTO 134
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Nie. Zamilcz."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Nie. Zamilcz."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #43547 /* ~"Jest moją wolą, byśmy nie rozmawiali z tą kobietą."~ */
  IF ~~ THEN REPLY #43548 /* ~"Dlaczego nie?"~ */ GOTO 136
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43549 /* ~"Słucham cię. Mimo to z nią porozmawiamy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43550 /* ~"Słucham cię. Mimo to z nią porozmawiamy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"W takim razie, nie odzywaj się do niej."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43552 /* ~"Nie rozmawiajmy więc z nią."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43553 /* ~"Dobrze więc. Nie będziemy."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43553 /* ~"Dobrze więc. Nie będziemy."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.5 134.6 136.2 136.3
  SAY #43554 /* ~"Jestem ci wdzięczny."~ */
  IF ~~ THEN REPLY #43555 /* ~"Nie mam na ten temat zdania."~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.0
  SAY #43556 /* ~"Ona jest *zerthem*. Nasze wole to skrzyżowane ostrza. Nie znajdziemy między sobą porozumienia."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Przyjąłem tę uwagę. Mimo to i tak z nią porozmawiamy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43558 /* ~"W takim razie, nie odzywaj się do niej."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43559 /* ~"Dobrze więc. Nie będziemy."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43559 /* ~"Dobrze więc. Nie będziemy."~ */ GOTO 135
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"W takim razie, nie odzywaj się do niej."~ */ EXTERN ~DKIINA~ 30
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Przyjąłem tę uwagę. Mimo to i tak z nią porozmawiamy."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 137 // from:
  SAY #43560 /* ~"Zrobienie tego..." Głos Dak'kona załamuje się. "Zrobienie tego nie jest zgodne z moją *wolą*."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #43561 /* ~"Dak'konie, to był rozkaz. Jesteś moim niewolnikiem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43562 /* ~"Zrób to, Dak'konie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43563 /* ~"Dobrze. Pamiętaj jednak, iż kroczy ona po cienkiej linii."~ */ EXTERN ~DKIINA~ 34
END

IF ~~ THEN BEGIN 138 // from:
  SAY #43564 /* ~Przeszywa ją ostrze Dak'kona. Krwawiąc, pada na podłogę. Krew zagotowała się na ostrzu, po czym wyparowała, pozostawiając na powierzchni czarne plamy.~ */
  IF ~~ THEN REPLY #43565 /* ~"Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #43566 /* ~Dak'kon wzdycha. "Stuletni Anarch, nie istnieje klepsydra, która byłaby władna zmierzyć tę historię. To sprawa zakręcona niczym korzenie Fri'hi. Jej rozwiązanie należy do grona rzeczy niemożliwych i może nigdy nie nadejść. Nie oceniaj mnie zbyt surowo."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 140 // from:
  SAY #43567 /* ~Dak'kon porusza się nerwowo. "Nie mogę zmusić go do powiedzenia czegokolwiek. Bardzo bym chciał, by to zrobił, ale... sam decyduje o własnym życiu."~ */
  IF ~~ THEN REPLY #43568 /* ~"Grupa githyanki zamierza najechać na fortecę w przyszłym siedmiodniu. Są już w drodze do tego miejsca.~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
~ EXTERN ~DKIINA~ 37
  IF ~~ THEN REPLY #43569 /* ~"Nie powiem."~ */ EXTERN ~DKIINA~ 40
END

IF ~~ THEN BEGIN 141 // from:
  SAY #43570 /* ~"To nie słowa Zerthimona nie są przekonywujące. To ich echa zostały wypaczone."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 44
END

IF ~~ THEN BEGIN 142 // from:
  SAY #43571 /* ~"Twe słowa nie wyrażają myśli Zerthimona. Ukształtowane są z intryg i nienawiści - jakby zostały uformowane przez umysł samej Gith."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 45
END

IF ~~ THEN BEGIN 143 // from:
  SAY #43572 /* ~Wyczuwając jakby twój zamiar, Dak'kon przemawia do ciebie, nie odrywając wzroku od Kii'na. "Zostań w pobliżu i nie wchodź pomiędzy nasze ostrza."~ */
  IF ~~ THEN REPLY #43573 /* ~"Dak'konie, rozkazuję ci, byś przestał."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43574 /* ~"Dak'konie, pozwól jej odejść."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43575 /* ~Mimo wszystko zaatakuj zertha.~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 46
  IF ~~ THEN REPLY #43576 /* ~Pozwól im walczyć.~ */ EXTERN ~DKIINA~ 47
END

IF ~~ THEN BEGIN 144 // from:
  SAY #43577 /* ~"Twój umysł ukształtowany jest z formy Gith, Kii'na."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43578 /* ~"Chodźmy, Dak'konie."~ */ EXTERN ~DMORTE~ 466
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43579 /* ~"Chodźmy, Dak'konie."~ */ EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY #43580 /* ~"Wysłuchasz tego człowieka, gdy będzie przemawiał?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 49
END

IF ~~ THEN BEGIN 146 // from:
  SAY #43581 /* ~"On podróżuje ze mną, Kii'no, uczennico Zerthimona. Przybył, by wysłuchać słów Zerthimona, którymi ty, jako *zerth*, musisz się podzielić. Wysłuchasz go?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 50
END

IF ~~ THEN BEGIN 147 // from:
  SAY #43582 /* ~"Zamkniesz swój umysł na jego słowa? *Poznaj* swe słowa, nim je wypowiesz, Kii'no, *zerthcie* Zerthimona."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 51
END

IF ~~ THEN BEGIN 148 // from:
  SAY #43583 /* ~"To wystarczy." Dak'kon odwrócił się do ciebie i przemówił w twym języku. "Nauczy cię."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",1)
~ EXTERN ~DKIINA~ 52
END

IF ~~ THEN BEGIN 149 // from:
  SAY #44651 /* ~"Chcę cię ostrzec przed rozmową z githyanki."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44652 /* ~"Czym jest githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ JOURNAL #39453 /* ~Dak'kon wytłumaczył mi różnicę pomiędzy githyanki a githzerai. Byli kiedyś jedną rasą, niewolnikami pod rządami okrutnych pożeraczy umysłów - lub inaczej illithidów, jak sam ich nazywa. Ale kiedy wyzwolili się z jarzma swych prześladowców, dwa obozy podążyły za dwoma różnymi przywódcami. Od tego czasu panuje między nimi zajadła nienawiść.~ */ GOTO 150
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44653 /* ~"Dlaczego?"~ */ GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #44654 /* ~"Githyanki i githzerai byli niegdyś jednym rodem. Byliśmy niewolnikami i pożywieniem dla *illithidów* - Pożeraczy Umysłów - którzy zjadali nas, by wspomóc swą egzystencję. Jeden z naszych przodków, królowa-wojowniczka Gith, poprowadziła nas ku zwycięstwu nad *illithidami* i udało nam się uciec. Od tamtej pory toczymy z nimi niekończącą się wojnę. Zaistniała jednakże niezgodność co do przyszłości naszego Ludu. Nasz przywódca, Zerthimon, wypowiedział na Spopielonej Równinie Oświadczenie o Dwóch Niebiosach. Obnażono stal. Jedna rasa stała się dwoma. To przepaść, której pokojowo nie da się przekroczyć."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44655 /* ~"Mimo to i tak z nim porozmawiamy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44656 /* ~"Mimo to i tak z nim porozmawiamy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 153
  IF ~~ THEN REPLY #44657 /* ~"Pozwolimy mu więc odejść. Chodźmy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 149.1
  SAY #44658 /* ~"*Wiedz*, że są oni zaprzysiężonymi wrogami Ludu. Jeśli wymienimy słowa, obnażymy stal."~ */
  IF ~~ THEN REPLY #44659 /* ~"Mimo to i tak z nim porozmawiamy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~~ THEN REPLY #44660 /* ~"Pozwolimy mu więc odejść. Chodźmy."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 48
END

IF ~~ THEN BEGIN 152 // from: 150.0 151.0
  SAY #44661 /* ~Dak'kon przytakuje.~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 47
END

IF ~~ THEN BEGIN 153 // from: 150.1
  SAY #44662 /* ~Dak'kon przytakuje.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 474
END

IF ~~ THEN BEGIN 154 // from:
  SAY #44663 /* ~Również i Dak'kon wyciąga ostrze. "Yi'minn. Twa krew ubarwi bruk tej ulicy."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44664 /* ~Stań pomiędzy nimi: "Stójcie!"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44665 /* ~Stań pomiędzy nimi: "Stójcie!"~ */ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44666 /* ~Zaatakuj githyanki.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44667 /* ~Zaatakuj githyanki.~ */ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44668 /* ~Pozwól im walczyć.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44669 /* ~Pozwól im walczyć.~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 155 // from: 154.0 154.1
  SAY #44670 /* ~Dak'kon przemawia do ciebie, nie odrywa jednakże wzroku od swego przeciwnika. "Odsuń się i nie wchodź pomiędzy nasze ostrza."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #44671 /* ~"Nie wydawaj mi rozkazów, Dak'konie, bo wydam ci polecenie zabicia siebie samego."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DYI'MINN~ 50
  IF ~~ THEN REPLY #44672 /* ~"Pozwól mu odejść, Dak'konie."~ */ GOTO 156
  IF ~~ THEN REPLY #44673 /* ~"W takim razie, ruszaj."~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 156 // from: 155.1
  SAY #44674 /* ~Dak'kon przemawia do githyanki: "Yi'minn, to nie miejsce na bitwę."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 54
END

IF ~~ THEN BEGIN 157 // from:
  SAY #44675 /* ~"*Znam* zdradę githyanki. Będę w tej sprawie jego cieniem."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 57
END

IF ~~ THEN BEGIN 158 // from:
  SAY #44676 /* ~"Nie można zabić cieni, póki nie legnie rzucający je. Dlatego też podróżuję wolny od strachu."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 58
END

IF ~~ THEN BEGIN 159 // from:
  SAY #44692 /* ~Ostrze Dak'kona pojawia się w jego dłoni. "Odwiedzisz dziś swoich przodków, githyanki."~ */
  IF ~~ THEN REPLY #44693 /* ~"Przestańcie!"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 9
  IF ~~ THEN REPLY #44694 /* ~Pozwól im walczyć.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 10
END

IF ~~ THEN BEGIN 160 // from:
  SAY #45362 /* ~"Ten oto zalicza się w poczet wiernych." Kłania się. "*Wiedz*, że człowiek ów podróżuje ze mną - taka jest moja wola. Wysłuchasz go?"~ */
  IF ~  GlobalLT("Vristigor","GLOBAL",2)
~ THEN REPLY #45363 /* ~"Mam jedynie kilka pytań..."~ */ EXTERN ~DHAILCII~ 28
  IF ~  Global("Vristigor","GLOBAL",2)
~ THEN REPLY #45364 /* ~"Mam jedynie kilka pytań..."~ */ EXTERN ~DHAILCII~ 44
END

IF ~~ THEN BEGIN 161 // from:
  SAY #45365 /* ~"Trafne jest twe pytanie. Moją wolą jest, byś *wiedział*, że kroczymy tą samą ścieżką. Wysłuchasz go?"~ */
  IF ~~ THEN EXTERN ~DHAILCII~ 29
END

IF ~~ THEN BEGIN 162 // from:
  SAY #45366 /* ~"Spytanie o czyjeś blizny jest oznaką honoru - ukazuje to respekt dla twej historii."~ */
  IF ~~ THEN REPLY #45367 /* ~"Nie przypominam sobie, w jaki sposób wszedłem w posiadanie większości z nich."~ */ EXTERN ~DHAILCII~ 33
  IF ~~ THEN REPLY #45368 /* ~"Pochodzą z tak wielu bitew, że opowieść o nich wszystkich trwałaby zbyt długo."~ */ EXTERN ~DHAILCII~ 36
  IF ~~ THEN REPLY #45369 /* ~"To po prostu blizny. Mam kilka innych pytań..."~ */ EXTERN ~DHAILCII~ 34
END

IF ~~ THEN BEGIN 163 // from:
  SAY #45730 /* ~Usta Dak'kona zaciskają się jeszcze bardziej, nie odpowiada jednak.~ */
  IF ~~ THEN REPLY #45731 /* ~"Przestań, Morte. Chciałbym tu zadać kilka pytań..."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45733 /* ~"Odejdźmy po prostu, dobrze?"~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #50168 /* ~"Mówi, że jest dabusem."~ */
  IF ~~ THEN REPLY #50169 /* ~"Czy mogę mu zadać jeszcze parę pytań?"~ */ GOTO 165
  IF ~~ THEN REPLY #50211 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 165 // from: 164.0 166.0
  SAY #50170 /* ~Dak'kon przytakuje.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50171 /* ~"Zapytaj go, kim jest."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50172 /* ~"Zapytaj go, kim jest."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50173 /* ~"Zapytaj go, kim jest."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50182 /* ~"Zapytaj go, co robi."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50196 /* ~"Zapytaj go, co robi."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50201 /* ~"Zapytaj go, co robi."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50206 /* ~"Poproś go, by powiedział nam o Pani Bólu."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50207 /* ~"Poproś go, by powiedział nam o Upadłym."~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50210 /* ~"Mniejsza z tym. Chodźmy już."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #50189 /* ~"Mówi, że wypełnia swoje powinności."~ */
  IF ~~ THEN REPLY #50190 /* ~"Czy mogę mu zadać jeszcze parę pytań?"~ */ GOTO 165
  IF ~~ THEN REPLY #50191 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 167 // from:
  SAY #50706 /* ~Dak'kon milczy, po czym wyrzuca brzmiące jak ostrze słowa. "Nie jest mą *wolą*, bym został niewolnikiem tej kobiety."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #50707 /* ~"W tej sprawie nie masz zbyt wiele do powiedzenia, czyż nie, niewolniku? Kupisz go, Vrisziko?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50708 /* ~"Kogo to obchodzi, Dak'konie. Kupisz go, Vrisziko?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50709 /* ~"No to nie będziesz. Vrisziko, mam kolejne pytanie..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50710 /* ~"W porządku... Chodźmy już, Dak'konie."~ */ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #50711 /* ~"Nigdy nie sądziłem..." Jego czarne jak węgiel oczy przyglądają się przez chwilę twojej twarzy, po czym spoczywają na podłodze, gdy potrząsa głową. "Okrutna to ścieżka, którą poprowadziły mnie me pochopne słowa. Moja ścieżka... Ścieżka Dak'kona..." Odwraca się do ciebie w milczeniu.~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 56
END

IF ~~ THEN BEGIN 169 // from:
  SAY #52538 /* ~"Jedynie jeśli to, co spoczywa na drugiej ścieżce, niesie większy ból."~ */
  IF ~~ THEN REPLY #52539 /* ~"Ravelo... to jest BARDZO ważne: masz jakiekolwiek pojęcie dlaczego cię o to poprosiłem?"~ */ EXTERN ~DRAVEL~ 109
END

IF ~~ THEN BEGIN 170 // from:
  SAY #52540 /* ~Dak'kon milczy, ale jego ostrze *zmienia* się w obliczu słów Raveli... Ostrze ciemnieje, krawędzie robią się coraz bardziej ostre... Aż całe ostrze *karach* zdaje się nieść w sobie straszliwą wrogość.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52541 /* ~"Waż swe słowa, Ravelo..."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ EXTERN ~DRAVEL~ 33
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52542 /* ~"Waż swe słowa, Ravelo..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ EXTERN ~DRAVEL~ 34
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52543 /* ~"Waż swe słowa, Ravelo..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52544 /* ~"Waż swe słowa, Ravelo..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52545 /* ~"Waż swe słowa, Ravelo..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52546 /* ~"Waż swe słowa, Ravelo..."~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 171 // from:
  SAY #52547 /* ~Ostrze Dak'kona zasnuwa się wściekle czernią, odzwierciedlając jego oczy... I, ku twemu zaskoczeniu, klinga *karach* bezgłośnie dzieli się na ostre kły.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52548 /* ~"Ravelo... Zostaw go. *Ja* odpowiem na twoje pytania, nie oni."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ EXTERN ~DRAVEL~ 63
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52549 /* ~"Ravelo... Zostaw go. *Ja* odpowiem na twoje pytania, nie oni."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52550 /* ~"Ravelo... Zostaw go. *Ja* odpowiem na twoje pytania, nie oni."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52551 /* ~"Ravelo... Zostaw go. *Ja* odpowiem na twoje pytania, nie oni."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52552 /* ~"Ravelo... Zostaw go. *Ja* odpowiem na twoje pytania, nie oni."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52553 /* ~"Ravelo... Zostaw go. *Ja* odpowiem na twoje pytania, nie oni."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 172 // from:
  SAY #53990 /* ~"Twoja ścieżka jest moją ścieżką."~ */
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53991 /* ~"Morte? Gotowy?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53992 /* ~"Morte? Gotowy?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53993 /* ~"W porządku... Zobaczmy, co leży po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53994 /* ~"W porządku... Zobaczmy, co leży po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53995 /* ~"W porządku... Zobaczmy, co leży po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #53997 /* ~Dak'kon zdaje się być rozdarty - wygląda, jakby każda jego cząstka chciała podjąć bunt, przytakuje jednak. "Twa ścieżka jest moją..." Jego rysy zdają się zapadać w sobie. "Podążam za tobą, mogę więc jedynie umrzeć."~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53999 /* ~"To wszystko, o co pytam... Być może już wkrótce ziści się twe życzenie. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("DMorte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54000 /* ~"To wszystko, o co pytam... Być może już wkrótce ziści się twe życzenie. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54001 /* ~"Być może już wkrótce ziści się twoje życzenie. W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54002 /* ~"Być może już wkrótce ziści się twoje życzenie. W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54003 /* ~"Być może już wkrótce ziści się twoje życzenie. W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #54004 /* ~Było to tak subtelne, że prawie to przegapiłeś - broń Dak'kona zamigotała, ostrze pociemniało. Kiedy na niego spoglądasz, ustawia ręce tak, jakby się przygotowywał do walki.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 540
END

IF ~~ THEN BEGIN 175 // from:
  SAY #54007 /* ~"*Wiedz*, że kroczyłem twą ścieżką wiele razy." Dak'kon mówi powoli, jakby ważył każde słowo; jego ostrze staje się mgliście szare, jakby umysł Dak'kona odpływał dokądś. "Część twej ścieżki jest mi *znana*. Pięcioro przeszło drogę do Fortecy. Każdy zmarł swoją własną śmiercią."~ */
  IF ~~ THEN REPLY #54008 /* ~"Ale... kim oni byli? W jaki sposób zginęli?"~ */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #54009 /* ~"Mnie dosięgła śmierć z powodu wiary. Czaszka zmarłą śmiercią z powodu odwagi. Kobieta zmarła śmiercią z żalu. Niewidomego łucznika dosięgła ostatnia, najłaskawsza śmierć - śmierć ciała. Ty zaś... ciebie zabiła śmierć pamięci."~ */
  IF ~~ THEN REPLY #54010 /* ~"Ale... kim byli ci ludzie?"~ */ EXTERN ~DMORTE~ 566
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54011 /* ~"Był tym, który *znał* cele, nie widząc ich. Wiele cieni padło od gradu jego strzał."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 567
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54012 /* ~"Była tam ciemność, a każdy cień był jak Shra'kt'lor." Głos Dak'kona zmienia się w szept, jego martwoczarne oczy zdają się wpatrywać w coś za tobą. "To udręczone istoty. Rany w twej duszy są im *znane*. Będą cię przez nie atakować."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 568
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54013 /* ~"Cienie *cierpią*. *Znają* udrękę. *Wiedzą*, jak torturować cię tym, co rani twe serce. Gdy będziesz stawiał im czoła, *wiedz*, że stoisz przed tymi, którzy już raz cię zabili."~ */
  IF ~~ THEN REPLY #54014 /* ~"Dak'konie... Mortemu, tobie i mnie udało się przeżyć. Co się stało z łucznikiem i Deionarrą?"~ */ GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #54015 /* ~"Łucznik zmarł śmiercią ciała. Kobieta zmarła śmiercią ducha. Nie mogłem uratować kobiety, ponieważ twą WOLĄ nie było, by została uratowana. Grobu jej nie zrosiły łzy. Nikt nie *wiedział*, nie opłakiwano jej odejścia."~ */
  IF ~~ THEN REPLY #54016 /* ~"Ale... dlaczego nie chciałem, by została ocalona?"~ */ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #54018 /* ~"Twa wola *znana* była jedynie tobie."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54019 /* ~"W porządku. Słuchajcie obydwaj: Potrzebuję poznać wszystko, co tylko możecie mi o tej Fortecy powiedzieć..."~ */ EXTERN ~DMORTE~ 569
  IF ~  !InParty("Morte")
~ THEN REPLY #54020 /* ~"W porządku. Słuchajcie obydwaj: Potrzebuję poznać wszystko, co tylko możecie mi o tej Fortecy powiedzieć..."~ */ EXTERN ~DMORTE~ 570
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54021 /* ~"Nic tam nie żyje. Ściany są ciemnością."~ */
  IF ~~ THEN REPLY #54022 /* ~"W porządku... Zanim wstąpię w portal... Czy możecie się ze mną podzielić JESZCZE CZYMŚ, co według was mogłoby mi POMÓC?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2)
~ EXTERN ~DMORTE~ 553
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54084 /* ~Wpatrując się w coś odległego, Dak'kon przemawia cicho. "To niczym chwytanie wody w czyjeś dłonie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 519
END

IF ~~ THEN BEGIN 184 // from:
  SAY #54085 /* ~Dak'kon przemówił do ciebie cicho. "Słup z Czaszek to kolumna żywych głów, uformowana z tych, którzy skłamali *wiedząc*, że ich oszustwo doprowadzi do czyjejś śmierci. Może odpowiedzieć na liczne pytania, gdyż sporo wie, żąda jednak za swe usługi bardzo wygórowanej zapłaty. Nie powinno im się zadawać takich pytań."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 185 // from:
  SAY #54773 /* ~"Nie wiążą go łańcuchy. Wiąże go wiara."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Devo, mam do ciebie kilka pytań..."~ */ EXTERN ~DTRIAS~ 8
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Devo, mam do ciebie kilka pytań..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 186 // from:
  SAY #57128 /* ~"To prawdziwy zdrajca githzerai. Przeklął nasz naród." Dak'kon wyciąga ostrze. "To wystarczający powód, by zginął."~ */
  IF ~~ THEN REPLY #57129 /* ~"Odłóż ostrze, Dak'konie."~ */ EXTERN ~DBURGHER~ 2
  IF ~~ THEN REPLY #57130 /* ~"W takim razie zabij go."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 3
END

IF ~~ THEN BEGIN 187 // from:
  SAY #57131 /* ~"Nie możesz mu ufać. Pozwól mu zginąć tu, pod tym wozem."~ */
  IF ~~ THEN REPLY #57132 /* ~"Nie, Dak'konie. Wydostaniemy go."~ */ EXTERN ~DBURGHER~ 5
  IF ~~ THEN REPLY #57133 /* ~"W porządku. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #57134 /* ~"To prawdziwy zdrajca githzerai. Przeklął nasz naród." Dak'kon wyciąga ostrze. "To wystarczający powód, by zginął."~ */
  IF ~~ THEN REPLY #57135 /* ~"Odłóż ostrze, Dak'konie."~ */ EXTERN ~DBURGHER~ 13
  IF ~~ THEN REPLY #57136 /* ~"W takim razie zabij go."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 14
END

IF ~~ THEN BEGIN 189 // from:
  SAY #57137 /* ~"Nie możesz mu ufać. Pozwól mu zginąć tu, pod tym wozem."~ */
  IF ~~ THEN REPLY #57138 /* ~"Nie, Dak'konie. Wydostaniemy go."~ */ EXTERN ~DBURGHER~ 16
  IF ~~ THEN REPLY #57139 /* ~"W porządku. Chodźmy."~ */ EXTERN ~DBURGHER~ 17
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",14)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 190 // from:
  SAY #59167 /* ~Dak'kon obraca w twym kierunku swe czarne jak węgiel oczy. Jego ostrze błyszczy, metal pływa niczym unosząca się na wodzie warstwa oleju. Kiedy przemawia, głos jego jest wyważony i silny... nie ma w nim już tych emocji, które słyszałeś wcześniej. "Jaka jest twoja wola?"~ [DAK205] */
  IF ~~ THEN REPLY #59168 /* ~"Są sprawy, które chciałbym *poznać*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #59169 /* ~"W tej chwili nic, Dak'konie. Kontynuujmy."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
GlobalLT("BD_DAKKON_MORALE","GLOBAL",15)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 191 // from:
  SAY #59170 /* ~Dak'kon obraca w twym kierunku swe czarne niczym węgiel oczy.~ [DAK205] */
  IF ~~ THEN REPLY #59171 /* ~"Są sprawy, które chciałbym *poznać*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #59172 /* ~"W tej chwili nic, Dak'konie. Kontynuujmy."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 192 // from:
  SAY #59173 /* ~Dak'kon obraca powoli swe - niczym dwa martwe, czarne kamienie - oczy. Twarz ma popielatą, ostrze jego przybrało barwę zaschniętej krwi. Kiedy przemawia, słychać *starość*... i rozdarcie. "Jaka jest twoja wola?"~ [DAK205] */
  IF ~~ THEN REPLY #59174 /* ~"Są sprawy, które chciałbym *poznać*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #59175 /* ~"W tej chwili nic, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 193 // from: 190.0 191.0 192.0 194.1 195.1 196.1 197.2 198.2 199.2 200.1 201.2 202.1 203.7 204.3 205.2 206.1 207.2 208.0 209.1 210.1 211.1 212.1 213.1 214.1 215.1 216.3 217.5 218.1 219.1 220.1 221.1 222.2 223.1 224.2 225.1 226.1 227.1 228.1 230.1 231.4 232.5 233.1 234.1 235.0 236.3 237.3 238.3 239.3 240.3 241.3 242.3 243.3 244.2 245.2 246.2 247.2 248.2 250.1 251.4 252.3 253.2 254.3 255.4 256.2 258.1 259.1 260.1 261.1 262.1 268.2 269.0 270.6 271.3 272.3 273.4 274.3 275.3 278.3 279.3 281.2 282.3 285.2 287.0 289.0 290.1 291.2 292.1 293.0 294.14 295.0 296.0 298.0 318.7 319.2 320.1 322.0 323.2 324.1 328.2 329.5 330.3 331.3 332.5 333.6 334.7 335.7 337.6 338.3 339.4 340.3 341.3 343.1 351.1 352.1 353.1 356.1 363.0
  SAY #59176 /* ~"Wysłucham cię."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59177 /* ~"Rysy twe są... mi obce. Coś ty za jeden?"~ */ GOTO 194
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59178 /* ~"Mam parę pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59179 /* ~"Chciałem cię zapytań o nasze podróże..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #59180 /* ~"Szukam nauczyciela. Być może mógłbyś mi pomóc..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68257 /* ~"Czy mógłbym porozmawiać z tobą o twych naukach?"~ */ GOTO 366
  IF ~  GlobalGT("Ravel_Dakkon","GLOBAL",0)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59181 /* ~"Dak'konie... Ravela nazwała cię niewolnikiem. Co miała na myśli?"~ */ GOTO 352
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #59182 /* ~"Dak'konie, co to 'Shra'kt'lor'?"~ */ GOTO 260
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59183 /* ~"Dak'konie, powiedz mi raz jeszcze o tym, jak uratowałem cię w Shra'kt'lor."~ */ GOTO 223
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59184 /* ~"Powiedziałeś - *ja* dałem ci Krąg Zerthimona - Dak'konie?"~ */ GOTO 226
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59185 /* ~"Opowiedz mi o tym drugim 'ja'... O wcieleniu, które znałeś. Jaki on był?"~ */ GOTO 210
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59186 /* ~"Jak to się stało, że zostałeś moim dłużnikiem, Dak'konie?"~ */ GOTO 217
  IF ~~ THEN REPLY #59187 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #59188 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #59189 /* ~"Githzerai?"~ */ GOTO 195
  IF ~~ THEN REPLY #59190 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59191 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 195 // from: 194.0 255.0
  SAY #59192 /* ~"Githzerai jest jednym spośród Ludu."~ */
  IF ~~ THEN REPLY #59193 /* ~"Jednym spośród ludu?"~ */ GOTO 196
  IF ~~ THEN REPLY #59194 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59195 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #59196 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #59197 /* ~"Tak, ale kim dokładnie są githzerai?"~ */ GOTO 197
  IF ~~ THEN REPLY #59198 /* ~"No to w... porządku. Są inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59199 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #59200 /* ~Dak'kon milknie na moment, po czym przemawia. "Nie ma *potrzeby*, byś poznał naszą historię. Ostrze czasu wycisnęłoby z nas ostatnią kroplę krwi, zanim wyrecytowałbym ci choćby cząstkę historii naszego Ludu."~ */
  IF ~~ THEN REPLY #59201 /* ~"Nie ma potrzeby, bym poznawał wasze historie... Chciałbym jednak poznać to, co się tyczy twego ludu obecnie."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 198
  IF ~~ THEN REPLY #59202 /* ~"Mam parę pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59203 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59204 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0 231.0 255.1
  SAY #59205 /* ~Dak'kon milknie na chwilę. "*Wiedz* to i przyjmij to za odpowiedź: Jesteśmy Ludem, który za swój dom obrał niestałą sferę Limbo. Zręcznym ruchem wyjął on zza pleców miecz i uniósł przed sobą.~ */
  IF ~~ THEN REPLY #59206 /* ~Poczekaj by się przekonać, co się stanie.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 199
  IF ~~ THEN REPLY #59207 /* ~"Mniejsza z tym. Mam kilka pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59208 /* ~"Tak w zasadzie to jest kilka spraw, które bym chciał *poznać..."~ */ GOTO 193
  IF ~~ THEN REPLY #59209 /* ~"W porządku, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #59210 /* ~"Tam, kształtujemy materię Limbo naszymi umysłami. Wykuwamy miasta za pomocą naszych myśli." Dostrzegłeś, na ostrzu zaczęła formować się wychodząca z jego środka fala. Jej poziom i wysokość dostosowywały się do zmian w głosie Dak'kona. "Żyjemy pośród jego chaosu, chroni nas jedynie nasze *poznanie*. Jesteśmy githzerai."~ */
  IF ~~ THEN REPLY #59211 /* ~"Co to za ostrze, które posiadasz...? Porusza się ono, zmienia w odpowiedzi na twój głos."~ */ GOTO 251
  IF ~~ THEN REPLY #59212 /* ~"Mniejsza z tym. Mam kilka pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59213 /* ~"Rozumiem. Jest jeszcze kilka innych spraw, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59214 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 232.0
  SAY #59215 /* ~"*Znane* jest pod nazwą 'Sigil'. Wśród Ludu *znane* jest jako miasto, które nie *zna* samego siebie."~ */
  IF ~~ THEN REPLY #59216 /* ~"Nie zna samego siebie? Co przez to rozumiesz?"~ */ GOTO 201
  IF ~~ THEN REPLY #59217 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59218 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #59219 /* ~"Miasto istnieje, nie *zna* jednak samego siebie. Poprzez nie *znanie* samego siebie jego istnienie jest spaczone."~ */
  IF ~~ THEN REPLY #59220 /* ~"W jaki sposób jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59221 /* ~"Mówisz, jakby miasto było żywe."~ */ GOTO 202
  IF ~~ THEN REPLY #59222 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59223 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.1 203.6
  SAY #59224 /* ~"Nie może być mieć świadomości i *znać* siebie w taki sposób, w jaki ty lub ja możemy siebie *poznać*, żyje jednak. Rozrasta się, zmienia, ma wpływ na umysły wszystkich tych, którzy w nim żyją."~ */
  IF ~~ THEN REPLY #59225 /* ~"Dlaczego uważasz, że miasto nie zna samego siebie?"~ */ GOTO 203
  IF ~~ THEN REPLY #59226 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59227 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 201.0 202.0 236.1 237.1 238.1 239.1 240.1 241.1 242.1 243.1 244.0
  SAY #59228 /* ~"Miasto istnieje w sprzeczności z samym sobą. Oddzieliło się od sfer, stara się jednak być zarazem wszędzie. Jego mury są drzwiami, trzyma jednak te drzwi zamknięte. Takie bytowanie świadczy o tym, że nie *zna* ono siebie samego. Poprzez nie *znanie* samego siebie jest ono spaczone."~ */
  IF ~~ THEN REPLY #59229 /* ~"Co masz na myśli, kiedy mówisz, że miasto jest zarazem wszędzie?"~ */ GOTO 236
  IF ~~ THEN REPLY #59230 /* ~"Jego ściany są drzwiami?"~ */ GOTO 236
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59231 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone? Przedmiotem nie musi rządzić porządek, nie musi on mieć celu, by znać siebie samego. Co, jeśli te przeciwieństwa stanowią wzmocnienia, których nie dostrzegasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59232 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone? Przedmiotem nie musi rządzić porządek, nie musi on mieć celu, by znać siebie samego. Co, jeśli te przeciwieństwa stanowią wzmocnienia, których nie dostrzegasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59233 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone? Przedmiotem nie musi rządzić porządek, nie musi on mieć celu, by znać siebie samego. Co, jeśli te przeciwieństwa stanowią wzmocnienia, których nie dostrzegasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59234 /* ~Prawda: "A co, jeśli miasto *nie* jest spaczone? Przedmiotem nie musi rządzić porządek, nie musi on mieć celu, by znać siebie samego. Co, jeśli te przeciwieństwa stanowią wzmocnienia, których nie dostrzegasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~~ THEN REPLY #59235 /* ~"Mówisz, jakby miasto było żywe."~ */ GOTO 202
  IF ~~ THEN REPLY #59236 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59237 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.2 203.3 203.4 203.5
  SAY #59238 /* ~"Na twe pytanie - pytanie: Co, jeśli miasto jest spaczone, a ty wszędzie wokół widzisz jego sprzeczności?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #59239 /* ~Prawda: "Na twe pytanie - pytanie: Twierdzisz, że istnienie miasta jest spaczone. Zaakceptowałeś to, zamiast zgłębiać możliwość, iż sprawa ta ma jakiś szerszy wymiar. To sugeruje, że jesteś spaczony... i że nie szukasz wiedzy, a jedynie pasujących ci odpowiedzi."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #59240 /* ~Prawda: "Na twe pytanie - pytanie: Twierdzisz, że istnienie miasta jest spaczone. Zaakceptowałeś to, zamiast zgłębiać możliwość, iż sprawa ta ma jakiś szerszy wymiar. To sugeruje, że jesteś spaczony... i że nie szukasz wiedzy, a jedynie pasujących ci odpowiedzi."~ */ GOTO 205
  IF ~~ THEN REPLY #59241 /* ~"Co miałeś na myśli, kiedy mówiłeś, że miasto jest zarazem wszędzie?"~ */ GOTO 236
  IF ~~ THEN REPLY #59242 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59243 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0 204.1
  SAY #59244 /* ~Dak'kon milknie. "Nie ma *znanej* odpowiedzi na zadane przeze nas pytania. Miasto po prostu istnieje. To wszystko."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #59245 /* ~"Mimo to wciąż będę utrzymywał, że *poznajemy* samych siebie przez pytania, jakie zadajemy, a nie przez te nie zadane. Jeśli zaprzestaniemy zadawać pytania i przyjmiemy jedynie to, co możemy dostrzec..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 206
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #59246 /* ~"Mimo to wciąż będę utrzymywał, że *poznajemy* samych siebie przez pytania, jakie zadajemy, a nie przez te nie zadane. Jeśli zaprzestaniemy zadawać pytania i przyjmiemy jedynie to, co możemy dostrzec..."~ */ GOTO 206
  IF ~~ THEN REPLY #59247 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59248 /* ~"No to mniejsza z tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 205.0 205.1
  SAY #59249 /* ~"Wtedy zaprzestaniemy *poznawania* samych siebie." Głos Dak'kona zmienia się nieznacznie, staje się cięższy. "Słowa takie wypowiedziano wcześniej. Słyszałem je i *znam* je."~ */
  IF ~~ THEN REPLY #59250 /* ~"Gdzie je słyszałeś?"~ */ GOTO 207
  IF ~~ THEN REPLY #59251 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59252 /* ~"Mniejsza z tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #59253 /* ~"Słowa te są moje. Kiedyś *znałem* je, *znałem* też ich sens. Nie pamiętałem ich, póki nie przemówiłeś." Dak'kon zdaje się patrzeć przez twe ciało, jego ostrze zaś przestaje błyszczeć, zaczyna tracić barwę, aż staje się półprzezroczyste. Przez chwilę panuje cisza, po czym Dak'kon podnosi wzrok. "Chciałbym podążyć twą ścieżką razem z tobą."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59254 /* ~"Dak'konie, jak to możliwe, że znam twoje słowa?"~ */ GOTO 208
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59255 /* ~"Dak'konie, czy usłyszałem te słowa od ciebie, gdy z tobą podróżowałem?"~ */ GOTO 209
  IF ~~ THEN REPLY #59256 /* ~"Ro... zumiem. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59257 /* ~"Mniejsza z tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #59258 /* ~"Wymówiłem słowa, one jednakże do mnie nie należą. Inni mogą je *znać*, ponieważ *poznanie* ich leży w każdej rzeczy. Ludzie nazywają to *mądrością*."~ */
  IF ~~ THEN REPLY #59259 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59260 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #59261 /* ~"Wiele razy omawialiśmy znaczenie tych słów. Kiedyś, gdy balast lat nie był tak ciężki jak teraz. Krocząc tą ścieżką wiele zapomniałem."~ */
  IF ~~ THEN REPLY #59262 /* ~"Dak'konie... Jaki ja... - ten drugi ja - byłem?~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 210
  IF ~~ THEN REPLY #59263 /* ~"Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59264 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 193.9 209.0
  SAY #59265 /* ~Wzrok Dak'kona przeszedł przez ciebie. Zamilkł on.~ */
  IF ~~ THEN REPLY #59266 /* ~"Dak'kon?"~ */ JOURNAL #59269 /* ~Dak'kon oznajmił mi, że znał mnie w którymś z moich poprzednich żywotów...ale nie miał do powiedzenia na mój temat zbyt wiele miłych rzeczy. Określił mnie z tamtego okresu jako człowieka wielce uzdolnionego, ale jednocześnie niezwykle egoistycznego i wiarołomnego, co przynosiło wiele krzywd otoczeniu. Zaczynam się poważnie zastanawiać nad tym, czy nie należy mi się przypadkiem tytuł największego łotra w historii Sfer.~ */ GOTO 211
  IF ~~ THEN REPLY #59267 /* ~"No to mniejsza z tym. Są inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59268 /* ~"Może lepiej byłoby o tym nie rozmawiać. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59270 /* ~"*Wiedz*, że on był inny. *Wiedz*, że różnice nie sprowadzały się jedynie do znaków na skórze, do Spraw związanych z bronią, do noszonego przez niego ubrania. *Wiedz*, że różnił się on sposobem myślenia i tym, jak po swych przemyśleniach postępował. Jego WOLA stawała się materią. *Wiedz*, że widział on innych i ich NIE widział. *Wiedział* jedynie, jak mogą mu służyć. Serce jego było zdradliwe i zimne, i nigdy go ten chłód nie oparzył."~ */
  IF ~~ THEN REPLY #59271 /* ~"Czy kiedykolwiek cię to dotknęło, Dak'konie? Czy on cię zdradził?"~ */ GOTO 212
  IF ~~ THEN REPLY #59272 /* ~"Ro... zumiem. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59273 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #59274 /* ~Ostrze Dak'kona zaczyna zasnuwać się matową, monotonną czernią. Zauważasz, że ostrza, niczym zęby, zaczynają wyrastać z klingi broni. Zaciska twarz i cedzi przez zęby. "Nie jest mą *wolą*, byś to *poznał*."~ */
  IF ~~ THEN REPLY #59275 /* ~"*Powiedz* mi, Dak'konie. Czy on cię zdradził kiedykolwiek?"~ */ GOTO 213
  IF ~~ THEN REPLY #59276 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59277 /* ~"W takim razie nie będziemy już o tym więcej mówić."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #59278 /* ~"*Wiedz*, że istnieje WIELE zdrad. Każda zdrada mojej osoby uczyniona byłą moją ręką. Żadną inną."~ */
  IF ~~ THEN REPLY #59279 /* ~"*Powiedz* me, Dak'konie. Co to była za zdrada?"~ */ GOTO 214
  IF ~~ THEN REPLY #59280 /* ~"Mniejsza z tym. Są jeszcze inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59281 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #59282 /* ~"Poddałem mu moje SŁOWO. Poddałem mu samego SIEBIE."~ */
  IF ~~ THEN REPLY #59283 /* ~"O czym ty mówisz?"~ */ JOURNAL #59286 /* ~Dak'kon opowiedział mi o przyczynach swego niewolniczego przywiązania do mojej osoby. Kiedy uratowałem mu życie, on w podzięce obiecał służyć mi do śmierci. Ale nie zdawał sobie sprawę z tego, że jestem nieśmiertelny, i w ten sposób, chcąc nie chcąc, związał się ze mną na całe swoje życie.~ */ GOTO 215
  IF ~~ THEN REPLY #59284 /* ~"Mniejsza z tym. Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59285 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 214.0 278.0 356.0
  SAY #59287 /* ~"Lud nie pozwoli zniewolić się innym, czy to poprzez układ, czy łańcuchy. Jeśli znajdziemy się w takiej klatce, będziemy DZIAŁAĆ, by się uwolnić - nawet jeśli w tym celu musielibyśmy przez pewien czas wytrzymać w innej klatce. Uczyniłeś mi wielką usługę. Przez to jednakże zniewoliłeś mnie. Działałem, by się uwolnić. *Wiedz*, że poddałem me słowo i siebie samego, by *działać* w twym imieniu aż do twej śmierci."~ */
  IF ~~ THEN REPLY #59288 /* ~"Ale... Ja nie mogę umrzeć."~ */ GOTO 216
  IF ~~ THEN REPLY #59289 /* ~"Ro... zumiem. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59290 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59291 /* ~"Nie było to *znane* temu. Poddałem mu me *słowo*. Poddałem mu *siebie*. *Wiedz*, że nie pozostało nic, co mógłbym poddać, poza moim życiem. *Wiedz*, że podążam z tobą, by móc umrzeć."~ */
  IF ~~ THEN REPLY #59292 /* ~"Jaką to wyświadczyłem ci przysługę, która... cię zniewoliła?"~ */ GOTO 217
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59293 /* ~"Dak'konie, wcale nie musi tak być... Mogę uczynić cię wolnym. Nie chcę, byś był moim niewolnikiem. Możesz uznać dług za spłacony."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59294 /* ~"Dak'konie, wcale nie musi tak być... Mogę uczynić cię wolnym. Nie chcę, byś był moim niewolnikiem. Możesz uznać dług za spłacony."~ */ GOTO 233
  IF ~~ THEN REPLY #59295 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59296 /* ~"A więc ten inny ja uzyskał od ciebie przysięgę, że będziesz mu służył aż do śmierci... A ty nie wiedziałeś, że jest *nieśmiertelny*? Świetnie; ruszajmy... niewolniku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59297 /* ~"A więc ten inny ja uzyskał od ciebie przysięgę, że będziesz mu służył aż do śmierci... A ty nie wiedziałeś, że jest *nieśmiertelny*? Świetnie; ruszajmy... niewolniku."~ */ EXIT
  IF ~~ THEN REPLY #59298 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 193.10 216.0
  SAY #59299 /* ~"Uratowałeś życie tamtego. W zamian, twoje życie stało się moim."~ */
  IF ~~ THEN REPLY #59300 /* ~"Jak uratowałem ci twoje życie?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 218
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59301 /* ~"Dak'konie, wcale nie musi tak być... Mogę uczynić cię wolnym. Nie chcę, byś był moim niewolnikiem. Możesz uznać dług za spłacony."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59302 /* ~"Dak'konie, wcale nie musi tak być... Mogę uczynić cię wolnym. Nie chcę, byś był moim niewolnikiem. Możesz uznać dług za spłacony."~ */ GOTO 233
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59303 /* ~"A więc ten inny ja uzyskał od ciebie przysięgę, że będziesz mu służył aż do śmierci... A ty nie wiedziałeś, że jest *nieśmiertelny*? Świetnie; ruszajmy... niewolniku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59304 /* ~"A więc ten inny ja uzyskał od ciebie przysięgę, że będziesz mu służył aż do śmierci... A ty nie wiedziałeś, że jest *nieśmiertelny*? Świetnie; ruszajmy... niewolniku."~ */ EXIT
  IF ~~ THEN REPLY #59305 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59306 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0 262.0 331.0
  SAY #59307 /* ~"Na zmieniającej się Sferze Limbo, Lud, używając swych myśli, kształtuje miasta z chaosu. *Wiedz*, że nie ma tam miejsca dla rozproszonego umysłu." Dak'kon wyjmuje zza ramienia ostrze i trzyma je przed sobą. Gdy się na nie patrzyłeś, zaczęło robić się *ostrzejsze*, aż stało się prawie tak cienkie, jak kartka papieru."~ */
  IF ~~ THEN REPLY #59308 /* ~"Kontynuuj..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 219
  IF ~~ THEN REPLY #59309 /* ~"Sądzę, że usłyszałem wystarczająco dużo. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59310 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #59311 /* ~"Rozproszony umysł to umysł nieskoncentrowany. Rozproszony umysł powoduje pękanie ścian i osłabia kamienie." Kiedy Dak'kon mówił, ostrze broni uległo nieznacznej korozji - metal wzdłuż ostrzy pokryły plamy i zaczął się topić. "Wiele rozproszonych umysłów może *unicestwić* miasto."~ */
  IF ~~ THEN REPLY #59312 /* ~"Rozumiem. Kontynuuj..."~ */ GOTO 220
  IF ~~ THEN REPLY #59313 /* ~"Usłyszałem wystarczająco dużo. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59315 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #59316 /* ~"Od bardzo dawna *znam* słowa Zerthimona. Poprzez głos mój słowa Zerthimona poznało wielu. *Zerthowie* chronią społeczność przed wszelkimi zagrożeniami, zarówno dla ciała jak i ducha. Są niczym drogowskazy pośrodku chaosu. Zdarzyło się tak, że wypowiedziałem słowa Zerthimona nie *znając* słów Zerthimona. Zdarzyło się tak, że przestałem *znać* samego siebie."~ */
  IF ~~ THEN REPLY #59318 /* ~"A więc... zwątpiłeś w słowa?"~ */ GOTO 221
  IF ~~ THEN REPLY #59319 /* ~"Usłyszałem wystarczająco dużo. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59320 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59322 /* ~"Nie." Głos Dak'kona brzmi nerwowo - w odpowiedzi jego ostrze *wyostrza* się. "*Znałem* słowa. Naszło mnie jednak, że być może inni nie *znają* tych słów tak, jak *znał* je Zerthimon. Tak uformowało się rozproszenie. Mój umysł stał się niczym dwa, mój umysł uległ podzieleniu. Ci, którzy traktowali mnie jako drogowskaz, również zostali podzieleni. Dziesiątki githzerai, setki githzerai... zwątpiło. Tego dnia umarł Shra'kt'lor."~ */
  IF ~~ THEN REPLY #59324 /* ~"A więc... ci, którzy za tobą podążali, również zwątpili w słowa i miasto stało się słabsze."~ */ GOTO 222
  IF ~~ THEN REPLY #59325 /* ~"Usłyszałem wystarczająco dużo. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59326 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #59330 /* ~"Przybyli wrogowie Zerthimona. *Wiedz*, że ich nienawiść do jego słów i Ludu przydała ich ostrzom długości. *Wiedz, że wyczuli, że miasto jest osłabione i przynieśli ze sobą wojnę. Wielu githzerai utonęło w chaosie i legło pod ostrzami swych wrogów." Na powierzchni ostrza pojawiają się krople metalu - tak, jakby pokryło się ono pęcherzami. *Wiedz*, że stało się to dawno temu."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59332 /* ~"Co ci się stało?"~ */ GOTO 268
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59337 /* ~"Co ci się stało?"~ */ GOTO 223
  IF ~~ THEN REPLY #59342 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59344 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 193.7 222.1
  SAY #59347 /* ~"Kiedy wypadłem poza mury Shra'kt'lor, wiedziałem, że me wnętrze zostało rozdarte. Ostrze me było mgłą, umysł był rozproszony. Dryfowałem pośród morza Limbo i chciałem utonąć. Konałem przez wiele dni, umysł mój zalewały rozterki - i w końcu nadeszła śmierć. Przywdziewała twoją skórę i mówiła twym głosem."~ */
  IF ~~ THEN REPLY #59348 /* ~"Ja?"~ */ GOTO 224
  IF ~~ THEN REPLY #59349 /* ~"Usłyszałem wystarczająco dużo. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59351 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59353 /* ~"Prosiłeś, bym cię wysłuchał."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 344
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59355 /* ~"Co powiedziałem?"~ */ GOTO 227
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59357 /* ~"Mniejsza z tym. Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59359 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 344.1 345.1 346.1 347.1 348.1 349.2 350.0
  SAY #59360 /* ~Dak'kon milczy. "Usłyszałem twe słowa. Panujący w mym umyśle chaos ustabilizował się. *Poznałem* siebie ponownie."~ */
  IF ~~ THEN REPLY #59361 /* ~"A więc dostałeś Krąg ode mnie?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Okazało się, że to *ja*, w którymś ze swoich poprzednich żywotów, dałem Dak'konowi Nieprzerwany Krąg Zerthimona.~ */ GOTO 226
  IF ~~ THEN REPLY #59362 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59363 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 193.8 225.0 227.0
  SAY #59364 /* ~"Tak. Poprzez *poznanie* jego słów, *poznałem* samego siebie."~ */
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59365 /* ~"Ale czy uratował on twe życie, Dak'konie? A może podzielił cię jeszcze bardziej, gdy przestudiowałeś Krąg?"~ */ GOTO 228
  IF ~~ THEN REPLY #59366 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59367 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 224.1
  SAY #59368 /* ~"Dak'konie, *zerthcie* z Zatopionego Shra'kt'lor, ostatni dzierżycielu ostrza *karach*. *Wiedz*, że przybywam do ciebie ze słowami Zerthimona, wyrytymi nie w chaosie, lecz w kamieniu, wyrytymi przez wolę w Nieprzerwanego Kręgu. *Wiedz*, że są one prawdziwe, *wiedz* też, że twój rozproszony umysł nie musi już tkwić w rozproszeniu. Musisz jedynie wziąć kamień, a *poznasz* siebie na powrót."~ */
  IF ~~ THEN REPLY #59369 /* ~"A więc dostałeś Krąg ode *mnie*?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Okazało się, że to *ja*, w którymś ze swoich poprzednich żywotów, dałem Dak'konowi Nieprzerwany Krąg Zerthimona.~ */ GOTO 226
  IF ~~ THEN REPLY #59370 /* ~"Ro... zumiem. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59371 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 226.0
  SAY #59373 /* ~Dak'kon milczy przez chwilę, jednak jego ostrze zaczyna się skręcać - jakby w bólu. Powoli przemawia ponownie, a głos jego brzmi ponuro. "Podzielł mnie."~ */
  IF ~~ THEN REPLY #59374 /* ~"A więc *uratowałem* ci twoje życie, Dak'konie? A może wzbogaciłem jedynie ból, który już odczuwałeś? Te słowa... Słowa Zerthimona - zdają się ciebie jedynie jeszcze bardziej rozpraszać. Widzę to, gdy wylewasz z siebie swoje nauki."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 229
  IF ~~ THEN REPLY #59375 /* ~"Tak właśnie myślałem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59376 /* ~"Nie będziemy o tym więcej rozmawiać. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #59377 /* ~Dak'kon milczy.~ */
  IF ~~ THEN REPLY #59378 /* ~"Mówię, że NIGDY cię nie uratowałem, Dak'konie... Wydźwignąłem cię jedynie ze stanu przedśmiertelnego, byś mógł umrzeć ponownie. Gdybyś umarł w Shra'kt'lor, zaznałbyś spokoju."~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #59379 /* ~"Słowa twe niosą w sobie ciężar prawdy. Śmierć, która przyszłaby po mnie w Shra'kt'lor - byłaby ostatnią śmiercią. Każdy przeżyty od tego czasu dzień stanowi nową śmierć."~ */
  IF ~~ THEN REPLY #59380 /* ~"Nie musisz mi dłużej służyć, Dak'konie. Nigdy twego życia nie uratowałem; Jedynie zabiłem cię po dwakroć. Nic mi nie jesteś winny."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_2","GLOBALGood",3)
~ GOTO 233
  IF ~~ THEN REPLY #59381 /* ~"Taka jest droga rzeczy. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59382 /* ~"Porozmawiamy o tym później. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 193.1 197.1 198.1 199.1 245.1 246.1 247.1 248.1 250.0 251.3 252.2 253.1 254.2 255.3 256.1 270.5 271.2 272.2 273.3 274.2 275.2 278.2 279.2 281.1 282.2 285.1 343.0
  SAY #59383 /* ~Dak'kon czeka.~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59384 /* ~"Mógłbyś powiedzieć mi raz jeszcze o ludzie githzerai?"~ */ GOTO 198
  IF ~~ THEN REPLY #59385 /* ~"Zdajesz się przykładać szczególną wagę do słowa 'poznanie'. Dlaczego?"~ */ GOTO 245
  IF ~~ THEN REPLY #59386 /* ~"Co to za ostrze, które posiadasz?"~ */ GOTO 251
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59387 /* ~"Mam kilka pytań odnośnie języka githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59388 /* ~"Zamiast tego mam kilka innych pytań..."~ */ GOTO 193
  IF ~~ THEN REPLY #59389 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 193.2 236.2 237.2 238.2 239.2 240.2 241.2 242.2 243.2 244.1 258.0 259.0 328.1
  SAY #59390 /* ~Dak'kon czeka.~ */
  IF ~~ THEN REPLY #59391 /* ~"Co mógłbyś mi powiedzieć o Sigil?"~ */ GOTO 200
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #59392 /* ~"Znasz mężczyznę imieniem Farod?"~ */ GOTO 258
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #59393 /* ~"Straciłem dziennik. Nie wiesz, gdzie może się on znajdować?"~ */ GOTO 259
  IF ~  GlobalGT("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #59394 /* ~"Kiedy Upadły opisywał znajdujące się na mym ramieniu tatuaże, powiedziałeś, że znasz symbole."~ */ GOTO 328
  IF ~  GlobalGT("Dakkon_Old_Companions","GLOBAL",0)
~ THEN REPLY #59395 /* ~"Powiedziałeś, że kiedyś podróżowałem wespół z czwórką innych. Kim byli ci inni?"~ */ GOTO 329
  IF ~~ THEN REPLY #59396 /* ~"Zamiast tego mam kilka innych pytań..."~ */ GOTO 193
  IF ~~ THEN REPLY #59397 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 216.1 216.2 217.1 217.2 230.0
  SAY #59398 /* ~"Nie..." Czoło Dak'kona wykrzywiło się w bólu, jego oczy zaś wpatrywały się przez ciebie. "To nie twoje słowo niesie ten ciężar i twoje słowo mnie nie uwolni. Słowo, które me więzi, jest mym własnym. Moja jest udręka. Serce me *wie*, że okowy pozostaną. Słowa ich nie rozerwą."~ */
  IF ~~ THEN REPLY #59399 /* ~"Czy jest jakiś sposób, byś mógł zyskać wolność?"~ */ GOTO 234
  IF ~~ THEN REPLY #59400 /* ~"No to mniejsza z tym. Są inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59403 /* ~"Porozmawiamy o tym kiedy indziej - ta sprawa nie jest jeszcze zamknięta. Ruszajmy."~ */ JOURNAL #59404 /* ~Dak'kon stwierdził, że jedynym sposobem na zwolnienie go z niewolniczej przysięgi, jest moja definitywna, nieodwracalna śmierć. Trudno mi powiedzieć, czy coś takiego jest w ogóle możliwe.~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #59406 /* ~"Musisz umrzeć śmiercią ostateczną. Mimo to twa ścieżka nie jest ścieżką śmierci. Sprawa ta nie ma rozwiązania."~ */
  IF ~~ THEN REPLY #59409 /* ~Przyrzeczenie: "Przysięgam, że znajdę jakiś sposób, Dak'konie. Znajdę jakiś, który cię uwolni."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_2","GLOBALLaw",3)
~ JOURNAL #59416 /* ~Przysiągłem Dak'konowi, że znajdę sposób na zwolnienie go z jego służby. Prawdę powiedziawszy moja obietnica zamiast nastroić go optymistycznie na przyszłość, jeszcze bardziej go przybiła.~ */ GOTO 235
  IF ~~ THEN REPLY #59412 /* ~"Ro... zumiem. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59414 /* ~"Porozmawiamy o tym kiedy indziej - ta sprawa nie zostanie zamknięta. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #59425 /* ~Głos Dak'kona staje się urywany - tak, jakby zachorował on niespodziewanie. "*Wiedz, że dodałeś inne słowa do moich słów." Jego twarz pokrył grymas bólu, spotkał swym wzrokom twój. "Teraz na nas obu nałożyłeś okowy."~ */
  IF ~~ THEN REPLY #59426 /* ~"Ro... zumiem. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59428 /* ~"Porozmawiamy o tym kiedy indziej - ta sprawa nie zostanie zamknięta. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 203.0 203.1 204.2
  SAY #59430 /* ~"Miasto samo w sobie zbudowane jest z drzwi. Drzwi te wiodą wszędzie."~ */
  IF ~~ THEN REPLY #59432 /* ~"Gdzie się te drzwi znajdują?"~ */ GOTO 237
  IF ~~ THEN REPLY #59433 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59435 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59437 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59439 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #59442 /* ~"Są w każdym miejscu miasta..." Dak'kon milczy przez chwilę. "Powiada się, że każda mieszcząca się w granicach Miasta-znanego-jako-Sigil przestrzeń to drzwi dokądś wiodące."~ */
  IF ~~ THEN REPLY #59445 /* ~"Nie rozumiem."~ */ GOTO 238
  IF ~~ THEN REPLY #59447 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59450 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59452 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59455 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #59456 /* ~"Wyobraź sobie drzwi wiodące do domu. Usuń te drzwi. Pozostanie framuga. Znajdująca się we framudze przestrzeń to w dalszym ciągu drzwi."~ */
  IF ~~ THEN REPLY #59457 /* ~"Ale to tylko... pusta przestrzeń."~ */ GOTO 239
  IF ~~ THEN REPLY #59459 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59463 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59465 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #59466 /* ~"Wiele jest drzwi, których się nigdy nie widzi. Możesz przejść przez nie, jakby były powietrzem i nie *poznać*, że tam były. Znajdują się poza zasięgiem twego wzroku i dotyku."~ */
  IF ~~ THEN REPLY #59467 /* ~"I te niewidzialne drzwi są w Sigil *wszechobecne*?~ */ GOTO 240
  IF ~~ THEN REPLY #59469 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59472 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59474 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #59475 /* ~"Powiada się, że każda mieszcząca się w granicach Miasta-znanego-jako-Sigil przestrzeń to drzwi dokądś wiodące. Nie *wiadomo* tego jednak na pewno. Drzwi przesuwają się. Drzwi się zmieniają. Drzwi znikają. Wszystkie są zamknięte na klucz."~ */
  IF ~~ THEN REPLY #59476 /* ~"Zamknięte na klucz?"~ */ GOTO 241
  IF ~~ THEN REPLY #59477 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59478 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59479 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59480 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #59481 /* ~"Drzwi są niczym powietrze, póki nie masz klucza, który je otwiera. Kiedy masz klucz, drzwi *ujawnią* ci się same."~ */
  IF ~~ THEN REPLY #59482 /* ~"Skąd wiadomo, jaki jest klucz?"~ */ GOTO 242
  IF ~~ THEN REPLY #59483 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59484 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59487 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59488 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 242 // from: 241.0
  SAY #59489 /* ~"Do każdych drzwi istnieje innych klucz. Niektóre klucze są *znane*, inne zaś nie *znane*."~ */
  IF ~~ THEN REPLY #59491 /* ~"Co to za klucze?"~ */ GOTO 243
  IF ~~ THEN REPLY #59492 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59494 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59495 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59497 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #59498 /* ~"Istnieje tyle kluczy, ile jest drzwi. Klucze te to nie zawsze rzeczy wykonane z metalu. Kluczem może być szczęk ścierającej się ze sobą pary mieczy, kropla krwi upuszczona z języka umierającego człowieka, wspomnienie przeszłej miłości, bądź ciśnięte pod adresem niebios przekleństwo. Kiedy klucz i drzwi pasują do siebie, drzwi ujawniają się same."~ */
  IF ~~ THEN REPLY #59500 /* ~"Zdaje się, że odnalezienie tych wszystkich kluczy i drzwi byłoby trudnym zadaniem."~ */ GOTO 244
  IF ~~ THEN REPLY #59501 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59503 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59504 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59506 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #59507 /* ~"Podejmowano się takiego zadania, nigdy go jednak nie ukończono. Tak jak zmienia się miasto, zmieniają się i drzwi. Nic *znanego* nie pozostaje *znanym* zbyt długo."~ */
  IF ~~ THEN REPLY #59508 /* ~"Powiedz mi jeszcze raz: Dlaczego powiedziałeś, że miasto jest spaczone?"~ */ GOTO 203
  IF ~~ THEN REPLY #59509 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59510 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59511 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 245 // from: 231.1
  SAY #59512 /* ~"Wszystkie rzeczy - wykreowane czy żywe - ich istnienie określane jest poprzez *poznawanie* siebie."~ */
  IF ~~ THEN REPLY #59513 /* ~"A jeśli człowiek nie zna samego siebie?"~ */ GOTO 246
  IF ~~ THEN REPLY #59514 /* ~"Rozumiem. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59517 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59518 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #59520 /* ~"Kiedy umysł nie *zna* siebie, jest spaczony. Gdy umysł jest spaczony, człowiek jest również spaczony. Kiedy człowiek jest spaczony, wszystko, czego dotyka, jest również spaczone. "Dak'kon przerywa na chwilę. "Powiada się, że to, na co spojrzy spaczony człowiek, zniszczą jego ręce."~ */
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #59521 /* ~"Czy znasz siebie samego?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 247
  IF ~~ THEN REPLY #59522 /* ~"Rozumiem. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59523 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59524 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #59525 /* ~Dak'kon milknie na moment. Jego czarne jak węgiel oczy zdają się być tak samo nieobecne jak wtedy, gdy go po raz pierwszy spotkałeś.~ */
  IF ~~ THEN REPLY #59528 /* ~"Pytam ponownie: Czy znasz siebie samego?"~ */ GOTO 248
  IF ~~ THEN REPLY #59529 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59531 /* ~"Mniejsza z tym. Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59532 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 248 // from: 247.0
  SAY #59534 /* ~Gdy zaczyna mówić ponownie, głos jego się zmienia. Słowa wybrzmiewają jak echo, niczym głaz zrzucony w przepaść. Wygląda to, jakby siłą wydobywał słowa ze swej klatki piersiowej. "Moją *wolą* nie jest, byś to *poznał*."~ */
  IF ~~ THEN REPLY #59535 /* ~"Być może wyraziłem to pytanie nazbyt uprzejmie: Powiedz mi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 249
  IF ~~ THEN REPLY #59536 /* ~"W porządku. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59538 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59539 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #59541 /* ~Słowa wypływają z ust Dak'kona powoli, jakby były dobierane jedno po drugim. "Wyszło... na jaw, że nie *znam* samego siebie."~ */
  IF ~~ THEN REPLY #59543 /* ~"Dlaczego?"~ */ GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #59545 /* ~Głos Dak'kona brzmi niczym szmer, jak piasek. "Nie *wiem* dlaczego. "*Wiem*, że to się wydarzyło. Nie *wiem* jednak jak ani kiedy... Ani jak *poznać* siebie ponownie."~ */
  IF ~~ THEN REPLY #59546 /* ~"Rozumiem... Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59548 /* ~"No to mniejsza z tym. Są inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59550 /* ~"Porozmawiamy o tym innym razem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 199.0 231.2
  SAY #59551 /* ~"To ostrze *karach*. To przedmiot, który pozwala innym *poznać* rangę dzierżącej go osoby."~ */
  IF ~~ THEN REPLY #59552 /* ~"*Karach*? Co to znaczy?"~ */ GOTO 254
  IF ~~ THEN REPLY #59554 /* ~"Wykonane jest z dziwnego metalu... Przez to, iż zmienia się ono w te i we wte, ma wręcz hipnotyczne właściwości."~ */ GOTO 254
  IF ~~ THEN REPLY #59555 /* ~"Jaką rangę wskazuje?"~ */ GOTO 252
  IF ~~ THEN REPLY #59556 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59557 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59559 /* ~"Porozmawiamy o tym jeszcze kiedyś. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 251.2 256.0
  SAY #59561 /* ~"To ostrze to symbol noszony przez *zerth*. "*Zerth* to ten, który *zna* słowa Zerthimona. Poprzez *poznanie* słów Zerthimona - *wiedzą* oni."~ */
  IF ~~ THEN REPLY #59563 /* ~"Zerthimona?"~ */ GOTO 253
  IF ~~ THEN REPLY #59564 /* ~"Jeszcze raz: Z czego zrobione jest to ostrze?"~ */ GOTO 254
  IF ~~ THEN REPLY #59565 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59566 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59567 /* ~"Porozmawiamy o tym jeszcze kiedyś. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #59569 /* ~"Zerthimon stworzył naszą rasę. "*Znał* on githzerai, zanim oni *poznali* samych siebie. To on wykreował Lud. Dał im jeden umysł."~ */
  IF ~~ THEN REPLY #59570 /* ~"Jeszcze raz: Z czego zrobione jest to ostrze?"~ */ GOTO 254
  IF ~~ THEN REPLY #59571 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59572 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59573 /* ~"Porozmawiamy o tym jeszcze kiedyś. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 251.0 251.1 252.1 253.0
  SAY #59575 /* ~Dak'kon milknie na chwilę, jakby poszukiwał odpowiednich słów. "W twoim języku najbliższym tłumaczeniem będzie 'materia chaosu'. Lud może kształtować ją swoimi myślami."~ */
  IF ~~ THEN REPLY #59576 /* ~"Lud?"~ */ GOTO 255
  IF ~~ THEN REPLY #59577 /* ~"Kształtują go siłą umysłu?"~ */ GOTO 256
  IF ~~ THEN REPLY #59579 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59580 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59581 /* ~"Porozmawiamy o tym jeszcze kiedyś. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #59583 /* ~"Githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59584 /* ~"Co to githzerai?"~ */ GOTO 195
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59586 /* ~"Jeszcze raz: Co to są githzerai?"~ */ GOTO 198
  IF ~~ THEN REPLY #59587 /* ~"I mówisz, że githzerai potrafią formować *karach*... za pomocą swych myśli?"~ */ GOTO 256
  IF ~~ THEN REPLY #59589 /* ~"Mam kilka innych pytań odnośnie twojego ludu..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59591 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59593 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 254.1 255.2
  SAY #59594 /* ~"*Karach* nie jest kształtowane przez ciepło, ale poprzez *poznawanie* kogoś. Na swej powierzchni i na ostrzu odzwierciedla ono wolę dzierżącej go osoby. Gdy ktoś *zna* siebie, ostrze ma siłę - jest twardsze i bardziej wytrzymałe niż stal. Kiedy ktoś nie *zna* siebie, ostrze jest jak woda - bezkształtne i słabe."~ */
  IF ~~ THEN REPLY #59596 /* ~"Jaką rangę wskazuje ostrze?"~ */ GOTO 252
  IF ~~ THEN REPLY #59597 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59598 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59600 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 318.2
  SAY #59602 /* ~"Ma znajomość Sztuki, jeśli chodzi o sposób *poznawania* jej przez ludzi, jest ograniczona." Dak'kon wyciąga ostrze z pochwy i okrężnym ruchem unosił je przed siebie. "*Wiem* jednak wystarczająco dużo. Nauczę cię jej dróg."~ */
  IF ~~ THEN REPLY #59604 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 258 // from: 232.1
  SAY #59607 /* ~"Osoba ta nie jest mi *znana*."~ */
  IF ~~ THEN REPLY #59608 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59613 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59614 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 232.2
  SAY #59615 /* ~"Położenie tego przedmiotu nie jest mi *znane*."~ */
  IF ~~ THEN REPLY #59616 /* ~"Mam parę innych pytań dotyczących naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59617 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59618 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 193.6
  SAY #59619 /* ~Czoło Dak'kona pomarszczyło się tak, jakby otrzymał cios. "Nie jest mą *wolą*, byśmy rozmawiali o tym miejscu."~ */
  IF ~~ THEN REPLY #59620 /* ~"Dak'konie, powiedz mi. Co to jest Shra'kt'lor?"~ */ GOTO 261
  IF ~~ THEN REPLY #59621 /* ~"No to mniejsza z tym. Są inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59622 /* ~"W takim razie więcej o tym nie będziemy rozmawiać. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #59623 /* ~Dak'kon milczał przez chwilę. "*Wiedz*, że jest to miejsce, gdzie po raz pierwszy umarłem."~ */
  IF ~~ THEN REPLY #59624 /* ~"Co to za miejsce?"~ */ GOTO 262
  IF ~~ THEN REPLY #59625 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59626 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #59627 /* ~"To jeden z ogromnych domów Ludu. W życiu swym odniósł wiele ran. Jedna z jego blizn powstała z mej ręki."~ */
  IF ~~ THEN REPLY #59628 /* ~"Co masz na myśli?"~ */ GOTO 218
  IF ~~ THEN REPLY #59629 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59630 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #59631 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #59632 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #59633 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #59634 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from: 268.0
  SAY #59636 /* ~Gdy wymawiasz słowa czujesz, jak dziwne mrowienie przedziera się przez tył twej czaszki, a twój wzrok staje się niewyraźny... Bierzesz głęboki oddech i odzyskujesz kontrolę nad sobą. Z jakiegoś dziwnego powodu zaczęło ci się kręcić w głowie - tak, jakby krajobraz zaczął się naglę obracać wokół ciebie."~ */
  IF ~~ THEN REPLY #59638 /* ~"W jaki... sposób przeżyłeś, Dak'konie?"~ */ GOTO 269
END

IF ~~ THEN BEGIN 268 // from: 222.0
  SAY #59640 /* ~"Kiedy wypadłem poza mury Shra'kt'lor, wiedziałem, że me wnętrze zostało rozdarte. Ostrze me było mgłą, umysł był rozproszony. Dryfowałem pośród morza Limbo i chciałem utonąć. Konałem przez wiele dni, umysł mój zalewały rozterki."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59642 /* ~"W jaki sposób przeżyłeś?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #59654 /* ~Kiedy Dak'kon powiedział mi o Shra'kt'lor, poczułem przez moment zawrót głowy. Z jakichś powodów mam wrażenie, że miejsce to jest mi znane, ale nie jestem w stanie powiedzieć, co o nim wiem, ani z czym ono mi się kojarzy.~ */ GOTO 267
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59647 /* ~"W jaki sposób przeżyłeś?"~ */ GOTO 269
  IF ~~ THEN REPLY #59650 /* ~"Sądzę, że usłyszałem wystarczająco dużo. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59652 /* ~"Porozmawiamy o tym jeszcze kiedyś. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 267.0 268.1
  SAY #59656 /* ~"Cierpiałem. Byłem bliski śmierci. *Poznałem* samego siebie. Przeżyłem. To wszystko."~ */
  IF ~~ THEN REPLY #59658 /* ~"Rozumiem. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59660 /* ~"W takim razie więcej o tym nie będziemy rozmawiać."~ */ EXIT
END

IF ~~ THEN BEGIN 270 // from: 231.3 271.1 272.1 273.2 274.1 275.1 278.1 279.1 281.0 282.1 285.0
  SAY #59664 /* ~Dak'kon czeka.~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #59666 /* ~"Czy mógłbyś nauczyć mnie mówić tak, jak to robi twój lud?"~ */ GOTO 342
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ THEN REPLY #59667 /* ~"Co to jest 'Wybór T'cha'?"~ */ GOTO 271
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ THEN REPLY #59668 /* ~"Jeszcze raz: Co to jest 'Wybór T'cha'?"~ */ GOTO 273
  IF ~  GlobalGT("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #59669 /* ~"Co to 'K'atzn'ii-przy-Bramie'?"~ */ GOTO 279
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #59672 /* ~"Co to 'Utonięcie Ach'ali'?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 282
  IF ~~ THEN REPLY #59675 /* ~"W sumie to mam kilka pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59676 /* ~"Mniejsza z tym. Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59677 /* ~"Porozmawiamy o języku kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.1
  SAY #59678 /* ~Czoło Dak'kona marszczy się, jego oczy się zwężają. "Chciałbym *wiedzieć*, jak *poznałeś* to wyrażenie."~ */
  IF ~~ THEN REPLY #59679 /* ~"Powiedziałeś to, gdy spotkaliśmy tamtego githzerai. Chciałbym wiedzieć, co przez to rozumiałeś."~ */ GOTO 272
  IF ~~ THEN REPLY #59680 /* ~"Zapomnij o tym. Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59681 /* ~"Nie ważne. Mam parę innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59682 /* ~"Mniejsza z tym. Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59683 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 271.0
  SAY #59684 /* ~"To wyrażenie, które posiada wiele *znaczeń*."~ */
  IF ~~ THEN REPLY #59685 /* ~"Podaj mi więc jedno z nich."~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ GOTO 273
  IF ~~ THEN REPLY #59686 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59687 /* ~"Nie ważne. Mam parę innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59688 /* ~"No to mniejsza z tym. Są inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59689 /* ~"Porozmawiamy o tym kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.2 272.0
  SAY #59690 /* ~"'Wybór T'cha' mówi o tym, który w swych działaniach nie ma wyboru."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59691 /* ~"Tak więc kiedy poprosiłem cię, byś przemówił do githzerai, nie miałeś wyboru i musiałeś to zrobić? Dlaczego?"~ */ GOTO 274
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59692 /* ~"Tak więc kiedy poprosiłem cię, byś przemówił do githzerai, nie miałeś wyboru i musiałeś to zrobić? Ponieważ jesteś moim niewolnikiem?"~ */ GOTO 275
  IF ~~ THEN REPLY #59693 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59694 /* ~"Nie ważne. Mam parę innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59695 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59696 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #59697 /* ~Ostrze Dak'kona pofałdowało się. Gdy na nie patrzysz, jego krawędzie stają się szare i matowe. Skrzywiwszy twarz, Dak'kon cedzi przez zęby. "Nie jest mą wolą, by o tym mówić."~ */
  IF ~~ THEN REPLY #59698 /* ~"Chciałbym, żebyś mi o niej powiedział... Prawdę mówiąc, w czasie tej rozmowy powiedziałeś sporo rzeczy, które mnie zainteresowały."~ */ GOTO 275
  IF ~~ THEN REPLY #59699 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59700 /* ~"W takim razie nie ważne. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59701 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59702 /* ~"W takim razie więcej o tym rozmawiać nie będziemy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 273.1 274.0
  SAY #59703 /* ~"*Wiedz*, że wola twa jest moją *wolą*. Kiedy mówisz, *muszę* cię słuchać. *Wiedz*, że twe słowa mogą powstrzymać me ostrze, bądź skierować je w stronę czyjegoś gardła."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59704 /* ~"Co? Ale dlaczego?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 276
  IF ~~ THEN REPLY #59708 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59709 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59713 /* ~"Więcej o tym rozmawiać nie będziemy. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59714 /* ~"Więcej już nie chcę słyszeć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 276 // from: 275.0
  SAY #59716 /* ~Dak'kon wydaje się patrzyć przez ciebie - tak, jakby napotkanie twego wzroku było dla niego czymś nie do zniesienia. "Twa ścieżka jest moją ścieżką. Jestem do ciebie przykuty."~ */
  IF ~~ THEN REPLY #59718 /* ~"Jesteś moim niewolnikiem?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #59720 /* ~Na dźwięk słowa 'niewolnik' twarz Dak'kon pogrąża się w bólu - tak, jakby go ktoś zranił... Jakby słowo było sztyletem wbijanym w rdzeń jego cierpienia.~ */
  IF ~~ THEN REPLY #59721 /* ~"Ale... dlaczego, Dak'konie?"~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #59723 /* ~"*Wiedz*, że to... długa opowieść, wiedz też, że opowiedzenie jej nic nie da."~ */
  IF ~~ THEN REPLY #59725 /* ~"Chciałbym to usłyszeć."~ */ JOURNAL #59286 /* ~Dak'kon opowiedział mi o przyczynach swego niewolniczego przywiązania do mojej osoby. Kiedy uratowałem mu życie, on w podzięce obiecał służyć mi do śmierci. Ale nie zdawał sobie sprawę z tego, że jestem nieśmiertelny, i w ten sposób, chcąc nie chcąc, związał się ze mną na całe swoje życie.~ */ GOTO 215
  IF ~~ THEN REPLY #59727 /* ~"W takim razie nie ważne. Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59728 /* ~"W takim razie dobrze. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59731 /* ~"No to mniejsza z tym. Są inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59732 /* ~"W takim razie więcej o tym rozmawiać nie będziemy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 270.3
  SAY #59755 /* ~"*Wiedz* to: kiedy mówi się o 'K'atzn'ii-przy-Bramie', mówca wymawia to w formie pytania. Ty odpowiesz na swoje pytanie i na to tej osoby, z którą rozmawiasz."~ */
  IF ~~ THEN REPLY #59756 /* ~"Co to znaczy? Kim jest 'K'atzn'ii'?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 280
  IF ~~ THEN REPLY #59758 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59759 /* ~"Rozumiem. Mam kilka innych pytań odnośnie githzerai..."~ */ GOTO 231
  IF ~~ THEN REPLY #59760 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59763 /* ~"Zrozumiałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #59912 /* ~"K'atzn'ii należała do Ludu. Powiada się, że byłą jedną spośród Ludu, która nie *znała* samej siebie. Mimo to, zamiast poszukiwać *poznania* samej siebie, zdecydowała się na poddawanie próbie innych z Ludu. Podróżowała do bram miast i zadawała Ludowi pytania, by sprawdzić jego wolę. Odpowiedzi, których udzielił jej Lud, pozwoliły jej *poznać* naturę Ludu, który żyje za danymi murami."~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #59914 /* ~"Tym, co nie było K'aztn'ii wiadome, było to, iż zadawane przez nią pytania pozwoliły Ludowi ją samą też *poznać*. Widzieli jej serce, *wiedzieli*, że zamieszkanie wśród nich nie pomogłoby jej. Dlatego też zawsze pozostawała przy bramie. To lekcja, która uczy nas, że nasze wole mogą zostać *poznane* poprzez nasze pytania."~ */
  IF ~~ THEN REPLY #59915 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59916 /* ~"Rozumiem. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59917 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59918 /* ~"Zrozumiałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 270.4
  SAY #59919 /* ~"*Wiedz*: 'Kiedy opowiada się o 'Utonięciu-Ach'ali', wypowiadający to mówi, że odpowiedź na twe pytanie niczemu by nie służyła. *Wiedz*, że niesie to w sobie niewypowiedzianą sugestię, że pytanie należy ukształtować tak, by było bardziej ścisłe."~ */
  IF ~~ THEN REPLY #59920 /* ~"Kim była Ach'ali?"~ */ GOTO 283
  IF ~~ THEN REPLY #59921 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59922 /* ~"Rozumiem. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59923 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59924 /* ~"Zrozumiałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #59925 /* ~"W naszej rodzimej sferze Limbo, musimy kształtować ją naszymi umysłami, inaczej chaos sfery pochłonie nas. Ach'ali byłą jedną z Ludu, która nie *znała* siebie. Przyszedł czas, że zatraciła się w materii chaosu tej Sfery. Nie *wiedziała*, jak powrócić do swej społeczności. Ukształtowała więc swymi myślami niewielką wyspę i czekała."~ */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #59926 /* ~"Czekała. W czasie tego czekania spotkała podróżnika przepływającego przez morze Limbo. Powiadają, że krzyknęła do niego, by go zapytać od drogę do domu. Potrzebowała zadać tylko jedno pytanie: 'Czy *znasz* drogę do mego domu?' Mimo to zapytała: 'Co *wiesz* o sferze?'"~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #59927 /* ~"Podróżnik *wiedział* sporo. Wiele z tego, co powiedział, było dla Ach'ali czymś nowym. Narastała liczba pytań, karmiona odpowiedziami. W końcu utraciła ona *wiedzę*, gdzie jest. Utraciła *wiedzę*, że musi być skoncentrowana. Uformowana przez nią wysepka rozpłynęła się w materii chaosu, ona zaś utonęła. To lekcja, która naucza o szkodliwości zadawania bezcelowych pytań."~ */
  IF ~~ THEN REPLY #59928 /* ~"Mam kilka innych pytań odnośnie języka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59929 /* ~"Rozumiem. Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59930 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59931 /* ~"Zrozumiałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 286 // from: 318.1
  SAY #59932 /* ~Ostrze Dak'kona przepłynęło zza jego ramienia do jego ręki niczym woda. Na krawędziach pojawia się groźne lśnienie. Obnażymy stal bez wrogich zamiarów. Ponownie *poznasz* tajniki broni."~ */
  IF ~~ THEN REPLY #59933 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
SetAnimState("Dakkon",ANIM_MIMESTANCETOSTAND)
~ GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0
  SAY #59934 /* ~Pod koniec waszego treningu czujesz, iż łatwo ci jest przeistoczyć się w wojownika. Dak'kon opuszczał ostrze i umieszcza je na swym ramieniu. "Szybko się uczysz. Gdy nadejdzie wojna, będziesz gotów."~ */
  IF ~~ THEN REPLY #59935 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59936 /* ~"W porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 318.3
  SAY #59937 /* ~Dak'kon opuszcza ostrze i pociąga nim przed sobą okrężnym ruchem. "Wyrecytujemy nauki. Ponownie *poznasz* arkana Sztuki."~ */
  IF ~~ THEN REPLY #59938 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 257.0 288.0
  SAY #59939 /* ~Pod koniec waszej nauki czujesz, iż łatwo ci jest przeistoczyć się w maga. Dak'kon opuszcza ostrze i umieszcza je na swym barku. "Szybko się uczysz. Gdy nadejdzie wojna, będziesz gotów."~ */
  IF ~~ THEN REPLY #59940 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59941 /* ~"W porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 318.4
  SAY #59942 /* ~"*Wiedz*, że metody Ludu nie są tym samym, co *znana* wam Sztuka. To nie energia daje siłę. To *poznanie* siebie daje siłę. Nauki Zerthimona mówią właśnie o takich rzeczach."~ */
  IF ~~ THEN REPLY #59943 /* ~"Nauczysz mnie Drogi Zerthimona, Dak'konie?"~ */ GOTO 291
  IF ~~ THEN REPLY #59944 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #59945 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #59946 /* ~"Czy *wiesz*, o co spytałeś?" Powierzchnia ostrza Dak'kona płynie, aż staje się jak z kamienia. "Aby kroczyć ścieżką Zerthimona, musisz *znać* Lud. *Poznanie* tego przez kogoś spoza Ludu jest ciężką sprawą. Pośród nie należących do Ludu istnieją tacy, którzy słyszeli o Drodze Zerthimona, nie *znają* oni jednak tej Drogi."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59947 /* ~"Dak'konie, chciałbym *poznać* Lud i *poznać* nauki Zerthimona. Wierzę, iż w takich rzeczach kryje się mądrość, której się można z nich nauczyć."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon zgodził się nauczyć mnie Drogi Zerthimona. Otworzył przede mną Nieprzerwany Krąg Zerthimona i kazał mi przestudiować go i *poznać* historię jego Ludu.~ */ GOTO 293
  IF ~~ THEN REPLY #59948 /* ~"Jeśli ty będzie mnie nauczał, nauczę się."~ */ GOTO 292
  IF ~~ THEN REPLY #59949 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #59950 /* ~"No to mniejsza z tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.1
  SAY #59951 /* ~"*Wiem*, jak ludzie przyswajają sobie 'Sztukę'. Uczą się Sztuki fragmentarycznie - poprzez pergaminy, zaklęcia, księgi. Taki podział *nie* jest Drogą Zerthimona. Nie możesz nauczyć się fragmentów, a zignorować całość." Dak'kon spojrzał na ciebie w milczeniu. Jego ostrze zaczęło błyszczeć ponownie. "*Wiedz*, że ścieżka ta wymaga koncentracji. Jeśli twój umysł jest rozproszony, jeśli nie *znasz* znaczenia Drogi, utracisz swoją wolę."~ */
  IF ~~ THEN REPLY #59952 /* ~"Wciąż chcę się uczyć."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon zgodził się nauczyć mnie Drogi Zerthimona. Otworzył przede mną Nieprzerwany Krąg Zerthimona i kazał mi przestudiować go i *poznać* historię jego Ludu.~ */ GOTO 293
  IF ~~ THEN REPLY #59953 /* ~"Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #59954 /* ~"No to mniejsza z tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 291.0 292.0
  SAY #59955 /* ~"*Wiedz*, że słyszałem twe słowa i poddam je próbie. By się nauczyć, musisz *znać* Lud. Aby *poznać* Lud, *znać* musisz Nieprzerwany Krąg Zerthimona." Dak'kon chwyta posiadany przez niego kamienny dysk i czepia się swymi pajęczymi palcami jego boków. Słychać *stuknięcie* i warstwy Kręgu przybierają inne ustawienie. Wykonuje odwrotny ruch i zamyka kamień. "*Wiedz*, że Pierwszy Krąg Zerthimona stoi przed tobą otworem. Przestudiuj go. Wtedy wysłucham twych słów."~ */
  IF ~~ THEN REPLY #59956 /* ~"W takim razie przeczytam Pierwszy Krąg. Zanim to nastąpi... Jest jeszcze kilka spraw, o których bym się chciał dowiedzieć..."~ */ GOTO 193
  IF ~~ THEN REPLY #59957 /* ~"Dobrze. Przestudiuję go, po czym zwrócę się do ciebie ponownie."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 318.6
  SAY #59958 /* ~"Co *poznałeś*?"~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59959 /* ~"Siła tkwi w poznaniu samego siebie. Nauczyłem się, że kiedy ktoś nie *zna* siebie, jest zgubiony. Staje się narzędziem w rękach innych."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",3)
GiveExperience(Protagonist,300)
~ JOURNAL #59743 /* ~Udało mi się zrozumieć Pierwszy Krąg Zerthimona, dzięki temu, że wprowadziłem moją własną mądrość do tekstu. W zamian za to, Dak'kon otworzył dla mnie następny Krąg Zerthimona. Myślę, że jego zamiarem jest stopniowe zaznajomienie mnie z Nienaruszonym Kręgiem, dlatego gith będzie przede mną odkrywał kolejne Kręgi, dopiero wówczas, kiedy pojmę istotę poprzednich.~ */ GOTO 296
  IF ~  Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59960 /* ~"Nauczyłem się, że twoi ziomkowie byli kiedyś niewolnikami *illithidów*. Ci najpewniej dopuścili się wielu zbrodni wobec twego ludu."~ */ JOURNAL #59742 /* ~Najwyraźniej nie rozumiem znaczenia Pierwszego Kręgu w Nienaruszonym Kręgu Zerthimona, albo Dak'kon ma o mnie taką opinię. Myślę, że prawdziwe znaczenie tych słów leży daleko poza ich kamiennym zapisem... Chyba, zanim zrozumiem Drogę Zerthimona, będę musiał wzbogacić nauki Zerthimona o parę moich własnych mądrości.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59961 /* ~"Nauczyłem się, że brak *poznania* czegoś może być narzędziem, jak ciało czy stal, jeśli - gdy je napotkasz - podejmujesz próbę *poznania* jego natury i tego, jak zaistniało."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",5)
GiveExperience(Protagonist,600)
GiveItemCreate("Circle02",Protagonist,1,0,0)
~ GOTO 297
  IF ~  Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59962 /* ~"Nauczyłem się, że w czasie szpiegowania poczynań *illithidów*, Zerthimon poznał naturę stali oraz jak można jej użyć, by pokonać *illithidów*."~ */ JOURNAL #67782 /* ~Najwyraźniej nie rozumiem znaczenia następnego Kręgu w Nienaruszonym Kręgu Zerthimona, albo Dak'kon ma o mnie taką opinię. Myślę, że prawdziwe znaczenie tych słów leży daleko poza ich kamiennym zapisem... Chyba, zanim zrozumiem Sztukę Zerthimona, będę musiał wzbogacić nauki Zerthimona o parę moich własnych mądrości.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59963 /* ~"Wytrwaj. Poprzez wytrwanie, rośnij w siłę."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",7)
GiveExperience(Protagonist,900)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 299
  IF ~  Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59964 /* ~"Nauczyłem się, iż czasami przywódca musi przejść przez mękę, by ochronić swe dążenia."~ */ JOURNAL #67782 /* ~Najwyraźniej nie rozumiem znaczenia następnego Kręgu w Nienaruszonym Kręgu Zerthimona, albo Dak'kon ma o mnie taką opinię. Myślę, że prawdziwe znaczenie tych słów leży daleko poza ich kamiennym zapisem... Chyba, zanim zrozumiem Sztukę Zerthimona, będę musiał wzbogacić nauki Zerthimona o parę moich własnych mądrości.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59965 /* ~"Kiedy ktoś dokonuje wyboru, by widzieć jedynie to, co leży przed nim, widzi jedynie fragment całości. Jest niewidomy. Tak jak Vilquara zaślepiła obiecana nagroda, tak i *illithidzi* ślepi byli na prawdziwe Powstanie. Gdyż kiedy usłyszeli słowa Vilquara, znów odwrócili swój wzrok, czyż nie? I Powstanie mogło swobodnie wybuchnąć?"~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",9)
GiveExperience(Protagonist,1500)
~ GOTO 303
  IF ~  Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59966 /* ~"Kiedy ktoś wybiera, by wiedzieć, ale nie rozumieć, zdradza samego siebie."~ */ JOURNAL #67782 /* ~Najwyraźniej nie rozumiem znaczenia następnego Kręgu w Nienaruszonym Kręgu Zerthimona, albo Dak'kon ma o mnie taką opinię. Myślę, że prawdziwe znaczenie tych słów leży daleko poza ich kamiennym zapisem... Chyba, zanim zrozumiem Sztukę Zerthimona, będę musiał wzbogacić nauki Zerthimona o parę moich własnych mądrości.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59967 /* ~"W mnogości istnieje wielka siła, ale i w jednostce tkwi ogromna moc, gdyż siła jej woli może wielu do siebie przyciągnąć. Siła kryje się nie tylko w *poznaniu* samego siebie, ale i w *poznaniu*, jak wywołać ją u innych."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",11)
GiveExperience(Protagonist,3000)
GiveItemCreate("Circle05",Protagonist,1,0,0)
~ GOTO 307
  IF ~  Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59968 /* ~"Zerthimon przyłączył się do jeszcze potężniejszej osoby, Gith. Poprzez to zjednoczenie Lud urósł w siłę."~ */ JOURNAL #67782 /* ~Najwyraźniej nie rozumiem znaczenia następnego Kręgu w Nienaruszonym Kręgu Zerthimona, albo Dak'kon ma o mnie taką opinię. Myślę, że prawdziwe znaczenie tych słów leży daleko poza ich kamiennym zapisem... Chyba, zanim zrozumiem Sztukę Zerthimona, będę musiał wzbogacić nauki Zerthimona o parę moich własnych mądrości.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,17,WIS)
Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59969 /* ~"Wiem, że oddanie Zerthimona wobec Ludu poległo na tym, iż chciał on ochronić ich od samych siebie. Wiedział, że przez swą obsesję kontrolowania i dominacji, *illithidzi* nie *poznali* samych siebie. Dlatego też postanowił powstrzymać Gith, nim doprowadzi ona ich Lud do zagłady. We wszystkim musi istnieć równowaga, albo całość zostanie zachwiana."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",13)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle06",Protagonist,1,0,0)
GiveItemCreate("Circle06",Protagonist,1,0,0)
~ GOTO 308
  IF ~  Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59970 /* ~"Zerthimon poznał, iż nawet będąc wolnym, należy kontynuować walkę o wyzwolenie - nawet tocząc ją w obrębie własnej rasy."~ */ JOURNAL #67782 /* ~Najwyraźniej nie rozumiem znaczenia następnego Kręgu w Nienaruszonym Kręgu Zerthimona, albo Dak'kon ma o mnie taką opinię. Myślę, że prawdziwe znaczenie tych słów leży daleko poza ich kamiennym zapisem... Chyba, zanim zrozumiem Sztukę Zerthimona, będę musiał wzbogacić nauki Zerthimona o parę moich własnych mądrości.~ */ GOTO 295
  IF ~  Global("Dakkon_Teach","GLOBAL",15)
~ THEN REPLY #59971 /* ~"W Kamieniu Zerthimona istnieje Siódmy Krąg. Mówi on przygotowywaniu rebelii przeciwko *illithidom*."~ */ GOTO 319
  IF ~  Global("Dakkon_Teach","GLOBAL",18)
~ THEN REPLY #59972 /* ~"W Kamieniu Zerthimona istnieje Ósmy Krąg. Mówi on o rozproszeniu umysłu i o tym, jak ważna jest koncentracja."~ */ GOTO 323
  IF ~~ THEN REPLY #59973 /* ~"Mniejsza z tym. Są inne sprawy, o których bym się chciał *dowiedzieć*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #59974 /* ~"Nadal zastanawiam się nad tym, co przeczytałem; porozmawiamy później. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 294.1 294.3 294.5 294.7 294.9 294.11
  SAY #59975 /* ~Czoło Dak'kon marszczy się gniewnie. "W takim razie nic nie *poznałeś*. Jesteś tym, który słyszy słowa, nie *zna* ich jednakże."~ */
  IF ~~ THEN REPLY #59976 /* ~"Dobrze... Przestudiuję tekst jeszcze raz. Zanim to zrobię... Są inne sprawy, o których bym się chciał *dowiedzieć*."~ */ GOTO 193
  IF ~~ THEN REPLY #59977 /* ~"W takim razie mniejsza z tym, Dak'konie."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 294.0
  SAY #59978 /* ~"*Poznałeś* Pierwszy Krąg Zerthimona. Nie tylko widzisz słowa Zerthimona, ale i je *znasz*." Dak'kon chwyta kamienny dysk i uczepił się swymi pajęczymi palcami jego boków. Słychać *stuknięcie* i warstwy Kręgu przybierają inne ustawienie. Wykonuje odwrotny ruch i zamyka kamień. "*Wiedz*, że Drugi Krąg Zerthimona stoi przed tobą otworem. Przestudiuj go. Wtedy wysłucham twych słów."~ */
  IF ~~ THEN REPLY #59979 /* ~"Przeczytam więc Drugi Krąg. Zanim to nastąpi, jest kilka spraw, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59980 /* ~"Dobrze. Przeczytam go, po czym zwrócę się do ciebie ponownie."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 294.2
  SAY #59981 /* ~"Wejrzałeś w słowa, wejrzałeś też poza nie. *Poznałeś* Drugi Krąg Zerthimona." Chwyta Krąg i zręcznym ruchem przestawia jedno z połączeń tak, że jeden z dysków wysuwa się do przodu. Co dziwne jednak, kamień zdaje się być nienaruszony. Wręcza ci dysk. "Pomedytuj nad tymi naukami, a *poznanie* tego przyda ci siły. Gdy już to sobie przyswoisz, *poznasz* więcej."~ */
  IF ~~ THEN REPLY #59982 /* ~"Dobrze... Przestudiuję ten Krąg. Wciąż jednak chciałbym dowiedzieć się więcej o naukach Zerthimona."~ */ GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 297.0 302.0 306.0 307.0
  SAY #59983 /* ~Palce Dak'kona zaciskają się wokół krawędzi kamiennego kręgu. Przekręca go zgodnie ze wskazówkami zegara; połączenia *stukają*, póki nie ustawiły się w nowym położeniu. Następnie wykonuje odwrotny ruch i ustawia kamień w pozycji wyjściowej. "Następny Kręg Zerthimona stoi przed tobą otworem. Przestudiuj go. Wtedy wysłucham twych słów."~ */
  IF ~~ THEN REPLY #59984 /* ~"W takim razie przeczytam następny Krąg. Zanim to nastąpi... Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59985 /* ~"Dobrze. Przeczytam go, po czym zwrócę się do ciebie ponownie."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 294.4
  SAY #59986 /* ~Wymówione przez ciebie słowa zdały się w dziwny sposób dotknąć Dak'kona... Kiedy je wypowiadałeś, jego czoło zmarszczyło się, później jednak powrócił mu neutralny wyraz.~ */
  IF ~~ THEN DO ~GiveItemCreate("Circle03",Protagonist,1,0,0)
~ GOTO 300
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #59987 /* ~"Twa wola doprowadziła cię do *poznania* Trzeciego Kręgu Zerthimona. Po *poznaniu* tego, to ci teraz przekazuję." Chwyta Krąg i zręcznym ruchem przestawia jedno z połączeń, przez co jeden z dysków przesuwa się do przodu. Wręcza ci go. "Pomedytuj nad jego naukami, a *poznanie* ich doda ci siły."~ */
  IF ~~ THEN REPLY #59988 /* ~"Dobrze... Przestudiuję ten Krąg. Czy jest coś jeszcze, co mógłbyś mnie nauczyć?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #59989 /* ~Kiedy wypowiedziałeś słowa prośby, zauważyłeś nagle, że Dak'kon na ciebie nie patrzy. Trzyma w swych rękach krąg i przygląda mu się uważnie. Jego ostrze przybrało taką samą fakturę jak Nieprzerwany Krąg... Dak'kon zaś zdaje się nagle być starszy.~ */
  IF ~~ THEN REPLY #59990 /* ~"Dak'konie?"~ */ GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #59991 /* ~Czarne oczy Dak'kona unoszą się znad Kręgu i spoglądają na ciebie. "*Wiedz*, że nie wierzyłem, iż uda ci się *zgłębić* nauki Kręgu. To... To trudna ścieżka, którą przyjdzie ci kroczyć podczas *poznawania* Drogi Zerthimona. Czy poświęciłeś swój umysł tej sprawie?"~ */
  IF ~~ THEN REPLY #59992 /* ~"Tak. Chcę się jeszcze więcej nauczyć."~ */ GOTO 298
END

IF ~~ THEN BEGIN 303 // from: 294.6
  SAY #59993 /* ~"*Wiem, że mówisz prawdę. Oko Vilquara oślepiło zarówno Vilquara, jak i *illithidów*. Posiadający macki sądzili, że Bunt nie nastąpi. Kiedy nastąpił Bunt, ziemia nasiąkła krwią *illithidów*. Było to zwycięstwo zrodzone ze zdrady."~ */
  IF ~~ THEN REPLY #59994 /* ~"Niezwykła to nauka. Dlaczego miałaby być częścią nauk Zerthimona?"~ */ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.0
  SAY #59995 /* ~Ostrze Dak'kona pokrywa się trupią czernią nocy, głos jego brzmi głębiej - przez chwilę wydaje ci się, że wpadł w gniew, nie jesteś jednak do końca pewny. "Istnieje wiele spraw dotyczących Zerthimona i jego ścieżki, które ciężko jest *poznać*."~ */
  IF ~~ THEN REPLY #59996 /* ~"Czy *ty* wiesz, dlaczego Oko Vilquara jest częścią Drogi Zerthimona?"~ */ GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #59997 /* ~"To część opowieści o tym, w jaki sposób nasz Lud *poznał* wolność. Pozwala nam *wiedzieć*, że istnieją tacy, nawet pośród Ludu, którzy z tego Ludu nie są. I że nawet poprzez największą zdradę zdobyć można wyższe *poznanie*."~ */
  IF ~~ THEN REPLY #59998 /* ~"Dobrze."~ */ DO ~GiveItemCreate("Circle04",Protagonist,1,0,0)
~ GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #59999 /* ~"*Poznałeś* Czwarty Krąg Zerthimona." Bierze Krąg i zręcznym ruchem przekręca jedno z połączeń - tak, że jeden z dysków wysuwał się do przodu. Wręcza ci go. "Pomedytuj nad tymi naukami, a *poznanie* ich przyda ci siły."~ */
  IF ~~ THEN REPLY #60000 /* ~"Chciałbym zgłębić więcej z Drogi Zerthimona."~ */ GOTO 298
END

IF ~~ THEN BEGIN 307 // from: 294.8
  SAY #60001 /* ~"*Poznałeś* Piąty Krąg Zerthimona. Jako iż jest ci to *wiadome*, przekażę ci to. "Chwyta Krąg i zręcznym ruchem przekręca jedno z połączeń, przez co jeden z dysków wysuwa się. Wręcza ci go. "Pomedytuj nad tymi naukami, a poznanie ich przyda ci siły."~ */
  IF ~~ THEN REPLY #60002 /* ~"Chciałbym zgłębić więcej z Drogi Zerthimona."~ */ GOTO 298
END

IF ~~ THEN BEGIN 308 // from: 294.10
  SAY #60003 /* ~"Ujrzałeś słowa i *zrozumiałeś* je. Dak'kon wymawia to wolniejszym głosem, jego ręce zaciskają się wokół krawędzi Nieprzerwanego Kręgu. Przekręca go zgodnie ze wskazówkami zegara; słychać *stuknięcie*, gdy dwa dyski wysuwają się do przodu. Dak'kon wpatruje się na spoczywające w jego dłoni dyski - nie wykonuje ruchu, by ci je wręczyć.~ */
  IF ~~ THEN REPLY #60004 /* ~"Dak'konie... Czy ten drugi dysk jest dla ciebie?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #60005 /* ~Dak'kon milknie. Ostrze jego traci poświatę, pokrywa je zamarznięta powłoka. Wpatruje się w drugi krąg, sparaliżowany.~ */
  IF ~~ THEN REPLY #60006 /* ~"Czy *ty* znasz Szósty Krąg?"~ */ GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #60007 /* ~Dak'kon spogląda w górę, jednak jego czarne jak węgiel oczy nie spotykają twojego wzroku. "*Wiedz*, że nic już więcej nie mogę cię nauczyć. *Znasz* Drogę tak, jak zna ją Lud. I to ona udzieli ci wskazówek, dzięki którym będziesz mógł *poznać* samego siebie."~ */
  IF ~~ THEN REPLY #60008 /* ~"*Nie* o to pytałem. *Znasz* Szósty Krąg czy nie?"~ */ GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #60009 /* ~Dak'kon milczy przez chwilę, po czym przemawia powoli, starannie dobranym głosem. "Wyszło na jaw, że nie *znam* Szóstego Kręgu Zerthimona. Kiedyś go *znałem*, teraz jednak wiem, że widziałem jedynie słowa." Oczy Dak'kona patrzą się przez ciebie. "To wszystko. Taka jest moja ścieżka, że nie *znam* już Drogi Zerthimona."~ */
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60010 /* ~"Czy to z powodu tego, co wydarzyło się w Shra'kt'lor?"~ */ GOTO 317
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60011 /* ~"Dak'konie... Jest coś jeszcze, co chciałbym *poznać*. Dlaczego Oko Vilquara umiejscowione jest w Kręgu Zerthimona? Zdaje się to być dziwne. Mówi ono o tym, jak Lud skorzystał ze Zdrady dla swego dobra. Zdaje się..."~ */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.1 317.0
  SAY #60012 /* ~W oczach Dak'kona pojawia się błysk. "Powiedziałem ci, że to część historii o tym, jak nasz Lud *poznał* wolność. Czy ty nie słuchasz?" Jego głos staje się monotonny - tak, jakby recytował fragment z pamięci. "Mówi ona Ludowi, że nawet poprzez największą zdradę zyskać można wyższe *poznanie*."~ */
  IF ~~ THEN REPLY #60013 /* ~"Wygląda mi na to, że w to nie wierzysz. Sądzę, że istnieje inny powód, dla którego Oko Vilquara umieszczono w Kręgu Zerthimona. Znajduje się ono tam z powodu Szóstego Kręgu i Oświadczenia o Dwóch Niebiosach. Ma ono tam swe miejsce, by usprawiedliwić zdradę Zerthimona, jakiej dopuścił się on na Spopielonej Równinie."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 313
END

IF ~~ THEN BEGIN 313 // from: 312.0
  SAY #60014 /* ~Dak'kon milczy, a jego broń zasnuwa grobowa czerń, wzdłuż ostrza zaczynają formować się zęby."~ */
  IF ~~ THEN REPLY #60015 /* ~"Na Spopielonej Równinie podzielił on Naród, Dak'konie. Podzielił twoją rasę, gdy kroczyła ona tryumfalną ścieżką. *Chciałbym* uwierzyć, że zrobił on to, by uratować Lud przed nimi samymi. Nie sądzę jednak, że *ty* w to wierzysz."~ */ GOTO 314
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #60016 /* ~Dak'kon milczy przez chwilę, po czym przemawia powoli. "Ja... nie *znam* Szóstego Kręgu Zerthimona tak, jak *znany* jest on innym. Obawiam się, że Trzeci Krąg, Czwarty Krąg i Szósty Krąg mają ze sobą znacznie więcej powiązań, niż wielu *wie*. To właśnie to *poznanie* ja sam utraciłem."~ */
  IF ~~ THEN REPLY #60017 /* ~"W Trzecim Kręgu Zerthimon zawarł swą wolę odnośnie podstępu wobec *illithidów*. Następnie, w Czwartym Kręgu, mówi on o korzyściach płynących ze *zdrady*. Po czym, w Kręgu Szóstym, Zerthimon dzieli swój lud, nim uda im unicestwić *illithidów*. Sądzisz, że słowa Zerthimona mogą nie być jego własnymi?"~ */ GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #60018 /* ~"*Znaj* me słowa i *poznaj* ranę, która powstała w mym sercu: Obawiam się, że gdy Zerthimon stał na Kolumnie Ciszy, nie miał swojej woli. Obawiam się, że jego wola została mu odebrana przez *illithidów*. I kiedy przemawiał on na Spopielonej Równinie, ich słowa wypowiedział. Obawiam się, że to, co zrobił, uczynił nie dla dobra Ludu, ale dla naszych poprzednich panów."~ */
  IF ~~ THEN REPLY #60019 /* ~"Możliwe. *Wiem* jednak, że to niekoniecznie znaczy, iż..."~ */ DO ~SetGlobal("BD_DAKKON_FAITH","GLOBAL",1)
~ JOURNAL #60020 /* ~Studiując Szósty Krąg Zerthimona, doszedłem do wniosku, że Dak'kon osobiście nie wierzy w nauki Szóstego Kręgu. Paradoksalnie rzecz biorąc, jestem skłonny przypuszczać, że Dak'kon przestał *znać* samego siebie, właśnie *dlatego*, że przestudiował Nieprzerwany Krąg Zerthimona.~ */ GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #60021 /* ~"W takim razie *wiedz* to i nie mówmy już o tym WIĘCEJ." Głos Dak'kona jest niczym nóż. "*Wiedz*, że nigdy nie *poznam* PRAWDY. Ta sprawa NIE ma rozwiązania, gdyż NIGDY nie *poznam*, co kryło się w sercu Zerthimona na Spopielonej Równinie." Jego czarne jak węgiel oczy wpatrują się w trzymany przez niego kamienny krąg. "Z powodu Nieprzerwanego Kręgu Zerthimona nie *znam* samego siebie."~ */
  IF ~~ THEN REPLY #60022 /* ~"Dobrze, Dak'konie. Więcej już o tym rozmawiać nie będziemy... Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 311.0
  SAY #60023 /* ~"Nie *wiem*. Lud podzielił się, Lud cierpiał. Po przeczytaniu Nieprzerwanego Kręgu teraz już *wiem*, że ująłem *wiedzę* Piątego Kręgu i użyłem Siły Jedynego, by, w Shra'kt'lor, przywołać Szósty Krąg. Czyniąc to, podzieliłem Lud. Kosztowało to wiele cierpienia. Zawsze będę nosił Shra'kt'lor ze sobą."~ */
  IF ~~ THEN REPLY #60024 /* ~"Dak'konie... Jest coś jeszcze, co chciałbym *poznać*. Dlaczego Oko Vilquara umiejscowione jest w Kręgu Zerthimona? Zdaje się to być dziwne. Mówi ono o tym, jak Lud skorzystał ze Zdrady dla swego dobra. Zdaje się..."~ */ GOTO 312
END

IF ~~ THEN BEGIN 318 // from: 193.3 351.0
  SAY #60025 /* ~Dak'kon czeka.~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #60026 /* ~"Dak'konie, czy mógłbyś nauczyć mnie czegoś o wojennym rzemiośle.~ */ GOTO 351
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #60027 /* ~"Chciałbym zarzucić me obecne zajęcie i wznowić naukę wojennego rzemiosła, Dak'konie, Podejmiesz się mego szkolenia?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 286
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60028 /* ~"Chciałbym zarzucić me obecne zajęcie i wznowić naukę arkanów Sztuki, Dak'konie, Podejmiesz się mego szkolenia?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 257
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60029 /* ~"Chciałbym zarzucić me obecne zajęcie i wznowić naukę arkanów Sztuki, Dak'konie, Podejmiesz się mego szkolenia?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 288
  IF ~  Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60030 /* ~"Czy mógłbyś nauczyć mnie czegoś z arkanów Sztuki, Dak'konie?"~ */ GOTO 290
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #68062 /* ~"Czy mógłbyś nauczyć mnie czegoś z arkanów Sztuki, Dak'konie?"~ */ GOTO 363
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60031 /* ~"Przeczytałem Nieprzerwany Krąg Zerthimona. Chciałbym porozmawiać z tobą nieco więcej odnośnie Drogi Zerthimona."~ */ GOTO 294
  IF ~~ THEN REPLY #60032 /* ~"Prawdę mówiąc, to mam zamiast tego kilka pytań..."~ */ GOTO 193
  IF ~~ THEN REPLY #60033 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 294.12
  SAY #60034 /* ~Dak'kon ucisza się. "O czym mówi ten Siódmy Krąg?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60035 /* ~"Mówi on o czasie jako o sprzymierzeńcu, nie wrogu. Mówi, że cierpliwość jest w stanie z nawet najmniej znaczących wysiłków wyciosać broń, która może przeszyć serce imperium. Twe zwycięstwa mogą mieć małe znaczenie, z czasem jednak uzyskać możesz ogromne zwycięstwo."~ */ GOTO 320
  IF ~~ THEN REPLY #60036 /* ~"Nie wiem... Mówi on o czasie i pracy, nie doszukałem się nim jednakże znaczenie. Kiedy już poznam jego sens, podzielę się nim z tobą."~ */ EXIT
  IF ~~ THEN REPLY #60037 /* ~"Nie będę o tym teraz mówił. Są inne sprawy, o których bym się chciał *dowiedzieć*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #60038 /* ~"Podzielę się tym z tobą kiedy indziej. Teraz zaś - ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #60039 /* ~Dak'kon milczy przez chwilę. "Czy umożliwisz mi *poznanie* tego Kręgu?"~ */
  IF ~~ THEN REPLY #60040 /* ~Weź Nieprzerwany Krąg Zerthimona i otwórz Siódmy Krąg.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",16)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle07",Protagonist,1,0,0)
GiveItemCreate("Circle07",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 321
  IF ~~ THEN REPLY #60041 /* ~"Dobrze, ale nie teraz. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60042 /* ~"Nie teraz... Podzielę się tym z tobą kiedy indziej. Teraz zaś - ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #60043 /* ~Gdy bierzesz krąg i przestawiasz połączenia, *dwa* dyski wysuwają się z wnętrza w twoje ręce. Nie masz pojęcia, skąd się one wzięły, gdyż Nieprzerwany Krąg wydaje się być nienaruszony - wciąż pozostaje Siódmy Krąg. Dak'kon przygląda ci się w milczeniu.~ */
  IF ~~ THEN REPLY #60044 /* ~"Znajdują się tu dwa dyski... Być może obaj powinniśmy je przestudiować, ty i ja?"~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #60045 /* ~Dak'kon milczy przez chwilę. "Wiele z Kręgu *poznałeś*, i *wiedza* ta większy ma ciężar niż moja." Dak'kon zrównuje swój wzrok z twoim. "*Wiedz*, że twoja ścieżka jest moją i stanie się tak, że jak ty *poznałeś* Drogę Zerthimona ode mnie, tak ja *poznam* Drogę Zerthimona od ciebie."~ */
  IF ~~ THEN REPLY #60046 /* ~"Przestudiujemy dyski później. Są inne sprawy, które bym chciał *poznać*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60047 /* ~"Dobrze, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 294.13
  SAY #60048 /* ~Dak'kon milczy. Gdy zaczyna mówić ponownie... odzywa się spokojnym, prawie pełnym czci tonem. "O czym mówi ten Ósmy Krąg?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60049 /* ~"Mówi on o koncentracji i dyscyplinie... O tym, ja brak *poznania* samego siebie jest w stanie fizycznie rozproszyć człowieka. Mówi też o słabościach, które takie rozproszenie powoduje. Wydaje mi się, iż mówi on, iż należy nie tylko *poznawać* samego siebie i czerpać z tego siłę, ale również to, że poprzez koncentrację ujawnić można czułe punkty twego wroga."~ */ GOTO 324
  IF ~~ THEN REPLY #60050 /* ~"Nie wiem... Mówi on o koncentracji i rozproszeniu, głębszego sensu w nim jednak nie znalazłem. Kiedy poznam jego znaczenie, podzielę się nim z tobą."~ */ EXIT
  IF ~~ THEN REPLY #60051 /* ~"Nie będę o tym teraz mówił. Są inne sprawy, o których bym się chciał *dowiedzieć*, Dak'konie..."~ */ GOTO 193
  IF ~~ THEN REPLY #60052 /* ~"Podzielę się tym z tobą kiedy indziej. Teraz zaś - ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #60053 /* ~Dak'kon milczy przez chwilę. "Czy umożliwisz mi *poznanie* tego Kręgu?"~ */
  IF ~~ THEN REPLY #60054 /* ~Weź Nieprzerwany Krąg Zerthimona i otwórz Ósmy Krąg.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",19)
GiveExperience(Protagonist,10000)
GiveExperience("Dakkon",10000)
GiveItemCreate("Circle08",Protagonist,1,0,0)
GiveItemCreate("Circle08",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 325
  IF ~~ THEN REPLY #60055 /* ~"Dobrze, ale nie teraz. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60056 /* ~"Nie teraz... Podzielę się tym z tobą kiedy indziej. Teraz zaś - ruszajmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY #60057 /* ~Gdy bierzesz krąg i przestawiasz połączenia, *dwa* kolejne dyski wysuwają się z wnętrza w twoje ręce. Tak jak przy Siódmym Kręgu, teraz też nie masz pojęcia, skąd się one wzięły. Nieprzerwany Krąg Zerthimona wydaje się być nienaruszony - pozostaje Ósmy Krąg. Dak'kon obserwuje cię w milczeniu.~ */
  IF ~~ THEN REPLY #60058 /* ~"Znajdują się tu dwa dyski... Powinniśmy przestudiować je obaj, ty i ja. Sądzę, że kiedy już *poznasz* Ósmy Krąg, być może *poznasz*, jakie było serce Zerthimona, gdy wygłaszał on Oświadczenie o Dwóch Niebiosach. Słowa jego nie należały do *illithidów*, ale do Ludu."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #60059 /* ~Dak'kon wpatruje się w dyski. Jego oczy przemykają po pokrywających je wzorach. Następnie podnosi głowę i zrównuje swój wzrok z twoim. Jego ostrze skręca się, zmienia... Tak długo, póki lśnienie, które wcześniej zaobserwowałeś, nie przemienia się w srebrzystą poświatę. Dak'kon zdaje się być jakoś *silniejszy*.~ */
  IF ~~ THEN DO ~IncrementGlobal("Githzerai","GLOBAL",3)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,2)
PermanentStatChange("Dakkon",CON,RAISE,2)
SetAnimState("Dakkon",ANIM_MIMEATTACK1)
~ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #60060 /* ~"*Wiesz*, że gdy śmierć się o ciebie upomni... *Wiedz*, że wtedy skrzyżuję jej ostrze z mym własnym. *Wiedz*, że gdy wszyscy wokół ciebie umrą... *Wiedz*, że będę żył dla dobra twojej sprawy."~ */
  IF ~~ THEN REPLY #60061 /* ~"Kiedy umrzemy Dak'konie, zabierze nas ta sama śmierć. Będzie to Oświadczenie o Dwóch Śmierciach jako Jedność."~ */ JOURNAL #60062 /* ~Mam wrażenie, że odkryty przeze mnie Ósmy Krąg Zerthimona sprawił, że Dak'kon pogłębił zrozumienie samego siebie i pozbył się *wątpliwości*, które nim targały. Kiedy powiedziałem mu o Ósmym Kręgu, widziałem jak dosłownie ubywa mu lat. Usłyszawszy moje słowa, Dak'kon złożył Deklarację o Dwóch Śmierciach jako Jedność, w której przysiągł, że kiedy śmierć przyjdzie po mnie, on zastawi jej drogę własnym mieczem.~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 232.3
  SAY #60063 /* ~"Znaki mówią o czwórce, która podróżowała z tobą w przeszłości."~ */
  IF ~~ THEN REPLY #60064 /* ~"Co to za czwórka?"~ */ DO ~SetGlobal("Dakkon_Old_Companions","GLOBAL",1)
~ JOURNAL #60068 /* ~Dak'kon opowiedział mi o czterech osobach, które towarzyszyły mi w jednym z ubiegłych żywotów: o kobiecie, co darzyła wielką miłością człowieka, który uczucia jej miał za nic, dalej o niewidomym łuczniku, o chowańcu i o niewolniku.~ */ GOTO 329
  IF ~~ THEN REPLY #60065 /* ~"W zasadzie to mam kilka pytań odnośnie naszych podróży..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #60066 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60067 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 232.4 328.0
  SAY #60069 /* ~"Tatuaże mówią o czterech umysłach. Jednym z nich byłą kobieta, która kochała mężczyznę. który *znał* ją, nie *znał* jednak miłości. Innym był niewidomy mężczyzna, który widział rzeczy, jakich oczy śmiertelników nie mogły dostrzec. Kolejnym był chowaniec, ulubieniec maga, kupiony i uwiązany. Ostatnim zaś był niewolnik."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60070 /* ~"A którym z nich ty byłeś, Dak'konie? Byłeś niewolnikiem?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60071 /* ~"A którym z nich ty byłeś, Dak'konie? Byłeś niewolnikiem?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60072 /* ~"A ty byłeś niewolnikiem, Dak'konie?"~ */ GOTO 330
  IF ~~ THEN REPLY #60073 /* ~"Co możesz mi powiedzieć o tej czwórce?"~ */ GOTO 332
  IF ~~ THEN REPLY #60074 /* ~"Dlaczego nie chciałeś mi tego powiedzieć?"~ */ GOTO 338
  IF ~~ THEN REPLY #60075 /* ~"No dobrze. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60076 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 329.0 329.1 329.2 333.3 334.1 335.1 337.0
  SAY #60077 /* ~Dak'kon milczy przez chwilę; powierzchnia jego ostrza faluje niczym kipiel. "*Wiedz*, że ten winien był ci przysługę. Poprzez tę powinność stał się niczym niewolnik."~ */
  IF ~~ THEN REPLY #60078 /* ~"Jak do tego doszło?"~ */ GOTO 331
  IF ~~ THEN REPLY #60079 /* ~"Co mógłbyś mi powiedzieć o tej czwórce, która podróżowała ze mną z przeszłości?"~ */ GOTO 333
  IF ~~ THEN REPLY #60080 /* ~"Dlaczego nie chciałeś powiedzieć mi o znajdującej się na tatuażu czwórce?"~ */ GOTO 338
  IF ~~ THEN REPLY #60081 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60082 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #60083 /* ~"*Wiedz*, że długa to opowieść. Sprawa toczy się między mną i tym innym, który kiedyś był tobą. *Dowiesz* się, kiedy jej wysłuchasz. *Wiedz*, że będzie to długa opowieść."~ */
  IF ~~ THEN REPLY #60084 /* ~"Chciałbym to usłyszeć."~ */ GOTO 218
  IF ~~ THEN REPLY #60085 /* ~"Co mógłbyś mi powiedzieć o tej czwórce, która podróżowała ze mną z przeszłości?"~ */ GOTO 333
  IF ~~ THEN REPLY #60086 /* ~"W takim razie wysłucham tej opowieści później. Dlaczego nie chciałeś mi powiedzieć o znajdującej się na tatuażu czwórce?"~ */ GOTO 338
  IF ~~ THEN REPLY #60087 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60088 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 329.3 334.2 335.2 337.1 338.1 339.0 339.2 340.1 340.2
  SAY #60089 /* ~"Kobieta była młoda. Oddawała cześć czasowi, gdyż dzięki swym zdolnościom *wiedziała* o rzeczach, którym przyjdzie nadejść. Łucznik był niewidomy i potrafił dostrzec to, czego nikt inny ujrzeć nie był w stanie. Jego strzały zawsze podążały drogą ku sercu wroga. O chowańcu i niewolniku mało mi *wiadomo*."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60090 /* ~"Widziała rzeczy, którym przyjdzie nadejść? Kobieta miała na imię Deionarra, nieprawdaż?"~ */ JOURNAL #60097 /* ~Właśnie dowiedziałem się, że w przeszłości Deionarra była towarzyszką moich wędrówek... Dak'kon powiedział, że Deionarra posiadała zdolności przepowiadania przyszłości; "dostrzegała" wydarzenia, które miały dopiero nadejść.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60091 /* ~"Widziała rzeczy, którym przyjdzie nadejść? Kobieta miała na imię Deionarra, nieprawdaż?"~ */ JOURNAL #60097 /* ~Właśnie dowiedziałem się, że w przeszłości Deionarra była towarzyszką moich wędrówek... Dak'kon powiedział, że Deionarra posiadała zdolności przepowiadania przyszłości; "dostrzegała" wydarzenia, które miały dopiero nadejść.~ */ GOTO 334
  IF ~~ THEN REPLY #60092 /* ~"Powiedz mi więcej o tym łuczniku."~ */ GOTO 335
  IF ~~ THEN REPLY #60093 /* ~"Dlaczego nie chciałeś powiedzieć mi o znajdującej się na tatuażu czwórce?"~ */ GOTO 338
  IF ~~ THEN REPLY #60094 /* ~"Czy wiesz, dlaczego podróżowałem wespół z tą czwórką?"~ */ GOTO 340
  IF ~~ THEN REPLY #60095 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60096 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.1 331.1 334.3 335.3 337.2 338.2 339.1 339.3 341.1 341.2
  SAY #60098 /* ~"Kobieta była młoda. Oddawała cześć czasowi, gdyż dzięki swym zdolnościom *wiedziała* o rzeczach, którym przyjdzie nadejść. Łucznik był niewidomy i potrafił dostrzec to, czego nikt inny ujrzeć nie był w stanie. Jego strzały zawsze podążały drogą ku sercu wroga. O chowańcu mało mi *wiadomo*."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60099 /* ~"Widziała rzeczy, którym przyjdzie nadejść? Kobieta nie miała na imię Deionarra, nieprawdaż?"~ */ JOURNAL #60107 /* ~Właśnie dowiedziałem się, że w przeszłości Deionarra była towarzyszką moich wędrówek... Dak'kon powiedział, że Deionarra posiadała zdolności przepowiadania przyszłości; "dostrzegała" wydarzenia, które miały dopiero nadejść.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60100 /* ~"Widziała rzeczy, którym przyjdzie nadejść? Kobieta nie miała na imię Deionarra, nieprawdaż?"~ */ JOURNAL #60107 /* ~Właśnie dowiedziałem się, że w przeszłości Deionarra była towarzyszką moich wędrówek... Dak'kon powiedział, że Deionarra posiadała zdolności przepowiadania przyszłości; "dostrzegała" wydarzenia, które miały dopiero nadejść.~ */ GOTO 334
  IF ~~ THEN REPLY #60101 /* ~"Powiedz mi więcej o tym łuczniku."~ */ GOTO 335
  IF ~~ THEN REPLY #60102 /* ~"Jak to się stało, że zostałeś moim niewolnikiem?"~ */ GOTO 330
  IF ~~ THEN REPLY #60103 /* ~"Dlaczego nie chciałeś powiedzieć mi o znajdującej się na tatuażu czwórce?"~ */ GOTO 338
  IF ~~ THEN REPLY #60104 /* ~"Czy wiesz, dlaczego podróżowaliśmy wspólnie?"~ */ GOTO 341
  IF ~~ THEN REPLY #60105 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60106 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 332.0 332.1 333.0 333.1
  SAY #60108 /* ~"*Wiedz*, iż miała ona na imię Deionarra."~ */
  IF ~~ THEN REPLY #60109 /* ~"Co wiesz o łuczniku?"~ */ GOTO 335
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60110 /* ~"Jak to się stało, że zostałeś moim niewolnikiem?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60111 /* ~"Opowiedz mi o innych."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60112 /* ~"Opowiedz mi o innych."~ */ GOTO 333
  IF ~~ THEN REPLY #60113 /* ~"Dlaczego nie chciałeś powiedzieć mi o znajdującej się na tatuażu czwórce?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60114 /* ~"Czy wiesz, dlaczego podróżowałem wespół z tą czwórką?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60115 /* ~"Czy wiesz, dlaczego podróżowaliśmy wspólnie?"~ */ GOTO 341
  IF ~~ THEN REPLY #60116 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60117 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 332.2 333.2 334.0
  SAY #60118 /* ~"Niewiele o nim *wiem*. *Wiem*, że był żołnierzem. *Wiem*, że znaczną część jego życia odebrał mu alkohol. Będąc niewidomym, *poznał* inny sposób, by widzieć. Poprzez to *poznanie* stał się silny. Nie *znał* jednakże własnej siły."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #60119 /* ~"Wiesz, jak miał na imię?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 336
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60120 /* ~"Jak to się stało, że zostałeś moim niewolnikiem?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60121 /* ~"Opowiedz mi o innych."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60122 /* ~"Opowiedz mi o innych."~ */ GOTO 333
  IF ~~ THEN REPLY #60123 /* ~"Dlaczego nie chciałeś powiedzieć mi o znajdującej się na tatuażu czwórce?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60124 /* ~"Czy wiesz, dlaczego podróżowałem wespół z tą czwórką?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60125 /* ~"Czy wiesz, dlaczego podróżowaliśmy wspólnie?"~ */ GOTO 341
  IF ~~ THEN REPLY #60126 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60127 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #60128 /* ~Nim Dak'kon ma szanse odpowiedzieć, niespodziewanie *poznajesz* odpowiedź. W tyle twej czaszki pojawia się mrowienie... Czujesz, że na powierzchnię wydostaje się imię - tak, jakby wydobywało się z przepastnego oceanu błota.~ */
  IF ~~ THEN REPLY #60129 /* ~Wspomnienie: "Nazywał się *Zachariasz*... był niewidomy, ale w swej ślepocie odkrył drugi wzrok, króry pozwalał mu widzieć rzeczy ukryte dla innych. Był łucznikiem i tam, dokąd posyłał swoje strzały, zawsze znajdował serca wrogów."~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ JOURNAL #60130 /* ~W trakcie rozmowy z Dak'konem, przypomniałem sobie imię niewidomego łucznika, który w poprzednim żywocie był moim towarzyszem. Człowiek na miał na imię Zachariasz. Mimo ślepoty, posiadał drugi wzrok, który pozwalał mu niechybnie przeszywać serce wrogów.~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #60131 /* ~"*Wiem*, iż nosił on imię Zachariasz. *Wiem*, że jego imię przeszyło serca wielu wrogów."~ */
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60132 /* ~"Jak to się stało, że zostałeś moim niewolnikiem?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60133 /* ~"Opowiedz mi o innych."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60134 /* ~"Opowiedz mi o innych."~ */ GOTO 333
  IF ~~ THEN REPLY #60135 /* ~"Dlaczego nie chciałeś powiedzieć mi o znajdującej się na tatuażu czwórce?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60136 /* ~"Czy wiesz, dlaczego podróżowałem wespół z tą czwórką?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60137 /* ~"Czy wiesz, dlaczego podróżowaliśmy wspólnie?"~ */ GOTO 341
  IF ~~ THEN REPLY #60138 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60139 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 329.4 330.2 331.2 332.3 333.4 334.4 335.4 337.3
  SAY #60140 /* ~"Czwórka połączona jest ze *znanym* mi symbolem."~ */
  IF ~~ THEN REPLY #60141 /* ~"Jakim symbolem?"~ */ GOTO 339
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60142 /* ~"W tej chwili symbol mnie nie interesuje. Powiedz mi coś o tej czwórce widniejącej na tatuażu."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60143 /* ~"W tej chwili symbol mnie nie interesuje. Powiedz mi coś o tej czwórce widniejącej na tatuażu."~ */ GOTO 333
  IF ~~ THEN REPLY #60144 /* ~"Porozmawiamy o tym później. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60145 /* ~"Mniejsza z tym, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 338.0 340.0 341.0
  SAY #60146 /* ~"Ten symbol to udręka. Upadły mówił, że zawsze go nosiłeś, gdyż ciało *wie*, że cierpi, nawet jeśli umysł nie *wie*."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60147 /* ~"O symbolu już starczy. Powiedz mi wszystko, co wiesz o przedstawionej na tatuażu czwórce."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60148 /* ~"O symbolu już starczy. Powiedz mi wszystko, co wiesz o przedstawionej na tatuażu czwórce."~ */ GOTO 333
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60149 /* ~"Rozumiem. Może mi coś więcej powiedzieć o znajdującej się na tatuażu czwórce?"~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60150 /* ~"Rozumiem. Może mi coś więcej powiedzieć o znajdującej się na tatuażu czwórce?"~ */ GOTO 333
  IF ~~ THEN REPLY #60151 /* ~"No dobrze. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60152 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 332.4 334.5 335.5 337.4
  SAY #60153 /* ~"Tatuaż nic o ich ścieżce nie mówi, tylko symbol, który ich łączy. *Wiedz*, że jedynie ty możesz *poznać* ścieżkę."~ */
  IF ~~ THEN REPLY #60154 /* ~"Powiedz mi o symbolu."~ */ GOTO 339
  IF ~~ THEN REPLY #60155 /* ~"O symbolu już starczy. Powiedz mi wszystko, co wiesz o przedstawionej na tatuażu czwórce."~ */ GOTO 332
  IF ~~ THEN REPLY #60156 /* ~"Rozumiem. Może mi coś więcej powiedzieć o znajdującej się na tatuażu czwórce?"~ */ GOTO 332
  IF ~~ THEN REPLY #60157 /* ~"No dobrze. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60158 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 333.5 334.6 335.6 337.5
  SAY #60159 /* ~"*Wiedz*, że jedynie ty *znałeś* ścieżkę. Twoją wolą było, byśmy jej nie *poznali*. *Wiedz*, że ci, którzy kroczyli twoją ścieżką, *znali* jedynie symbol, który ich łączył."~ */
  IF ~~ THEN REPLY #60160 /* ~"Dobrze... Powiedz mi o symbolu."~ */ GOTO 339
  IF ~~ THEN REPLY #60161 /* ~"O symbolu już starczy. Powiedz mi wszystko, co wiesz o przedstawionej na tatuażu czwórce."~ */ GOTO 333
  IF ~~ THEN REPLY #60162 /* ~"Rozumiem. Może mi coś więcej powiedzieć o znajdującej się na tatuażu czwórce?"~ */ GOTO 333
  IF ~~ THEN REPLY #60163 /* ~"No dobrze. Teraz zaś... Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60164 /* ~"To wszystko, co chciałem wiedzieć, Dak'konie. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 342 // from: 270.0
  SAY #60165 /* ~"*Wiedz, że mowa Ludu ma swe korzenie w jego historii. Każda rzecz to dla nas opowieść; metafora jest narzędziem i inspiracją dla siły. "*Wiedz*, że gdy mówimy o stole Toryga - pamiętamy, że Toryg znany był ze swej gościnności i życzliwości. Kiedy mówimy o sercu Selquanta, przypominamy sobie lubieżną i okrutną naturę Selquanta."~ */
  IF ~~ THEN REPLY #60166 /* ~"Rozumiem. Nauczysz mnie?"~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,600)
~ JOURNAL #60167 /* ~Dak'kon nauczył mnie nieco języka githzerai. Wygląda na to, że język ten opiera się na metaforach i przypowieściach. Nie władam biegle językiem githzerai, ale jeżeli natknę się na jakieś nieznane słowo, poproszę Dak'kona, aby wytłumaczył mi jego znaczenie.~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #60168 /* ~Dak'kon uczy cię kilku popularnych fraz: O mądrym człowieku mówi się, że "napisał księgę Anarchów", podczas gdy posądzić kogoś o zdradę to pamiętać o "Oku Vilquara". O hojnych ludziach mówi się, że ich "kredensy są otwarte". Do popularnych pozdrowień należą: "Pozdrawiam cię, dzierżący-miecz" i "Składam ci ukłon klanu Zerchai". Należy na nie odpowiedzieć: "Zaszczyt to dla wędrowcy". Dak'kon jest uzdolnionym nauczycielem - po jego instruktażu czujesz, iż jesteś w stanie wymieniać odpowiednie powitania z innymi githzerai.~ */
  IF ~~ THEN REPLY #60169 /* ~"Mam kilka innych pytań odnośnie githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #60170 /* ~"Dziękuję, Dak'konie. Są jeszcze inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60171 /* ~"Wystarczająco już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 224.0
  SAY #60172 /* ~Gdy Dak'kon wymawia te słowa, twój wzrok ulega rozmyciu, a z tyłu czaszki czujesz mrowienie... Przez chwilę kręci ci się w głowie i to, co widzisz, staje się nagle chaotyczne, rozmyte, wykrzywione... Znajdujesz się gdzieś indziej, gdzieś w *przeszłości*...~ */
  IF ~~ THEN REPLY #60173 /* ~Poddaj się pamięci...~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetAnimState("Dakkon",ANIM_MIMESTAND)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 345
  IF ~~ THEN REPLY #60174 /* ~Odrzuć wspomnienie...~ */ GOTO 225
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #60175 /* ~Wszystko, co cię otacza, zdaje się kotłować - oglądany przez ciebie obraz jest niewyraźny, wirujący, przyprawiający o mdłości - wszystko na RAZ. Mgła, wypełnione ogniem jamy, uformowane z błota wyspy, kamienie, pokryte lodem bryły - niczym ryby przepływają przez Sferę. Zderzają się ze sobą, rozpraszają; kropelki wody zakrzywiają się pośród zawodzącego powietrza i niczym zęby sieką twoją skórę. Wyzbywasz się nudności i uspokajasz się. Oto Sfera *Limbo* - wszystko jest tu chaosem, nic nie jest stabilne... Skupiasz uwagę na leżącym przed tobą umierającym mężczyźnie. To właśnie dlatego przybyłeś do tego miejsca.~ */
  IF ~~ THEN REPLY #60176 /* ~Wspomnienie: Dokonaj oględzin *zertha*. Sprawdź, czy jeszcze żyje.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 346
  IF ~~ THEN REPLY #60177 /* ~Odrzuć wspomnienie...~ */ GOTO 225
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY #60178 /* ~'Mężczyzna' należy do githzerai, jego ciało spoczywa w powstałej z ziemi osłonie, która obraca się wokół niego. Pozbawiony świadomości uformował sobie grób spośród żywiołu i pomimo iż drobiny ognia i wody smagają jego twarz, nie reaguje. Jego dłonie przybrały śmiertelnie bladą barwę, czarne niczym węgiel oczy skupiają się na niczym. Jego wychudzona sylwetka jest świadectwem wygłodzenia, wiesz jednak, iż jest ono najmniej istotną z jego dolegliwości. To wiara zadała mu śmiertelny cios.~ */
  IF ~~ THEN REPLY #60179 /* ~Wspomnienie: Poszukaj noszonego przez niego ostrza.~ */ GOTO 347
  IF ~~ THEN REPLY #60180 /* ~Odrzuć wspomnienie...~ */ GOTO 225
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #60181 /* ~W jego bezwładnej, lewej ręce znajduje się zdeformowana, metalowa masa - jej powierzchnia roztopiła się i otoczyła jego dłoń niczym rękawica. Widzisz, że kotłuje się ona i syczy, niczym chory wąż. Githzerai zdaje się tego nie dostrzegać... Ale to właśnie ta broń, która cię tu sprowadziła.~ */
  IF ~~ THEN REPLY #60182 /* ~Wspomnienie: "Dak'konie, *zerthcie* z Zatopionego Shra'kt'lor, ostatni dzierżycielu ostrza *karach*. *Wiedz*, że przybywam do ciebie ze słowami Zerthimona, wyrytymi nie w chaosie, lecz w kamieniu, wyrytymi przez wolę w Nieprzerwanego Kręgu."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 348
  IF ~~ THEN REPLY #60183 /* ~Odrzuć wspomnienie...~ */ GOTO 225
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #60184 /* ~Na dźwięk słowa 'Zerthimon' oczy wychodzą mu z orbit i próbują skupić się na tobie. Z wielkim trudem rozwiera on usta by przemówić, ale wydostaje się z nich jedynie suchy syk. Wyciągasz ze swej sakwy kamień i przytrzymujesz go przed nim, by mógł go zobaczyć.~ */
  IF ~~ THEN REPLY #60185 /* ~Wspomnienie: "Wiedz, że wypisane w tym kamieniu słowa Zerthimona niosą w sobie prawdę. Wiedz, też twój rozproszony umysł nie musi już tkwić w rozproszeniu. Musisz jedynie wziąć kamień, a *poznasz* siebie na powrót."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 349
  IF ~~ THEN REPLY #60186 /* ~Odrzuć wspomnienie...~ */ GOTO 225
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #60187 /* ~Oczy Dak'kona błądzą po Nieprzerwanym Kręgu Zerthimona i przez chwilę wydaje się, iż może on być zbyt bliski śmierci, by go rozpoznać. Następnie jego prawą rękę przeszywa pojedyncze drgnięcie i wystawia on ją powoli poza obręb uformowanego z ziemi więzienia; kawałki ziemi odpadają od niej i, pośród chaotycznych wiatrów Limbo, stają się wodą. Jego kościste dłonie chwytają się kamienia, jak tonący brzytwy; oczy jego błyszczą.~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #60188 /* ~Wspomnienie: "Wiedz, że uratowałem ci życie, Dak'konie, *zerthcie* z Shra'kt'lor."~ */ DO ~SetGlobal("Memory_Shraktlor","GLOBAL",1)
GiveExperience(Protagonist,6000)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #60191 /* ~Podczas rozmowy z Dak'konem przypomniałem sobie, że uratowałem mu życie w Shra'kt'lor, za pomocą Nienaruszonego Kręgu Zerthimona... To, co jest w tym dziwne, to fakt, że, zdaje się, wcale nie chciałem uratować samego Dak'kona, chodziło mi jedynie o to, aby zniszczeniu nie uległ jego cudowny miecz "karach". Trudno mi powiedzieć, co wtedy mną kierowało.~ */ GOTO 350
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #60189 /* ~Wspomnienie: "Wiedz, że uratowałem ci życie, Dak'konie, *zerthcie* z Shra'kt'lor."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 350
  IF ~~ THEN REPLY #60190 /* ~Odrzuć wspomnienie...~ */ GOTO 225
END

IF ~~ THEN BEGIN 350 // from: 349.0 349.1
  SAY #60192 /* ~Oczy Dak'kona odwracają się od kamienia i spoglądają na ciebie. Ponownie wydaje z siebie syk, zbyt suchy, by mógł nieść ze sobą słowa. Działa powoli. Mruga, po czym przemawia - głos jego niewiele silniejszy jest od szeptu, ale to te same słowa, które chciałeś usłyszeć. "Moje... życie jest twoim... póki twe się nie zakończy..."~ */
  IF ~~ THEN REPLY #60193 /* ~Zamknij oczy, powróć do rzeczywistości.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 225
END

IF ~~ THEN BEGIN 351 // from: 318.0
  SAY #60194 /* ~Dak'kon potrząsa głową. "Mogę ponownie skierować kogoś ku wojennemu rzemiosłu, nie mogę jednak jego zdolności nie mogę podwyższyć. Bronie me nie powstały ze stali, ale z *woli* i *poznania* siebie."~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60195 /* ~"Może mógłbyś zaoferować mi jakieś inne szkolenie..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~~ THEN REPLY #60196 /* ~"Dobrze. Jeśli będę potrzebował kiedykolwiek wrócić do wojennego rzemiosła, poproszę cię. Mam kilka innych pytań..."~ */ GOTO 193
  IF ~~ THEN REPLY #60197 /* ~"No to mniejsza z tym. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 193.5
  SAY #60198 /* ~"Wiedźma... Ona NIC nie *wie*..." Broń Dak'kona faluje i widzisz, jak ostrza stają się szare i matowe. Jego twarz wykrzywia się i cedzi on przez zęby. "Nie jest mą *wolą*, by o tym mówić."~ */
  IF ~~ THEN REPLY #60199 /* ~"Chciałbym, żebyś mi o niej powiedział... Prawdę mówiąc w czasie tej rozmowy Ravela powiedziała sporo rzeczy, które mnie zainteresowały."~ */ GOTO 353
  IF ~~ THEN REPLY #60200 /* ~"Dobrze. Są jeszcze inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60201 /* ~"W takim razie więcej o tym rozmawiać nie będziemy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #60202 /* ~"*Wiedz*, że wola twa jest moją *wolą*. Kiedy mówisz, *muszę* cię słuchać. *Wiedz*, że twe słowa mogą powstrzymać me ostrze, bądź skierować je w stronę czyjegoś gardła."~ */
  IF ~~ THEN REPLY #60203 /* ~"Co? Ale dlaczego?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 354
  IF ~~ THEN REPLY #60204 /* ~"Więcej o tym rozmawiać nie będziemy. Są inne sprawy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60205 /* ~"Więcej już nie chcę słyszeć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #60206 /* ~Dak'kon wydaje się patrzyć przez ciebie - tak, jakby napotkanie twego wzroku było dla niego czymś nie do zniesienia. "Twa ścieżka jest moją ścieżką. Jestem do ciebie przykuty."~ */
  IF ~~ THEN REPLY #60207 /* ~"Jesteś moim niewolnikiem?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #60208 /* ~Na dźwięk słowa 'niewolnik' twarz Dak'kon pogrąża się w bólu - tak, jakby go ktoś zranił... Jakby słowo było sztyletem wbijanym w rdzeń jego cierpienia.~ */
  IF ~~ THEN REPLY #60209 /* ~"Ale... dlaczego, Dak'konie?"~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #60210 /* ~"*Wiedz*, że to... długa opowieść, wiedz też, że opowiedzenie jej nic nie da."~ */
  IF ~~ THEN REPLY #60211 /* ~"Chciałbym to usłyszeć."~ */ JOURNAL #59286 /* ~Dak'kon opowiedział mi o przyczynach swego niewolniczego przywiązania do mojej osoby. Kiedy uratowałem mu życie, on w podzięce obiecał służyć mi do śmierci. Ale nie zdawał sobie sprawę z tego, że jestem nieśmiertelny, i w ten sposób, chcąc nie chcąc, związał się ze mną na całe swoje życie.~ */ GOTO 215
  IF ~~ THEN REPLY #60212 /* ~"No to mniejsza z tym. Są inne rzeczy, o których bym się chciał *dowiedzieć*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60213 /* ~"W takim razie więcej o tym rozmawiać nie będziemy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from:
  SAY #60401 /* ~"Mamy pomagać githyanki? Co go tu sprowadza, z dala od pieśni krwi snutej przez jego braci?"~ */
  IF ~~ THEN EXTERN ~DANIZIUS~ 17
END

IF ~~ THEN BEGIN 358 // from:
  SAY #61670 /* ~"To jedynie pyłek w porównaniu z niesamowitą Burzą Mocy Zerthimona."~ [DAK204] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 359 // from:
  SAY #61671 /* ~"W oczach Zerthimona jestem prochem."~ [DAK203A] */
  IF ~~ THEN EXTERN ~BGRACE~ 15
END

IF ~~ THEN BEGIN 360 // from:
  SAY #61672 /* ~"Przede mną jeszcze długa droga. Jestem dopiero u jej początku."~ [DAK203B] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Dakkon","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 361 // from:
  SAY #64995 /* ~"Jedną chwilę. Przyjrzyj się tutejszemu podłożu." Gdy spoglądasz w dół, dostrzegasz liczne brudne ślady wiodące do sklepionego przejścia... i nie zawracające. "Wielu tędy przechodziło. To sklepione przejście musi być portalem."~ */
  IF ~~ THEN REPLY #64997 /* ~"Portalem? Jak go otworzyć?"~ */ GOTO 362
  IF ~~ THEN REPLY #64998 /* ~"Być może. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #64996 /* ~"Nie *wiem*. Zgaduję jednak, na podstawie ilości osób, które z tego portalu korzystały, że klucz nie jest czymś rzadko spotykanym. Być może jeden z mieszkańców placu będzie *wiedział*, w jaki sposób skorzystać z portalu."~ */
  IF ~~ THEN REPLY #64999 /* ~"W takim razie popytam w okolicy. Chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 318.5
  SAY #68059 /* ~"*Wiedz*, że nie jestem nauczycielem. *Wiedz* jednak, że służyć mogę jako przewodnik. Nie *wiem*, w jaki sposób ludzie przyswajają sobie 'Sztukę', ale gdy już poznasz Sztukę, wróć i spytaj mnie ponownie."~ */
  IF ~~ THEN REPLY #68060 /* ~"Spytam więc ponownie, gdy będę już magiem. Zanim to jednak nastąpi, mam do ciebie kilka pytań..."~ */ GOTO 193
  IF ~~ THEN REPLY #68061 /* ~"Przekonam się więc najpierw, czy znajdę nauczyciela, który nauczy mnie magii. Ruszajmy."~ */ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",3)
~ THEN BEGIN 364 // from:
  SAY #68195 /* ~Gdy dotyka go twoja moc, Dak'kon chwyta chrapliwy oddech, po czym z trudem podnosi w górę wzrok. Zdaje się, iż z jego życiem łączy go bardzo cienka nić.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68196 /* ~"Kiedyś Dak'konie, wypowiedziałeś Oświadczenie o Dwóch Śmierciach jako o jednej. To ten czas."~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
SetGlobal("BD_TWO_DEATHS","GLOBAL",1)
JoinPartyEx(TRUE)
~ GOTO 367
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68197 /* ~"Dak'konie, jesteś mi potrzebny. Możesz mi pomóc?"~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 365
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68340 /* ~"OBUDŹ SIĘ, DAK'KONIE Z SHRA'KT'LOR, OSTATNI DZIERŻĄCY MIECZ *KARACH*."~ */ GOTO 368
END

IF ~~ THEN BEGIN 365 // from: 364.1 367.0
  SAY #68198 /* ~Dak'kon bierze oddech i uspakaja się. Widzisz, jak jego broń *wyostrza* się. "Ostrze to jest twoim."~ [DAK025] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68199 /* ~"Dobrze."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68200 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68201 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68202 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68203 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68204 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68240 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68433 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68434 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68444 /* ~"Dobrze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from: 193.4
  SAY #68255 /* ~Dak'kon potrząsa głową. "*Wiedz*, że wrogowie znajdują się blisko. To nie ten czas."~ */
  IF ~~ THEN REPLY #68256 /* ~"Dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 367 // from: 364.0
  SAY #68270 /* ~Gdy wymawiasz słowa, oczy Dak'kona zamykają się - przez chwilę wydaje ci się, iż dłużej się on już wśród żywych nie utrzyma - następnie otwierają się one na powrót. Nie widać już w nich tej trupiej czerni, którą widziałeś wcześniej. Zamiast tego, przybierają one metaliczną fakturę podobną do tej, jaką ma jego ostrze. Wiesz, że Dak'kon stał się czymś *innym* - czymś znacznie bardziej potężniejszym.~ */
  IF ~~ THEN DO ~GiveExperience("Dakkon",2000000)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,3)
PermanentStatChange("Dakkon",CON,RAISE,3)
FullHealEx("Dakkon")
~ GOTO 365
END

IF ~~ THEN BEGIN 368 // from: 364.2
  SAY #68341 /* ~Gdy wymawiasz swe słowa, Dak'kon kiwa powoli głową. "Twój głos... Udało ci się w końcu *poznać* siebie?"~ */
  IF ~~ THEN REPLY #68342 /* ~"TAK. NIE BYŁA TO... ŁATWA SPRAWA I KOSZTOWAŁA WIELE ŻYWOTÓW. WIELU CIERPIAŁO, BYM MÓGŁ POZNAĆ SIEBIE NA POWRÓT."~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #68343 /* ~"*Poznanie* samego siebie to ciężka do przejścia ścieżka."~ */
  IF ~~ THEN REPLY #68344 /* ~"POPRZEZ TO POZNANIE WIEM, GDZIE WKRÓTCE SIĘ UDAM. CZAS I PRZEZNACZENIE ZBLIŻAJĄ SIĘ TU NAWET W TEJ CHWILI, A JA NIE POZOSTANĘ TU ZBYT DŁUGO. JEŚLI CHCESZ DAK'KONIE, PRZENIOSĘ CIĘ Z POWROTEM DO SIGIL."~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #68345 /* ~Dak'kon milknie na chwilę. Gdy zaczyna przemawiać ponownie, głos jego brzmi ostro, jakby wymawiał każde słowo osobno. "*Wiedz, że kiedyś zaciągnąłem u ciebie dług. *Wiedz*, że uratowałeś me życie. *Wiedz* też, że podążałem za tobą, by spłacić ten dług."~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #68346 /* ~"Zapłaciłem swoim życiem za twoje. Dług został wyrównany."~ [DAK030] */
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68347 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68348 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68349 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68350 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68351 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68496 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68497 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68498 /* ~"DOBRZE, DAK'KONIE. NASZE ŚMIERCI BYŁY NICZYM JEDNA. ODCHODZĄC STĄD, ZABIERZESZ ZE SOBĄ SWĄ WOLNOŚĆ."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",4)
~ THEN BEGIN 372 // from:
  SAY #68412 /* ~Dak'kon składa ci ukłon. "Ostrze to jest twoje."~ [DAK025] */
  IF ~~ THEN REPLY #68413 /* ~"Dobrze. Zróbmy z niego pożytek..."~ */ EXIT
END
