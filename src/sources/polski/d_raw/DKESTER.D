// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESTER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  CreatureInArea("AR3016")
GlobalGT("Mob_Dead","AR3016",2)
~ THEN BEGIN 0 // from:
  SAY #58985 /* ~"Dziękuję ci za pomoc. Zajmę się zorganizowaniem moich przyjaciół..." Przerywa. "Takich, jakimi są. No dalej."~ */
  IF ~~ THEN REPLY #58986 /* ~"Powodzenia. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #58987 /* ~Widzisz szczupłego mężczyznę, jest mocno opalony i ma przeszywające spojrzenie. "Witaj w Gorzelni Braci Malako!" krzyczy, jak gdybyś był tym, którego chciał ujrzeć. "Cóż mogę dziś dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #58988 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #58989 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58990 /* ~"Słyszałem, że masz kłopoty z bratem. Chciałbym ci pomóc."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58991 /* ~"Czy słyszałeś, żeby był tu deva?"~ */ GOTO 4
  IF ~~ THEN REPLY #58992 /* ~"Chcę coś kupić."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #58993 /* ~"Przysłał mnie twój brat. Mówi, że chce z tobą negocjować warunki spadku."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #66569 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #58994 /* ~"Jestem Kester Malako i jestem współwłaścicielem Gorzelni Braci Malako. Czy chciałbyś coś kupić?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58995 /* ~"Współwłaścicielem?"~ */ GOTO 5
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58996 /* ~"Kim jest ten drugi brat?"~ */ GOTO 6
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58997 /* ~"Nie teraz, dzięki. Słyszałem, że masz kłopoty z bratem."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58998 /* ~"Słyszałeś, żeby był tu deva?"~ */ GOTO 4
  IF ~~ THEN REPLY #58999 /* ~"Zobaczmy, co tam masz."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59000 /* ~"Przysłał mnie twój brat. Mówi, że chce z tobą negocjować warunki spadku."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68289 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 9.1
  SAY #59001 /* ~Uważniej ci się przygląda. "To gorzelnia. Sprzedajemy tu różne rzeczy, od napojów po inne mikstury, takie jak uroki i temu podobne. Chciałbyś coś kupić?"~ */
  IF ~~ THEN REPLY #59008 /* ~"Tak."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59009 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.3 9.3
  SAY #59010 /* ~"Co, w Klątwie?" Śmieje się dobrotliwie. "Przyjacielu, jeśli jesteś w Klątwie dość długo, zdążyłeś się dowiedzieć, że nie ma tu devy. Spróbuj w Hart, albo w innym mieście po drugiej stronie Wielkiego Pierścienia. No dobra, chcesz coś kupić?"~ */
  IF ~~ THEN REPLY #59011 /* ~"Tak."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59012 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #59013 /* ~"Tak, w rzeczy samej. Mój brat ma też swój udział w tym interesie, chociaż nie wiem czy traktuje to jak 'interes', sądząc po tym jak o niego dba. Słuchaj, chcesz coś kupić?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #59014 /* ~"Opowiedz mi o swoim bracie."~ */ GOTO 6
  IF ~~ THEN REPLY #59015 /* ~"Tak. Co tam masz?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59016 /* ~"Przysłał mnie twój brat. Mówi, że chce z tobą negocjować warunki spadku."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68290 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 5.0
  SAY #59017 /* ~Twarz mu ciemnieje. "Nazywa się Kruszypięść. Jest w tym mieście kowalem. Robi, co może, żeby mój interes nie odnosił sukcesu i... Dlaczego ja ci to mówię? Jesteś zupełnie obcy."~ */
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59018 /* ~"Chciałbym ci pomóc."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59019 /* ~"Nie wiem. Co masz na sprzedaż?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59020 /* ~"Nie wiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 6.0 9.2
  SAY #59021 /* ~"Naprawdę? W porządku. Zobacz. To moja kopia zapisu, który zrobił nasz ojciec. O tutaj: jasno widać, że pieniądze, które przynosi ta gorzelnia powinny iść także na jej rozbudowę, a nie tylko dla nas dwóch. Ale mój głupi brat twierdzi, że powinniśmy tylko brać pieniądze, zamiast myśleć o przyszłości. Zdobądź jego kopię zapisu, albo go przekonaj, a zostaniesz sowicie wynagrodzony."~ */
  IF ~~ THEN REPLY #59022 /* ~"Muszę przejrzeć twoją kopię zapisu."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ JOURNAL #59024 /* ~Obiecałem pomóc gorzelnikowi Kesterowi w jego sporze z jego rodzonym bratem Kruszypięściem dotyczącym podziału spadku.~ */ GOTO 8
  IF ~  False()
