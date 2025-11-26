// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBERROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBERROG~

IF ~  Global("Current_Area","GLOBAL",704)
Global("Know_Berrog","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3184 /* ~Widzisz myszowatego mężczyznę o rozbieganych, przestraszonych oczach. "Proszę, nie krzywdź mnie!" Mówi teatralnym szeptem. "Jeśli mnie znajdą, to mnie zabiją!"~ */
  IF ~~ THEN REPLY #3185 /* ~"Kto cię zabije?"~ */ GOTO 5
  IF ~~ THEN REPLY #56942 /* ~"Kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #56943 /* ~"Co tu robisz?"~ */ GOTO 7
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",0)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #56944 /* ~Widzisz myszowatego mężczyznę o niewinnej twarzy i łzach spływających mu po policzkach. Jest uwięziony pod wozem, który powoli zdaje się wysysać z niego życie. Podnosi na ciebie wzrok w bolesnej prośbie. "Proszę, towarzyszu... musisz to ze mnie zdjąć. Nie mogę tu umrzeć..."~ */
  IF ~~ THEN REPLY #56945 /* ~"W porządku. Podniosę go."~ */ GOTO 10
  IF ~~ THEN REPLY #56946 /* ~"Zapomnij."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",1)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #56947 /* ~Widzisz Berroga Szybkobutego, niedoszłego ratownika devy, uwięzionego pod wozem, który stracił oś. "Proszę, towarzyszu... musisz to ze mnie zdjąć."~ */
  IF ~~ THEN REPLY #56948 /* ~"W porządku. Podniosę go."~ */ GOTO 10
  IF ~~ THEN REPLY #56949 /* ~"Zapomnij."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY #56951 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #56952 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 6.1 7.2 8.2
  SAY #56954 /* ~"Strażnicy. Ścigają mnie. Wydaje mi się, że obraziłem kogoś pytaniem albo powiedziałem coś do złej osoby. Tylko wyrażałem swoje zdanie, ale wydaje mi się, że musisz tu mówić w dość specyficzny sposób. Wszystko tu jest zepsute!"~ */
  IF ~~ THEN REPLY #56956 /* ~"A tak w ogóle, to kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #56957 /* ~"Co tu robisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #56958 /* ~"Skąd pochodzisz?"~ */ GOTO 8
  IF ~~ THEN REPLY #56960 /* ~"Więc idź."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.1 5.0 7.1 8.0
  SAY #56962 /* ~"Jestem Berrog Szybkobuty, podróżnik i rozwiazywacz problemów. Sądzę, że mógłbyś nazwać mnie złodziejem, ale ja wolę słowo inżynier - pułapki, zagadki i tak dalej. Używam swoich umiejętności do dobrych celów - nienawidzę krzywdzić innych. Sądzę, że tutaj używają inżynierów do innych celów." Wzdryga się.~ */
  IF ~~ THEN REPLY #56965 /* ~"Co tu robisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #56966 /* ~"Kto cię chce zabić?"~ */ GOTO 5
  IF ~~ THEN REPLY #56968 /* ~"Więc idź."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 0.2 5.1 6.0 8.1
  SAY #56969 /* ~"Przybyłem do Klątwy, ponieważ słyszałem, że znajduje się tu uwięziony deva, a ponieważ mam kilku przyjaciół archonów na Niebiańskim Szczycie, pomyślałem, że mogę pomóc. Jednakże to miasto... to jest ściek, a ja nie mogę nikomu ufać! Jak ludzie mogą z tym żyć? Muszę się stąd wydostać!"~ */
  IF ~~ THEN REPLY #56970 /* ~"Opowiedz mi o Niebiańskim Szczycie."~ */ GOTO 8
  IF ~~ THEN REPLY #56971 /* ~"A tak w ogóle, to kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #56972 /* ~"Kto cię chce zabić?"~ */ GOTO 5
  IF ~~ THEN REPLY #56973 /* ~"Więc idź."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 7.0
  SAY #56974 /* ~Jego oczy odpływają gdzieś w dal. "Wszystko ma tam swoje miejsce i wszystko jest piękne. Grupy skrzydlatych aniołów przecinają niebiosa skomplikowanymi wzorami, które potrafią złamać ci serce. Owoce rosną większe, jest więcej zwierzyny, a wszystkie domy są otwarte. Jednak staramy się cały czas poprawiać, testując nasze cnoty i dążąc jeszcze bliżej dobra... powinienem wrócić do domu tak szybko, jak tylko będę mógł..."~ */
  IF ~~ THEN REPLY #56975 /* ~"A tak w ogóle, to kim jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #56976 /* ~"Co tu robisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #56977 /* ~"Kto próbuje cię zabić?"~ */ GOTO 5
  IF ~~ THEN REPLY #56978 /* ~"Więc idź."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.3 6.2 7.3 8.3
  SAY #56979 /* ~Spogląda na ciebie z niedowierzaniem w oczach. "Dzięki! Już mnie więcej nie ujrzysz!" Odbiega.~ */
  IF ~~ THEN REPLY #56980 /* ~"Żegnaj."~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0 2.0
  SAY #56981 /* ~"Czekaj!... czy... czy ten drugi wciąż tkwi w pułapce po drugiej stronie?"~ */
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #56982 /* ~"On wciąż tam jest."~ */ GOTO 12
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #56983 /* ~"On już umarł."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 13.1
  SAY #56992 /* ~"Proszę... proszę..." Odwraca twarz w błoto i cicho szlocha.~ */
  IF ~~ THEN REPLY #56993 /* ~Odejdź.~ */ EXIT
  IF ~~ THEN REPLY #56994 /* ~Zabij go.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_2","GLOBALGood",-3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #56995 /* ~"Musisz... musisz odnaleźć sposób aby go też uratować. Lepiej jego, niż mnie. Sądzę, że był burmistrzem tego miasta... czy jak go tutaj zwą."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 28
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #56996 /* ~"Zatem podnoś, towarzyszu..."~ */
  IF ~~ THEN REPLY #56997 /* ~Podnieś wóz.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #56998 /* ~"Zapomnij. Może wrócę później."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.1
  SAY #56999 /* ~Odczołguje się, gdy podnosisz wóz. "Dzięki, towarzyszu. Mam... dość tego grodu. Wracam na Niebiański Szczyt. Mam nadzieję, że twoje dobre czyny sprowadzą cię w końcu do... dobrego miejsca, gdziekolwiek się udajesz." Wpatruje się na devę stojącego na tarasie. "Nie mogę uwierzyć, że przybyłem tutaj, aby ujrzeć... to."~ */
  IF ~~ THEN REPLY #57000 /* ~"Powodzenia i tak dalej... żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #57001 /* ~"Aaach! Jestem po drugiej stronie! Zabijasz mnie!"~ */
  IF ~~ THEN REPLY #57002 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #57003 /* ~"Co tu robisz?"~ */ GOTO 17
  IF ~~ THEN REPLY #57004 /* ~Podnoś wóz: "To kiepsko."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57005 /* ~"Nazywam... się Berrog Szybkobuty... przybyłem do Klątwy, by uwolnić devę... istotę dobra... ale udzielono mi złych informacji. Nie powinienem był tu przyjeżdżać..."~ */
  IF ~~ THEN REPLY #57006 /* ~"Co robisz tam w dole?"~ */ GOTO 17
  IF ~~ THEN REPLY #57007 /* ~Podnieś wóz znad Włodarza: "Prawdopodobnie nie."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57008 /* ~Podnieś wóz znad Berroga.~ */ EXTERN ~DBURGHER~ 23
  IF ~~ THEN REPLY #57009 /* ~"Może wrócę później... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57010 /* ~"U... uciekałem z miasta... gdy zaczęło się zsuwać. Byłem... przy nim... a on mnie schwycił. Wóz spadł z nieba, a on starał się mnie pod niego wepchnąć, podczas ucieczki. Ale wciąż proszę cię... abyś znalazł sposób, aby go również uwolnić."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #57012 /* ~"Nic nie zyskujesz, uwalniając mnie... przyznaję to. Ale z pewnością... fala dobra się poruszy... jeśli ocalisz mnie nie myśląc o nagrodzie... lepiej jednak ocalić nas obu."~ */
  IF ~~ THEN REPLY #57013 /* ~Podnieś wóz znad Włodarza. "Tak, ale on jest użyteczny."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57014 /* ~Podnieś wóz znad Berroga. "On nie jest tego wart."~ */ DO ~Kill("Burgher")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57015 /* ~"A jeśli uda mi się podnieść wóz, żebyście obaj z tego wyszli? Moi towarzysze i ja możemy tego dokonać, jeśli się przyłożymy."~ */ EXTERN ~DBURGHER~ 26
  IF ~~ THEN REPLY #57016 /* ~"Spróbuję znaleźć sposób. Żegnaj."~ */ EXIT
END
