// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DARLO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30049 /* ~Widzisz niskiego, łysiejącego mężczyznę stojącego w czymś, co służy jako foyer tej chwiejącej się noclegowni. Krzaczaste brwi ma zmarszczone w skupieniu, gdy wyciska coś, co chyba jest wągrem na jego potężnym, bulwiastym nosie.~ */
  IF ~~ THEN REPLY #30077 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #30078 /* ~Pozostaw człowieka jego sprawom i zbadaj pomieszczenie.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30050 /* ~Mężczyzna nie podnosi wzroku. Zamiast tego dalej wpatruje się zezem w swój nos. "Tia? Czego?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30079 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 4
  IF ~  Dead("Nestor")
~ THEN REPLY #30080 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30081 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30082 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 2
  IF ~~ THEN REPLY #30083 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #30084 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3 9.0
  SAY #30051 /* ~"Jasne, że możesz, trepie... jeśli masz na to brzdenk. Nikt tu nie kładzie siem za darmo, poza starym Nestorem, tym tam - a to tylko dlatego, że nikt nie jest na tyle pomylony, aby mu podskakiwać."~ */
  IF ~~ THEN REPLY #30085 /* ~"Dobrze. Ile za łóżko?"~ */ GOTO 4
  IF ~~ THEN REPLY #30086 /* ~"Opowiedz mi o tym... Nestorze."~ */ GOTO 5
  IF ~~ THEN REPLY #30087 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 9.5
  SAY #30052 /* ~"Cóż, czy nie jest to miłe?" Błyska sarkastycznym uśmiechem, ukazując pożółkłe zęby. "I ja żem jest pewien, że kiedyś odnajdziesz odpowiedzi. Ale ja prowadzem interes, wienc jeśli nie chcesz wyra, to lepiej byś siem odszpicował!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30088 /* ~"Rozumiem. Czy mogę zatem prosić o łóżko?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30089 /* ~"Rozumiem. Czy mogę zatem prosić o łóżko?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30090 /* ~"Rozumiem. Czy mogę zatem prosić o łóżko?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30091 /* ~"Rozumiem. Czy mogę zatem prosić o łóżko?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30092 /* ~"Rozumiem. Zatem chyba trochę odpocznę."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30093 /* ~"Zatem nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 2.0 3.0 3.1 3.2 5.1 6.2 7.1 9.1 9.2 9.3
  SAY #30053 /* ~"Bendzie cie to kosztować pienć miedziaków." Wyciera brudną dłoń o jeszcze bardziej brudną koszulę, po czym wyciąga ją w twoją stronę wierzchem ku górze.~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30094 /* ~Daj mu pięć miedziaków. Odpocznij.~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #30095 /* ~"Wybacz, ale nie mam teraz pięciu miedziaków. Może kiedy indziej. Żegnaj."~ */ EXIT
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30096 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #30054 /* ~"Nestor to ten świrowaty stary skurl tam w rogu." Pokazuje kciukiem przez ramię, w głąb pokoju. "Uważaj jak bendziesz obok niego przechodził. On ma nie po kolei w głowie. Zawsze trzensie trumnom o swoim widelcu i tym podobnych. Dobrze by było, jakby ktoś oddał nam wszystkim przysługie i siem go pozbył."~ */
  IF ~~ THEN REPLY #30097 /* ~"Czemu sam się go nie pozbędziesz?"~ */ GOTO 6
  IF ~~ THEN REPLY #30098 /* ~"Nieważne. Ile kosztuje łóżko?"~ */ GOTO 4
  IF ~~ THEN REPLY #30099 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #30055 /* ~"Sondzisz, żem nie próbował? Próbowałem! I spójrz, co te próby mnie przyniosły..." Pochyla twarz do przodu i pokazuje krwawiące wgłębienia w swoim nosie. "Ten zbzikowany skurl prawie odgryzł mnie nos!"~ */
  IF ~~ THEN REPLY #30100 /* ~"Mogę się go dla ciebie pozbyć."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Arlo_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #30101 /* ~"Mogę się go dla ciebie pozbyć... za opłatą."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Arlo_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #30102 /* ~"Nieważne. Ile kosztuje łóżko?"~ */ GOTO 4
  IF ~~ THEN REPLY #30103 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #30056 /* ~"Powiem ci coś, śmiałku. Jeśli pozbendziesz siem go dla mnie, możesz nocować tu za darmo tak czensto, jak ci siem podoba. Zgoda?"~ */
  IF ~~ THEN REPLY #30105 /* ~"Może być. Zrobię to."~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",1)
~ JOURNAL #29872 /* ~Zgodziłem się pomóc Arlo, właścicielowi noclegowni, w pozbyciu się starego wariata o imieniu Nestor. Zdaje się, że odkąd ten gość na stałe ulokował się w Zajeździe, nikt nie może go zmusić do wyjścia.~ */ GOTO 8
  IF ~~ THEN REPLY #30107 /* ~"Nieważne. Ile kosztuje łóżko?"~ */ GOTO 4
  IF ~~ THEN REPLY #30108 /* ~"Nieważne. Mam ważniejsze sprawy do załatwienia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30073 /* ~"Wienc nie gap siem, tylko zabieraj do roboty!" Od razu wraca do swoich wągrów. "Nie widzisz, żem zajenty człowiek?"~ */
  IF ~~ THEN REPLY #30109 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #30074 /* ~Arlo jest całkowicie pochłonięty swoją ulubioną formą spędzania wolnego czasu - wyciskaniem wągrów na nosie. Gdy się zbliżasz, przygląda ci się kątem oka. "Czego znowu?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30110 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30111 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30112 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30113 /* ~"Czy mogę tu odpocząć?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30114 /* ~"Chciałbym chwilę odpocząć."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30115 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #30116 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Arlo_Quest","GLOBAL",1)
Dead("Nestor")
~ THEN BEGIN 10 // from:
  SAY #30075 /* ~"Na wszystkie Moce i ich matki, trepie! Gdy powiedziałem, żebyś siem pozbył tego starego skurla, nie miałem na myśli, byś go umieszczał w ksiendze umarłych!" Arlo wpatruje się w ciebie z niedowierzaniem. "Ale, cóż... umowa to umowa. Sondze, że możesz tu zostać za darmo - ale nie mogiem powiedzieć, żeś jest tu mile widziany."~ */
  IF ~~ THEN REPLY #30117 /* ~Odejdź.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Arlo_2","GLOBALGood",-1)
AddexperienceParty(250)
~ JOURNAL #29870 /* ~Zrobiłem to o co prosił Arlo i pozbyłem się Nestora. Właściciel noclegowni był chyba zaszokowany metodą jaką usunąłem tego starego pomyleńca. Tak czy inaczej, zgodził się, żebym za darmo odpoczywał w jego Zajeździe.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #30076 /* ~"A wienc Nestor udał siem do domu, hę? Może ten stary skurl nie był znowu taki zbzikowany." Klepie cię mocno po plecach. "Teraz wszyscy możemy trochie tu odpoczonć. Jak tylko bendziesz chciał tu se poleżeć, śmiałku, to siem nie krempuj."~ */
  IF ~~ THEN REPLY #30118 /* ~Odejdź.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #29869 /* ~Zwróciłem widelec Nestorowi i pomogłem mu wrócić do domu. Dzięki temu wypełniłem swoją część umowy z Arlo. Oznajmił mi, że odtąd mogę za darmo odpoczywać w jego Zajeździe.~ */ EXIT
END