~ THEN REPLY #59023 /* ~"Dobrze. Jeszcze tu wrócę. Żegnaj."~ */ JOURNAL #59024 /* ~Obiecałem pomóc gorzelnikowi Kesterowi w jego sporze z jego rodzonym bratem Kruszypięściem dotyczącym podziału spadku.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 14.0
  SAY #59025 /* ~Obserwuje cię podejrzliwie, a potem ustępuje. "Jeśli dzięki temu załatwisz to lepiej i szybciej, niech i tak będzie. Masz." Daje ci ją.~ */
  IF ~~ THEN REPLY #59026 /* ~"Wspaniale. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #59027 /* ~"Witaj znowu u Braci Malako! Co mogę dziś dla ciebie zrobić?"~ */
  IF ~~ THEN REPLY #59028 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #59029 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59030 /* ~"Słyszałem, że masz kłopoty z bratem. Chciałbym ci pomóc."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59031 /* ~"Czy słyszałeś, żeby był tu deva?"~ */ GOTO 4
  IF ~~ THEN REPLY #59032 /* ~"Chciałbym coś kupić."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59033 /* ~"Przysłał mnie twój brat. Mówi, że chce z tobą negocjować warunki spadku."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68291 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",4)
~ THEN BEGIN 10 // from:
  SAY #59034 /* ~"Czego chcesz?"~ */
  IF ~~ THEN REPLY #59035 /* ~"Chciałbym coś kupić."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",4)
!PartyHasItem("KestLeg")
~ THEN REPLY #59036 /* ~"Twój brat zgodził się na wiążące negocjacje. A ty?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
GiveItem("KestLeg",Protagonist)
~ GOTO 11
  IF ~  Global("Mediate","GLOBAL",4)
PartyHasItem("KestLeg")
~ THEN REPLY #59037 /* ~"Twój brat zgodził się na wiążące negocjacje. A ty?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 12
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59038 /* ~"Twój brat zaofiarował mi pewną sumę, żebym załatwił sprawę po jego myśli."~ */ DO ~SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #59032 /* ~"Chciałbym coś kupić."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #68291 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #59041 /* ~"Cóż, ja... cholera! Tak. Masz. To moja kopia zapisu. Przejrzyj ją i powiedz któremuś z nas, co postanowiłeś."~ */
  IF ~~ THEN REPLY #59042 /* ~"Jeszcze tu wrócę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #59043 /* ~"Cóż, ja... cholera! No dobra. Przejrzyj nasze zapisy i powiedz któremuś z nas, co postanowiłeś."~ */
  IF ~~ THEN REPLY #59044 /* ~"Jeszcze tu wrócę. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #59045 /* ~"Czy już ustaliłeś werdykt?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59046 /* ~"Zdecydowałem na twoją korzyść. Po przeczytaniu zapisu, jest dla mnie jasne, że to ty powinieneś dostać cały spadek."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
GivePartyGold(1000)
AddexperienceParty(131250)
~ GOTO 15
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59047 /* ~"Zdecydowałem, że to twój brat powinien dostać całą sumę. Jest jasne, że to on ma to prawo."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ JOURNAL #59006 /* ~Rozstrzygnąłem spór pomiędzy gorzelnikiem a kowalem na korzyść kowala. Naturalnie gorzelnik nie był tym zachwycony.~ */ GOTO 16
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59048 /* ~"Obydwaj powinniście podzielić pieniądze na pół. Jasne jest, że wasz ojciec właśnie tak chciał."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
GivePartyGold(500)
~ GOTO 17
  IF ~~ THEN REPLY #59049 /* ~"Żaden z was nie zasługuje na te pieniądze. Dam wasze zapisy komuś, kto dobrze wykorzysta te pieniądze. Żegnaj."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ JOURNAL #59005 /* ~Rozstrzygnąłem spór pomiędzy gorzelnikiem a kowalem, kantując ich obu. Naturalnie nie byli tym zachwyceni.~ */ GOTO 16
  IF ~~ THEN REPLY #59050 /* ~"Jeszcze nie. Ale chciałbym zobaczyć twoje towary."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59051 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.5 2.5 5.2 9.5 10.3
  SAY #59052 /* ~"Och, naprawdę? No cóż, zapewniam cię, że moja nagroda będzie jeszcze lepsza, jeśli zdecydujesz po mojej myśli... powiem ci coś: Zdobądź jego zapis, przejrzyj go i przekonaj go, że rozstrzygniesz ten spór. Dostaniesz też niezłą nagrodę. No i jak?"~ */
  IF ~~ THEN REPLY #59022 /* ~"Muszę przejrzeć twoją kopię zapisu."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ GOTO 8
  IF ~  False()
~ THEN REPLY #59054 /* ~"Brzmi jak umowa. Pójdę z nim porozmawiać."~ */ EXIT
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59055 /* ~"Myślę, że jestem po jego stronie. To on powinien dostać cały spadek."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #59056 /* ~"Ha! Cha, cha, cha! Wiedziałem!" Wkłada ci w dłoń woreczek monet. "Wielkie dzięki, przyjacielu, będziesz tu zawsze mile widziany! Przepraszam, myślę, że czas najwyższy się napić!"~ */
  IF ~~ THEN REPLY #59057 /* ~"Jasne. Żegnaj."~ */ JOURNAL #59004 /* ~Rozstrzygnąłem spór pomiędzy gorzelnikiem a kowalem na korzyść gorzelnika. W zamian za to zostałem obdarowany torbą pełną monet.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.3 14.2
  SAY #59058 /* ~Jego twarz staje się czerwona, a on sam zaczyna wrzeszczeć, "CO? TY PODŁY, KŁAMLIWY ZŁODZIEJU. WYNOCHA Z MOJEGO SKLEPU! WON!"~ */
  IF ~~ THEN REPLY #59059 /* ~"Dobrze, dobrze, już idę."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #59060 /* ~Parska. "Ale... ale... to tylko... ale..." Wzdycha. "No dobrze. Zgodziłem się zaakceptować twój werdykt. Ale nie myśl, że będę cię przez to lepiej traktował. Wynoś się z mojego sklepu." Z gorzkim wyrazem twarzy rzuca ci woreczek monet. "Obiecałem ci to, więc masz. Weź sobie."~ */
  IF ~~ THEN REPLY #59061 /* ~"Dzięki. Żegnaj."~ */ JOURNAL #61386 /* ~W sprawie spadku zdecydowałem, że bracia powinni dzielić się dochodami z obu interesów,~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #59062 /* ~"Witaj znowu! Co mogę dla ciebie zrobić?" Wyraźnie tryska energią.~ */
  IF ~~ THEN REPLY #59063 /* ~"Chcę tylko zobaczyć twoje towary."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59064 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",6)
~ THEN BEGIN 19 // from:
  SAY #59066 /* ~"Wynoś się z mojego sklepu zanim zawołam straże. Już."~ */
  IF ~~ THEN REPLY #59067 /* ~"Dobrze. Już idę."~ */ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR3016")
GlobalLT("Mob_Dead","AR3016",3)
~ THEN BEGIN 20 // from:
  SAY #67918 /* ~"Pomóż mi! Powstrzymaj ich!"~ */
  IF ~~ THEN REPLY #67919 /* ~"Zobaczę, co da się zrobić..."~ */ EXIT
END
