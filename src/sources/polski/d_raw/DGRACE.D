// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACE~

IF ~~ THEN BEGIN 0 // from:
  SAY #2850 /* ~.~ */
  IF ~~ THEN REPLY #2851 /* ~.~ */ EXIT
  IF ~~ THEN REPLY #24998 /* ~.~ */ DO ~ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0 4.0 5.2
  SAY #6858 /* ~Nie-Sława kiwa głową. "Tak, oczywiście."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7013 /* ~"Zapytaj go kim jest."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7014 /* ~"Zapytaj go kim jest?"~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7015 /* ~"Zapytaj go kim jest?"~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7016 /* ~"Zapytaj go co robi."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7017 /* ~"Zapytaj go co robi."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7018 /* ~"Zapytaj go co robi."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7019 /* ~"Poproś go, by opowiedział nam o Pani Bólu."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7020 /* ~"Poproś go, by opowiedział nam o Upadłym."~ */ GOTO 5
  IF ~~ THEN REPLY #7021 /* ~"Nieważne. Po prostu chodźmy stąd."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6859 /* ~"Powiedział, że jest 'dabusem'." Nie-Sława przerywa na chwilę. "Nigdy nie spotkałam żadnego dabusa, który podałby imię... a przynajmniej coś, co uznalibyśmy za imię. Wygląda na to, że mają słabość do używania symboli."~ */
  IF ~~ THEN REPLY #7022 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 1
  IF ~~ THEN REPLY #7023 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6860 /* ~"Powiedział, że to się wiąże z jego pracą." Odwraca się do ciebie. "Oni spędzają większość czasu naprawiając i rozbierając części miasta. Na wiele sposobów dbają o miasto."~ */
  IF ~~ THEN REPLY #7024 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 1
  IF ~~ THEN REPLY #7025 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6861 /* ~"Domyślam się, że na uzyskanie konkretnej odpowiedzi nie ma co liczyć."~ */
  IF ~~ THEN REPLY #7026 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 1
  IF ~~ THEN REPLY #7027 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 5 // from: 1.7
  SAY #6862 /* ~Nie-Sława marszczy brwi. "Nie jestem pewna, czy zadanie tego pytania byłoby mądrym posunięciem. Dabus może poczuć się urażony, bo Upadły nie jest już członkiem ich społeczności..."~ */
  IF ~~ THEN REPLY #7028 /* ~"Mimo to, możesz go zapytać?"~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7029 /* ~"Dość tej lektury, zapytaj go po prostu."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7030 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 1
  IF ~~ THEN REPLY #7031 /* ~"Nieważne. Chodźmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY #7186 /* ~Nie-Sława kiwa głową, jakby zgodziła się dać wam chwilę na osobności. "Niedługo wrócę." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #7482 /* ~Idź za ladacznicą...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DHARLOTN~ 32
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6474 /* ~"Ona nie może o tym mówić w obecności biesów. Sądzę, że skoro jest związana taką umową, oznacza to, że jest to projekt Porządku. A skoro jest związana magicznie, to prawdopodobnie chodzi o baatezu."~ */
  IF ~~ THEN REPLY #8000 /* ~"To całkiem interesująca seria domysłów. Kel'lero, czy ona ma rację?"~ */ EXTERN ~DKELLERA~ 14
  IF ~~ THEN REPLY #8001 /* ~"Interesujące. Będę o tym pamiętać. Kel'lero, odpowiedz w międzyczasie na kilka pytań."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6476 /* ~"Ona nie może o tym mówić w obecności biesów. Sądzę, że skoro jest związana taką umową, oznacza to, że jest to projekt Porządku. A skoro jest związana magicznie, to prawdopodobnie chodzi o baatezu."~ */
  IF ~~ THEN REPLY #8002 /* ~"To całkiem interesująca seria domysłów. Kel'lero, czy ona ma rację?"~ */ EXTERN ~DKELLERA~ 31
  IF ~~ THEN REPLY #8003 /* ~"Interesujące. Będę o tym pamiętać. Kel'lera, odpowiedz w międzyczasie na kilka pytań."~ */ EXTERN ~DKELLERA~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY #6477 /* ~"Rozumiem."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 36
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7997 /* ~"Rozumiem."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 37
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11273 /* ~Nie-Sława mówi enigmatycznie. "Ilquiksie, zgadzam się, że moja matka chciałaby usłyszeć, że jestem w dobrym zdrowiu, że moje działania idą w kierunku jaki obrałam i że sama wybrałam towarzyszy podróży. Może będziesz tak miły, by przekazać jej tę wiadomość, gdy wrócisz do Otchłani? Jestem pewna, że moja matka nagrodziłaby kogoś, kto przyniósłby jej ode mnie tak wspaniałe nowiny." Uśmiecha się łagodnie.~ */
  IF ~~ THEN REPLY #11274 /* ~"To wszystko jest bardzo fascynujące, ale mam jeszcze kilka pytań..."~ */ EXTERN ~DILQUIXT~ 5
  IF ~~ THEN REPLY #11275 /* ~"Wystarczy. Żegnaj, Ilquiksie."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11404 /* ~Nie-Sława odpowiada nieznacznym dygnięciem. "Ilquiksie, jestem pewna, że twoje słowa stopiłyby serce każdego. Jednak musimy zawsze pamiętać, że wielu ludzi reprezentuje coś więcej lub mniej niż na to wygląda. Byłoby szkoda, gdybyśmy wszyscy odsłonili się tak szybko - popsułoby to nastrój."~ */
  IF ~~ THEN REPLY #11405 /* ~"Nie-Sławo, co dokładnie masz na myśli?"~ */ GOTO 13
  IF ~~ THEN REPLY #11406 /* ~"Wystarczy. Ilquiksie, potrzebuję odpowiedzi na kilka pytań."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11410 /* ~"Koniec tej rozmowy. Żegnaj, Ilquiksie."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11407 /* ~"Mam na myśli tylko to, że często żałujemy słów wypowiedzianych w pośpiechu. A wielu ludzi ma cechy, a nawet cnoty, o których mało kto ma pojęcie. Zbyt wielu pochopnie wyciąga wnioski. Dlatego uważamy na słowa, by nie zdradziły o nas więcej niż zamierzamy."~ */
  IF ~~ THEN REPLY #11408 /* ~"Rozumiem. Ilquiksie, mam jeszcze kilka pytań..."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11409 /* ~"Dobrze powiedziane, Nie-Sławo. Żegnaj, Ilquiksie."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #16627 /* ~Sława kiwa głową. "Oczywiście. Uważam, że to znakomity pomysł."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16927 /* ~"Dzięki. Morte? Co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16928 /* ~"Dzięki. Anno? Mogłabyś?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16929 /* ~"Dzięki. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16930 /* ~"Dzięki. Dak'konie, mógłbyś pomóc temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16931 /* ~"Dzięki. Dak'kon: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16932 /* ~"Dzięki. Nordomie, uważasz, że mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16933 /* ~"Dzięki. Vhailorze, mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16934 /* ~"Dzięki. Opłakujący, mam kilka pytań..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16935 /* ~"Dzięki, Sławo. Żegnaj, Opłakujący Drzewa."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 17.1 18.3 19.3 20.0 21.12 22.12 23.13 24.13 25.13 26.12 27.9 28.9 29.0 30.3 31.3 32.0 32.2 33.1 34.3 35.1 36.3 37.0 38.3 39.3 40.3 41.3 42.3 43.12 44.5 45.0 46.0 46.2
  SAY #22578 /* ~Nie-Sława kiwa głową. "Tak, oczywiście."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25256 /* ~"Zapytaj go kim jest?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25257 /* ~"Zapytaj go kim jest?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25258 /* ~"Zapytaj go kim jest?"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25259 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25260 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25261 /* ~"Zapytaj go, co to za miejsce."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25262 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25263 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25264 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25265 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25266 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25267 /* ~"Mam wrażenie, że już cię znam, Upadły."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64406 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64407 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64408 /* ~"Co znajduje się za tą zasłoną, Upadły?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64409 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64410 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64411 /* ~"Upadły, co to za ramy w tamtym pomieszczeniu?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25268 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25269 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25270 /* ~"Wspomniał, że spotkał mnie wcześniej... czy wie, jak umarłem?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25271 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25272 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25273 /* ~"Zapytaj go, czy słyszał o Raveli."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25274 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25275 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25276 /* ~"Zapytaj go, czy to on wykonał tatuaże na tym odciętym ramieniu, które znalazłem."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25277 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25278 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25279 /* ~"Czy może mi coś powiedzieć o tatuażach na moim ciele?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25280 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25281 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25282 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25283 /* ~"Nieważne. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #22580 /* ~"Jego imię to Upadły." Sława ledwo spogląda na symbole zanim odwróci się do ciebie. "Ten symbol... ten biały owal przepołowiony czarną błyskawicą... znajduje się też na tym budynku. Wydaje mi się, że ten biały okrąg symbolizuje Sigil, a ta czarna błyskawica..." Nie-Sława przerywa. "Nie jestem całkiem pewna."~ */
  IF ~~ THEN REPLY #25284 /* ~"Hmm. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25285 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #22583 /* ~Nie-Sława czeka cierpliwie na symbole do odczytania. "To jego salon. Tutaj tatuuje innych." Nie-Sława odwraca się do ciebie i uśmiecha się; wygląda jakby modliła się o to by Upadły tu był. "Upadły jest w całym Sigil znany jako utalentowany artysta. Jego płótnem jest skóra innych."~ */
  IF ~~ THEN REPLY #25286 /* ~"Czy mogę zobaczyć, jakie tatuaże oferuje?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25287 /* ~"Hmm. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25288 /* ~"Cóż, będę o tym pamiętał. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22585 /* ~Nie-Sława w skupieniu studiuje symbole, potem odwraca się do ciebie, patrzy na ciebie dziwnie. "Upadły powiedział, że to pierwszy raz kiedy do niego przyszedłeś, ale to nie pierwszy raz." Grace ocenia cię wzrokiem. "Może pamięta cię z czasu, kiedy jeszcze nie byłeś sobą..." Nagle zdaje sobie sprawę co powiedziała, śmieje się lekko. "Przepraszam... nigdy nie myślałam, że rozmawiając z kimś będę musiała używać tylu różnych *ty*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25289 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25290 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25291 /* ~"Czy on wie, kim jestem?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25292 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25293 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22587 /* ~Nie-Sława marszczy brew, pogrążona w myślach kładzie dłoń na brodzie. "Upadły powiedział, że cię zna... a potem stwierdził, co jest dziwne, że nie *wolno* mu opowiadać twojej historii."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25294 /* ~"Nie 'wolno'? Czemu nie?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25295 /* ~"Nie 'wolno'? Czemu nie?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25296 /* ~"Nie 'wolno'? Czemu nie?"~ */ JOURNAL #24270 /* ~Upadły stwierdził, że mnie zna, ale nie może mi opowiedzieć mojej 'historii'. Ale najdziwniejszy był powód. Powiedział, że nie może gdyż 'nie może zmienić natury człowieka'.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25297 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25298 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #22591 /* ~"Przeprasza, ale nie może powiedzieć." Nie-Sława odwraca się do ciebie i napotyka twoje spojrzenie. "To co powiedział potem jest dziwne, stwierdził, że *nie może zmienić natury człowieka*." Gdy Sława powtarza te słowa, czujesz pod czaszka straszny ucisk... narasta jakby waliły młoty, aż wydaje ci się, że czaszka ci pęknie... i rozchodzi się echem, gdy tylko wypowiada ostatnie słowo.~ */
  IF ~~ THEN REPLY #25299 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25300 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #23011 /* ~"Upadły powiedział, że ona nie jest żadnym mitem."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25301 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25302 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25303 /* ~"Czy on wie, gdzie ona jest?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25304 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25305 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25306 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25307 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25308 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25309 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25310 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25311 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25312 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25313 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25314 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #23012 /* ~Głos Nie-Sławy poważnieje po przeczytaniu tych symboli. "Upadły mówi, że Ravela żyje w jednym z labiryntów Pani."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25315 /* ~"Labiryntów?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25316 /* ~"Labiryntów?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25317 /* ~"Labiryntów?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25318 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25319 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25320 /* ~"Czy może nam coś o niej powiedzieć?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25321 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25322 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25323 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25324 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25325 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25326 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25327 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25328 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #23013 /* ~Głos Nie-Sławy poważnieje po przeczytaniu tych symboli. "Upadły mówi, że wola Raveli nie zgadzała się z wolą Pani i dlatego została ukarana. Ravela została umieszczona w jednym z labiryntów Pani." Nie-Sława odwraca się do ciebie. "Czy słyszałeś o labiryntach?"~ */
  IF ~~ THEN REPLY #25329 /* ~"Nie. Jeśli mogłabyś wyjaśnić..."~ */ GOTO 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25330 /* ~"Tak. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25331 /* ~"Tak. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25332 /* ~"Tak. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25333 /* ~"Owszem. Wie jak się dostać do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25334 /* ~"Owszem. Wie jak się dostać do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25335 /* ~"Owszem. Wie jak się dostać do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25336 /* ~"Tak. Chciałem mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25337 /* ~"Tak. Chciałem mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25338 /* ~"Tak. Chciałem mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25339 /* ~"Tak. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25340 /* ~"Tak. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25341 /* ~"Tak. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25342 /* ~"Tak. Chciałem mu zadać jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25343 /* ~"Tak. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23014 /* ~Nie-Sława łączy dłonie, palce stykają się tworząc nierówny okrąg. "Mówi się, że Pani posiada Moc, która pozwala jej wziąć kawałek Sigil..." Zaskoczony patrzysz jak eteryczny wizerunek małego palca Nie-Sławy odrywa się od dłoni i unosi się w powietrze, układając się w małe koło. "...i stworzyć labirynt."~ */
  IF ~~ THEN REPLY #25344 /* ~"Mów dalej..."~ */ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25345 /* ~"Wydaje mi się, że rozumiem. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25346 /* ~"Wydaje mi się, że rozumiem. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25347 /* ~"Wydaje mi się, że rozumiem. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25348 /* ~"Dość już usłyszałem. On wie jak się dostać do labiryntu Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25349 /* ~"Dość już usłyszałem. On wie jak się dostać do labiryntu Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25350 /* ~"Dość już usłyszałem. On wie jak się dostać do labiryntu Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25351 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25352 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25353 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25354 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25355 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25356 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25357 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25358 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23015 /* ~Małe eteryczne koło unosi się w powietrzu i zaczyna się powoli kręcić. "W zabranym przez nią kawałku Sigil przetrzymywany jest więzień; nie można uniknąć wtrącenia do labiryntu. Może się to zdarzyć w każdej chwili, podczas spaceru na ulicy, przy przechodzeniu przez drzwi..." Klaszcze. "...i nagle jesteś gdzie indziej." Wewnątrz eterycznego okręgu nagle zauważasz cień, jakby ktoś tam szedł."~ */
  IF ~~ THEN REPLY #25359 /* ~"Mów dalej..."~ */ GOTO 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25360 /* ~"Wydaje mi się, że rozumiem. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25361 /* ~"Wydaje mi się, że rozumiem. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25362 /* ~"Wydaje mi się, że rozumiem. Dlaczego Ravela została umieszczona w labiryncie?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25363 /* ~"Dość już usłyszałem. On wie jak się dostać do labiryntu Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25364 /* ~"Dość już usłyszałem. On wie jak się dostać do labiryntu Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25365 /* ~"Dość już usłyszałem. On wie jak się dostać do labiryntu Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25366 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25367 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25368 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25369 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25370 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25371 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25372 /* ~"Rozumiem. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25373 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23016 /* ~Nie-Sława mówi dalej; mały, widmowy labirynt odbija się w jej oczach. "Mówi się, że w każdym labiryncie jest portal, przez który można wyjść, ale trudno go znaleźć. Może są tam umieszczane, by dać więźniom nadzieję. Może są tam umieszczane, by ich torturować." Widmowy labirynt się rozwiewa. "A może jedno i drugie."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25374 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25375 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25376 /* ~"Dlaczego Ravela została uwięziona w labiryncie?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25377 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25378 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25379 /* ~"Czy on wie, jak dotrzeć do labiryntu Raveli?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25380 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25381 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25382 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25383 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25384 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25385 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25386 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25387 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #23017 /* ~Nie-Sława uważnie studiuje symbole. "Upadły mówi, że Ravela próbowała 'otworzyć Klatkę'." Odwraca się do ciebie. "'Klatka' to inna nazwa Sigil." W zamyśleniu marszczy brwi. "Nie mam pojęcia dlaczego miałaby robić coś takiego... może to oznaczać, że Ravela chciała zrobić wyłom w murach Sigil."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25388 /* ~"Czy wie jak można się do niej dostać?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25389 /* ~"Czy wie jak można się do niej dostać?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25390 /* ~"Czy wie jak można się do niej dostać?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25391 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25392 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25393 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25394 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25395 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25396 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25397 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25398 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #23018 /* ~"Upadły nie wie jak można ją znaleźć. Ale ostrzega, byśmy jej nie szukali, bo..." Sława studiuje ostatnią część symboli. "Upadły mówi, że Ravela jest 'pod opieką Pani'."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25399 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25400 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25401 /* ~"Co jeszcze wie o Raveli?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25402 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25403 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25404 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25405 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25406 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25407 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25408 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25409 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #23019 /* ~Nie-Sława studiuje symbole, zastanawiając się marszczy lekko brwi. "Upadły ostrzega nas, byśmy jej nie szukali. Mówi, że ma czarne serce i jeśli żyje będzie chciała cię skrzywdzić... nas też."~ */
  IF ~~ THEN REPLY #25410 /* ~"Będę o tym pamiętać. Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25411 /* ~"Sądzę, że naszym drogom przeznaczone jest się krzyżować. Żegnaj."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23020 /* ~Nie-Sława odczytuje symbole, gdy tylko się materializują. "Upadły mówi, że ramię faktycznie jest twoje, a tatuaże jego dziełem." Przerywa, by odczytać ostatnią część symboli. "Powiedział, że jeden z tatuaży opowiada o czasach kiedy byłeś na szlaku z czwórką innych."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25412 /* ~"Czwórką innych?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25413 /* ~"Czwórką innych?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25414 /* ~"Czwórką innych?"~ */ JOURNAL #24274 /* ~Upadły przetłumaczył runy z mojej starej ręki... powiedział, że opisują one czwórkę, która kiedyś podążała ze mną jedną ścieżką. Ta czwórka to: 'jedna niekochana, która kocha niekochającego', 'jeden, który nie widzi tego co inni, ale widzi czego inni nie widzą', 'jeden, który jest chowańcem i związany służbą' oraz 'jeden, który jest niewolnikiem, a jego łańcuchami jest słowo'. Powiedział, że wszyscy byli równie udręczeni co ja, a poprzez swoje cierpienie także innych skazywałem na ból.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25415 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25416 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #23021 /* ~Nie-Sława odczytuje wirujące symbole, a jej twarz staje się śmiertelnie poważna. "W tatuażu zawarte są myśli tej czwórki... jedna, która kochała nieodwzajemnioną miłością, jeden, który jest ślepy, ale wciąż widzi, jeden... chowaniec, jak sądzę, i ostatni... niewolnik, którego pętami jest jego słowo..." Nie-Sława cichnie, gdy cztery symbole tworzą ogniwa, a potem łańcuch...~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25417 /* ~"Co to za symbol..."~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25418 /* ~"Co to za symbol..."~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25419 /* ~"Co to za symbol..."~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25420 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~  False()
~ THEN REPLY #25421 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #23022 /* ~Nie-Sława mówi łagodnie: "Udręka." Studiuje go, potem się odwraca jakby było to bolesne. "Upadły powiedział..." Nabiera powietrza. "...że, ciało wie kiedy cierpi, nawet jeśli umysł zapomniał." Unosi wzrok i napotyka twoje spojrzenie, jej oczy mają dziwny, lazurowy odcień, odcień, który mówi o smutku i łzach. "Upadły powiedział, że ten symbol działa jak magnes przyciągający do ciebie inne udręczone dusze."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25422 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25423 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52609 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52610 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #23023 /* ~"Na ręce są stare tatuaże, o których Upadły zapomniał. Powiedział, że jeśli chcesz, może je z powrotem na tobie umieścić."~ */
  IF ~~ THEN REPLY #25424 /* ~"W porządku... Chciałbym zobaczyć wszystkie tatuaże, jakie oferuje."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25425 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25426 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #23024 /* ~"Upadły powiedział, że nie zrobił tych tatuaży." Nie-Sława myśli przez chwilę. "Jeśli chcesz może ci o niektórych opowiedzieć."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25427 /* ~"Dobrze. Co może mi o nich powiedzieć?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25428 /* ~"Dobrze. Co może mi o nich powiedzieć?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25429 /* ~"Dobrze. Co może mi o nich powiedzieć?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25430 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25431 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #23025 /* ~"Upadły powiedział, że te na twoich plecach to starannie wytatuowane wskazówki dla umysłu, który się zapomniał. Symbol na twoim ramieniu oznacza..." Nagle znikają wszystkie symbole wokół Upadłego, wszystkie poza jednym.~ */
  IF ~~ THEN REPLY #25432 /* ~"Co to za symbol..."~ */ GOTO 46
  IF ~~ THEN REPLY #25433 /* ~"Nieważne. Chciałbym mu zadać jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25434 /* ~"To bez znaczenia. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #23026 /* ~Nie-Sława marszczy brwi. "Upadły powiedział 'cienie'."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25435 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25436 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25437 /* ~"Cienie?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25438 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25439 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23027 /* ~Nie-Sława marszczy brwi. "Upadły powiedział, że przyszło po ciebie wiele cieni, zaatakowały cię i pilnowały twoich zwłok." Jeszcze raz patrzy na symbole. "Nie wie dlaczego cię napadły."~ */
  IF ~~ THEN REPLY #25440 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25441 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23028 /* ~Nie-Sława zdaje się być zahipnotyzowana otaczającymi was, rozciągniętymi na ramach skórami, ale udaje jej się odwrócić, by przetłumaczyć symbole. "To jego galeria." Jej głos jest pełen czci i szacunku. "Powiedział, że ty jesteś jego płótnem, które podziwia, ale zarazem jest mu smutno z twojego powodu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25442 /* ~"Smutno z mojego powodu?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25443 /* ~"Smutno z mojego powodu?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25444 /* ~"Smutno z mojego powodu?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25445 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25446 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #23029 /* ~"Powiedział, że na twoim ciele jest znak udręki." Nie-Sława zniża głos. "Że na tobie wzniesione zostały tragedie i straty, jak kamienie na fundamentach. Powiedział, że doświadczyłeś wiele bólu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25447 /* ~"Co ma na myśli?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25448 /* ~"Co ma na myśli?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25449 /* ~"Co ma na myśli?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25450 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25451 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #23030 /* ~Nie-Sława tłumacząc dalej lekko kiwa głową, prawie nie zdając sobie z tego sprawy. "Upadły powiedział, że podziwia cię za to, iż się nie poddałeś, pomimo tego, że łańcuchy strat wciąż na tobie wiszą." Nie-Sława odwraca się do ciebie. "Podziwia twoją siłę."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25452 /* ~"Poproś by mówił dalej."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25453 /* ~"Poproś by mówił dalej."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25454 /* ~"Poproś by mówił dalej."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25455 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25456 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #23031 /* ~"Upadły powiedział, że straty które poniosłeś obejmują to życie i wszystkie poprzednie." Głos Nie-Sławy cichnie, a jej oczy świecą się jakby była zafascynowana. "Powiedział, że odrzucałeś życia jak liniejący waż skórę i że doświadczasz wszystkich żyć, jakie mogły spotkać mężczyznę."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25457 /* ~"Powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25458 /* ~"Powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25459 /* ~"Powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25460 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25461 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23032 /* ~"Upadły chce cię ostrzec..." Nie-Sława studiuje następne symbole. "Chce cię ostrzec, że każde z twych żyć 'rzuca cień na egzystencję'." Trawi to przez chwilę. "Powiedział, że pojedziesz w miejsce gdzie cienie oszalały, a żale pobruździły ziemię."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25462 /* ~"Rozumiem. Powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25463 /* ~"Rozumiem. Powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25464 /* ~"Rozumiem. Powiedział coś jeszcze?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25465 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25466 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #23033 /* ~"Upadły powiedział, że nie powinieneś 'niczego podpisywać'." Nie-Sława unosi brew. "Nie powiedział dlaczego."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25467 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25468 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25469 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25470 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25471 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25472 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25473 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25474 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25475 /* ~"Dobrze."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25476 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25477 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25478 /* ~"Dobrze. To znaczy... ee... spróbuję nie podpisywać już nic więcej."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25479 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25480 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #23034 /* ~"Upadły pyta czy czujesz się cały. Czy nie czujesz się w jakiś sposób... niekompletny."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25481 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25482 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25483 /* ~Prawda: "Nie... W gruncie rzeczy od czasu jak się ocknąłem w Kostnicy, czuję jakby czegoś... mi brakowało. Czegoś wewnątrz."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25484 /* ~"To nie twoja sprawa."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25485 /* ~Kłamstwo: "Tak, czuję się kompletny. Dlaczego pytasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25486 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25487 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #23035 /* ~"Upadły powiedział, że jesteś silnym człowiekiem skoro tyle wytrzymałeś." Nie-Sława odwraca się do ciebie. "Jego kolejne słowa są także moimi: Nie trać wiary, a wkrótce znowu będziesz kompletny."~ */
  IF ~~ THEN REPLY #25488 /* ~"Spróbuję. Chciałem mu zadać jeszcze jedno pytanie..."~ */ GOTO 15
  IF ~~ THEN REPLY #25489 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 35.0
  SAY #23036 /* ~Nie-Sława mówi łagodnie: "Udręka." Studiuje symbol, potem się odwraca jakby było to bolesne. "Upadły powiedział..." Nabiera powietrza. "...że, ciało wie kiedy cierpi, nawet jeśli umysł zapomni." Unosi wzrok i napotyka twoje spojrzenie, jej oczy mają dziwny, lazurowy odcień, odcień, który mówi o smutku i łzach. "Upadły powiedział, że ten symbol działa jak magnes przyciągający do ciebie inne udręczone dusze."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25490 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25491 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52611 /* ~"Mam do niego jeszcze jedno pytanie..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52612 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~  Global("Grace","GLOBAL",0)
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #28229 /* ~Przed tobą stoi uderzająco piękna, złotowłosa kobieta, ubrana w lazurowo - fioletową sukienkę. Na ramionach ma eleganckie, długie skrzydła. Z uśmiechem lustruje pokój... to po prostu najpiękniejsza kobieta jaką kiedykolwiek widziałeś.~ */
  IF ~~ THEN REPLY #28230 /* ~"Witaj..."~ */ GOTO 50
  IF ~~ THEN REPLY #28231 /* ~Zignoruj uskrzydloną kobietę, zbadaj budynek.~ */ EXIT
END

IF ~  Global("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #28233 /* ~Nie-Sława odwraca się gdy podchodzisz i lekko się uśmiecha. "W czym mogę ci pomóc?"~ [FFG002] */
  IF ~~ THEN REPLY #28234 /* ~"Mam jeszcze kilka innych pytań, które chciałbym ci zadać..."~ */ GOTO 49
  IF ~~ THEN REPLY #28235 /* ~"Wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 52.4 53.0 54.1 58.2 60.2 61.2 62.1 63.3 64.2 65.1 66.2 67.2 68.1 69.1 70.0 72.1 73.1 74.0 75.1 76.1 77.0 78.5 79.4 81.1 82.3 83.1 85.1 86.1 87.2 88.2 89.1 90.4 91.3 92.2 93.0 94.4 95.3 96.3 97.3 98.4 99.5 100.5 101.5 102.4 103.4 104.2 105.1 106.1 107.2 108.1 109.3 110.3 111.2 112.2 114.1 115.1 116.0 117.4 118.5 119.4 120.5 122.4 123.3 124.3 125.2
  SAY #28236 /* ~"Tak?"~ */
  IF ~~ THEN REPLY #28237 /* ~"Jeszcze raz: Kim jesteś?"~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,15,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28238 /* ~"Te skrzydła na twoich plecach... czym ty jesteś?"~ */ GOTO 73
  IF ~  CheckStatLT(Protagonist,15,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28239 /* ~"Te skrzydła na twoich plecach... czym ty jesteś?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatLT(Protagonist,15,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28240 /* ~"Te skrzydła na twoich plecach... czym ty jesteś?"~ */ EXTERN ~DMORTE~ 276
  IF ~  CheckStatGT(Protagonist,14,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28241 /* ~"Pani Sławo, jeśli mogę spytać, te skrzydła na twoich plecach... rozumiem, że nie jesteś człowiekiem?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28242 /* ~"Pani Sławo, jeśli mogę spytać, te skrzydła na twoich plecach... rozumiem, że nie jesteś człowiekiem?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28243 /* ~"Pani Sławo, jeśli mogę spytać, te skrzydła na twoich plecach... rozumiem, że nie jesteś człowiekiem?"~ */ EXTERN ~DMORTE~ 276
  IF ~~ THEN REPLY #28244 /* ~"Co to za miejsce?"~ */ GOTO 58
  IF ~~ THEN REPLY #28245 /* ~"Przyszedłem tu szukając pomocy. Może ty potrafisz mi pomóc."~ */ GOTO 85
  IF ~  GlobalGT("Grace_Quest","GLOBAL",0)
~ THEN REPLY #28246 /* ~"Możesz mi coś powiedzieć o tych dziewczynach?"~ */ GOTO 67
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #28247 /* ~"Możesz mi opowiedzieć o Czuciowcach?"~ */ GOTO 75
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #28248 /* ~"Słyszałaś kiedykolwiek o nocnej wiedźmie nazywanej Ravelą?"~ */ GOTO 104
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28249 /* ~"Możesz mi jeszcze raz powiedzieć, co wiesz Raveli?"~ */ GOTO 109
  IF ~  Global("Know_Blood_War","GLOBAL",1)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28250 /* ~"Co wiesz o Wojnie Krwi?"~ */ GOTO 94
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28251 /* ~"Rozmawiałem z dziewięcioma uczennicami, tak jak prosiłaś... ale nie mogłem znaleźć dziesiątej."~ */ GOTO 120
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28252 /* ~"Czy nie chciałabyś ze mną podróżować?"~ */ EXTERN ~DANNAH~ 165
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28253 /* ~"Czy nie chciałabyś ze mną podróżować?"~ */ EXTERN ~DMORTE~ 280
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28254 /* ~"Czy nie chciałabyś ze mną podróżować?"~ */ EXTERN ~DANNAH~ 164
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28255 /* ~"Czy nie chciałabyś ze mną podróżować?"~ */ GOTO 78
  IF ~~ THEN REPLY #61965 /* ~"Dzisiaj żadnych pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.0
  SAY #28256 /* ~Kobieta odwraca się w twoją stronę gdy się odzywasz. Ocenia cię wzrokiem, potem lekko kiwa głową... zauważasz, że jej oczy są lazurowe, dokładnie takiego koloru jak jej sukienka. "Witaj podróżniku." Wyciąga dłoń, by odrzucić lok złotych włosów. "W czym mogę ci pomóc?"~ [FFG004] */
  IF ~~ THEN REPLY #28257 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Grace","GLOBAL",1)
~ JOURNAL #27467 /* ~W Dzielnicy Urzędników spotkałem kobietę o imieniu Nie-Sława. To bez wątpienia jedna z najpiękniejszych istot jakie kiedykolwiek widziałem... nie jest jednak człowiekiem; z jej pleców wyrastają skrzydła.~ */ GOTO 51
  IF ~~ THEN REPLY #28258 /* ~"Dzisiaj nic, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #28259 /* ~"Nazywają mnie Nie-Sława." Przygląda ci się przez chwilę. "Jesteś nowy w Sigil, prawda?"~ */
  IF ~~ THEN REPLY #28260 /* ~"Tak. To widać?"~ */ GOTO 55
  IF ~~ THEN REPLY #28261 /* ~"Nie, właściwie podejrzewam, że byłem tu przez pewien czas."~ */ GOTO 113
  IF ~~ THEN REPLY #28262 /* ~"Nie-Sława... ciekawe imię."~ */ GOTO 56
  IF ~~ THEN REPLY #28263 /* ~"To nie jest sprawa, którą chciałbym teraz omawiać. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #28264 /* ~"Jestem Nie-Sława." Uśmiecha się lekko. "Czy to możliwe, że już mnie zapomniałeś?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28265 /* ~"Pani Sławo, zapewniam cię, nie musisz się bać, że cię zapomnę. Zapadasz w pamięć."~ */ EXTERN ~DANNAH~ 161
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #28266 /* ~"Pani Sławo, zapewniam cię, nie musisz się bać, że cię zapomnę. Zapadasz w pamięć."~ */ GOTO 54
  IF ~~ THEN REPLY #28267 /* ~"Nie, wcale."~ */ GOTO 54
  IF ~~ THEN REPLY #28268 /* ~"Nie-Sława... ciekawe imię."~ */ GOTO 114
  IF ~~ THEN REPLY #28269 /* ~"Nie. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28270 /* ~"Możliwe. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #28271 /* ~Po dokładniejszych oględzinach waszej dwójki Nie-Sława poważnieje, "Nie chciałam nikogo urazić. Wybaczcie moje żarty."~ */
  IF ~~ THEN REPLY #28272 /* ~"Nikt nie ucierpiał i żadne przeprosiny nie są konieczne, moja Pani. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28273 /* ~"Mimo to chyba lepiej będzie jak sobie pójdziemy. Żegnaj, Pani Sławo."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2
  SAY #28274 /* ~Śmieje się, potem na jej twarzy pojawia się uśmiech. "Dobrze, w takim razie wybaczam ci."~ */
  IF ~~ THEN REPLY #28275 /* ~"Nie-Sława... ciekawe imię."~ */ GOTO 56
  IF ~~ THEN REPLY #28276 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28277 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.0
  SAY #28278 /* ~Uśmiecha się lekko. "Nie aż tak jak mógłbyś sądzić. Zachowujesz się całkiem nieźle."~ */
  IF ~~ THEN REPLY #28279 /* ~"Co to za miejsce?"~ */ GOTO 57
  IF ~~ THEN REPLY #28280 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 51.2 54.0
  SAY #28281 /* ~Kiwa głową. "Cieszę się, że ci się podoba. Ale jestem pewna, że nie przebyłeś całej tej drogi tylko po to by mi schlebiać. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #28282 /* ~"Co to za miejsce?"~ */ GOTO 57
  IF ~~ THEN REPLY #28283 /* ~"Nie tym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 56.0 113.0
  SAY #28284 /* ~"To *Przybytek Zaspokajania Żądz Intelektualnych*" Przygląda ci się przez chwilę. "Z pytania wnioskuję, że nie chcesz z niego skorzystać?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28285 /* ~"'Przybytek Zaspokajania Żądz Intelektualnych'? Co to za przybytek?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28286 /* ~"'Przybytek Zaspokajania Żądz Intelektualnych'? Co to za przybytek?"~ */ GOTO 61
  IF ~~ THEN REPLY #28287 /* ~"Nie, nie sądzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.7
  SAY #28288 /* ~"To Przybytek Zaspokajania Żądz Intelektualnych."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28289 /* ~"'Przybytek Zaspokajania Żądz Intelektualnych'? Co to za przybytek?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28290 /* ~"'Przybytek Zaspokajania Żądz Intelektualnych'? Co to za przybytek?"~ */ GOTO 61
  IF ~~ THEN REPLY #28292 /* ~"Och. Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28293 /* ~"To tylko ciekawość. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0 58.0
  SAY #28294 /* ~"Założyłam ten przybytek, by dać lubieżnym napaleńcom coś więcej niż prostą cielesną przyjemność. Rozmowa i wykorzystanie sztuki mówienia może dostarczać sporo przyjemności."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 275
END

IF ~~ THEN BEGIN 60 // from:
  SAY #28295 /* ~"Zapewniam cię, że się mylisz. Zwiedź przybytek, sam zobacz."~ */
  IF ~~ THEN REPLY #28296 /* ~"Więc to przybytek... w którym nie ma zbliżeń?"~ */ GOTO 62
  IF ~~ THEN REPLY #28297 /* ~"Muszę zapytać: dlaczego założyłaś takie miejsce?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28298 /* ~"Może tak zrobię. Możesz przedtem odpowiedzieć na kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28299 /* ~"Dobrze. Zrobimy do. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.1 58.1
  SAY #28300 /* ~"Założyłam ten przybytek, by dać lubieżnym napaleńcom coś więcej niż prostą cielesną przyjemność. Rozmowa i wykorzystanie sztuki mówienia może dostarczać sporo przyjemności."~ */
  IF ~~ THEN REPLY #28301 /* ~"Więc to przybytek... w którym nie ma zbliżeń?"~ */ GOTO 62
  IF ~~ THEN REPLY #28302 /* ~"Muszę zapytać: dlaczego założyłaś takie miejsce?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28303 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28304 /* ~"Dzięki za wyjaśnienia... muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #28305 /* ~"Tylko natury psychologicznej. Bądź pewien, że to dość inspirujące."~ */
  IF ~~ THEN REPLY #28306 /* ~"Muszę zapytać: dlaczego założyłaś takie miejsce?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28307 /* ~"Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28308 /* ~"W takim razie może zwiedzę przybytek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.1 61.1 62.0
  SAY #28309 /* ~Nie-Sława unosi brew. "To dziwne pytanie." Marszczy brwi. "Nie sądzę, by ktokolwiek mnie o to pytał. A przynajmniej nie bezpośrednio."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28310 /* ~"Przepraszam, Pani Sławo. Nie chciałem być aż tak bezpośredni. Byłem tylko ciekawy."~ */ GOTO 64
  IF ~~ THEN REPLY #28311 /* ~"Więc... dlaczego to zrobiłaś?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28312 /* ~"Cóż, wydaje się dziwne, że sukkub mógłby założyć takie miejsce... jego przeznaczenie jest chyba sprzeczne z twoją naturą."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28313 /* ~"Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28314 /* ~"W takim razie może zwiedzę przybytek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #28315 /* ~"Och, przeprosiny nie są konieczne. Bardzo chętnie podyskutuję o przyczynach, jeśli masz ochotę."~ */
  IF ~~ THEN REPLY #28316 /* ~"Tak, chciałbym je usłyszeć."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28317 /* ~"Cóż, wydaje się dziwne, że sukkub mógłby założyć takie miejsce... jego przeznaczenie jest chyba sprzeczne z twoją naturą."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28318 /* ~"Nie w tej chwili. Mogę ci zadać kilka innych pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28319 /* ~"Może innym razem. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1 63.2 64.0 64.1
  SAY #28320 /* ~"Abyś zrozumiał część odpowiedzi na pytanie musisz wiedzieć, że jestem członkinią Stronnictwa Doznań. Uważamy, że każdy powinien doświadczyć z wieloświata tak dużo jak tylko to możliwe."~ */
  IF ~~ THEN REPLY #28321 /* ~"Dlatego założyłaś to miejsce?"~ */ GOTO 66
  IF ~~ THEN REPLY #28322 /* ~"Rozumiem; nie musisz już więcej wyjaśniać. Mogę zadać kilka innych pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28323 /* ~"W takim razie może zwiedzę przybytek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #28324 /* ~"Zadaniem tego przybytku jest zaspokajanie żądz nawet najbardziej zatwardziałych intelektualistów. Został przygotowany, by inspirować umysł, rozwijać świadomość siebie i innych, by stworzyć nowe sposoby na *doświadczenie* drugiej osoby. Jest dla tych, którzy poszukują czegoś więcej niż płytkie fizyczne rozkosze jakie można znaleźć w Ulu i Niższych Dzielnicach."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28325 /* ~"Cóż, nie nazwał bym ich płyt... ee, to znaczy, rozumiem to. Kobiety tutaj muszą być naprawdę wyjątkowe."~ */ GOTO 67
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28326 /* ~"Rozumiem. Więc ten przybytek tylko zachęca do zapasów słownych, a nie, cóż do *innych* zapasów. Kobiety tutaj muszą być naprawdę wyjątkowe."~ */ GOTO 67
  IF ~~ THEN REPLY #28327 /* ~"Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28328 /* ~"W takim razie może zwiedzę przybytek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 49.9 66.0 66.1
  SAY #28329 /* ~"Te kobiety chcą zostać Czuciowcami. Przyszły do mnie szukając sposobu, by się do tego przygotować. Wiele z nich posiada dar pojmowania języka, który umożliwia przebicie skorupy nawet najbardziej zatwardziałego osobnika."~ */
  IF ~~ THEN REPLY #28330 /* ~"Czuciowcami?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 68
  IF ~~ THEN REPLY #28332 /* ~"Rozumiem. Więc mówiąc inaczej panie się tutaj uczą?"~ */ GOTO 70
  IF ~~ THEN REPLY #28333 /* ~"Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28334 /* ~"W takim razie może zwiedzę przybytek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #28335 /* ~Kłania się lekko. "Tak, jestem członkinią Stronnictwa Doznań. Uważamy, że każdy powinien doświadczyć z wieloświata tak dużo jak tylko to możliwe."~ */
  IF ~~ THEN REPLY #28336 /* ~"Dziewczęta przechodzą tutaj szkolenie, by zostać Czuciowcami?"~ */ GOTO 70
  IF ~~ THEN REPLY #28337 /* ~"Rozumiem; nie musisz już więcej wyjaśniać. Mogę zadać kilka innych pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28338 /* ~"W takim razie może zwiedzę przybytek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28339 /* ~"Najprawdopodobniej nie wszystkim się to uda. Mimo to mogą próbować, nie odmówiłabym im możliwości wstąpienia do frakcji, jeśli takie jest ich życzenie. Przy okazji mogą się czegoś nauczyć."~ */
  IF ~~ THEN REPLY #28340 /* ~"Rozumiem. Więc to coś w stylu wstępnej szkoły?"~ */ GOTO 70
  IF ~~ THEN REPLY #28341 /* ~"Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28342 /* ~"W takim razie może zwiedzę przybytek i sam zobaczę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1 68.0 69.0
  SAY #28343 /* ~"Tak. Mam nadzieję, że doskonaląc sztukę wysławiania się i jej zawiłości klienci i uczennice mogą zdobyć więcej wiedzy o nich samych. Jedna osoba jest tak ograniczona jak jej kontrola nad językiem. Wykorzystanie języka, by wzbudzać w innych emocje, to wspaniała umiejętność."~ */
  IF ~~ THEN REPLY #28344 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28345 /* ~"W takim razie może zwiedzę przybytek i sam zobaczę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #28346 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #28347 /* ~"To prawda. Jestem mniejszym tanar'ri, a dokładniej sukkubem." Wzdycha miękko. "Obawiam się, że w Niższych Sferach i wszędzie indziej jest nas trochę zbyt dużo. Większość z mojej rasy spędza czas uwodząc śmiertelników różnymi przyjemnościami ciała."~ */
  IF ~~ THEN REPLY #28348 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 74
  IF ~~ THEN REPLY #28349 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 49
  IF ~~ THEN REPLY #28350 /* ~"Muszę już iść. Żegnaj."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 49.1 49.4
  SAY #26918 /* ~"Jestem mniejszym tanar'ri, a dokładniej sukkubem." Wzdycha miękko. "Obawiam się, że w Niższych Sferach i wszędzie indziej jest nas trochę zbyt dużo. Większość z mojej rasy spędza czas na uwodzeniu śmiertelników różnymi przyjemnościami ciała."~ */
  IF ~~ THEN REPLY #26919 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 74
  IF ~~ THEN REPLY #26920 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 49
  IF ~~ THEN REPLY #26921 /* ~"Muszę już iść. Żegnaj."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.0 73.0
  SAY #26922 /* ~"Chciałabym uważać, że się od tego zdystansowałam... ostatecznie to banalny i bezproduktywny sposób na spędzanie czasu tu, w wieloświecie. Można doświadczyć o wiele więcej, nie sądzisz?"~ */
  IF ~~ THEN REPLY #26923 /* ~"Możliwe. Mogę ci zadać kilka innych pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28351 /* ~"Tak. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 49.10
  SAY #28352 /* ~"Czuciowcy to jedna z frakcji w Sigil, oddana zdobywaniu doświadczeń. Bez doświadczeń, bez emocji nie dostrzegamy w wieloświecie mnóstwa rzeczy. Tak więc Czuciowcy chcą doświadczyć jak najwięcej - kiedy doświadczą już wszystkiego wtedy poznają sens życia."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #28353 /* ~"Ciekawa filozofia. Mógłbym wstąpić do Czuciowców?"~ */ GOTO 76
  IF ~~ THEN REPLY #28354 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28355 /* ~"Może tak jest. W każdym razie muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #28356 /* ~Uśmiecha się. "Aby zostać Czuciowcem trzeba być tylko studentem życia."~ */
  IF ~~ THEN REPLY #28357 /* ~"Miałem na myśli, że chciałbym wstąpić do ich frakcji."~ */ JOURNAL #27464 /* ~Nie-Sława zasugerowała, abym udał się do Miejskiego Gmachu Rozrywki, jeśli chcę dołączyć do Stronnictwa Doznań. Powiedziała, że jest tam ktoś, kto powinien mi pomóc.~ */ GOTO 77
  IF ~~ THEN REPLY #28358 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28359 /* ~"Dobrze. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #28360 /* ~"Oczywiście... wybacz mi mój żart." Nie-Sława kiwa głową. Jeśli chcesz dołączyć do Czuciowców powinieneś zapytać kogoś w Gmachu Rozrywek. Tam ktoś powinien ci pomóc."~ */
  IF ~~ THEN REPLY #28361 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28362 /* ~"Dziękuję. W takim razie tam pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 49.18
  SAY #28363 /* ~"Cóż..." Uśmiecha się lekko. "To dość śmiałe pytanie."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28364 /* ~"Wolę otwarcie mówić o moich zamiarach. Jesteś wyjątkowo miła i doskonale znasz Sfery. Przydałby się towarzysz dysponujący taką wiedzą."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28365 /* ~"Wolę otwarcie mówić o moich zamiarach. Jesteś wyjątkowo miła i doskonale znasz Sfery. Przydałby się towarzysz dysponujący taką wiedzą."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28366 /* ~"Taki właśnie jestem."~ */ GOTO 79
  IF ~~ THEN REPLY #28367 /* ~"Chodzi mi o to, jak ciekawe może być to miejsce?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28368 /* ~"Jesteś Czuciowcem. Na pewno jest jakaś granica tego, ile możesz się tutaj nauczyć."~ */ GOTO 83
  IF ~~ THEN REPLY #28369 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ GOTO 49
  IF ~~ THEN REPLY #28370 /* ~"W takim razie przepraszam. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.2 117.1 118.0 118.2 119.1
  SAY #28371 /* ~"Doceniam twoją szczerość. Odpłacę ci tym samym: Dlaczego miałabym z tobą podróżować?"~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28372 /* ~"Chcesz powiedzieć, że nie byłabyś zainteresowana podróżą w towarzystwie nieśmiertelnego dotkniętego amnezją, który przemierza Sfery w poszukiwaniu samego siebie?"~ */ GOTO 80
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28373 /* ~"Pani Sławo, zamierzam odwiedzić miejsca, w których może nikt jeszcze nie był... lub nie mógł dotrzeć. Interesuje cię to?"~ */ GOTO 82
  IF ~~ THEN REPLY #28374 /* ~"Jak ciekawe może być to miejsce?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28375 /* ~"Jesteś Czuciowcem. Na pewno jest jakaś granica tego, ile możesz się tutaj nauczyć."~ */ GOTO 83
  IF ~~ THEN REPLY #28376 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ GOTO 49
  IF ~~ THEN REPLY #28377 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0 82.0 83.0
  SAY #28378 /* ~"Och, *byłabym* bardzo zainteresowana." Uśmiecha się lekko. "Taka sugestia jest intrygująca, naprawdę."~ */
  IF ~~ THEN REPLY #28379 /* ~"Więc *chciałabyś* ze mną wędrować?"~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #28380 /* ~"Jeśli chcesz bym to zrobiła musisz coś dla mnie zrobić. W tym budynku jest dziesięć uczennic. Chciałabym, abyś z nimi wszystkimi porozmawiał, potem do mnie wróć i podziel się ze mną wrażeniami. Wtedy okaże się, czy będziemy razem wędrować, czy nie."~ */
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28381 /* ~"Już z nimi rozmawiałem... ale tutaj jest tylko dziewięć uczennic. Nie mogłem znaleźć dziesiątej."~ */ JOURNAL #27463 /* ~Przekonałem Nie-Sławę, żeby dołączyła się do drużyny, ale wymaga ode mnie spełnienia jednego warunku: muszę porozmawiać z jej wszystkimi dziesięcioma studentkami w przybytku, a następnie powrócić do niej z mymi przemyśleniami. Już porozmawiałem z dziewięcioma, ale nie wiem co z dziesiątą.~ */ GOTO 120
  IF ~~ THEN REPLY #28382 /* ~"Dobrze. Mogę przed odejściem zadać jeszcze kilka pytań?"~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Przekonałem Nie-Sławę, żeby dołączyła się do drużyny, ale wymaga ode mnie spełnienia jednego warunku: muszę porozmawiać z jej wszystkimi dziesięcioma studentkami w przybytku, a następnie powrócić do niej z mymi przemyśleniami.~ */ GOTO 49
  IF ~~ THEN REPLY #28383 /* ~"W takim razie pójdę z nimi porozmawiać. Wrócę gdy to zrobię."~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Przekonałem Nie-Sławę, żeby dołączyła się do drużyny, ale wymaga ode mnie spełnienia jednego warunku: muszę porozmawiać z jej wszystkimi dziesięcioma studentkami w przybytku, a następnie powrócić do niej z mymi przemyśleniami.~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY #28384 /* ~"Faktycznie, mogłoby." Opiera podbródek na ręce i zastanawia się przez chwilę. "Ale..."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28385 /* ~"Chcesz powiedzieć, że nie byłabyś zainteresowana podróżą w towarzystwie nieśmiertelnego dotkniętego amnezją, który przemierza Sfery w poszukiwaniu samego siebie?"~ */ GOTO 80
  IF ~~ THEN REPLY #28386 /* ~"Jak ciekawe może być to miejsce?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28387 /* ~"Jesteś Czuciowcem. Na pewno jest jakaś granica tego, ile możesz się tutaj nauczyć."~ */ GOTO 83
  IF ~~ THEN REPLY #28388 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ GOTO 49
  IF ~~ THEN REPLY #28389 /* ~"Zastanów się nad tym, wrócę kiedy indziej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.3 78.4 79.2 79.3 82.1 82.2 117.2 117.3 118.3 118.4 119.2 119.3
  SAY #28390 /* ~"Wydaje mi się, że byłbyś zaskoczony. Jeśli chcesz bym ci towarzyszyła podczas twoich podróży musisz podać jakiś bardziej przekonujący powód."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28391 /* ~"Chcesz powiedzieć, że nie byłabyś zainteresowana podróżą w towarzystwie nieśmiertelnego dotkniętego amnezją, który przemierza Sfery w poszukiwaniu samego siebie?"~ */ GOTO 80
  IF ~~ THEN REPLY #28392 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ GOTO 49
  IF ~~ THEN REPLY #28393 /* ~"Cóż, zobaczę czy uda mi się znaleźć bardziej przekonujący powód. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #28394 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 49.8
  SAY #28395 /* ~"Pomóc? Jakiego rodzaju pomocy potrzebujesz?"~ */
  IF ~~ THEN REPLY #28396 /* ~"Wygląda na to, że straciłem pamięć... w ten sposób straciłem siebie."~ */ GOTO 86
  IF ~~ THEN REPLY #28397 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28398 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #28399 /* ~"Zostałeś dotknięty amnezją? To straszne! Nie wiesz jak to się mogło stać?"~ */
  IF ~~ THEN REPLY #28400 /* ~"Nie... przynajmniej na tyle na ile pamiętam. Ocknąłem się na płycie w Kostnicy, wszystko, co było wcześniej jest czarne."~ */ GOTO 87
  IF ~~ THEN REPLY #28401 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28402 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #28403 /* ~"Ocknąłeś się w Kostnicy?"~ */
  IF ~  Global("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28404 /* ~"Wydaje mi się, że Grabarze przez pomyłkę uznali mnie za martwego... albo byłem martwy... czy coś w tym stylu. Wszystko co wiem, to tyle, że szybko się regeneruję. Może jestem nieśmiertelny, ale nawet tego nie jestem pewien."~ */ DO ~SetGlobal("Grace_Companion","GLOBAL",1)
~ GOTO 88
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28405 /* ~"Wydaje mi się, że Grabarze przez pomyłkę uznali mnie za martwego... albo byłem martwy... czy coś w tym stylu. Wszystko co wiem, to tyle, że szybko się regeneruję. Może jestem nieśmiertelny, ale nawet tego nie jestem pewien."~ */ GOTO 88
  IF ~~ THEN REPLY #28406 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28407 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1
  SAY #28408 /* ~Nie-Sława przygląda ci się z nowym zainteresowaniem. "Te blizny na twoim ciele." Wyciąga rękę jakby chciała cię dotknąć. "Mogę?"~ */
  IF ~~ THEN REPLY #28409 /* ~"Ee... pewnie."~ */ GOTO 89
  IF ~~ THEN REPLY #28410 /* ~"Tak."~ */ GOTO 89
  IF ~~ THEN REPLY #28411 /* ~"Właściwie wolałbym o tym nie mówić. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28412 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1
  SAY #28413 /* ~Nie-Sława wodzi palcem po twojej piersi, śledząc krawędzie blizn i podążając za łukami gdzie wtapiają się w tatuaże. Wygląda na zafascynowaną. "Te blizny wyglądają jakby ich zgromadzenie zabrało więcej niż jedno życie."~ */
  IF ~~ THEN REPLY #28414 /* ~"Rzeczywiście tak wygląda... chociaż niektóre są znacznie bardziej świeże."~ */ GOTO 90
  IF ~~ THEN REPLY #28415 /* ~"Właściwie wolałbym o tym nie mówić. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28416 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #28417 /* ~Nie-Sława cofa się. "Niektóre z tych ran byłyby śmiertelne. Dla zwykłego człowieka." Klepie się w podbródek, myśli. "Co zamierzasz teraz robić?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #28418 /* ~"Muszę odzyskać moje wspomnienia i moje życie. Zamierzam przeszukać Sfery i swoje wnętrze, aż uda mi się dowiedzieć kim jestem i co doprowadziło mnie do takiego stanu."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #28419 /* ~"Muszę odzyskać moje wspomnienia i moje życie. Zamierzam przeszukać Sfery i swoje wnętrze, aż uda mi się dowiedzieć kim jestem i co doprowadziło mnie do takiego stanu."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #28420 /* ~"Naprawdę nie wiem. W tej chwili szukam wskazówek dotyczących tego kim jestem i co mi się stało."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",2)
~ GOTO 91
  IF ~~ THEN REPLY #28421 /* ~"Nie zamierzam nic robić. Jeśli gdzieś znajdują się odpowiedzi, same do mnie przyjdą... we właściwym czasie."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",3)
~ GOTO 91
  IF ~~ THEN REPLY #28422 /* ~"Właściwie wolałbym o tym nie mówić. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28423 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1 90.2 90.3
  SAY #28424 /* ~Nie-Sława wciąż myśli, palec uderza w podbródek. "Muszę przyznać, że nigdy nie spotkałam człowieka który się zgubił, dosłownie." Unosi brew. "Wybacz mi, ale twój stan jest intrygujący."~ */
  IF ~~ THEN REPLY #28425 /* ~"Cóż, cieszę się, że *ty* tak uważasz."~ */ GOTO 92
  IF ~~ THEN REPLY #28426 /* ~"To prawda."~ */ GOTO 93
  IF ~~ THEN REPLY #28427 /* ~"'Intrygujący'? Raczej przerażający. Nie podoba mi się, że nie wiem, kim jestem, co zrobiłem, kim są moi wrogowie, ani kim są moi przyjaciele."~ */ GOTO 92
  IF ~~ THEN REPLY #28428 /* ~"Właściwie wolałbym o tym nie mówić. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28429 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0 91.2
  SAY #28430 /* ~"Uraziłam cię moimi słowami." Nie-Sława pochyla głowę. "Składam przeprosiny, jeśli je przyjmiesz."~ */
  IF ~~ THEN REPLY #28431 /* ~"Przeprosiny przyjęte."~ */ GOTO 93
  IF ~~ THEN REPLY #28432 /* ~"Nieważne, nic się nie stało."~ */ GOTO 93
  IF ~~ THEN REPLY #28433 /* ~"Właściwie wolałbym o tym nie mówić. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28434 /* ~"Może porozmawiamy o tym następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1 92.0 92.1
  SAY #28435 /* ~Nie-Sława kiwa głową. "Jeśli ci to pomoże, możesz zwiedzić Przybytek. Wiele spośród naszych uczennic dobrze zna sztukę słowa. Może któraś z nich będzie w stanie rozbudzić twoje wspomnienia."~ */
  IF ~~ THEN REPLY #28436 /* ~"Może tak zrobię. Możesz przedtem odpowiedzieć na kilka pytań?"~ */ JOURNAL #27461 /* ~Nie-Sława zasugerowała, żebym porozmawiał ze studentkami w Przybytku. Konwersacja z niektórymi z nich mogłaby pobudzić moją pamięć.~ */ GOTO 49
  IF ~~ THEN REPLY #28437 /* ~"Jestem wdzięczny. Może z nimi porozmawiam. Żegnaj."~ */ JOURNAL #27461 /* ~Nie-Sława zasugerowała, żebym porozmawiał ze studentkami w Przybytku. Konwersacja z niektórymi z nich mogłaby pobudzić moją pamięć.~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 49.13
  SAY #28438 /* ~"Wojna Krwi to konflikt rozgrywający się pomiędzy baatezu i tanar'ri w Niższych Sferach. Walczą o to, czy zło powinno być praworządne, czy chaotyczne." Nie-Sława przerywa na chwilę. "Najlepiej za wszelką cenę jej unikać. Niech tanar'ri i baatezu rozbijają sobie łby i zostawią resztę Sfer w spokoju... lub przynajmniej we względnym spokoju."~ */
  IF ~~ THEN REPLY #28439 /* ~"Względnym spokoju?"~ */ GOTO 95
  IF ~~ THEN REPLY #28440 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28441 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28442 /* ~"Brałaś w niej udział?"~ */ GOTO 98
  IF ~~ THEN REPLY #28443 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28444 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 96.0 97.0 98.1 99.1 100.1 101.1 102.0 103.0
  SAY #28445 /* ~"Cóż, ta wojna ma taki zasięg, że większość ras bierze w niej udział nawet wbrew swej woli. Jej ignorowanie często bywa tak samo niebezpieczne jak branie w niej udziału."~ */
  IF ~~ THEN REPLY #28446 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28447 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28448 /* ~"Brałaś w niej udział?"~ */ GOTO 98
  IF ~~ THEN REPLY #28449 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28450 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 97.1 98.2 99.2 100.2 101.2 102.1 103.1
  SAY #28451 /* ~"Czasami tak. W Wojnie Krwi bierze udział pewna liczba ludzkich najemników. Służą zarówno jako żołnierze, mięso armatnie, jak i żywność dla biesów."~ */
  IF ~~ THEN REPLY #28452 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28453 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28454 /* ~"Brałaś w niej udział?"~ */ GOTO 98
  IF ~~ THEN REPLY #28455 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28456 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2 95.1 96.1 98.3 99.3 100.3 101.3 102.2 103.2
  SAY #28457 /* ~"Zgodnie z kronikami, Wojna Krwi toczy się od czasu, gdy baatezu spotkały się z tanar'ri... bardzo, ale to bardzo dawno temu. Nie wiem czy jest ludzkie określenie oddające czas jaki upłynął od tego momentu." Nie-Sława potrząsa głową. "Obawiam się, że ani baatezu, ani tanar'ri nigdy nie uzyskali przewagi."~ */
  IF ~~ THEN REPLY #28458 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28459 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28460 /* ~"Brałaś w niej udział?"~ */ GOTO 98
  IF ~~ THEN REPLY #28461 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28462 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3 95.2 96.2 97.2 103.3
  SAY #28463 /* ~"Nie. Ale moja matka brała. Sukkuby zwykle kusiły śmiertelników, by ściągnąć ich dusze do Otchłani i stworzyć więcej tanar'ri, które mogłyby zginąć w Wojnie Krwi."~ */
  IF ~~ THEN REPLY #28464 /* ~"Twoja matka? Brała udział w Wojnie Krwi?"~ */ GOTO 99
  IF ~~ THEN REPLY #28465 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28466 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28467 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28468 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28469 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #28470 /* ~"Tak. Była jedną z najlepszych, uwiodła niezliczone rzesze śmiertelnych mężczyzn. Teraz mieszka w Otchłani i sprzedaje w niewolę swe dzieci."~ */
  IF ~~ THEN REPLY #28471 /* ~"Zostałaś... sprzedana w niewolę przez własną matkę?"~ */ GOTO 100
  IF ~~ THEN REPLY #28472 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28473 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28474 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28475 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 103
  IF ~~ THEN REPLY #28476 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28477 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #28478 /* ~"Na jakiś czas. Wygrałam wolność w konkursie improwizacji. Było to bardzo dawno temu."~ */
  IF ~~ THEN REPLY #28479 /* ~"Komu cię sprzedała?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Nie-Sława powiedziała mi, że jej własna matka sprzedała ją w niewolę... nikomu innemu jak baatezu - znienawidzonym wrogom tanar'ri. Najwyraźniej Nie-Sława wygrała wolność od swego pana w konkursie improwizacji. Nie zagłębiała się w szczegóły.~ */ GOTO 101
  IF ~~ THEN REPLY #28480 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28481 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28482 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28483 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 103
  IF ~~ THEN REPLY #28484 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28485 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #28486 /* ~"Sprzedała mnie baatezu. Chyba oczekiwała, że mnie zabiją. Pomimo wiedzy z innych dziedzin nie jest zbyt obeznana z ich kulturą."~ */
  IF ~~ THEN REPLY #28487 /* ~"Sprzedała cię zaprzysięgłym wrogom tanar'ri?"~ */ GOTO 102
  IF ~~ THEN REPLY #28488 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28489 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28490 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28491 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 103
  IF ~~ THEN REPLY #28492 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28493 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #28494 /* ~"Tak." Nie-Sława przysuwa się bliżej. "Chciałeś wiedzieć jeszcze coś?"~ */
  IF ~~ THEN REPLY #28495 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28496 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28497 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28498 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 103
  IF ~~ THEN REPLY #28499 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28500 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.4 100.4 101.4 102.3
  SAY #28501 /* ~"O nie, wcale. Wystarczy, że będziesz wiedział to: Wojna Krwi leży u podstaw większości wydarzeń w Sferach. Ważne jest zrozumienie czym jest i dlaczego się toczy."~ */
  IF ~~ THEN REPLY #28502 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 95
  IF ~~ THEN REPLY #28503 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 96
  IF ~~ THEN REPLY #28504 /* ~"Od jak dawna to trwa?"~ */ GOTO 97
  IF ~~ THEN REPLY #28505 /* ~"Brałaś w niej udział?"~ */ GOTO 98
  IF ~~ THEN REPLY #28506 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 49
  IF ~~ THEN REPLY #28507 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 49.11
  SAY #28508 /* ~"Znam to imię." Nie-Sława przerywa i zastanawia się przez chwilę. "Wokół tego imienia kłębią się plotki, większość odrzuca ją jako mit, ale podejrzewam, że istniała naprawdę i podczas pobytu w Klatce zrobiła niezłe wrażenie." Wygląda jakby się nad czymś zastanawiała. "Dlaczego pytasz?"~ */
  IF ~~ THEN REPLY #28509 /* ~"Zamierzam ją odnaleźć."~ */ GOTO 105
  IF ~  Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28510 /* ~"Co jeszcze o niej wiesz?"~ */ GOTO 109
  IF ~~ THEN REPLY #28511 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 49
  IF ~~ THEN REPLY #28512 /* ~"Bez przyczyny. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #28513 /* ~Nie-Sława unosi brew. "Naprawdę? Czy mogłabym wiedzieć dlaczego?"~ */
  IF ~~ THEN REPLY #28514 /* ~"Potrzebuję informacji, którą ona posiada."~ */ GOTO 106
  IF ~~ THEN REPLY #28515 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 49
  IF ~~ THEN REPLY #28516 /* ~"Bez przyczyny. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #28517 /* ~"Ta informacja nie jest dostępna od nikogo innego?"~ */
  IF ~~ THEN REPLY #28518 /* ~"Podejrzewam, że tylko Ravela dysponuje wiedzą, której potrzebuję."~ */ JOURNAL #27459 /* ~Nie-Sława ostrzegła mnie przed Ravelą... powiedziała, że nawet jeśli prawdziwe jest tylko kilka opowieści o nocnej wiedźmie, to jest ona najnikczemniejszą i najpotężniejszą z szarych sióstr, jaka kiedykolwiek stąpała po Sferach.~ */ GOTO 107
  IF ~~ THEN REPLY #28519 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 49
  IF ~~ THEN REPLY #28520 /* ~"Nie wiem, ale zamierzam się dowiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #28521 /* ~Nie-Sława łagodnie kładzie dłoń na twym ramieniu. "Weź pod uwagę to - jeśli Ravela naprawdę istnieje, to jest skrajnie przebiegła i niebezpieczna. Jeśli choć część opowieści o jej poczynaniach jest prawdziwa, to jest istotą, która odkryła nowe znaczenie zła. Szukanie jej nie jest zadaniem, jakiego łatwo się podjąć."~ */
  IF ~  InParty("Grace")
~ THEN REPLY #28522 /* ~"Zdaję sobie z tego sprawę."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 108
  IF ~  !InParty("Grace")
~ THEN REPLY #28523 /* ~"Zdaję sobie z tego sprawę. Wiesz jeszcze coś o Raveli?"~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 109
  IF ~  !InParty("Grace")
~ THEN REPLY #28524 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~  !InParty("Grace")
~ THEN REPLY #28525 /* ~"Wiem. Mimo to muszę ją znaleźć. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #28526 /* ~"Cóż nigdy nie spotkałam mitu. To dopiero będzie wycieczka." Uśmiecha się. "Nigdy nie próbujesz robić nic nudnego?"~ */
  IF ~~ THEN REPLY #28527 /* ~"Staram się tego nie robić... wiesz coś jeszcze o Raveli?"~ */ GOTO 109
  IF ~~ THEN REPLY #28528 /* ~"Nie, jeśli mogę coś na to poradzić. Mogę ci zadać kilka innych pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28529 /* ~"Mogłem to robić w innych wcieleniach, ale nie wiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 49.12 104.1 107.1 108.0
  SAY #28530 /* ~"Mówiło się, że była jedną z wiedźm z Szarego Pustkowia, sądzono, że byłą znacznie bardziej potężna i przebiegła niż jej siostry. Przybyła do Sigil dawno temu. A plotka głosi, że poza samym złem, które popełniła podczas pobytu, jej działania zagroziły samej Klatce. Teraz egzystuje głównie jako legenda, postać z bajek dla dzieci." Nie-Sława przerywa na chwilę. "Podejrzewam, że poradziła sobie z nią Pani Bólu, tak jak radzi sobie z każdym zagrożeniem dla Sigil."~ */
  IF ~~ THEN REPLY #28531 /* ~"Jak?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 110
  IF ~~ THEN REPLY #28532 /* ~"Co to są Szare Pustkowia?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 111
  IF ~~ THEN REPLY #28533 /* ~"Czy jest jeszcze ktoś, kto mógłby coś o niej wiedzieć?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 112
  IF ~~ THEN REPLY #28534 /* ~"Mogę zadać kilka pytań?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 49
  IF ~~ THEN REPLY #28535 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 112.0
  SAY #28536 /* ~"Najprawdopodobniej została wtrącona do labiryntu. Jednego z więzień Pani."~ */
  IF ~~ THEN REPLY #28537 /* ~"Do labiryntu? Co to jest?"~ */ JOURNAL #27457 /* ~Nie-Sława powiedziała, że Ravela jest uwięziona w jednym z labiryntów Pani Bólu.~ */ GOTO 123
  IF ~~ THEN REPLY #28538 /* ~"Co to są Szare Pustkowia?"~ */ GOTO 111
  IF ~~ THEN REPLY #28539 /* ~"Czy jest jeszcze ktoś, kto mógłby coś o niej wiedzieć?"~ */ GOTO 112
  IF ~~ THEN REPLY #28540 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28541 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.1 110.1 112.1 123.1 124.1 125.0
  SAY #28542 /* ~"Zniszczona sfera, która oddziela Baator od Otchłani. Często jest polem bitwy w Wojnie Krwi."~ */
  IF ~~ THEN REPLY #28543 /* ~"Wiesz co stało się z Ravelą?"~ */ GOTO 110
  IF ~~ THEN REPLY #28544 /* ~"Czy jest jeszcze ktoś, kto mógłby coś o niej wiedzieć?"~ */ GOTO 112
  IF ~~ THEN REPLY #28545 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28546 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.2 110.2 111.1 123.2 124.2 125.1
  SAY #28547 /* ~"Ktoś w Gmachu Rozrywek może wiedzieć o niej więcej."~ */
  IF ~~ THEN REPLY #28548 /* ~"Wiesz co stało się z Ravelą?"~ */ JOURNAL #27456 /* ~Nie-Sława powiedziała, że ktoś w Gmachu Rozrywki może wiedzieć więcej o Raveli.~ */ GOTO 110
  IF ~~ THEN REPLY #28549 /* ~"Co to są Szare Pustkowia?"~ */ JOURNAL #27456 /* ~Nie-Sława powiedziała, że ktoś w Gmachu Rozrywki może wiedzieć więcej o Raveli.~ */ GOTO 111
  IF ~~ THEN REPLY #28550 /* ~"Mogę zadać kilka pytań?"~ */ JOURNAL #27456 /* ~Nie-Sława powiedziała, że ktoś w Gmachu Rozrywki może wiedzieć więcej o Raveli.~ */ GOTO 49
  IF ~~ THEN REPLY #28551 /* ~"Rozumiem. Dzięki za informację. Żegnaj."~ */ JOURNAL #27456 /* ~Nie-Sława powiedziała, że ktoś w Gmachu Rozrywki może wiedzieć więcej o Raveli.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 51.1
  SAY #28552 /* ~Nie-Sława unosi brew. "Naprawdę?"~ */
  IF ~~ THEN REPLY #28553 /* ~"Tak... ale to długa historia, możliwe, że dłuższa niż znam. Bardziej jestem ciekaw co to za miejsce."~ */ GOTO 57
  IF ~~ THEN REPLY #28554 /* ~"Tak, ale to opowieść na kiedy indziej. Muszę iść. Żegnaj.~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 52.3
  SAY #28555 /* ~Kiwa głową. "Cieszę się, że ci się podoba. Sama też je lubię."~ */
  IF ~~ THEN REPLY #28556 /* ~"Co to dokładnie oznacza?"~ */ GOTO 115
  IF ~~ THEN REPLY #28557 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28558 /* ~"Nie tym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #28559 /* ~"Znaczenie imion to dość złożony temat. Wiele jest do powiedzenia, ale jeszcze lepiej zostawić sporo niedopowiedziane. Wydaje mi się, że to opowieść na kiedy indziej."~ */
  IF ~~ THEN REPLY #28560 /* ~"Czy Nie-Sława to twoje prawdziwe imię?"~ */ GOTO 116
  IF ~~ THEN REPLY #28561 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28562 /* ~"W takim razie wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #28563 /* ~"Możliwe." Uśmiecha się lekko. "A może nie. Są imiona które się dostaje, a na inne trzeba zasłużyć. Kto odróżni które jest prawdziwe, a które nie. Nie ja."~ */
  IF ~~ THEN REPLY #28564 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28565 /* ~"W takim razie wybacz, że ci przeszkodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #28566 /* ~"Wędrować z tobą?" Nie-Sława uśmiecha się lekko. Zdaje się ignorować twoich towarzyszy. "To dość śmiałe pytanie."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28567 /* ~"Wolę otwarcie mówić o moich zamiarach. Jesteś wyjątkowo miła i doskonale znasz Sfery. Przydałby się towarzysz dysponujący taką wiedzą."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28568 /* ~"Taki właśnie jestem."~ */ GOTO 79
  IF ~~ THEN REPLY #28569 /* ~"Chodzi mi o to, jak ciekawe może być to miejsce?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28570 /* ~"Jesteś Czuciowcem. Na pewno jest jakaś granica tego, ile możesz się tutaj nauczyć."~ */ GOTO 83
  IF ~~ THEN REPLY #28571 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ GOTO 49
  IF ~~ THEN REPLY #28572 /* ~"W takim razie przepraszam. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #28573 /* ~"Wędrować z tobą?" Nie-Sława uśmiecha się lekko. Zdaje się ignorować Annę. "To dość śmiałe pytanie."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28574 /* ~"Wolę otwarcie mówić o moich zamiarach. Jesteś wyjątkowo miła i doskonale znasz Sfery. Przydałby się towarzysz dysponujący taką wiedzą."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28575 /* ~"Wolę otwarcie mówić o moich zamiarach. Jesteś wyjątkowo miła i doskonale znasz Sfery. Przydałby się towarzysz dysponujący taką wiedzą."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28576 /* ~"Taki właśnie jestem."~ */ GOTO 79
  IF ~~ THEN REPLY #28577 /* ~"Chodzi mi o to, jak ciekawe może być to miejsce?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28578 /* ~"Jesteś Czuciowcem. Na pewno jest jakaś granica tego, ile możesz się tutaj nauczyć."~ */ GOTO 83
  IF ~~ THEN REPLY #28579 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ GOTO 49
  IF ~~ THEN REPLY #28580 /* ~"W takim razie przepraszam. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #28581 /* ~"Wędrować z tobą?" Nie-Sława uśmiecha się lekko. Zdaje się ignorować Mortego. "To dość śmiałe pytanie."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28582 /* ~"Wolę otwarcie mówić o moich zamiarach. Jesteś wyjątkowo miła i doskonale znasz Sfery. Przydałby się towarzysz dysponujący taką wiedzą."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28583 /* ~"Taki właśnie jestem."~ */ GOTO 79
  IF ~~ THEN REPLY #28584 /* ~"Chodzi mi o to, jak ciekawe może być to miejsce?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28585 /* ~"Jesteś Czuciowcem. Na pewno jest jakaś granica tego, ile możesz się tutaj nauczyć."~ */ GOTO 83
  IF ~~ THEN REPLY #28586 /* ~"W takim razie cofam prośbę. Mógłbym zapytać o coś innego?"~ */ GOTO 49
  IF ~~ THEN REPLY #28587 /* ~"W takim razie przepraszam. Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 49.14 81.0
  SAY #28588 /* ~"Więc nie mogłeś znaleźć dziesiątej uczennicy. Ciekawe."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28589 /* ~"Uważam, że ja jestem dziesiątym uczniem. W takim razie rozmawiałem już z wszystkimi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28590 /* ~"Uważam, że ja jestem dziesiątym uczniem. W takim razie rozmawiałem już z wszystkimi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"Pod Przybytkiem widziałem dziesięć kamieni, jeden był czysty... tak więc uważam, że jest tu tylko dziewięć kurtyzan. W takim razie dziesiątym uczniem jestem ja, czyli rozmawiałem już ze wszystkimi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28592 /* ~"Uważam, że Luis jest dziesiątym uczniem... na swój sposób."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28593 /* ~"Możesz mi powiedzieć, gdzie można znaleźć dziesiątą uczennicę?"~ */ GOTO 122
  IF ~~ THEN REPLY #28594 /* ~"Może którąś przeoczyłem. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28595 /* ~"Postaram się bardziej, może znajdę dziesiątą uczennicę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0 120.1 120.2 120.3 122.0 122.1 122.2 122.3
  SAY #28596 /* ~Kiwa głową. "Bardzo dobrze. I jakie są twoje wrażenia?"~ */
  IF ~~ THEN REPLY #28597 /* ~"Ty i ja powinniśmy opuścić to miejsce i badać Sfery. Dla żadnego z nas nie ma tu nic więcej, co moglibyśmy doświadczyć."~ */ GOTO 203
  IF ~~ THEN REPLY #61636 /* ~"Zrozumiałem co to znaczy chcieć zostać Czuciowcem i że lepiej poszukiwać doświadczeń, niż czekać aż same przyjdą."~ */ GOTO 203
  IF ~  Global("Luis_Student","GLOBAL",1)
~ THEN REPLY #61638 /* ~"Luis bardzo potrzebuje stolarza, żeby zestrugał z niego to libido."~ */ GOTO 204
  IF ~  Global("Luis_Student","GLOBAL",0)
GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #61639 /* ~"Powinnaś pozbyć się wszystkich mebli z Przybytku i użyć ich jako podpałki."~ */ GOTO 204
  IF ~~ THEN REPLY #61640 /* ~"Nauczenie w zamkniętym środowisku, takim jak to, tylko rani studentów, a najlepszymi nauczycielami często są same Sfery."~ */ GOTO 203
END

IF ~~ THEN BEGIN 122 // from: 120.4
  SAY #28598 /* ~"Jest w pobliżu... może powinieneś poszukać dokładniej."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28599 /* ~"Uważam, że ja jestem dziesiątym uczniem. W takim razie rozmawiałem już z wszystkimi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28600 /* ~"Uważam, że ja jestem dziesiątym uczniem. W takim razie rozmawiałem już z wszystkimi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"Pod Przybytkiem widziałem dziesięć kamieni, jeden był czysty... tak więc uważam, że jest tu tylko dziewięć kurtyzan. W takim razie dziesiątym uczniem jestem ja, czyli rozmawiałem już ze wszystkimi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28602 /* ~"Uważam, że Luis jest dziesiątym uczniem... na swój sposób."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28603 /* ~"Może którąś przeoczyłem. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28604 /* ~"Postaram się bardziej, może znajdę dziesiątą uczennicę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 110.0
  SAY #28605 /* ~Nie-Sława łączy dłonie, palce stykają się tworząc nierówny okrąg. "Mówi się, że Pani posiada Moc, która pozwala jej wziąć kawałek Sigil..." Zaskoczony patrzysz jak eteryczny wizerunek małego palca Nie-Sławy odrywa się od dłoni i unosi się w powietrze, układając się w małe koło. "...i stworzyć labirynt."~ */
  IF ~~ THEN REPLY #28606 /* ~"Mów dalej..."~ */ GOTO 124
  IF ~~ THEN REPLY #28607 /* ~"Możesz mi powiedzieć coś więcej o sferze z której pochodzi Ravela... o Szarym Pustkowiu?"~ */ GOTO 111
  IF ~~ THEN REPLY #28608 /* ~"Wydaje mi się, że rozumiem. Czy jest jeszcze ktoś, kto mógłby wiedzieć o Raveli coś więcej?"~ */ GOTO 112
  IF ~~ THEN REPLY #28609 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28610 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #28611 /* ~Małe eteryczne koło unosi się w powietrzu i zaczyna się powoli kręcić. "W zabranym przez nią kawałku Sigil przetrzymywany jest więzień; nie można uniknąć wtrącenia do labiryntu. Może się to zdarzyć w każdej chwili, podczas spaceru na ulicy, przy przechodzeniu przez drzwi..." Klaszcze. "...i nagle jesteś gdzie indziej." Wewnątrz eterycznego okręgu nagle zauważasz cień, jakby ktoś tam szedł."~ */
  IF ~~ THEN REPLY #28612 /* ~"Mów dalej..."~ */ GOTO 125
  IF ~~ THEN REPLY #28613 /* ~"Możesz mi powiedzieć coś więcej o sferze z której pochodzi Ravela... o Szarym Pustkowiu?"~ */ GOTO 111
  IF ~~ THEN REPLY #28614 /* ~"Wydaje mi się, że rozumiem. Czy jest jeszcze ktoś, kto mógłby wiedzieć o Raveli coś więcej?"~ */ GOTO 112
  IF ~~ THEN REPLY #28615 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28616 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #28617 /* ~Nie-Sława mówi dalej, mały, widmowy labirynt odbija się w jej oczach. "Mówi się, że w każdym labiryncie jest portal, przez który można wyjść, ale trudno go znaleźć. Może są tam umieszczane, by dać więźniom nadzieję. Może są tam umieszczane, by ich torturować." Widmowy labirynt się rozwiewa. "A może jedno i drugie."~ */
  IF ~~ THEN REPLY #28618 /* ~"Możesz mi powiedzieć coś więcej o sferze z której pochodzi Ravela... o Szarym Pustkowiu?"~ */ GOTO 111
  IF ~~ THEN REPLY #28619 /* ~"Wydaje mi się, że rozumiem. Czy jest jeszcze ktoś, kto mógłby wiedzieć o Raveli coś więcej?"~ */ GOTO 112
  IF ~~ THEN REPLY #28620 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 49
  IF ~~ THEN REPLY #28621 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #28896 /* ~Nie-Sława kiwa głową i uśmiecha się do mężczyzny. "Jest pan zbyt uprzejmy."~ */
  IF ~~ THEN EXTERN ~DCWCAFEM~ 20
END

IF ~~ THEN BEGIN 127 // from:
  SAY #30528 /* ~Nie-Sława przerywa cichym szeptem. "Adwokat, to ktoś kto roztrząsa sprawy przed sądem Sigil. Bronią i dają porady prawne tym, którzy o to poproszą."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 128 // from:
  SAY #30827 /* ~Uśmiecha się lekko. "To nie ma znaczenia, Ablu. Jestem pewna, że tylko Tuen byłby urażony tym komentarzem, a jak wiesz jego poddani pogrzebali go żywcem, ponad trzysta lat temu."~ */
  IF ~~ THEN EXTERN ~DABLE~ 5
END

IF ~~ THEN BEGIN 129 // from:
  SAY #30828 /* ~Nie-Sława uśmiecha się, próbując uprzejmie wtrącić: "Mój dobry Ablu, a jak sądzisz, dlaczego jesteś zawsze mile widziany?"~ */
  IF ~~ THEN EXTERN ~DABLE~ 40
END

IF ~~ THEN BEGIN 130 // from:
  SAY #32697 /* ~"Młoda Sarhava? Czy jesteś Sarhavą Vhjul?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 25
END

IF ~~ THEN BEGIN 131 // from:
  SAY #32698 /* ~Nie-Sława obdarza cię najdrobniejszym skinieniem głowy. "Twe słowa są starannie dobrane, w przeciwieństwie do tych, które słyszałam przed chwilą."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 26
END

IF ~~ THEN BEGIN 132 // from:
  SAY #32699 /* ~"Ja żałuję, że w ogóle zostały wypowiedziane." Jej ton prawie się nie zmienia, ale subtelna reprymenda działa na młodą kobietę jak policzek. "To przykre widzieć jak jedna z moich dawnych uczennic zachowuje się tak..."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 27
END

IF ~~ THEN BEGIN 133 // from:
  SAY #32700 /* ~"Oto towarzysze z którymi podróżuję. Spodziewam się, że będziesz dla nich tak samo uprzejma jak dla mnie. To cecha charakterystyczna i obowiązek tych... wysoko urodzonych."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32701 /* ~Kontynuuj.~ */ EXTERN ~DANNAH~ 177
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #32702 /* ~Kontynuuj.~ */ EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 134 // from:
  SAY #33080 /* ~"Nietrudno mi uwierzyć, że kobieta może powstrzymać Wojnę Krwi."~ */
  IF ~~ THEN REPLY #33082 /* ~"Ale biesy ciągle mają wstęp do Sigil?"~ */ EXTERN ~DGHYSIS~ 25
  IF ~~ THEN REPLY #33083 /* ~"Pozwól, że spytam o coś innego..."~ */ EXTERN ~DGHYSIS~ 11
  IF ~~ THEN REPLY #33084 /* ~"Nie mam więcej pytań."~ */ EXTERN ~DGHYSIS~ 9
END

IF ~~ THEN BEGIN 135 // from:
  SAY #33081 /* ~"Nie czuję się urażona. Masz rację."~ */
  IF ~~ THEN REPLY #33085 /* ~"Jakie inne rodzaje oddziałów biorą udział w Wojnie Krwi?"~ */ EXTERN ~DGHYSIS~ 48
  IF ~~ THEN REPLY #33086 /* ~"Pozwól, że spytam o coś innego..."~ */ EXIT
  IF ~~ THEN REPLY #33087 /* ~"Nie mam więcej pytań."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 136 // from:
  SAY #34014 /* ~Gdy się zbliżasz Nie-Sława podnosi wzrok. "Znowu chcesz bym z tobą podróżowała?"~ [FFG247] */
  IF ~~ THEN REPLY #34015 /* ~"Tak. Jeśli masz na to ochotę."~ */ GOTO 137
  IF ~~ THEN REPLY #34016 /* ~"Nie teraz... wpadłem tylko, by zobaczyć co u ciebie słychać."~ */ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #34017 /* ~Kiwa głową. "Będzie mi bardzo miło."~ [FFG249] */
  IF ~~ THEN REPLY #34018 /* ~"Ruszajmy."~ */ DO ~ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 136.1
  SAY #34019 /* ~Kiwa głową. "Dziękuję. To było uprzejme z twojej strony." Uśmiecha się lekko. "Gdybyś kiedyś potrzebował pomocy możesz mnie tu znaleźć."~ */
  IF ~~ THEN REPLY #34020 /* ~"Dzięki, Sławo. Trzymam cię za słowo."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",0)
InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 139 // from: 205.10 206.2 213.1 214.1 215.0 216.1 217.1 218.0 239.1 240.3 248.1 249.4 250.2 251.0 267.1 268.1 270.3 271.2 272.1 273.4 274.2 276.0 279.8 280.5 281.9 284.1 286.1 287.3 288.2 289.3 290.3 291.4 292.3 293.3 294.4 295.2 296.4 297.4 298.4 299.3 300.4 301.1 302.3 303.1 304.3 305.2 307.1 308.2 309.3 310.3 311.3 312.2 313.2 314.1 316.2 317.1 319.2 320.3 321.2 322.2 323.4 324.1 325.2 326.2 327.3 328.2 329.1 330.6 331.2 332.1 333.1 334.1 335.5 336.1 337.3 338.3 339.1 343.1 344.2 345.2 346.2 347.2 357.5 359.2 360.1 361.1
  SAY #34021 /* ~"Tak?"~ [FFG003] */
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #34022 /* ~"Możesz mi opowiedzieć o tanar'ri?"~ */ GOTO 206
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61947 /* ~"Te skrzydła na twoich plecach... czym ty jesteś?"~ */ GOTO 214
  IF ~  NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61948 /* ~"Te skrzydła na twoich plecach... czym ty jesteś?"~ */ EXTERN ~DANNAH~ 308
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61949 /* ~"Te skrzydła na twoich plecach... czym ty jesteś?"~ */ EXTERN ~DMORTE~ 612
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61950 /* ~"Pani Sławo, jeśli mogę spytać, te skrzydła na twoich plecach... rozumiem, że nie jesteś człowiekiem?"~ */ GOTO 214
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61951 /* ~"Pani Sławo, jeśli mogę spytać, te skrzydła na twoich plecach... rozumiem, że nie jesteś człowiekiem?"~ */ EXTERN ~DANNAH~ 308
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("Dannah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61952 /* ~"Pani Sławo, jeśli mogę spytać, te skrzydła na twoich plecach... rozumiem, że nie jesteś człowiekiem?"~ */ EXTERN ~DMORTE~ 612
  IF ~  Global("Grace_Name","GLOBAL",0)
~ THEN REPLY #61953 /* ~"Skąd wzięło się imię 'Nie-Sława'?"~ */ GOTO 239
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61954 /* ~"Dlaczego nazywają cię 'Nie-Sława'?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61955 /* ~"Dlaczego nazywają cię 'Nie-Sława'?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61956 /* ~"Dlaczego nazywają cię 'Nie-Sława'?"~ */ GOTO 247
  IF ~  Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #61957 /* ~"Skąd wzięło się imię 'Nie-Sława'?"~ */ GOTO 248
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #61958 /* ~"Możesz mi powiedzieć co wiesz o Czuciowcach?"~ */ GOTO 216
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #61959 /* ~"Sławo, możesz nauczyć mnie czegokolwiek o Sztuce?"~ */ GOTO 267
  IF ~  NumInPartyLT(3)
~ THEN REPLY #61960 /* ~"Chciałbym porozmawiać o nas..."~ */ GOTO 279
  IF ~  NumInPartyGT(2)
~ THEN REPLY #61961 /* ~"Chciałbym porozmawiać o naszych towarzyszach..."~ */ GOTO 279
  IF ~~ THEN REPLY #61962 /* ~"Używasz czasem broni?"~ */ GOTO 349
  IF ~~ THEN REPLY #61963 /* ~"Mam kilka pytań w związku z naszymi podróżami..."~ */ GOTO 205
  IF ~~ THEN REPLY #61964 /* ~"Nieważne. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #39578 /* ~Nie-Sława odwraca się do Yves. "Nie mam żadnej opowieści, którą chciałabym się z tobą dzisiaj podzielić, Opowiadaczko. Nie mogę pozwolić, byś wyczerpała mój zbiór zanim znajdę nowe opowieści."~ */
  IF ~~ THEN REPLY #39755 /* ~Zapytaj kolejnego towarzysza.~ */ EXTERN ~DYVES~ 20
  IF ~~ THEN REPLY #39756 /* ~"Yves, mam dla ciebie opowieść."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39757 /* ~"W takim razie mam pytanie do Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39758 /* ~"W takim razie pójdziemy. Żegnaj, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #42093 /* ~"Uważam, że jest ślepa z wyboru, a nie przez przypadek."~ */
  IF ~~ THEN EXTERN ~DYVANA~ 14
END

IF ~~ THEN BEGIN 142 // from:
  SAY #44259 /* ~"Witaj, Mistrzu Gonkalfie."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 23
END

IF ~~ THEN BEGIN 143 // from:
  SAY #44261 /* ~"Moja prośba nie jest pilna, Mistrzu Gonkalfie, twoje umiejętności wymagają czasu, a to co wyjdzie z twych rąk z całą pewnością będzie ładne. Nie przyszłam jednak w tej sprawie. Ten człowiek..." Nie-Sława kłania ci się lekko. "...chciał z tobą przez chwilę pomówić..."~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 24
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49782 /* ~Nie-Sława przygląda się mu się z bliska. "Słyszałam już o tego rodzaju występach. Są dość popularne w kilku Pierwotnych Sferach..." Ścisza głos, tak, że tylko ty możesz ją usłyszeć. "...i bardzo nie lubiane w większości z nich."~ */
  IF ~~ THEN REPLY #49783 /* ~Zobacz czy możesz go dotknąć.~ */ EXTERN ~DMIME~ 2
  IF ~~ THEN REPLY #49784 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50078 /* ~"To zależy od rodzaju biesa, ale jestem pewna, że znajdziemy na niego sposób. Jeśli będzie to baatezu, będzie się targował o swoją wolność. Jeżeli będzie to tanar'ri, to by zapewnić sobie jego uległość musimy tylko zademonstrować wystarczająco silny argument." Uśmiecha się łagodnie. "Twoja broń pomoże ci zastąpić logikę."~ */
  IF ~~ THEN REPLY #50079 /* ~"Dobrze. Dono Kiszał, co mam zrobić?"~ */ EXTERN ~DQUISHO~ 5
  IF ~~ THEN REPLY #50080 /* ~"Nie popieram uwalniania biesów."~ */ EXTERN ~DQUISHO~ 4
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50147 /* ~"Domyślam się, że na uzyskanie konkretnej odpowiedzi nie ma co liczyć."~ */
  IF ~~ THEN REPLY #50148 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 147
  IF ~~ THEN REPLY #50252 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 147 // from: 146.0 148.0 149.0 150.2
  SAY #50149 /* ~Nie-Sława kiwa głową. "Tak, oczywiście."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50150 /* ~"Zapytaj go kim jest."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50239 /* ~"Zapytaj go kim jest."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50240 /* ~"Zapytaj go kim jest."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50241 /* ~"Zapytaj go co robi."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50242 /* ~"Zapytaj go co robi."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50243 /* ~"Zapytaj go co robi."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50244 /* ~"Poproś go, by opowiedział nam o Pani Bólu."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50245 /* ~"Poproś go, by opowiedział nam o Upadłym."~ */ GOTO 150
  IF ~~ THEN REPLY #50251 /* ~"Nieważne. Po prostu chodźmy stąd."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50179 /* ~"Powiedział, że jest 'dabusem'." Nie-Sława przerywa na chwilę. "Nigdy nie spotkałam żadnego dabusa, który podałby imię... a przynajmniej coś, co uznalibyśmy za imię. Wygląda na to, że mają słabość do używania symboli."~ */
  IF ~~ THEN REPLY #50180 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 147
  IF ~~ THEN REPLY #50181 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 149 // from:
  SAY #50193 /* ~"Powiedział, że to się wiąże z jego pracą." Odwraca się do ciebie. "Oni spędzają większość czasu naprawiając i rozbierając części miasta. Na wiele sposobów dbają o miasto."~ */
  IF ~~ THEN REPLY #50194 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 147
  IF ~~ THEN REPLY #50195 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 150 // from: 147.7
  SAY #50246 /* ~Nie-Sława marszczy brwi. "Nie jestem pewna, czy zadanie tego pytania byłoby mądrym posunięciem. Dabus może poczuć się urażony, bo Upadły nie jest już członkiem ich społeczności..."~ */
  IF ~~ THEN REPLY #50247 /* ~"Mimo to, możesz go zapytać?"~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50248 /* ~"Dość tej lektury, zapytaj go po prostu."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50249 /* ~"Możesz mu zadać jeszcze kilka pytań?"~ */ GOTO 147
  IF ~~ THEN REPLY #50250 /* ~"Nieważne. Ruszajmy."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 151 // from:
  SAY #50686 /* ~"Vriszika, nie wiem do jakiego przydziału się odwołujesz, ale twoja obecność pociąga za sobą wiele pytań. Gdy ostatnio o tobie słyszałam, służyłaś jako chorąży w Kompanii Sępów. W jaki sposób trafiłaś do Sigil?"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 5
END

IF ~~ THEN BEGIN 152 // from:
  SAY #50687 /* ~Nie-Sława mówi tak zimno jak jeszcze nie słyszałeś. Powietrze prawie zamarza, gdy wzrokiem tnie Vriszikę na kawałki. "Wystarczy."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 6
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50688 /* ~"To prawda, że sama..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 12
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50689 /* ~"Można się uwolnić od kontraktu z baatezu, jeśli jest się świadomym wagi danego słowa i jeśli się wie, że baatezu muszą dotrzymać danego słowa. Trzeba uważać na znaczenie słów... a ja dobrze *znam* mowę i jej zawiłości. Mimo to, nie była to łatwa sprawa..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 13
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50690 /* ~Nie-Sława utrzymuje swój niewzruszony spokój i po prostu kiwa głową... jednak, gdy napotykasz jej wzrok posyła ci spojrzenie zdradzające lekkie rozdrażnienie, a potem się uśmiecha.~ */
  IF ~~ THEN REPLY #50691 /* ~"Vrisziko, co mówiłaś o jej agentach?"~ */ EXTERN ~DVRISCH~ 14
  IF ~~ THEN REPLY #50692 /* ~"Vrisziko, mam jeszcze jedno pytanie..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50693 /* ~"Vrisziko, chciałbym zobaczyć twoje towary..."~ */ EXTERN ~DVRISCH~ 20
  IF ~~ THEN REPLY #50694 /* ~"To wszystko co chciałem wiedzieć, Vrisziko. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50695 /* ~"To nie jest zadanie jakie ma spełniać mój przybytek..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50696 /* ~"Vrisziko... on doskonale wie dlaczego zgodziłam się z nim podróżować... gdy mnie o to poprosił."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 17
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52554 /* ~"Ravelo..." Nie-Sława odpowiada łagodnie, prawie ostrożnie. "Pogodziłam się z m..."~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 37
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52555 /* ~"Bo miłość by na to nie pozwoliła - a ona może nagiąć do swej woli nawet najsilniejszych." Głos Nie-Sławy jest łagodny, pytający. "Nieprawdaż, Ravelo?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 130
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52556 /* ~"Ravelo, wszystkie istoty zasługują na takie uczucie." Nie-Sława mówi łagodnie. "Jednak historycy nie przypisują ci takich emocji..."~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 131
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52557 /* ~"Pani Bólu? Próbowałaś jej *pomóc*?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 188
END

IF ~~ THEN BEGIN 162 // from:
  SAY #52558 /* ~"Pani Bólu? Próbowałaś jej *pomóc*?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 187
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52559 /* ~Nie-Sława nic nie mówi. Wygląda na to, że uważnie obserwuje Ravelę... nagle nachodzi cię uczucie, że mierzy ją wzrokiem w poszukiwaniu jakiejś słabości.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 79
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52560 /* ~Nagle Nie-Sława staje w pozycji do walki, wyciąga ręce, palce układają się w ochronny gest. Jednak wyraz jej twarzy się nie zmienia - cokolwiek się zdarzy, wygląda na to, że się tego spodziewała.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 83
END

IF ~~ THEN BEGIN 165 // from:
  SAY #52971 /* ~I nagle Nie-Sława tam jest, a jej dotyk jest delikatny jak jedwab, ociera z łez twe oczy, nawet kiedy czujesz wzbierający w tobie krzyk. Uspokaja cię, tuląc twą twarz zalaną krwawymi łzami.~ */
  IF ~~ THEN REPLY #52972 /* ~"Ja... ja... nie... mogę... tego wytrzymać... ja... nie mogłem jej POWSTRZYMAĆ. CHCIAŁEM, ale nie mogłem *nic* zrobić...!"~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #52973 /* ~Nie-Sława patrzy ci w oczy i ze zrozumieniem smutno kiwa głową. "Na tym właśnie polega *tęsknota*. Pragnienie czegoś, czego nie można zmienić czy posiadać." Przygląda ci się uważnie, zabiera pokrytą twoją krwią dłoń. "Nic ci nie będzie?"~ */
  IF ~~ THEN REPLY #52974 /* ~"Tak... tak... potrzebuję tylko chwilkę..."~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52976 /* ~"Dobrze..." Nie-Sława cofa się. "Będziemy kontynuować, gdy będziesz gotowy."~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52977 /* ~Złap oddech, spróbuj pozbierać myśli.~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52978 /* ~Złap oddech, spróbuj pozbierać myśli.~ */ DO ~SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
~ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 168 // from:
  SAY #54023 /* ~"Doszłam tak daleko i byłoby to z mojej strony niegrzeczne, gdybym się wycofała w ostatniej godzinie." Uśmiecha się lekko. "Nie pozwoliłabym na to, nawet gdybyś uprzejmie poprosił."~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",16)
InParty("Annah")
~ THEN REPLY #54024 /* ~"Wygląda na to, że nie mam wyboru, w takim razie... Anno?"~ */ EXTERN ~DANNAH~ 273
  IF ~  NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",15)
InParty("Annah")
~ THEN REPLY #54025 /* ~"Wygląda na to, że nie mam wyboru, w takim razie... Anno?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("annah")
NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54026 /* ~"Wygląda na to, że nie mam wyboru, w takim razie... Dak'konie?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54027 /* ~"Wygląda na to, że nie mam wyboru, w takim razie... Dak'konie?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54028 /* ~"Wygląda na to, że nie mam wyboru, w takim razie... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54029 /* ~"Wygląda na to, że nie mam wyboru, w takim razie... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54030 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54031 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54032 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #54033 /* ~"To z powodu tego co Ravela powiedziała w labiryncie." Głos Nie-Sławy jest cichy, tak cichy, że prawie nie usłyszałeś. "Prawda, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 562
END

IF ~~ THEN BEGIN 170 // from:
  SAY #54034 /* ~"To z powodu tego co Ravela powiedziała w labiryncie i symbolu, który Upadły nam opisał." Głos Nie-Sławy jest cichy, tak cichy, że prawie nie usłyszałeś. "Prawda, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 563
END

IF ~~ THEN BEGIN 171 // from:
  SAY #54067 /* ~"Anno, tak mi przykro..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 268
END

IF ~~ THEN BEGIN 172 // from:
  SAY #54068 /* ~"Słup z Czaszek, to słup z żywych głów tych, którzy swoimi kłamstwami ściągnęli na kogoś śmierć. Potrafi odpowiedzieć na wiele pytań, bo wie bardzo dużo, ale za swoje usługi spodziewa się dużej zapłaty. Nie powinno mu się zadawać takich pytań."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 173 // from:
  SAY #54069 /* ~Nie-Sława zdaje się być niewzruszona twoim oświadczeniem, przenosi jedynie spojrzenie ze słupa na ciebie. "Z własnej woli nigdy bym nie dopuściła, by Słup z Czaszek mnie posiadł... ale jestem pewna, że ty to wiesz i tylko żartowałeś. Chyba nie chcesz obrazić słupa, więc..."~ */
  IF ~~ THEN REPLY #54070 /* ~Prawda: "Mówiłem poważnie. Właź tam, Sławo, albo sam cię tam wepchnę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_3","GLOBALGood",-1)
MoraleDec("Grace",3)
~ GOTO 174
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54071 /* ~"W porządku. Słupie, jakie *inne* prezenty przyjmujesz?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54072 /* ~"W porządku. Słupie, jakie *inne* prezenty przyjmujesz?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54073 /* ~"*Oczywiście*, że żartowałem. Ruszajmy."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54074 /* ~"*Oczywiście*, że żartowałem. Ruszajmy."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #54075 /* ~Nie-Sława przerywa przypatrując ci się uważnie. "Jesteś pewien, że chcesz tak zrobić? Naprawdę wrzuciłbyś mnie do Słupa z Czaszek?"~ */
  IF ~~ THEN REPLY #54076 /* ~"Tak."~ */ GOTO 175
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54077 /* ~"Nie. Słupie, jakie *inne* prezenty przyjmujesz?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54078 /* ~"Nie. Słupie, jakie *inne* prezenty przyjmujesz?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54079 /* ~"Nie. Chodźmy."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54080 /* ~"Nie. Chodźmy."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #54082 /* ~Spojrzenie Nie-Sławy staje się zimne jak lód, mimo to jej twarz i postawa zdradzają całkowity spokój. "W takim razie muszę cię pożegnać, Bezimienny. Jeśli uda ci się wydostać z Baator to może jeszcze się spotkamy." Mówiąc to rozprasza się w chmurę zielonej mgły.~ */
  IF ~~ THEN REPLY #54083 /* ~"Sławo..."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
StartCutSceneMode()
StartCutSceneEx("1001Cut2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #54765 /* ~Nie-Sława nabiera powietrza, "Deva... a mimo to, te łańcuchy nie wiążą go tak bardzo, jak duszą jego umysł..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 185
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54766 /* ~Nie-Sława nabiera powietrza, "Deva... a mimo to, te łańcuchy nie wiążą go tak bardzo, jak duszą jego umysł..."~ */
  IF ~~ THEN REPLY #54874 /* ~"Devo, mam do ciebie kilka pytań..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54767 /* ~"Nie zamierzam cię kusić, devo. Obawiam się, że zamknięcie źle na ciebie wpłynęło."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 34
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54768 /* ~"Nie zgadzam się, Lordzie Trias. Po prostu miałeś w duszy za dużo zaufania do nich."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 46
END

IF ~~ THEN BEGIN 180 // from:
  SAY #54769 /* ~Nagle Nie-Sława przerywa. "Jakie są twoje poglądy na Wojnę Krwi, Lordzie Trias?"~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 47
END

IF ~~ THEN BEGIN 181 // from:
  SAY #54770 /* ~Nie-Sława mówi cicho. "Jesteś pewien, że chcesz to zrobić? Ten deva może być jedynym sposobem byś odzyskał więcej wspomnień. Ravela nas do niego przysłała; zabijesz go zanim zdradzi swoje tajemnice?"~ */
  IF ~~ THEN REPLY #54875 /* ~Rozerwij łańcuchy krępujące Devę.~ */ EXTERN ~DTRIAS~ 50
  IF ~~ THEN REPLY #54876 /* ~Zabij Devę.~ */ EXTERN ~DTRIAS~ 98
  IF ~~ THEN REPLY #54877 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54771 /* ~"Wydaje ci się, że możesz zakończyć Wojnę Krwi przenosząc ją do bram Raju? Zło w Niższych Sferach jest niezliczone. Legiony Baator i Otchłani to odzwierciedlają. Zanim uzbroisz się w pompatyczną arogancję i nic więcej, powinieneś zwrócić uwagę na straszną moc zła skupioną na jednym zadaniu. Nie daj im powodu, by przenieść Wojnę Krwi do Wyższych Sfer, bo ucierpi cały wieloświat."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 78
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54772 /* ~"Można się uczyć od wielu rzeczy, jeśli się jest wystarczająco dobrym obserwatorem. Dobrze byłoby pamiętać, że mądry człowiek wykorzystuje każdą okazję, by się uczyć."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 79
END

IF ~~ THEN BEGIN 184 // from:
  SAY #55712 /* ~"Pomimo krytyki Mortego, tak naprawdę Mechanus to fascynujące miejsce. Nie ma tam nieba, tylko wielkie przekładnie, obracające się w przestrzeni... świecą zgodnie ze swymi cyklami, a efekt zapiera dech w piersiach. Logika i porządek tej Sfery mogą być bardzo odświeżające. Poza tym, jeśli wiesz dokąd pójść i czego poszukać, jest tam wystarczająco wiele rzeczy by rozproszyć nudę."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 577
END

IF ~~ THEN BEGIN 185 // from:
  SAY #55714 /* ~"Modrony dzielą wspólną energię. W pewien sposób jest to więź pomiędzy nimi wszystkimi. Gdy jeden z nich umiera, energia jest z powrotem wchłaniana do wspólnej puli i powstaje z niej nowy modron. A kiedy jakiś modron zostaje... rzezimieszkiem... wtedy zrywa więź ze swymi i zabiera małą część energii ze sobą."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55715 /* ~"Twierdzisz, że Nordom jest części tego Źródła, ale został od niego odcięty. A kiedy jakiś modron umiera to zostaje wchłonięty. Nordom też?"~ */ GOTO 188
  IF ~~ THEN REPLY #55717 /* ~"Cóż... Nordomie, ten Mechanus jest źródłem energii?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55719 /* ~"Rozumiem. Nordomie, mam do ciebie jeszcze kilka pytań..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55720 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #55722 /* ~Nie-Sława kiwa głową. "Morte ma rację - modrony dzielą wspólną energię. W pewnym sensie jest to więź pomiędzy nimi wszystkimi. Gdy jeden z nich umiera, energia jest z powrotem wchłaniana do wspólnej puli i powstaje z niej nowy modron. A kiedy jakiś modron... buntuje się... wtedy zrywa więź ze swymi i zabiera małą część energii ze sobą."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 579
END

IF ~~ THEN BEGIN 187 // from:
  SAY #55723 /* ~"Nie-Sława nieznacznie kiwa głową. "Przepraszam, Morte. Nie chciałam cię urazić."~ */
  IF ~~ THEN REPLY #55725 /* ~"Morte, potrzebuję wszystkich informacji, jakie mogę zdobyć, więc nie przeszkadzaj. Jeśli Nie-Sława ma coś do dodania, to chcę to usłyszeć, dobrze?"~ */ EXTERN ~DMORTE~ 580
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55727 /* ~"Twierdzisz, że Nordom jest części tego Źródła, ale został od niego odcięty. A kiedy jakiś modron umiera to zostaje wchłonięty. Nordom też?"~ */ EXTERN ~DMORTE~ 583
  IF ~~ THEN REPLY #55729 /* ~"Cóż... Nordomie, ten Mechanus jest źródłem energii?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55730 /* ~"W porządku. Nordomie, mam do ciebie jeszcze kilka pytań..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55731 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #55733 /* ~"Tak."~ */
  IF ~~ THEN REPLY #55735 /* ~"A kiedy umrze, powstanie następny Nordom?"~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #55736 /* ~"Energia Nordoma wróci do źródła, ale on przestanie istnieć. Jednak na jego miejsce zostanie stworzony następny modron."~ */
  IF ~~ THEN REPLY #55738 /* ~"Więc... buntując się, stał się... śmiertelny?"~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #55739 /* ~Nie-Sława kiwa głową. "Nie można zniszczyć czystej energii - o ile dobrze zrozumiałam - ale Nordom jako jednostka, jako 'Nordom' przestałby istnieć, tak."~ */
  IF ~~ THEN REPLY #55742 /* ~"W porządku. Nordomie, mam do ciebie jeszcze kilka pytań..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55743 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55745 /* ~"Morte..." Nie-Sława ostrożnie przerywa. "Muszę wyznać, że nie znając podstawowych informacji byłoby mi trudno wyjaśnić sytuację... używane przez ciebie zdania i metafory często sprawiają, że innym *dużo* łatwiej pojąć twoje wyjaśnienia. Dzięki temu jesteś znacznie lepszym nauczycielem niż ja."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56035 /* ~"Witaj, Adwokacie Piekieł Rozdwojony-Języku." Nie-Sława kiwa głową i kłania się lekko. "Rozważę twoją sugestię."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 29
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56036 /* ~Nie-Sława wygląda na zdezorientowaną. "Czy Adwokat Piekieł Rozdwojony-Język sugeruje, że tanar'ri to nieokrzesany lud?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 61
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56037 /* ~"Z pewnością sprzeciwiasz się tylko metodom szerzenia zła, a nie jego zasięgowi. Wielu spośród tanar'ri powiedziałoby, że im ktoś jest bliżej pierwotnej natury zła, tym bliżej jest ideału."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 62
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56038 /* ~"Z punktu widzenia baatezu to faktycznie może być nie do zniesienia. Chociaż... Adwokacie, wielu filozofów tanar'ri mogłoby się spierać, że baatezu w nie mniejszym stopniu są usprawiedliwieni z zamiłowania do przemocy, zamiłowania, które wynika z samej esencji zła. Baatezu zastępują szał zimnym, metodycznym okrucieństwem. W ten sposób można kontynuować stare rozważania: Które Zło jest większe? Wydajne, czy wynikające z zamiłowania?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56683 /* ~"Znam sprawiedliwość, Vhailorze. Godzę ją z doświadczeniem i mądrością, a kiedy sprawiedliwość zostaje pogodzona z tymi dwoma prawdami staje się *silniejsza*. Znam także łaskę i przebaczenie, bo bez nich Sfery byłyby znacznie bardziej okrutnym miejscem."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 111
END

IF ~~ THEN BEGIN 197 // from:
  SAY #56688 /* ~"Nie, Vhailorze, nieprawda. Są instrumentami, przez które można odkupić następną duszę, wynieść i wzmocnić. Gdy tak się dzieje, *wieloświat* zostaje wzmocniony. I tu właśnie leży doskonałość o której mówisz."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 112
END

IF ~~ THEN BEGIN 198 // from:
  SAY #56689 /* ~Przy tych słowach Nie-Sława podsuwa się bliżej. "Tak Vhailorze? Więc *osądź* mnie wzrokiem, przekonaj się czy będę tego chciała. Przekonaj się, czy potrafisz znaleźć słabość, która jak twierdzisz mnie pożera."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ EXTERN ~DVHAIL~ 113
END

IF ~~ THEN BEGIN 199 // from:
  SAY #56690 /* ~"W tej kwestii mamy odmienne zdanie Vhailorze."~ */
  IF ~~ THEN REPLY #56691 /* ~"Vhailorze, pozwól że zapytam jeszcze o coś."~ */ EXTERN ~DVHAIL~ 91
  IF ~~ THEN REPLY #56692 /* ~"Dość już tego, Vhailorze. Mam do ciebie kilka pytań..."~ */ EXTERN ~DVHAIL~ 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56693 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56694 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56695 /* ~"Przestać ją wypytywać, Vhailorze." Słowa wypowiadane przez Nie-Sławę nie zawierają żadnej, najlżejszej groźby, ale brzmią niebezpiecznie. "To nie sąd, a w mojej obecności nie będziesz jej sądził. Zostaw ją w spokoju."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 101
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56696 /* ~"Vhailorze, by to zrobić musisz najpierw przejść przeze mnie. Nie pozwolę by ktoś ją zranił."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 102
END

IF ~~ THEN BEGIN 202 // from:
  SAY #61423 /* ~Nie-Sława kiwa głową, jakby zgodziła się dać wam chwilę na osobności. "Niedługo wrócę." Odwraca się i odchodzi.~ */
  IF ~~ THEN REPLY #61424 /* ~Idź za ladacznicą...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 8
END

IF ~~ THEN BEGIN 203 // from: 121.0 121.1 121.4
  SAY #61635 /* ~Nie-Sława kiwa głową. "Dobrze. Będę z tobą podróżować, jeśli wciąż pragniesz mego towarzystwa."~ */
  IF ~~ THEN REPLY #61642 /* ~"Tak."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 121.2 121.3
  SAY #61641 /* ~"Ach!" Nie-Sława śmieje się cicho, a jej oczy rozbłyskają. "Zaiste, praktyczny pomysł. Dobrze. Będę z tobą podróżować, jeśli wciąż pragniesz mego towarzystwa."~ */
  IF ~~ THEN REPLY #61643 /* ~"Tak."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 205 // from: 139.17 207.3 208.3 209.2 210.1 211.2 212.1 219.4 220.3 221.3 222.3 223.4 224.5 225.5 226.5 227.4 228.4 229.1 230.1 231.1 233.1 234.3 235.3 236.3 237.2 252.3 253.3 254.2 255.4 256.2 257.2 258.2 259.2 260.2 261.1 262.3 264.2 266.0 277.1 278.0 348.0 349.1 350.0 351.1 352.1 353.1 354.1 355.1 356.0
  SAY #61781 /* ~"Tak?"~ */
  IF ~~ THEN REPLY #61974 /* ~"Dlaczego założyłaś ten Przybytek?"~ */ GOTO 207
  IF ~~ THEN REPLY #61975 /* ~"Mogę przeczytać twój pamiętnik?"~ */ GOTO 277
  IF ~  Global("Know_Yves_Grace","GLOBAL",1)
Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61976 /* ~"Yves powiedziała, że znasz opowieść, której nie chcesz jej opowiedzieć."~ */ GOTO 351
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #61977 /* ~"Chciałbym jeszcze raz usłyszeć o twojej przeszłości."~ */ GOTO 352
  IF ~  GlobalGT("Know_Grace_ExSlave","GLOBAL",0)
~ THEN REPLY #61978 /* ~"Vriszika chyba niezbyt cię lubi."~ */ GOTO 255
  IF ~  GlobalGT("Torment_Fell","GLOBAL",0)
~ THEN REPLY #61979 /* ~"Możesz mi opowiedzieć o tym symbolu, który mam na ramieniu?"~ */ GOTO 348
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #61980 /* ~"Słyszałaś kiedykolwiek o nocnej wiedźmie nazywanej Ravelą?"~ */ GOTO 229
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #61981 /* ~"Możesz mi jeszcze raz powiedzieć, co wiesz Raveli?"~ */ GOTO 234
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #61982 /* ~"Co wiesz o Wojnie Krwi?"~ */ GOTO 219
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #61983 /* ~"Gdy byliśmy w labiryncie Raveli, powiedziała, że jesteś udręczona... boli cię coś?"~ */ GOTO 263
  IF ~~ THEN REPLY #61984 /* ~"Właściwie mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #61985 /* ~"Nieważne. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 139.0
  SAY #61782 /* ~"Tanar'ri to biesy - niektórzy nazywają je 'demonami'. Za sprawą chaosu oddały się złu. Mieszkają w zatrutych sferach Otchłani, karmiąc się własną wściekłością. Atakują w całym wieloświecie, niszczą wszystko co stanie im na drodze. Zawsze starają się nakłonić innych, by z powodu namiętności i wad popełniali zbrodnie."~ */
  IF ~~ THEN REPLY #61986 /* ~"Jesteś jedną z tanar'ri?"~ */ GOTO 213
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61987 /* ~"W jaki sposób trafiłaś do Sigil?"~ */ GOTO 352
  IF ~~ THEN REPLY #61988 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #61989 /* ~"Dzięki za wyjaśnienia... ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #61783 /* ~"Założyłam ten przybytek, by dać lubieżnym napaleńcom coś więcej niż prostą cielesną przyjemność. Rozmowa i wykorzystanie sztuki mówienia może dostarczać sporo przyjemności."~ */
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",1)
~ THEN REPLY #61991 /* ~"Dlaczego założyłaś takie miejsce?"~ */ GOTO 210
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",0)
~ THEN REPLY #61992 /* ~"Dlaczego założyłaś takie miejsce?"~ */ GOTO 208
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61993 /* ~"Jeśli pochodzisz z Otchłani, to w jaki sposób trafiłaś do Sigil?"~ */ GOTO 352
  IF ~~ THEN REPLY #61994 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #61995 /* ~"Dzięki za wyjaśnienia... ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.1
  SAY #61784 /* ~Nie-Sława unosi brew. "To dziwne pytanie." Marszczy brwi. "Nie sądzę, by ktokolwiek mnie o to pytał. A przynajmniej nie bezpośrednio."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #61996 /* ~"Przepraszam, Pani Sławo. Nie chciałem być aż tak bezpośredni. Byłem tylko ciekawy."~ */ GOTO 209
  IF ~~ THEN REPLY #61997 /* ~"Więc... dlaczego to zrobiłaś?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #61998 /* ~"Cóż, wydaje się dziwne, że sukkub mógłby założyć takie miejsce... jego przeznaczenie jest chyba sprzeczne z twoją naturą."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62000 /* ~"Cóż, nieważne. Mogę zadać kilka innych pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62002 /* ~"Zapomnij o wyjaśnieniach... ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #61990 /* ~"Och, przeprosiny nie są konieczne. Bardzo chętnie podyskutuję o przyczynach, jeśli masz ochotę."~ */
  IF ~~ THEN REPLY #62011 /* ~"Tak, chciałbym je usłyszeć."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #62012 /* ~"Cóż, wydaje się dziwne, że sukkub mógłby założyć takie miejsce... jego przeznaczenie jest chyba sprzeczne z twoją naturą."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62015 /* ~"Nie w tej chwili. Mogę ci zadać kilka innych pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62016 /* ~"Może innym razem... ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 207.0 208.1 208.2 209.0 209.1
  SAY #62004 /* ~"Abyś zrozumiał część odpowiedzi na pytanie musisz wiedzieć, że jestem członkinią Stronnictwa Doznań. Uważamy, że każdy powinien doświadczyć z wieloświata tak dużo jak tylko to możliwe."~ */
  IF ~~ THEN REPLY #62006 /* ~"Dlatego założyłaś Przybytek?"~ */ GOTO 211
  IF ~~ THEN REPLY #62008 /* ~"Rozumiem; nie musisz już więcej wyjaśniać. Mogę zadać kilka innych pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62010 /* ~"Dzięki za wyjaśnienia... ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #62017 /* ~"Zadaniem tego przybytku jest zaspokajanie żądz nawet najbardziej zatwardziałych intelektualistów. Został przygotowany, by inspirować umysł, rozwijać świadomość siebie i innych, by stworzyć nowe sposoby na *doświadczenie* drugiej osoby. Jest dla tych, którzy poszukują czegoś więcej niż płytkie fizyczne rozkosze jakie można znaleźć w Ulu i Niższych Dzielnicach."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62018 /* ~"Cóż, nie nazwał bym ich... ee, to znaczy, rozumiem to. Więc Przybytek jest pewnego rodzaju szkołą?"~ */ GOTO 212
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62019 /* ~"Rozumiem. Więc ten przybytek tylko zachęca do zapasów słownych, a nie, cóż do *innych* zapasów. Więc Przybytek jest pewnego rodzaju szkołą?"~ */ GOTO 212
  IF ~~ THEN REPLY #62020 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62021 /* ~"Dzięki za wyjaśnienia... ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0 211.1
  SAY #62023 /* ~"Tak. Mam nadzieję, że doskonaląc sztukę wysławiania się i jej zawiłości klienci i studentki mogą zdobyć więcej wiedzy o nich samych. Jedna osoba jest tak ograniczona jak jej kontrola nad językiem. Wykorzystanie języka, by wzbudzać w innych emocje, to wspaniała umiejętność."~ */
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #62024 /* ~"Jeśli pochodzisz z Otchłani, to w jaki sposób trafiłaś do Sigil?"~ */ GOTO 352
  IF ~~ THEN REPLY #62025 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62026 /* ~"Dzięki za wyjaśnienia... ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 206.0
  SAY #62027 /* ~"To prawda. Jestem mniejszym tanar'ri, a dokładniej sukkubem." Wzdycha miękko. "Obawiam się, że w Niższych Sferach i wszędzie indziej jest nas trochę zbyt dużo. Większość z mojej rasy spędza czas uwodząc śmiertelników różnymi przyjemnościami ciała."~ */
  IF ~~ THEN REPLY #62028 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 215
  IF ~~ THEN REPLY #62029 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 139
  IF ~~ THEN REPLY #62030 /* ~"Dość już usłyszałem. Ruszajmy."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 139.1 139.4
  SAY #62031 /* ~"Jestem mniejszym tanar'ri, a dokładniej sukkubem." Wzdycha miękko. "Obawiam się, że w Niższych Sferach i wszędzie indziej jest nas trochę zbyt dużo. Większość z mojej rasy spędza czas na uwodzeniu śmiertelników różnymi przyjemnościami ciała."~ */
  IF ~~ THEN REPLY #62032 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 215
  IF ~~ THEN REPLY #62033 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ GOTO 139
  IF ~~ THEN REPLY #62034 /* ~"Dość już usłyszałem. Ruszajmy."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Nie-Sława powiedziała, że jest sukkubem, "mniejszym tanar'ri", jednym z biesów, które wędrują po Niższych Sferach. Najwyraźniej jej gatunek wyszukuje śmiertelników, a następnie uwodzi ich, zabierając dusze do Otchłani. Urocze.~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.0 214.0
  SAY #62035 /* ~"Chciałabym uważać, że się od tego zdystansowałam... ostatecznie to banalny i bezproduktywny sposób na spędzanie czasu tu, w wieloświecie. Można doświadczyć o wiele więcej, nie sądzisz?"~ */
  IF ~~ THEN REPLY #62036 /* ~"Możliwe. Mogę ci zadać kilka innych pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62037 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 139.12
  SAY #62038 /* ~"Czuciowcy to jedna z frakcji w Sigil, oddana zdobywaniu doświadczeń. Bez doświadczeń, bez emocji nie dostrzegamy w wieloświecie mnóstwa rzeczy. Tak więc Czuciowcy chcą doświadczyć jak najwięcej - kiedy doświadczą już wszystkiego wtedy poznają sens życia."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #62039 /* ~"Ciekawa filozofia. Mógłbym wstąpić do Czuciowców?"~ */ GOTO 217
  IF ~~ THEN REPLY #62040 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62041 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #62042 /* ~Uśmiecha się. "Aby zostać Czuciowcem trzeba być tylko studentem życia."~ */
  IF ~~ THEN REPLY #62043 /* ~"Miałem na myśli, że chciałbym wstąpić do ich frakcji."~ */ JOURNAL #27464 /* ~Nie-Sława zasugerowała, abym udał się do Miejskiego Gmachu Rozrywki, jeśli chcę dołączyć do Stronnictwa Doznań. Powiedziała, że jest tam ktoś, kto powinien mi pomóc.~ */ GOTO 218
  IF ~~ THEN REPLY #62044 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62045 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #62046 /* ~"Oczywiście... wybacz mi mój żart." Nie-Sława kiwa głową. Jeśli chcesz dołączyć do Czuciowców powinieneś zapytać kogoś w Gmachu Rozrywek. Tam ktoś powinien ci pomóc."~ */
  IF ~~ THEN REPLY #62047 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62048 /* ~"Dobrze. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 205.8 236.1 294.0 294.1 337.0 337.1 338.0 338.1
  SAY #62049 /* ~"Wojna Krwi to konflikt rozgrywający się pomiędzy baatezu i tanar'ri w Niższych Sferach. Walczą o to, czy zło powinno być praworządne, czy chaotyczne." Nie-Sława przerywa na chwilę. "Najlepiej za wszelką cenę jej unikać. Niech tanar'ri i baatezu rozbijają sobie łby i zostawią resztę Sfer w spokoju... lub przynajmniej we względnym spokoju."~ */
  IF ~~ THEN REPLY #62050 /* ~"Względnym spokoju?"~ */ GOTO 220
  IF ~~ THEN REPLY #62051 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62052 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62053 /* ~"Brałaś w niej udział?"~ */ GOTO 223
  IF ~~ THEN REPLY #62054 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62055 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0 221.0 222.0 223.1 224.1 225.1 226.1 227.0 228.0
  SAY #62056 /* ~"Cóż, ta wojna ma taki zasięg, że większość ras bierze w niej udział nawet wbrew swej woli. Ignorowanie jej często bywa tak samo niebezpieczne jak udział w niej."~ */
  IF ~~ THEN REPLY #62057 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62058 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62059 /* ~"Brałaś w niej udział?"~ */ GOTO 223
  IF ~~ THEN REPLY #62060 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62061 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1 220.0 222.1 223.2 224.2 225.2 226.2 227.1 228.1
  SAY #62062 /* ~"Czasami tak. W Wojnie Krwi bierze udział pewna liczba ludzkich najemników. Służą zarówno jako żołnierze, mięso armatnie jak i żywność dla biesów."~ */
  IF ~~ THEN REPLY #62063 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62064 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62065 /* ~"Brałaś w niej udział?"~ */ GOTO 223
  IF ~~ THEN REPLY #62066 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62067 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 219.2 220.1 221.1 223.3 224.3 225.3 226.3 227.2 228.2
  SAY #62068 /* ~"Zgodnie z kronikami, Wojna Krwi toczy się od czasu, gdy baatezu spotkały się z tanar'ri... bardzo, ale to bardzo dawno temu. Nie wiem czy jest ludzkie określenie oddające ten czas jaki upłynął od tego momentu." Nie-Sława potrząsa głową. "Obawiam się, że ani baatezu, ani tanar'ri nigdy nie uzyskali przewagi."~ */
  IF ~~ THEN REPLY #62069 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62070 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62071 /* ~"Brałaś w niej udział?"~ */ GOTO 223
  IF ~~ THEN REPLY #62072 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62073 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 219.3 220.2 221.2 222.2 228.3
  SAY #62074 /* ~"Nie. Ale moja matka brała. Sukkuby zwykle kusiły śmiertelników, by ściągnąć ich dusze do Otchłani i stworzyć więcej tanar'ri, które mogłyby zginąć w Wojnie Krwi."~ */
  IF ~~ THEN REPLY #62075 /* ~"Twoja matka? Brała udział w Wojnie Krwi?"~ */ GOTO 224
  IF ~~ THEN REPLY #62076 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62077 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62078 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62079 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62080 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #62081 /* ~"Tak. Była jedną z najlepszych, uwiodła niezliczone rzesze śmiertelnych mężczyzn. Teraz mieszka w Otchłani i sprzedaje w niewolę swe dzieci."~ */
  IF ~~ THEN REPLY #62082 /* ~"Zostałaś... sprzedana w niewolę przez własną matkę?"~ */ GOTO 225
  IF ~~ THEN REPLY #62083 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62084 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62085 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62086 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 228
  IF ~~ THEN REPLY #62087 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62088 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #62089 /* ~"Na jakiś czas. Wygrałam wolność w konkursie improwizacji. Było to bardzo dawno temu."~ */
  IF ~~ THEN REPLY #62090 /* ~"Komu cię sprzedała?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Nie-Sława powiedziała mi, że jej własna matka sprzedała ją w niewolę... nikomu innemu jak baatezu - znienawidzonym wrogom tanar'ri. Najwyraźniej Nie-Sława wygrała wolność od swego pana w konkursie improwizacji. Nie zagłębiała się w szczegóły.~ */ GOTO 226
  IF ~~ THEN REPLY #62091 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62092 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62093 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62094 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 228
  IF ~~ THEN REPLY #62095 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62096 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #62105 /* ~"Sprzedała mnie baatezu. Chyba oczekiwała, że mnie zabiją. Pomimo wiedzy z innych dziedzin nie jest zbyt obeznana z ich kulturą."~ */
  IF ~~ THEN REPLY #62106 /* ~"Sprzedała cię zaprzysięgłym wrogom tanar'ri?"~ */ GOTO 227
  IF ~~ THEN REPLY #62107 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62108 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62109 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62110 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 228
  IF ~~ THEN REPLY #62111 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62112 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #62113 /* ~"Tak." Nie-Sława przysuwa się bliżej. "Chciałeś wiedzieć jeszcze coś?"~ */
  IF ~~ THEN REPLY #62114 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62115 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62116 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62117 /* ~"Czy te pytania są dla ciebie kłopotliwe?"~ */ GOTO 228
  IF ~~ THEN REPLY #62118 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62119 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 224.4 225.4 226.4 227.3
  SAY #62120 /* ~"O nie, wcale. Wystarczy, że będziesz wiedział to: Wojna Krwi leży u podstaw większości wydarzeń w Sferach. Ważne jest zrozumienie czym jest i dlaczego się toczy."~ */
  IF ~~ THEN REPLY #62121 /* ~"Powiedziałaś, że tak długo jak toczy się wojna reszta Sfer ma 'względny spokój'?"~ */ GOTO 220
  IF ~~ THEN REPLY #62122 /* ~"Używają ludzkich oddziałów?"~ */ GOTO 221
  IF ~~ THEN REPLY #62123 /* ~"Od jak dawna to trwa?"~ */ GOTO 222
  IF ~~ THEN REPLY #62124 /* ~"Brałaś w niej udział?"~ */ GOTO 223
  IF ~~ THEN REPLY #62125 /* ~"Mam kilka innych pytań, nie dotyczą Wojny Krwi."~ */ GOTO 205
  IF ~~ THEN REPLY #62126 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 205.6
  SAY #62127 /* ~"Znam to imię." Nie-Sława przerywa i zastanawia się przez chwilę. "Wokół tego imienia kłębią się plotki, większość odrzuca ją jako mit, ale podejrzewam, że istniała naprawdę i podczas pobytu w Klatce zrobiła niezłe wrażenie." Wygląda jakby się nad czymś zastanawiała. "Dlaczego pytasz?"~ */
  IF ~~ THEN REPLY #62128 /* ~"Zamierzam ją odnaleźć."~ */ GOTO 230
  IF ~~ THEN REPLY #62129 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62130 /* ~"Bez powodu... Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #62131 /* ~Nie-Sława unosi brew. "Naprawdę? Czy mogłabym wiedzieć dlaczego?"~ */
  IF ~~ THEN REPLY #62132 /* ~"Potrzebuję informacji, którą ona posiada."~ */ GOTO 231
  IF ~~ THEN REPLY #62133 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62134 /* ~"Bez powodu... Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #62135 /* ~"Ta informacja nie jest dostępna od nikogo innego?"~ */
  IF ~~ THEN REPLY #62136 /* ~"Podejrzewam, że tylko Ravela dysponuje wiedzą, której potrzebuję."~ */ JOURNAL #27460 /* ~Nie-Sława powiedziała mi, że jej własna matka sprzedała ją w niewolę... nikomu innemu jak baatezu - znienawidzonym wrogom tanar'ri. Najwyraźniej Nie-Sława wygrała wolność od swego pana w konkursie improwizacji. Nie zagłębiała się w szczegóły.~ */ GOTO 232
  IF ~~ THEN REPLY #62137 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62138 /* ~"Nie wiem, ale zamierzam się dowiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #62139 /* ~Nie-Sława łagodnie kładzie dłoń na twym ramieniu. "Weź pod uwagę to - jeśli Ravela naprawdę istnieje, to jest skrajnie przebiegła i niebezpieczna. Jeśli choć część opowieści o jej poczynaniach jest prawdziwa, to jest istotą, która odkryła nowe znaczenie zła. Szukanie jej nie jest zadaniem, jakiego łatwo się podjąć."~ */
  IF ~~ THEN REPLY #62140 /* ~"Zdaję sobie z tego sprawę."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #62141 /* ~"Cóż nigdy nie spotkałam mitu. To dopiero będzie wycieczka." Uśmiecha się. "Nigdy nie próbujesz robić nic nudnego?"~ */
  IF ~~ THEN REPLY #62142 /* ~"Staram się tego nie robić... wiesz coś jeszcze o Raveli?"~ */ GOTO 234
  IF ~~ THEN REPLY #62145 /* ~"Nie, jeśli mogę coś na to poradzić. Mogę ci zadać kilka innych pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62146 /* ~"Mogłem to robić w innych wcieleniach, ale nie wiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 205.7 233.0
  SAY #62147 /* ~"Mówiło się, że była jedną z wiedźm z Szarego Pustkowia, sądzono, że byłą znacznie bardziej potężna i przebiegła niż jej siostry. Przybyła do Sigil dawno temu. A plotka głosi, że poza samym złem, które popełniła podczas pobytu, jej działania zagroziły samej Klatce. Teraz egzystuje głównie jako legenda, postać z bajek dla dzieci." Nie-Sława przerywa na chwilę. "Podejrzewam, że poradziła sobie z nią Pani Bólu, tak jak radzi sobie z każdym zagrożeniem dla Sigil."~ */
  IF ~~ THEN REPLY #62148 /* ~"Jak?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 235
  IF ~~ THEN REPLY #62149 /* ~"Co to są Szare Pustkowia?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 236
  IF ~~ THEN REPLY #62150 /* ~"Czy jest jeszcze ktoś, kto mógłby coś o niej wiedzieć?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 237
  IF ~~ THEN REPLY #62151 /* ~"Mogę zadać kilka pytań?"~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ GOTO 205
  IF ~~ THEN REPLY #62152 /* ~"Rozumiem. Ruszajmy."~ */ JOURNAL #27458 /* ~Nie-Sława powiedziała, że Ravela jest nocną wiedźmą, jedną z szarych sióstr wędrujących po Szarym Pustkowiu. Włada znacznie większą mocą niż jej siostry i już dawno temu przybyła do Sigil. Podczas pobytu rozdrażniła Panią Bólu i została ukarana.~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0 236.0 237.0
  SAY #62153 /* ~"Najprawdopodobniej została wtrącona do labiryntu. Jednego z więzień Pani."~ */
  IF ~~ THEN REPLY #62154 /* ~"Do labiryntu? Co to jest?"~ */ JOURNAL #27457 /* ~Nie-Sława powiedziała, że Ravela jest uwięziona w jednym z labiryntów Pani Bólu.~ */ GOTO 252
  IF ~~ THEN REPLY #62155 /* ~"Co to są Szare Pustkowia?"~ */ GOTO 236
  IF ~~ THEN REPLY #62156 /* ~"Czy jest jeszcze ktoś, kto mógłby coś o niej wiedzieć?"~ */ GOTO 237
  IF ~~ THEN REPLY #62157 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62158 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 234.1 235.1 237.1 252.1 253.1 254.0
  SAY #62159 /* ~"Zniszczona sfera, która oddziela Baator od Otchłani. Często jest polem bitwy w Wojnie Krwi."~ */
  IF ~~ THEN REPLY #62160 /* ~"Wiesz co stało się z Ravelą?"~ */ GOTO 235
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62161 /* ~"Wystarczy na temat Raveli. Co to jest Wojna Krwi?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~~ THEN REPLY #62162 /* ~"Czy jest jeszcze ktoś, kto mógłby coś o niej wiedzieć?"~ */ GOTO 237
  IF ~~ THEN REPLY #62163 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62164 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2 235.2 236.2 252.2 253.2 254.1
  SAY #62165 /* ~"Ktoś z Gmachu Rozrywek może wiedzieć o niej więcej."~ */
  IF ~~ THEN REPLY #62166 /* ~"Wiesz co stało się z Ravelą?"~ */ JOURNAL #27457 /* ~Nie-Sława powiedziała, że Ravela jest uwięziona w jednym z labiryntów Pani Bólu.~ */ GOTO 235
  IF ~~ THEN REPLY #62167 /* ~"Co to są Szare Pustkowia?"~ */ JOURNAL #27457 /* ~Nie-Sława powiedziała, że Ravela jest uwięziona w jednym z labiryntów Pani Bólu.~ */ GOTO 236
  IF ~~ THEN REPLY #62168 /* ~"Mogę zadać kilka pytań?"~ */ JOURNAL #27457 /* ~Nie-Sława powiedziała, że Ravela jest uwięziona w jednym z labiryntów Pani Bólu.~ */ GOTO 205
  IF ~~ THEN REPLY #62169 /* ~"Może tam się skierujemy. Ruszajmy."~ */ JOURNAL #27457 /* ~Nie-Sława powiedziała, że Ravela jest uwięziona w jednym z labiryntów Pani Bólu.~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from:
  SAY #62170 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from: 139.7
  SAY #62171 /* ~"Znaczenie imion to dość złożony temat. Wiele jest do powiedzenia, ale jeszcze lepiej zostawić sporo niedopowiedziane."~ */
  IF ~~ THEN REPLY #62172 /* ~"Czy Nie-Sława to twoje prawdziwe imię?"~ */ GOTO 240
  IF ~~ THEN REPLY #62173 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62175 /* ~"Nie będziemy o tym więcej rozmawiać. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #62176 /* ~"Możliwe." Uśmiecha się lekko. "A może nie. Są imiona które się dostaje, a na inne trzeba zasłużyć. Kto odróżni które jest prawdziwe, a które nie. Nie ja."~ */
  IF ~~ THEN REPLY #62178 /* ~"Wydaje mi się, że imię, na które trzeba zasłużyć ma większą wagę."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",1)
~ GOTO 241
  IF ~~ THEN REPLY #62179 /* ~"Wydaje mi się, że imię, które się dostaje ma większą wagę."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",2)
~ GOTO 242
  IF ~~ THEN REPLY #62181 /* ~"Nie jestem pewien, czy przywiązuję jakąś wagę do imion."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",3)
~ GOTO 243
  IF ~~ THEN REPLY #62182 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62183 /* ~"Nie będziemy o tym więcej rozmawiać. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #62184 /* ~"Możliwe. Dlaczego tak uważasz?"~ */
  IF ~~ THEN REPLY #62185 /* ~"Bo imię, na które trzeba zasłużyć nie jest przypadkowe. Imię, na które zasłużyłeś zdradza co udało ci się osiągnąć."~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 240.1
  SAY #62186 /* ~"Możliwe. Dlaczego tak uważasz?"~ */
  IF ~~ THEN REPLY #62187 /* ~"Po przedstawia w jaki sposób ludzie cię postrzegają. A ich obserwacje mogą przeważyć twoje samozrozumienie."~ */ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 240.2
  SAY #62188 /* ~Przygląda ci się z zaciekawieniem. "Naprawdę?"~ */
  IF ~~ THEN REPLY #62189 /* ~"Imię jest płaszczem z liter, narzuconym na osobę, niczym więcej. Imię może ci czasem powiedzieć do jakiej frakcji należy dana osoba, może nawet ją opisać, ale nie powie ci *kim* jest ta osoba."~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 241.0 242.0 243.0
  SAY #62190 /* ~Nie-Sława kiwa głową.~ */
  IF ~  Global("Grace_Name","GLOBAL",1)
~ THEN REPLY #62191 /* ~"Dlaczego nazywają cię Nie-Sławą?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
~ THEN REPLY #62192 /* ~"Dlaczego nazywają cię Nie-Sławą?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
~ THEN REPLY #62193 /* ~"Dlaczego nazywają cię Nie-Sławą?"~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 139.8 244.0
  SAY #62194 /* ~"Ma to znaczenie?" Uśmiecha się. "Zasłużyłam na to imię."~ */
  IF ~~ THEN REPLY #62195 /* ~"Dla mnie ma. Chciałbym wiedzieć skąd wzięło się to imię."~ */ GOTO 248
END

IF ~~ THEN BEGIN 246 // from: 139.9 244.1
  SAY #62196 /* ~"Ma to znaczenie?" Uśmiecha się. "Dostałam to imię."~ */
  IF ~~ THEN REPLY #62197 /* ~"Dla mnie ma. Chciałbym wiedzieć skąd wzięło się to imię."~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 139.10 244.2
  SAY #62198 /* ~"Ma to znaczenie? Uśmiecha się. "To tylko płaszcz z liter."~ */
  IF ~~ THEN REPLY #62199 /* ~"Dla mnie ma. Chciałbym wiedzieć skąd wzięło się to imię."~ */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 139.11 245.0 246.0 247.0
  SAY #62200 /* ~"Popadłam w niesławę u mojego ludu... niektórzy mogliby powiedzieć, że wzniosłam się ponad mój lud, ale *czuję*, że to imię bardziej do mnie pasuje." Patrzy na ciebie pytająco. "Czy to ma sens?"~ */
  IF ~~ THEN REPLY #62201 /* ~"Tak, ma. To imię podkreśla poczucie straty."~ */ GOTO 249
  IF ~~ THEN REPLY #62202 /* ~"Ma. Mogę ci zadać kilka innych pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62203 /* ~"Tak... wydaje mi się, że rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #62204 /* ~Nie-Sława przez chwilę jest cicha, potem w zamyśleniu kiwa głową. "Tak... może właśnie dlatego tak to czułam. Ja... pogodziłam się ze stratą dawno temu, ale imię pozostało."~ */
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62205 /* ~"Jesteś pewna, że się z tym pogodziłaś?"~ */ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62206 /* ~"Jesteś pewna, że się z tym pogodziłaś? Ravela chyba tak nie uważała."~ */ GOTO 263
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62207 /* ~"Jesteś pewna, że się z tym pogodziłaś?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62208 /* ~"Jesteś pewna, że się z tym pogodziłaś? Ravela chyba tak nie uważała."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 263
  IF ~~ THEN REPLY #62209 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62210 /* ~"Rozumiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 250 // from: 249.0 249.2
  SAY #62211 /* ~Nie-Sława napotyka twój wzrok i ponownie uderza cię błękit jej oczu... burzliwy, jak ocean przed sztormem. "Tak myślałam. Teraz, dzięki rozmowie z tobą zdałam sobie z czegoś sprawę." Uśmiecha się. "Dziękuję."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62212 /* ~"Cóż, daj mi znać jeśli będziesz chciała o tym porozmawiać, dobrze?"~ */ GOTO 251
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62213 /* ~"Cóż, daj mi znać jeśli będziesz chciała o tym porozmawiać, dobrze?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 251
  IF ~~ THEN REPLY #62214 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62215 /* ~"W porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 250.0 250.1
  SAY #62216 /* ~Kiwa głową. "Jesteś bardzo uprzejmy. Tak zrobię."~ */
  IF ~~ THEN REPLY #62217 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62218 /* ~"W porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 235.0
  SAY #62219 /* ~Nie-Sława łączy dłonie, palce stykają się tworząc nierówny okrąg. "Mówi się, że Pani posiada Moc, która pozwala jej wziąć kawałek Sigil..." Zaskoczony patrzysz jak eteryczny wizerunek małego palca Nie-Sławy odrywa się od dłoni i unosi się w powietrze, układając się w małe koło. "...i stworzyć labirynt."~ */
  IF ~~ THEN REPLY #62220 /* ~"Mów dalej..."~ */ GOTO 253
  IF ~~ THEN REPLY #62221 /* ~"Możesz mi powiedzieć coś więcej o sferze z której pochodzi Ravela... o Szarym Pustkowiu?"~ */ GOTO 236
  IF ~~ THEN REPLY #62222 /* ~"Wydaje mi się, że rozumiem. Czy jest jeszcze ktoś, kto mógłby wiedzieć o Raveli coś więcej?"~ */ GOTO 237
  IF ~~ THEN REPLY #62223 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62224 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #62225 /* ~Małe eteryczne koło unosi się w powietrzu i zaczyna się powoli kręcić. "W zabranym przez nią kawałku Sigil przetrzymywany jest więzień; nie można uniknąć wtrącenia do labiryntu. Może się to zdarzyć w każdej chwili, podczas spaceru na ulicy, przy przechodzeniu przez drzwi..." Klaszcze. "...i nagle jesteś gdzie indziej." Wewnątrz eterycznego okręgu nagle zauważasz cień, jakby ktoś tam szedł."~ */
  IF ~~ THEN REPLY #62226 /* ~"Mów dalej..."~ */ GOTO 254
  IF ~~ THEN REPLY #62227 /* ~"Możesz mi powiedzieć coś więcej o sferze z której pochodzi Ravela... o Szarym Pustkowiu?"~ */ GOTO 236
  IF ~~ THEN REPLY #62228 /* ~"Wydaje mi się, że rozumiem. Czy jest jeszcze ktoś, kto mógłby wiedzieć o Raveli coś więcej?"~ */ GOTO 237
  IF ~~ THEN REPLY #62229 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62230 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #62231 /* ~Nie-Sława mówi dalej, mały, widmowy labirynt odbija się w jej oczach. "Mówi się, że w każdym labiryncie jest portal, przez który można wyjść, ale trudno go znaleźć. Może są tam umieszczane, by dać więźniom nadzieję. Może są tam umieszczane, by ich torturować." Widmowy labirynt się rozwiewa. "A może jedno i drugie."~ */
  IF ~~ THEN REPLY #62232 /* ~"Możesz mi powiedzieć coś więcej o sferze z której pochodzi Ravela... o Szarym Pustkowiu?"~ */ GOTO 236
  IF ~~ THEN REPLY #62233 /* ~"Wydaje mi się, że rozumiem. Czy jest jeszcze ktoś, kto mógłby wiedzieć o Raveli coś więcej?"~ */ GOTO 237
  IF ~~ THEN REPLY #62234 /* ~"Nieważne. Mogę ci zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62235 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 205.4
  SAY #62236 /* ~"Rzeczywiście. Nie winię jej."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62237 /* ~"Co powiedziała o twojej przynależności do obozu baatezu?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62238 /* ~"Co powiedziała o twojej przynależności do obozu baatezu?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62239 /* ~"Co powiedziała o twojej przynależności do obozu baatezu?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62240 /* ~"Dlaczego nie?"~ */ GOTO 262
  IF ~~ THEN REPLY #62241 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62242 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 255.0 262.0
  SAY #62243 /* ~"Już to omawialiśmy. Przez pewien czas byłam niewolnicą baatezu. Przez ten czas zaznałam wielu udręk."~ */
  IF ~~ THEN REPLY #62244 /* ~"Cóż, bardziej mnie interesuje ten kawałek, w którym Vriszika wspominała o 'przynależności do obozu'. Co miała na myśli?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62245 /* ~"Nieważne. Dlaczego powiedziałaś, że nie winisz Vrisziki za to, że cię nienawidzi?"~ */ GOTO 262
  IF ~~ THEN REPLY #62246 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62247 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.2 262.2
  SAY #62248 /* ~"Przez pewien czas byłam niewolnikiem baatezu. Wygrałam wolność w konkursie improwizacji."~ */
  IF ~~ THEN REPLY #62249 /* ~"Cóż, bardziej mnie interesuje ten kawałek, w którym Vriszika wspominała o 'przynależności do obozu'. Co miała na myśli?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62250 /* ~"Rozumiem. Dlaczego powiedziałaś, że nie winisz Vrisziki za to, że cię nienawidzi?"~ */ GOTO 262
  IF ~~ THEN REPLY #62251 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62252 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 258 // from: 255.1 262.1
  SAY #62253 /* ~"Na pewno pamiętasz co ci mówiłam o mojej przeszłości?"~ */
  IF ~~ THEN REPLY #62254 /* ~"Cóż, bardziej mnie interesuje ten kawałek, w którym Vriszika wspominała o 'przynależności do obozu'. Co miała na myśli?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62255 /* ~"Nieważne. Dlaczego powiedziałaś, że nie winisz Vrisziki za to, że cię nienawidzi?"~ */ GOTO 262
  IF ~~ THEN REPLY #62256 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62257 /* ~"Rozumiem. To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 256.0 257.0 258.0
  SAY #62258 /* ~Nie-Sława przyjmuje zaciekawiony wyraz twarzy... zdaje się obserwować przez chwilę, wyczytać coś z wyrazu twojej twarzy. Odzywa się po chwili, ale jej głos jest cichszy niż zwykle. "Ma to jakieś znaczenie?"~ */
  IF ~~ THEN REPLY #62259 /* ~"Dla mnie tak. Chciałbym wiedzieć z kim podróżuję."~ */ DO ~SetGlobal("Grace_Camp_Follower_Answer","GLOBAL",1)
~ GOTO 260
  IF ~~ THEN REPLY #62260 /* ~"Nie. Dlaczego powiedziałaś, że nie winisz Vrisziki za to, że cię nienawidzi?"~ */ GOTO 262
  IF ~~ THEN REPLY #62261 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62262 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #62263 /* ~"W odpowiedzi na twoje pytanie powiem ci tyle: baatezu to nie ludzie. Ich żądze dotyczą mocy, a nie ciała, nie zwracają uwagi na gwałty i cielesne żądze, jak to się zdarza ludziom, gdy przetrzymują jako więźnia innego człowieka. Ich tortury są znacznie bardziej subtelne i znacznie bardziej wyniszczające niż *jakikolwiek* gwałt na ciele, a blizny zostają znacznie dłużej. Czy to chciałeś wiedzieć?"~ */
  IF ~~ THEN REPLY #62264 /* ~"Tak. Po prostu chciałem wiedzieć z kim podróżuję."~ */ GOTO 261
  IF ~~ THEN REPLY #62265 /* ~"Tak. Dlaczego powiedziałaś, że nie winisz Vrisziki za to, że cię nienawidzi?"~ */ GOTO 262
  IF ~~ THEN REPLY #62266 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62267 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #62268 /* ~"Wydawało mi się, że już wiesz." Nie-Sława lekko pochyla głowę. "Myliłam się."~ */
  IF ~~ THEN REPLY #62269 /* ~"Dlaczego powiedziałaś, że nie winisz Vrisziki za to, że cię nienawidzi?"~ */ GOTO 262
  IF ~~ THEN REPLY #62270 /* ~"Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62271 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 255.3 256.1 257.1 258.1 259.1 260.1 261.0
  SAY #62272 /* ~"Vriszika jest jedną z tanar'ri - biesem jak ja, ale innego rodzaju - alu-biesem. By ją zrozumieć musisz pojąć, że kulturą tanar'ri jest chaos, a chaos z natury nie dba o sprawiedliwość ani równość. Alu-biesy są postrzegane jako istoty... pomniejsze. Bez celu. W wielu wypadkach to gorsze niż wyrok śmierci."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62273 /* ~"Co powiedziała o twojej przynależności do obozu baatezu?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62274 /* ~"Co powiedziała o twojej przynależności do obozu baatezu?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62275 /* ~"Co powiedziała o twojej przynależności do obozu baatezu?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62276 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62277 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 205.9 249.1 249.3
  SAY #62278 /* ~Nie-Sława milczy przez chwilę, jej spojrzenie staje się nieobecne. Gdy znowu odwraca się do ciebie jej oczy mają dziwny lazurowy odcień, odcień, który mówi o smutku i łzach.~ */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #62279 /* ~"Ravela sporo widzi przez swe czarne oczy, niektóre z tych rzeczy są ukryte przed wzrokiem innych, nawet rzeczy o ich własnej naturze." Powoli kręci głową. "Czasem, czasem ból daje o sobie poznać. Nauczyłam się, że trudno zmienić własną naturę."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62280 /* ~"Dobrze się czujesz?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 265
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62281 /* ~"Na pewno nic ci nie będzie?"~ */ GOTO 265
  IF ~~ THEN REPLY #62282 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62283 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1
  SAY #62284 /* ~Uśmiecha się lekko i spotyka twój wzrok. "Tak... to uprzejme z twojej strony, że zapytałeś. Ból wciąż daje o sobie poznać, ale pogodziłam się z własną naturą wiele wieków temu."~ */
  IF ~~ THEN REPLY #62285 /* ~"Dobrze..."~ */ GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #62286 /* ~Nie-Sława przerywa zanim zdołasz się odezwać. "Dziękuję, że zapytałeś jak się czuję. Twoje zainteresowanie nie jest niemile widziane."~ */
  IF ~~ THEN REPLY #62287 /* ~"Po prostu chciałem się upewnić, że nic ci nie jest. Mam kilka pytań."~ */ GOTO 205
  IF ~~ THEN REPLY #62288 /* ~"Jasne. Tylko sprawdzałem czy wszystko w porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from: 139.13
  SAY #62289 /* ~Nie-Sława powoli kręci głową. "Nie, sądzę, że nie. Sztuka... różni się od dyscyplin, które ja stosuję."~ */
  IF ~~ THEN REPLY #62290 /* ~"Co masz na myśli?"~ */ GOTO 268
  IF ~~ THEN REPLY #62291 /* ~"Cóż, nieważne. Mogę zadać kilka innych pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62292 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #62293 /* ~"Moje 'moce', jak ty to widzisz, wynikają z mojej wiary, a nie z manipulowania energią, jak w przypadku Sztuki. Sztuka jest *mechanizmem*, dzięki któremu można wykorzystać moc wieloświata, za pomocą gestów, rytuałów i różnych urządzeń. Moje 'moce' przybywają do mnie z innego powodu. Moja wiara i jej natura pozwalają, by część wieloświata ujawniła się przede mną."~ */
  IF ~~ THEN REPLY #62294 /* ~"Natura twojej wiary? W co wierzysz?"~ */ GOTO 269
  IF ~~ THEN REPLY #62295 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62296 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #62297 /* ~"Wierzę w *Doświadczenie*. Wierzę, że każdego można zmienić - na lepsze - im więcej wieloświata mogą dostrzec i im więcej wieloświat może im pokazać. Moja wiara w naturę Doświadczenia umożliwia mi..." Przerywa na chwilę, zastanawia się.~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #62425 /* ~"Wydaje mi się, że najlepszym wytłumaczeniem będzie stwierdzenie, że moja wiara pozwala mi *postrzegać* wszystko inaczej. Gdy zobaczysz wieloświat z takiej perspektywy, nauczysz się jak *zmieniać* rzeczy - leczyć czyjeś rany, zajrzeć komuś w serce, i tak dalej - samą tylko chęcią, by tak się stało."~ */
  IF ~~ THEN REPLY #62426 /* ~"Ale 'zmiany', których dokonujesz bardzo przypominają czary - jak się nauczyłaś robić takie rzeczy? Masz księgę czarów?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62427 /* ~"Wierzysz w Doświadczenie, z powodu tego co ci się stało u baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62428 /* ~"Możesz mnie nauczyć bym widział rzeczy w taki sposób jak ty?"~ */ GOTO 271
  IF ~~ THEN REPLY #62429 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62430 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.2
  SAY #62431 /* ~"Nie mogę cię nauczyć jak postrzegać wieloświat w taki sposób. Każdy musi się tego nauczyć sam... na własny sposób, a nie przez czyjeś oczy." Uśmiecha się lekko. "Nie sądzę, że spośród wszystkich ludzi akurat *ty* potrzebujesz moich rad w tej kwestii - to ja uczę się od ciebie więcej niż ty ode mnie."~ */
  IF ~~ THEN REPLY #62432 /* ~"Ale 'zmiany', których dokonujesz bardzo przypominają czary - jak się nauczyłaś robić takie rzeczy? Masz księgę czarów?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62433 /* ~"Wierzysz w Doświadczenie, z powodu tego co ci się stało u baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62434 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62435 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.0 271.0 273.3
  SAY #62436 /* ~"Nie, moje *czary* jak je nazywasz - przychodzą do mnie gdy odpocznę i się skupię. Gdy się przebudzę mogę się ponownie skupić. Obawiam się, że ilość wiary niezbędnej by 'zmienić' otaczający mnie wieloświat w dużym stopniu zależy od psychiki."~ */
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62437 /* ~"Wierzysz w Doświadczenie, z powodu tego co ci się stało u baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62438 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62439 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1 271.1 272.0
  SAY #62440 /* ~Nie-Sława kiwa głową. "Długo nad tym myślałam i wierzę w to." Patrzy na ciebie pytająco. "Wydaje mi się, że jest tak, bo jestem zadowolona z tego kim się stałam i uważam, że nie byłoby to możliwe bez doświadczenia wieloświata w taki sposób jak ja to zrobiłam."~ */
  IF ~  Global("Good_Grace_2","GLOBAL",0)
Global("Chaotic_Grace_1","GLOBAL",0)
~ THEN REPLY #62441 /* ~"Nie wydaje mi się, by miało to jakiś związek z tobą doświadczającą wieloświata... wydaje mi się, że ważne jest jak sobie radzisz z tym doświadczeniem."~ */ GOTO 274
  IF ~  Global("Good_Grace_2","GLOBAL",1)
~ THEN REPLY #62442 /* ~"Tak jak powiedziałem wcześniej, nie wydaje mi się, by miało to jakiś związek z tobą doświadczającą wieloświata... wydaje mi się, że ważne jest jak sobie radzisz z tym doświadczeniem. Zmieniła cię siła twojego charakteru."~ */ GOTO 274
  IF ~  Global("Chaotic_Grace_1","GLOBAL",1)
~ THEN REPLY #62443 /* ~"Tak jak powiedziałem wcześniej, nie wydaje mi się, by miało to jakiś związek z tobą doświadczającą wieloświata... wydaje mi się, że ważne jest jak sobie radzisz z tym doświadczeniem. Zmieniła cię siła twojego charakteru."~ */ GOTO 274
  IF ~~ THEN REPLY #62444 /* ~"Ale 'zmiany', których dokonujesz bardzo przypominają czary - jak się nauczyłaś robić takie rzeczy? Masz księgę czarów?"~ */ GOTO 272
  IF ~~ THEN REPLY #62445 /* ~"Rozumiem. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62446 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0 273.1 273.2
  SAY #62447 /* ~Nie-Sława powoli kiwa głową; wygląda na zamyśloną. "W tym co mówisz zawarta jest prawda."~ */
  IF ~~ THEN REPLY #62448 /* ~Prawda: "Uważam, że jest wielu innych, którzy by się złamali, gdyby spotkało ich to co ciebie. Ty dzięki temu sporo się *nauczyłaś*, stałaś się silniejsza. To zdradza ogromną siłę woli i charakteru."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62449 /* ~Pochlebne kłamstwo: "Uważam, że jest wielu innych, którzy by się złamali, gdyby spotkało ich to co ciebie. Ty dzięki temu sporo się *nauczyłaś*, stałaś się silniejsza. To zdradza ogromną siłę woli i charakteru."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62450 /* ~"Możliwe. Mogę ci zadać kilka innych pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62451 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 274.0 274.1
  SAY #62452 /* ~Nie-Sława patrzy na ciebie w milczeniu.~ */
  IF ~~ THEN REPLY #62453 /* ~Prawda: "...i to w tobie podziwiam. Nie tylko tę siłę, ale także zdolność postrzegania takich tragedii jako sposobu, by stać się kimś lepszym. To siła, którą *niewielu* posiada."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_2","GLOBALGood",1)
~ GOTO 276
  IF ~~ THEN REPLY #62454 /* ~Pochlebne kłamstwo: "...i to w tobie podziwiam. Nie tylko tę siłę, ale także zdolność postrzegania takich tragedii jako sposobu, by stać się kimś lepszym. To siła, którą *niewielu* posiada."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALChaotic_Grace_1","GLOBALLaw",-1)
~ GOTO 276
  IF ~~ THEN REPLY #62455 /* ~"To wszystko."~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.0 275.1 275.2
  SAY #62456 /* ~Nie-Sława uśmiecha się i kiwa głową. "Dziękuję ci. Twoje słowa są wnikliwe i uprzejme. Ale obawiam się, że nie mam tak silnego charakteru jak na to wygląda. Mimo to spróbuję potraktować każde nowe doświadczenie jako okazję, by się czegoś nauczyć."~ */
  IF ~~ THEN REPLY #62457 /* ~"Dobre podejście. Mogę zadać kilka pytań?"~ */ GOTO 139
  IF ~~ THEN REPLY #62458 /* ~"Mądrze. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 277 // from: 205.1
  SAY #62459 /* ~"Nie."~ */
  IF ~~ THEN REPLY #62460 /* ~"Proszę?"~ */ GOTO 278
  IF ~~ THEN REPLY #62461 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62462 /* ~"Tak tylko pomyślałem, że spytam. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #62463 /* ~Nie-Sława obdarza cię lekkim uśmiechem. "Dama musi mieć swoje tajemnice."~ */
  IF ~~ THEN REPLY #62464 /* ~"Dobrze. Mogę ci zadać jeszcze kilka pytań?"~ */ GOTO 205
  IF ~~ THEN REPLY #62465 /* ~"Tak tylko pomyślałem, że spytam. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 139.14 139.15 280.4 281.8 284.0 286.0 287.2 288.1 289.2 290.2 291.3 292.2 293.2 294.3 295.1 296.3 297.3 298.3 299.2 300.3 301.0 302.2 303.0 304.2 305.1 307.0 308.1 309.2 310.2 311.2 312.1 313.1 314.0 316.1 317.0 319.1 320.2 321.1 322.1 323.3 324.0 325.1 326.1 327.2 328.1 329.0 343.0 344.1 345.1 346.1 347.1 357.4 359.1 360.0 361.0
  SAY #62466 /* ~"O kim w szczególności chciałbyś porozmawiać?"~ */
  IF ~~ THEN REPLY #62467 /* ~"Właściwie to o mnie."~ */ GOTO 357
  IF ~~ THEN REPLY #62468 /* ~"O tobie."~ */ GOTO 280
  IF ~  InParty("Morte")
~ THEN REPLY #62469 /* ~"O Mortem."~ */ GOTO 296
  IF ~  InParty("Annah")
~ THEN REPLY #62470 /* ~"O Annie."~ */ GOTO 340
  IF ~  InParty("Dakkon")
~ THEN REPLY #62471 /* ~"O Dak'konie."~ */ GOTO 308
  IF ~  InParty("Nordom")
~ THEN REPLY #62472 /* ~"O Nordomie."~ */ GOTO 315
  IF ~  InParty("Ignus")
~ THEN REPLY #62473 /* ~"O Ignusie."~ */ GOTO 318
  IF ~  InParty("Vhail")
~ THEN REPLY #62474 /* ~"O Vhailorze."~ */ GOTO 325
  IF ~~ THEN REPLY #62475 /* ~"Właściwie to o nikim. Mam kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62476 /* ~"Nieważne. Może następnym razem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #62477 /* ~"O mnie? Naprawdę?" Zastanawia się nad tym przez chwilę, w końcu kiwa głową. "Dobrze, pytaj jeśli coś cię ciekawi."~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62478 /* ~"Chciałbym, żebyś wiedziała, że kiedy pocałowałem Ravelę w labiryncie, ja..."~ */ GOTO 281
  IF ~~ THEN REPLY #62479 /* ~"Tak naprawdę, to jestem ciekaw, jakie są twoje uczucia względem mnie."~ */ GOTO 287
  IF ~~ THEN REPLY #62480 /* ~"Chciałbym wiedzieć co sądzisz o mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62481 /* ~"Masz jakikolwiek pomysł, kim lub czym mogę być?"~ */ GOTO 288
  IF ~~ THEN REPLY #62482 /* ~"Nieważne. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62483 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62484 /* ~"Może innym razem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 281 // from: 280.0 357.0
  SAY #62485 /* ~Nie-Sława unosi dłoń uciszając cię. "Nie trzeba nic mówić. Muszę przyznać, że podziwiam twoją odwagę. Niewielu ludzi ośmieliłoby się pocałować mit, szczególnie o takiej renomie jak mit Raveli."~ */
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62486 /* ~Prawda: "Pocałowałem Ravele tylko dlatego, że myślała, że tego nie zrobię, oto dlaczego - podejrzewałem, że mnie sprawdza."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62487 /* ~Kłamstwo: "Pocałowałem Ravele tylko dlatego, że myślała, że tego nie zrobię, oto dlaczego - podejrzewałem, że mnie sprawdza."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62488 /* ~Prawda: "Pocałowałem Ravelę tylko dlatego, że wydawało się to dobrym pomysłem - nie pytaj mnie dlaczego."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62489 /* ~Kłamstwo: "Pocałowałem Ravelę tylko dlatego, że wydawało się to dobrym pomysłem - nie pytaj mnie dlaczego."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62490 /* ~Prawda: "Pocałowałem Ravelę, bo chciałem to zrobić... jej zwykła postać jest dość straszna."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62491 /* ~Kłamstwo: "Pocałowałem Ravelę, bo chciałem to zrobić... jej zwykła postać jest dość straszna."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62492 /* ~Prawda: "Cóż, pocałowałem Ravelę, bo chciałem pocałować ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_2","GLOBALLaw",1)
~ GOTO 285
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62493 /* ~Pochlebne kłamstwo: "Cóż, pocałowałem Ravelę, bo chciałem pocałować ciebie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_3","GLOBALLaw",-1)
~ GOTO 285
  IF ~~ THEN REPLY #62494 /* ~"Dobrze. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62495 /* ~"Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62496 /* ~"W takim razie nie będziemy o tym więcej rozmawiać. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 281.2 281.3 281.4 281.5
  SAY #62497 /* ~"Sprawdzała cię."~ */
  IF ~~ THEN REPLY #62498 /* ~"Co masz na myśli?"~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 281.0 281.1 282.0
  SAY #62499 /* ~"Wydaje mi się, że są pewne granice tego co wokół ciebie widzi Ravela, może to jedna z przyczyn dla których jesteś dla niej tak intrygujący. Tylko stwarzając fizyczne wyzwania może sprawdzić twoją naturę."~ */
  IF ~~ THEN REPLY #62500 /* ~"Jak myślisz, co chciała sprawdzić?"~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #62501 /* ~"Uważam, że chciała się przekonać, czy ci na niej zależy - pocałunek jest jednym ze sposobów, na podstawie którego można to ocenić, mimo to może to być bardzo subtelna sprawa."~ */
  IF ~~ THEN REPLY #62502 /* ~"Dobrze. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62503 /* ~"Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62504 /* ~"W takim razie nie będziemy o tym więcej rozmawiać. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from: 281.6 281.7
  SAY #62505 /* ~"W takim wypadku to dobrze, że pocałowałeś Ravelę, pomimo ryzyka. Całowanie sukkuba to jak zapraszanie śmierci."~ */
  IF ~~ THEN REPLY #62506 /* ~"Co masz na myśli?"~ */ JOURNAL #61616 /* ~Nie-Sława powiedziała mi, że jej pocałunek jest zdolny wyssać całe życie z ofiary. Wiadomość ta z pewnych powodów obudziła we mnie żywe zainteresowanie. No bo niby jestem nieśmiertelny, nieprawdaż? Hmmmm. Wrócę jeszcze do tego.~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #62507 /* ~"Sukkub zabija wyciągając pocałunkiem energię ze śmiertelników. O ile jest to dla ofiary przyjemne doświadczenie, to nie żyje ona dość długo, by się nim nacieszyć."~ */
  IF ~~ THEN REPLY #62508 /* ~"Uch, ja... chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62509 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62510 /* ~"Intrugujące... ee, mam na myśli straszne. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from: 280.1 357.1
  SAY #62511 /* ~Nie-Sława obdarza cię lekkim uśmiechem. "Dama musi mieć swoje tajemnice."~ */
  IF ~~ THEN REPLY #62512 /* ~"W takim razie chciałbym wiedzieć co sądzisz o mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62513 /* ~"Dobrze. Czy masz jakikolwiek pomysł, kim lub czym mogę być?"~ */ GOTO 288
  IF ~~ THEN REPLY #62514 /* ~"Nieważne. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62515 /* ~"W takim razie zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62516 /* ~"Może innym razem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 280.3 287.1 357.3
  SAY #62517 /* ~Nie-Sława w zamyśleniu marszczy brwi. "Muszę stwierdzić, że jesteś dość tajemniczy." Uśmiecha się. "Ale mnie intrygują takie tajemnice. Spróbujemy poskładać twoją sytuację?"~ */
  IF ~~ THEN REPLY #62518 /* ~"Tak."~ */ GOTO 289
  IF ~~ THEN REPLY #62519 /* ~"Nie, odłóżmy to na później. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62520 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62521 /* ~"Może innym razem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #62522 /* ~"Po pierwsze, pomimo tego że istnieje możliwość, że jesteś diabelstwem albo jakimś rzadkim mieszańcem, zgaduję, że jesteś człowiekiem... albo kiedyś byłeś."~ */
  IF ~~ THEN REPLY #62523 /* ~"W porządku... mów dalej."~ */ GOTO 290
  IF ~~ THEN REPLY #62524 /* ~"Może jest coś jeszcze, co mogłoby rozjaśnić sytuację..."~ */ GOTO 330
  IF ~~ THEN REPLY #62525 /* ~"Zostawmy to na później. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62526 /* ~"Właściwie nieważne. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62527 /* ~"Wrócimy do tego kiedy indziej. Na razie chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #62528 /* ~"Twój wygląd pasuje do mężczyzny około trzydziestki - szwy i kolekcja blizn utrudniają dokładniejszą ocenę."~ */
  IF ~~ THEN REPLY #62529 /* ~"Opowiedz mi o tym... mów dalej."~ */ GOTO 291
  IF ~~ THEN REPLY #62530 /* ~"Może jest coś jeszcze, co mogłoby rozjaśnić sytuację..."~ */ GOTO 330
  IF ~~ THEN REPLY #62531 /* ~"Zostawmy to na później. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62532 /* ~"Właściwie nieważne. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62533 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #62534 /* ~"Kluczem do twojej przeszłości są wspomnienia i wygląda na to, że pewne miejsca, wydarzenia i ludzie wyzwalają zapomniane wspomnienia. Wychodzi na to, że w twoim interesie leży odwiedzanie tylu miejsc ile to tylko możliwe i rozmowy z jak największą liczbą osób... krótko mówiąc, musisz doświadczyć ze swego świata jak najwięcej."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 292
  IF ~~ THEN REPLY #62535 /* ~"Rada Czuciowca, co?"~ */ GOTO 295
  IF ~~ THEN REPLY #62536 /* ~"Może jest coś jeszcze, co mogłoby rozjaśnić sytuację..."~ */ GOTO 330
  IF ~~ THEN REPLY #62537 /* ~"Dobrze. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62538 /* ~"Właściwie nieważne. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62539 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #62540 /* ~"Ravela powiedziała jeszcze kilka rzeczy, które mnie zainteresowały. Fakt, że twoja śmiertelność gdzieś się zawieruszyła, może skłaniać do zastanowienia - jeśli ktos położył na czymś takim swoje łapy, to nie wróży ci to nic dobrego."~ */
  IF ~~ THEN REPLY #62541 /* ~"Mów dalej..."~ */ GOTO 293
  IF ~~ THEN REPLY #62542 /* ~"Może jest coś jeszcze, co mogłoby rozjaśnić sytuację..."~ */ GOTO 330
  IF ~~ THEN REPLY #62543 /* ~"Dobrze. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62544 /* ~"Właściwie nieważne. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62545 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 292.0
  SAY #62546 /* ~"Nie podobało mi się także to, co Ravela powiedziała o śmierci umysłu - chyba chciała powiedzieć, że im więcej razy umrzesz, tym więcej uleci z twojego umysłu."~ */
  IF ~~ THEN REPLY #62547 /* ~"Mów dalej..."~ */ GOTO 294
  IF ~~ THEN REPLY #62548 /* ~"Może jest coś jeszcze, co mogłoby rozjaśnić sytuację..."~ */ GOTO 330
  IF ~~ THEN REPLY #62549 /* ~"Dobrze. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62550 /* ~"Właściwie nieważne. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62551 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #62552 /* ~"I jeszcze ostatnia rzecz - wspomniała, że twoje blizny opowiadają o 'wojnie między biesami' - to brzmiało jak Wojna Krwi."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62553 /* ~"Co to jest Wojna Krwi?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62554 /* ~"Wiem co to jest Wojna Krwi. Możesz mi powiedzieć co o niej wiesz?"~ */ GOTO 219
  IF ~~ THEN REPLY #62555 /* ~"Może jest coś jeszcze, co mogłoby rozjaśnić sytuację..."~ */ GOTO 330
  IF ~~ THEN REPLY #62556 /* ~"Dobrze. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62557 /* ~"Właściwie nieważne. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62558 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 291.1
  SAY #62559 /* ~Nie-Sława posyła ci zdezorientowany uśmiech. "Nie doradzałabym ci tego, gdybym tego nie stosowała i gdybym już nie wiedziała, że to prawda."~ */
  IF ~~ THEN REPLY #62560 /* ~"Może jest coś jeszcze, co mogłoby rozjaśnić sytuację..."~ */ GOTO 330
  IF ~~ THEN REPLY #62561 /* ~"W porządku. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62562 /* ~"Dobrze. Mam kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62563 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 279.2
  SAY #62564 /* ~"Morte jest bardzo osobliwy... sporo w życiu widziałam, ale nic takiego jak on. Zachowuje się trochę jak mimir: nie można zaprzeczyć, że sporo wie, ale..." Wciąga powietrze i marszczy nos "...czuć od niego Baatorem."~ */
  IF ~~ THEN REPLY #62565 /* ~"Czuć od niego Baatorem?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~~ THEN REPLY #62566 /* ~"Mimir?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Mimir","GLOBALKnow_Mimir",0)
~ GOTO 299
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62567 /* ~"Odkryłem dlaczego tak jest - okazało się, że wyrwałem go ze Słupa Czaszek w Baator, dawno temu."~ */ GOTO 304
  IF ~~ THEN REPLY #62568 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62569 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62570 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 296.0 298.0
  SAY #62571 /* ~"Tak. Ale nie jest baatezu... przynajmniej nie należy do żadnego rodzaju z jakim się spotkałam. Jednak już sam zapach każe mi uważać na czaszkę."~ */
  IF ~~ THEN REPLY #62572 /* ~"Co masz na myśli mówiąc 'baatezu' i 'Baator'?"~ */ GOTO 298
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62573 /* ~"Co wcześniej mówiłaś o 'mimirze'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62574 /* ~"Co wcześniej mówiłaś o 'mimirze'?"~ */ GOTO 299
  IF ~~ THEN REPLY #62575 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62576 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62577 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 298 // from: 297.0
  SAY #62578 /* ~"Przepraszam... Baator jest jedną z Zewnętrznych Sfer, domem rasy biesów zwanej baatezu. To złe stworzenia, ale mimo zachowują się w sposób zorganizowany i praworządny. Niektórzy nazywają ich 'diabłami'. Wierzą w umowy i hierarchię... w wielu przypadkach są jak źli biurokraci."~ */
  IF ~~ THEN REPLY #62579 /* ~"Co mówiłaś o zapachu Baator?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62580 /* ~"Co wcześniej mówiłaś o 'mimirze'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62581 /* ~"Co wcześniej mówiłaś o 'mimirze'?"~ */ GOTO 299
  IF ~~ THEN REPLY #62582 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62583 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62584 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 296.1 297.1 297.2 298.1 298.2
  SAY #62585 /* ~"Mimiry to encyklopedie wiedzy. Ich właściciele mogą im zadawać pytania, a jeśli mimir dysponuje wiedzą na dany temat to się nią dzieli."~ */
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #62586 /* ~"Morte jest mimirem?"~ */ DO ~SetGlobal("Grace_Silver_Mimir","GLOBAL",1)
~ GOTO 300
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62587 /* ~"Cóż, Morte nie jest mimirem - okazało się, że wyrwałem go ze Słupa Czaszek w Baator, dawno temu."~ */ GOTO 304
  IF ~~ THEN REPLY #62588 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62589 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62590 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #62591 /* ~"Nie wierzę by tak było. Mortemu brakuje srebrnego metalu, który mimiry zwykle mają. Poza tym wygląda na to, że ma własne poglądy." Nie-Sława wzrusza lekko ramionami. "*Może* być jednym z nich, ale nie przypomina żadnego z tych, które spotkałam."~ */
  IF ~~ THEN REPLY #62592 /* ~"Uważam, że Morte jest mimirem."~ */ GOTO 301
  IF ~  Global("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #62593 /* ~"Morte powiedział mi, że jest mimirem."~ */ GOTO 302
  IF ~~ THEN REPLY #62594 /* ~"Też nie wierzę, że Morte jest mimirem."~ */ GOTO 303
  IF ~~ THEN REPLY #62595 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62596 /* ~"Hmmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62597 /* ~"Wrócimy do tego innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 301 // from: 300.0 302.0
  SAY #62598 /* ~"Sądzę, że wystarczająco dużo już powiedzieliśmy na ten temat."~ */
  IF ~~ THEN REPLY #62599 /* ~"Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62600 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62601 /* ~"W takim razie ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #62602 /* ~"Naprawdę? Bardzo dziwne. W takim razie niech będzie."~ */
  IF ~~ THEN REPLY #62603 /* ~"Ja mu wierzę."~ */ GOTO 301
  IF ~~ THEN REPLY #62604 /* ~"Ale chyba mu nie wierzę."~ */ GOTO 303
  IF ~~ THEN REPLY #62605 /* ~"Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62606 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62607 /* ~"W takim razie ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 303 // from: 300.2 302.1
  SAY #62608 /* ~"Może można w jakiś sposób sprawdzić jego prawdomówność... ale nie robiłabym tego, jeśli uważasz go za przyjaciela. Jeśli tak, to musisz przyjąć do wiadomości to co ci powiedział."~ */
  IF ~~ THEN REPLY #62609 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62610 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62611 /* ~"W Porządku. To wszystko co chciałem omówić."~ */ EXIT
END

IF ~~ THEN BEGIN 304 // from: 296.2 299.1
  SAY #62612 /* ~"To by tłumaczyło jego zasób wiedzy. Jednak..." Nie-Sława przerywa na chwilę. "Można skończyć w Słupie tylko w pewnych okolicznościach."~ */
  IF ~~ THEN REPLY #62613 /* ~"Jakich okolicznościach?"~ */ DO ~SetGlobal("Know_Pillar_Circumstances","GLOBAL",1)
~ GOTO 305
  IF ~  Global("Know_Pillar_Circumstances","GLOBAL",1)
~ THEN REPLY #62614 /* ~"Znam je - musisz powiedzieć jakieś kłamstwo, które doprowadziło do czyjejś śmierci, prawda?"~ */ GOTO 307
  IF ~~ THEN REPLY #62615 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62616 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62617 /* ~"W porządku. To wszystko co chciałem omówić."~ */ EXIT
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #62618 /* ~"Słup Czaszek to słup z żywych głów tych, którzy swoimi kłamstwami ściągnęli na innych śmierć. Potrafi odpowiedzieć na wiele pytań, bo wie bardzo dużo, ale za swoje usługi spodziewa się dużej zapłaty."~ */
  IF ~~ THEN REPLY #62619 /* ~"Więc żeby tam skończyć, Morte doprowadził kłamstwem do czyjejś śmierci?"~ */ GOTO 307
  IF ~~ THEN REPLY #62620 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62621 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62622 /* ~"W Porządku. To wszystko co chciałem omówić."~ */ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #62623 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.1 305.0
  SAY #62624 /* ~"To prawda."~ */
  IF ~~ THEN REPLY #62625 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62626 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62627 /* ~"Hmm. Może go oto zapytam. Na razie ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 279.4
  SAY #62628 /* ~"Dak'kon?" Nie-Sława unosi brew. "Jest bardzo dziwny jak na gitzherai."~ */
  IF ~~ THEN REPLY #62629 /* ~"Naprawdę? W jaki sposób?"~ */ GOTO 309
  IF ~~ THEN REPLY #62630 /* ~"Nieważne. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62631 /* ~"Zapomnij o tym na chwilę. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62632 /* ~"Omówimy to później. Na razie ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #62633 /* ~"Cóż, słucha cię. Już samo to napiętnowałoby go jako pariasa wśród jego ludu. Kiedyś cała ich rasa była niewolnikami i nawet wzmianka o służbie jest dla nich obrzydliwa."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #62634 /* ~"Tak, dawno temu przyrzekł, że będzie mi służył aż do mej śmierci. To było po tym jak uratowałem mu życie, a on nie wiedział, że jestem nieśmiertelny."~ */ GOTO 310
  IF ~~ THEN REPLY #62635 /* ~"Coś jeszcze?"~ */ GOTO 313
  IF ~~ THEN REPLY #62636 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62637 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62638 /* ~"Omówimy to później. Na razie ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #62639 /* ~"Naprawdę? Jako gitzerai... musi naprawdę cierpieć. Jak uratowałeś mu życie?"~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62640 /* ~"Po tym jak upadł z Shra'kt'lor, jedno z moich poprzednich wcieleń odwiedziło go, gdy umierał w Limbo. Dało mu Nieprzerwany Krąg Zerthimona, te religijne teksty, które nosi."~ */ GOTO 311
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62641 /* ~"Nie wiem. To inne wcielenie go uratowało, nie dysponuję wiedzą na ten temat. Jest jeszcze coś co mogłabyś mi o nim powiedzieć?"~ */ GOTO 313
  IF ~~ THEN REPLY #62642 /* ~"To długa historia. Posłuchaj, chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62643 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62644 /* ~"Opowiem ci innym razem. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #62645 /* ~"Jeśli mogę zapytać, czy wiesz dlaczego wcielenie uratowało mu życie?"~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62646 /* ~"Wydaje mi się, że uratowałem go dla ostrza *karach*."~ */ GOTO 312
  IF ~~ THEN REPLY #62647 /* ~"Nie wiem. Jego motywy są dla mnie zagadką. Jest jeszcze coś co możesz mi powiedzieć o Dak'konie?"~ */ GOTO 313
  IF ~~ THEN REPLY #62648 /* ~"To długa historia. Posłuchaj, chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62649 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62650 /* ~"Opowiem ci innym razem. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #62651 /* ~"Ciekawe. Nie-Sława na chwilę milknie. "Ostrze odzwierciedlające wolę nożownika jest potężną bronią, jeśli nożownik dobrze zna samego siebie.""~ */
  IF ~~ THEN REPLY #62652 /* ~"Może dlatego go uratowałem. Jest jeszcze coś co możesz mi powiedzieć o Dak'konie?"~ */ GOTO 313
  IF ~~ THEN REPLY #62653 /* ~"Możliwe. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62654 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62655 /* ~"Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 313 // from: 309.1 310.1 311.1 312.0
  SAY #62656 /* ~"Dak'kon podchodzi do wszystkiego w bardzo uporządkowany sposób. To bardzo dziwne jak na gitzherai. Oni zwykle są nieprzewidywalni - działają raczej pod wpływem impulsu niż planu."~ */
  IF ~~ THEN REPLY #62657 /* ~"Coś jeszcze?"~ */ GOTO 314
  IF ~~ THEN REPLY #62658 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62659 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62660 /* ~"Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #62661 /* ~"Wygląda na bardzo pobożnego gitzherai i bardzo oddanego sprzymierzeńca."~ */
  IF ~~ THEN REPLY #62662 /* ~"Tym właśnie jest. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62663 /* ~"W rzeczy samej. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62664 /* ~"Wiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 315 // from: 279.5
  SAY #62665 /* ~"Nordom to zbuntowany modron. Ale nawet jeśli jakieś ślady chaosu znalazły drogę do jego systemu, to wciąż jest wyjątkowo logicznym, uporządkowanym stworzeniem. Ta logika może być bardzo pomocna podczas podróży. Ponadto, jeśli postrzega cię jako przywódcę, jego lojalność będzie niezachwiana."~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #62666 /* ~"Problemy mogą się pojawić, gdy Nordom znajdzie się w sytuacji wymagającej znajomość etykiety... takie rzeczy nie są zbyt dobrze rozumiane, nawet przez normalne modrony." Przerywa na chwilę. "Jeśli chcesz, to mogę dać ci kilka rad odnośnie Nordoma."~ */
  IF ~~ THEN REPLY #62667 /* ~"Oczywiście. Co masz na myśli?"~ */ GOTO 317
  IF ~~ THEN REPLY #62668 /* ~"Nie w tej chwili. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62669 /* ~"Może późnej. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62670 /* ~"Nie teraz - ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #62671 /* ~"Egzystencja Nordoma została wstrząśnięta - im bardziej pomożesz mu się wczuć w tę sytuację, miejsce w hierarchii tej grupy, co doprowadzi do tego, że będzie mógł się lepiej skupić - tym lepiej. To tylko pomysł."~ */
  IF ~~ THEN REPLY #62672 /* ~"Może posłucham twojej rady. Na razie chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62673 /* ~"Później z nim porozmawiam. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62674 /* ~"Hmm. Zobaczę co da się zrobić. Dzięki. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 279.6
  SAY #62675 /* ~"Mądrze byłoby już z nim nie podróżować. Jest szalony i pokazał, że potrafi dokonywać wielkich zniszczeń. O ile dobrze rozumiem został przekształcony w łącznik ze Sferą Żywiołu Ognia... Taka przemiana zabiłaby wielu śmiertelników."~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #62676 /* ~"On nie tylko to przetrwał, ale się rozwinął. Dysponuje potężną mocą - jeśli będzie musiał jej użyć, to obawiam się, że nikt nie dotrzyma mu pola. Modlę się, by do tego nie doszło."~ */
  IF ~~ THEN REPLY #62677 /* ~"Skoro Ignus jest taki potężny. to czemu nie atakuje wszystkiego co widzi? Dlaczego w ogóle z nami podróżuje?"~ */ GOTO 320
  IF ~~ THEN REPLY #62678 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62679 /* ~"Też mam taką nadzieję. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62680 /* ~"Hmm. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #62681 /* ~"Nie wiem. Ale nie wydaje mi się, by tak było dlatego, że lubi nasze towarzystwo. Tak naprawdę to sądzę, że poza tobą uważa nas za nieistotnych."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62682 /* ~"Wydaje mi się, że to dlatego, że w przeszłości byłem jego nauczycielem."~ */ GOTO 322
  IF ~~ THEN REPLY #62683 /* ~"Poza mną? Dlaczego?"~ */ GOTO 321
  IF ~~ THEN REPLY #62684 /* ~"Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62685 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62686 /* ~"Hmm. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #62687 /* ~"Też nie wiem. Nie zwróciłeś uwagi na to, że gdy prosisz go by coś zrobił, to *słucha* bez dyskusji. Gdybym ja poprosiłabym go o to samo, to ostatnią rzeczą, jaką bym uzyskała, byłaby jego uległość."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62688 /* ~"Wydaje mi się, że to dlatego, że w przeszłości byłem jego nauczycielem."~ */ GOTO 322
  IF ~~ THEN REPLY #62689 /* ~"Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62690 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62691 /* ~"Hmm. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.0 321.0
  SAY #62692 /* ~"Byłeś jego nauczycielem?"~ */
  IF ~~ THEN REPLY #62693 /* ~"Tak... jedno z moich poprzednich wcieleń nauczyło go Sztuki. ale nie sądzę, by to była przyjemna lekcja. Wydaje mi się, że w jakiś sposób wciąż uważa mnie za swojego mistrza."~ */ GOTO 323
  IF ~~ THEN REPLY #62694 /* ~"Zapomnij o tym. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62695 /* ~"To długa opowieść. Na razie mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62696 /* ~"Wrócimy do tego kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #62697 /* ~Nie-Sława kiwa w zamyśleniu głową. "To by sporo wyjaśniało." Przez chwilę ci się przygląda. "Martwi cię to?"~ */
  IF ~~ THEN REPLY #62698 /* ~"Nie ponoszę odpowiedzialności za to, kim stał się Ingus. Czy mnie to martwi? Nie."~ */ GOTO 324
  IF ~~ THEN REPLY #62699 /* ~"W jakiejś części poczuwam się do winy - podejrzewam, że sposób w jaki uczyłem Ignusa mógł mieć wpływ na jego szaleństwo. Ale nie jestem tego pewien."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62700 /* ~"Tak. Załuję, że moje minione życia dotknęły Ignusa i tak go wypaliły."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62701 /* ~"Nie chcę tego teraz omawiać. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62702 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62703 /* ~"Omówimy to kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0 323.1 323.2
  SAY #62704 /* ~"Ignus płonie od wewnątrz i to ogniem, którego nie powstydziłby się sam Baator. Stał się kimś więcej niż czarnoksiężnikiem, kimś więcej niż człowiekiem. Stał się mocą. Trudno się nie zastanawiać, czy była to część jego natury, zanim cię spotkał."~ */
  IF ~~ THEN REPLY #62705 /* ~"Nie wiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62706 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62707 /* ~"Omówimy to kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 279.7
  SAY #62708 /* ~"Jakiekolwiek kontakty z Laskobójcami wiążą się ze sporym ryzykiem. Obawiam się, że w przypadku Vhailora to niebezpieczeństwo jest jeszcze większe. Dla niego sprawiedliwość to coś więcej niż obsesja, jest częścią niego samego. Uważaj na to co robisz, bo uważnie nas wszystkich obserwuje. Taka jest natura Łaskobójcy."~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62709 /* ~"Muszę coś wyznać... wydaje mi się, że to ja jestem powodem dla którego Vhailor tak długo był więziony w tej celi pod Klątwą."~ */ GOTO 326
  IF ~~ THEN REPLY #62710 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62711 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62712 /* ~"Dobrze. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #62713 /* ~"Co masz na myśli?"~ */
  IF ~~ THEN REPLY #62714 /* ~"Mam wspomnienie... przypominam sobie jego uwięzienie w celi, bo ścigał mnie od tak dawna. Ale nie chciałem go zabić, tylko zatrzymać go jako więźnia, trzymać go z daleka ode mnie."~ */ GOTO 327
  IF ~~ THEN REPLY #62715 /* ~"Nieważne. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62716 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62717 /* ~"Omówimy to kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #62718 /* ~"Jeśli cię ścigał, dlaczego go uwięziłeś? Dlaczego po prostu go nie zabiłeś?"~ */
  IF ~~ THEN REPLY #62719 /* ~"Cóż, nie jestem pewien, czy *mogłem* go zabić - śmierć miała szansę, ale wygląda na to, że się sprawiła."~ */ GOTO 328
  IF ~~ THEN REPLY #62720 /* ~"Wiesz, to zabrzmi niesamowicie, ale mam dziwne uczucie, że nie zabiłem go, BO on mógł mnie zabić."~ */ GOTO 329
  IF ~~ THEN REPLY #62721 /* ~"Nieważne. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62722 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62723 /* ~"Omówimy to kiedy indziej. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #62724 /* ~"To prawda. Wiara go krzepi, a wiara to potężna rzecz."~ */
  IF ~~ THEN REPLY #62725 /* ~"Wiesz, to zabrzmi niesamowicie, ale mam dziwne uczucie, że nie zabiłem go, BO on mógł mnie zabić."~ */ GOTO 329
  IF ~~ THEN REPLY #62726 /* ~"Tak. Słuchaj, chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62727 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62728 /* ~"Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 327.1 328.0
  SAY #62729 /* ~Nie-Sława kiwa głową. "Nawet nieśmiertelny może chcieć zostawić furtkę dla śmiertelności. Jest wielu, dla których nieśmiertelność *nie* jest błogosławieństwem. Może chciałeś, by Vhailor pozostał przy życiu, na wypadek, gdybyś pewnego dnia stwierdził, że nie możesz tego dłużej wytrzymać."~ */
  IF ~~ THEN REPLY #62730 /* ~"Rozumiem. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62731 /* ~"Hmm. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62732 /* ~"Ciekawa myśl. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 280.2 287.0 289.1 290.1 291.2 292.1 293.1 294.2 295.0 331.1 332.0 333.0 334.0 335.4 336.0 337.2 338.2 339.0 357.2
  SAY #62733 /* ~"Czy wiesz coś jeszcze, co mogłoby okazać się pomocne?"~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #62734 /* ~"Cóż, cienie wciąż przychodzą, by mnie zabić - czuję, że mnie śledzą, ale nie wiem dlaczego."~ */ GOTO 331
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
~ THEN REPLY #62735 /* ~"Cóż, wydaje mi się, że gdzieś jest ktoś, kto bardzo chce mnie zabić... tak bardzo, że zbudowałem pułapkę - grobowiec - by spróbować go schwytać i zabić. Zgodnie z inskrypcją na grobowcu ścigał mnie od... cóż, wygląda na to, że od tak dawna jak pamiętają moje wcielenia."~ */ GOTO 334
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62736 /* ~"Jedna sprawa: nie zawsze byłem nieśmiertelny... Ravela mnie takim uczyniła."~ */ GOTO 335
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62737 /* ~"Gdy rozmawiałem z Ravelą, powiedziała, że moje tatuaże mówiły o 'wojnie biesów'. Wiesz co miała na myśli?"~ */ GOTO 338
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #62738 /* ~"Cóż, Słup Czaszek powiedział mi, że 'rzucam cień na egzystencję' - że kiedykolwiek ginę, ktoś umiera za mnie."~ */ GOTO 333
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
~ THEN REPLY #62739 /* ~"Trias powiedział, że w Fortecy Żalu jest 'strażnik' i trzyma w niewoli mą śmiertelność."~ */ GOTO 339
  IF ~~ THEN REPLY #62740 /* ~"Właściwie to nic ważnego. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62741 /* ~"Nieważne. Może innym razem."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #62742 /* ~"Cienie?" Nie-Sława milknie na chwilę. "Cienie są odbiciem zmarłych. Nie mają zwyczaju polować, wolą czekać na ofiary. Dziwne."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 332
  IF ~~ THEN REPLY #62743 /* ~"Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62744 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62745 /* ~"Omówimy to kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #62746 /* ~"Ravela powiedziała też, że rzucasz cienie - może te cienie w jakiś sposób są do ciebie przyciągane?" Nie-Sława dotyka swego podbródka. "Trudno to określić z całą pewnością."~ */
  IF ~~ THEN REPLY #62747 /* ~"Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62748 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62749 /* ~"Omówimy to kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.4
  SAY #62750 /* ~"Zdaje się, że wszystko czego dotknęła magia Raveli rzadko przynosi komukolwiek korzyści." Głos Nie-Sławy cichnie. "To skłania do zastanowienie ile razy umarłeś... i pociągnąłeś za sobą innych."~ */
  IF ~~ THEN REPLY #62751 /* ~"Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62752 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62753 /* ~"Omówimy to kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 330.1
  SAY #62754 /* ~"W takim razie... kimkolwiek jest zabójca, żyje już bardzo długo skoro ściga cię od tak dawna." Przez chwilę dotyka swego podbródka. "A może zabójca też jest nieśmiertelny?"~ */
  IF ~~ THEN REPLY #62755 /* ~"Możliwe. Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62756 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62757 /* ~"Omówimy to kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 330.2
  SAY #62758 /* ~"W takim razie to mówi samo za siebie. To nie jest twój naturalny stan, co prowadzi do następnego pytania: *Dlaczego* chciałeś być nieśmiertelny? Masz jakiekolwiek pojęcie dlaczego Ravela tak postąpiła?"~ */
  IF ~  Global("Ravel_Hair","GLOBAL",1)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62759 /* ~"Nie jestem pewien, ale uważam, że miał mi pomóc uciec z klatki, dać mi wolność."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",1)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62760 /* ~"Nie jestem pewien, ale uważam, że miał mi pomóc uciec z klatki, dać mi wolność."~ */ GOTO 336
  IF ~  Global("Ravel_Hair","GLOBAL",0)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62761 /* ~"Nie wiem - wiem jedynie, że poprosiłem ją by to zrobiła."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",0)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62762 /* ~"Nie wiem - wiem jedynie, że poprosiłem ją by to zrobiła."~ */ GOTO 336
  IF ~~ THEN REPLY #62763 /* ~"Jeszcze nie. Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62764 /* ~"Nie wiem. Chciałbym ci zadać kilka pytań."~ */ GOTO 139
  IF ~~ THEN REPLY #62765 /* ~"Omówimy to kiedy indziej."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.1 335.3
  SAY #62766 /* ~"Bardzo dziwne. To wydawałoby się jedną z najprostszych rzeczy do odkrycia... ale tylko mając pewność co do tego, co stało się w przeszłości, można przewidzieć co przyniesie przyszłość."~ */
  IF ~~ THEN REPLY #62767 /* ~"Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62768 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62769 /* ~"Omówimy to kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.0 335.2
  SAY #62770 /* ~"Hmm. Ravela powiedziała coś co mnie zainteresowało... wspomniała o wojnie biesów, co niewątpliwie oznacza Wojnę Krwi. To jest właśnie najdziwniejsze. To i sfera gdzie Ravela założyła swój dom często są obiektem rywalizacji w tym konflikcie."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62771 /* ~"Co to jest Wojna Krwi?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Nie-Sława powiedziała, że wojna biesów, o której napomknęła mi Ravela, to wedle wszelkiego prawdopodobieństwa Wojna Krwi, konflikt pomiędzy rasami baatezu a tanar'ri. Nie-Sława zasugerowała dalej, że może moje przejścia z Ravelą wiązały się w jakiś sposób z Wojną Krwi.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62772 /* ~"Co to jest Wojna Krwi?"~ */ GOTO 219
  IF ~~ THEN REPLY #62773 /* ~"To możliwe. Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62774 /* ~"Możliwe. Chciałbym ci zadać kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62775 /* ~"Nie wiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 330.3
  SAY #62776 /* ~"Hmm. 'Wojna biesów' z całą pewnością oznacza Wojnę Krwi." Nie-Sława kiwa głową. "Wiesz, Szare Pustkowie to sfera, w której Ravela założyła swój dom, często jest obiektem rywalizacji w tym konflikcie."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62777 /* ~"Co to jest Wojna Krwi?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Nie-Sława powiedziała, że wojna biesów, o której napomknęła mi Ravela, to wedle wszelkiego prawdopodobieństwa Wojna Krwi, konflikt pomiędzy rasami baatezu a tanar'ri. Nie-Sława zasugerowała dalej, że może moje przejścia z Ravelą wiązały się w jakiś sposób z Wojną Krwi.~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62778 /* ~"Co to jest Wojna Krwi?"~ */ JOURNAL #61615 /* ~Nie-Sława powiedziała, że wojna biesów, o której napomknęła mi Ravela, to wedle wszelkiego prawdopodobieństwa Wojna Krwi, konflikt pomiędzy rasami baatezu a tanar'ri. Nie-Sława zasugerowała dalej, że może moje przejścia z Ravelą wiązały się w jakiś sposób z Wojną Krwi.~ */ GOTO 219
  IF ~~ THEN REPLY #62779 /* ~"To możliwe. Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62780 /* ~"Możliwe. Chciałbym ci zadać kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62781 /* ~"Nie wiem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 330.5
  SAY #62782 /* ~"Wydaje mi się, że musisz znaleźć tego strażnika i z nim porozmawiać. Wydaje mi się, że ta rozmowa może wiele wyjaśnić. Można by sądzić, że ten strażnik, wcale nie chce byś odzyskał śmiertelność."~ */
  IF ~~ THEN REPLY #62783 /* ~"To możliwe. Chciałbym poznać twoje zdanie na temat mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62784 /* ~"Chciałbym ci zadać kilka innych pytań."~ */ GOTO 139
  IF ~~ THEN REPLY #62785 /* ~"Bardzo możliwe - w takim wypadku będzie rozczarowany. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 279.3
  SAY #62786 /* ~"Jest silna i zdolna, a także dość namiętna. Prawie żałuję, że nie spotkałam jej dawno temu i nie poprosiłam, by przyszła do Przybytku... Może wypadki potoczyłyby się inaczej." Sława przygląda ci się przez chwilę. "Co o niej myślisz?"~ */
  IF ~~ THEN REPLY #62787 /* ~"Wydaje mi się, że nie bardzo jej na tobie zależy."~ */ GOTO 341
  IF ~~ THEN REPLY #62788 /* ~"Cóż, wydaje mi się, że mógłbym się w niej zakochać."~ */ GOTO 342
  IF ~~ THEN REPLY #62789 /* ~"Uważam ją za przyjaciela, nic więcej."~ */ GOTO 343
  IF ~~ THEN REPLY #62790 /* ~"Tak czy inaczej, nie zależy mi na niej."~ */ GOTO 343
  IF ~~ THEN REPLY #62791 /* ~"Nienawidzę jej."~ */ GOTO 344
  IF ~~ THEN REPLY #62792 /* ~"Nie ufam jej."~ */ GOTO 346
  IF ~~ THEN REPLY #62793 /* ~"Czasem jest przydatna, nic więcej."~ */ GOTO 343
  IF ~~ THEN REPLY #62794 /* ~"Wolałbym o tym nie mówić."~ */ GOTO 347
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #62795 /* ~"Zgodziłabym się.." Nie-Sława się uśmiecha "Ale nie pozwolę ci tak łatwo uniknąć mojego pytania. Co o niej myślisz?"~ */
  IF ~~ THEN REPLY #62796 /* ~"Cóż, wydaje mi się, że mógłbym się w niej zakochać."~ */ GOTO 342
  IF ~~ THEN REPLY #62797 /* ~"Uważam ją za przyjaciela, nic więcej."~ */ GOTO 343
  IF ~~ THEN REPLY #62798 /* ~"Tak czy inaczej, nie zależy mi na niej."~ */ GOTO 343
  IF ~~ THEN REPLY #62799 /* ~"Nienawidzę jej."~ */ GOTO 344
  IF ~~ THEN REPLY #62800 /* ~"Nie ufam jej."~ */ GOTO 346
  IF ~~ THEN REPLY #62801 /* ~"Czasem jest przydatna, nic więcej."~ */ GOTO 343
  IF ~~ THEN REPLY #62802 /* ~"Wolałbym o tym nie mówić."~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 340.1 341.0
  SAY #62803 /* ~"Może chciałbyś jej to powiedzieć."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62804 /* ~"Nie wiem... Wygląda na to, że zostawiam te *szczątki* gdziekolwiek bym nie poszedł, a szczególnie z Deionarą i innymi, których żyć dotknąłem. Może byłoby najlepiej, gdybym odszedł całkiem samotnie."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62805 /* ~"Nie wiem... Wygląda na to, że zostawiam te *szczątki* gdziekolwiek bym nie poszedł, a szczególnie z Deionarą i innymi, których żyć dotknąłem. Może byłoby najlepiej, gdybym odszedł całkiem samotnie."~ */ GOTO 359
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62806 /* ~"Nie wiem... Wygląda na to, że zostawiam te *szczątki* gdziekolwiek bym nie poszedł, a szczególnie z Deionarrą i innymi, których żyć dotknąłem - nie wspominając o Raveli. Nie potrafię sobie nawet wyobrazić co mnie w niej pociągało, ale i tak ją wykorzystałem. Może powinienem uważać na uczucia."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62807 /* ~"Nie wiem... Wygląda na to, że zostawiam te *szczątki* gdziekolwiek bym nie poszedł, a szczególnie z Deionarrą i innymi, których żyć dotknąłem - nie wspominając o Raveli. Nie potrafię sobie nawet wyobrazić co mnie w niej pociągało, ale i tak ją wykorzystałem. Może powinienem uważać na uczucia."~ */ GOTO 359
  IF ~~ THEN REPLY #62808 /* ~"Jeśli tak to będzie to mój wybór."~ */ GOTO 343
  IF ~~ THEN REPLY #62809 /* ~"Nie wiem... przekonamy się."~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 340.2 340.3 340.6 341.1 341.2 341.5 342.4 342.5 345.0 346.0
  SAY #62810 /* ~"Dobrze."~ */
  IF ~~ THEN REPLY #62811 /* ~"Chciałbym zapytać o kogoś innego..."~ */ GOTO 279
  IF ~~ THEN REPLY #62812 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62813 /* ~"W porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 340.4 341.3
  SAY #62814 /* ~"Dlaczego?"~ */
  IF ~~ THEN REPLY #62815 /* ~"Głównie chodzi o akcent... i fakt, że to przez nią znalazłem się w Kostnicy, że jest złodziejem z Ula, ma odrobinę krwi biesów, zawsze podgląda wszystko co robię. Mam mówić dalej?"~ */ GOTO 345
  IF ~~ THEN REPLY #62816 /* ~"Chciałbym zapytać o kogoś innego..."~ */ GOTO 279
  IF ~~ THEN REPLY #62817 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62818 /* ~"W porządku. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #62819 /* ~"W takim razie czemu z nią podróżujesz?"~ */
  IF ~~ THEN REPLY #62820 /* ~"Czasem się przydaje - tak długo jak nie muszę cieszyć się z jej towarzystwa wszystko jest w porządku."~ */ GOTO 343
  IF ~~ THEN REPLY #62821 /* ~"Nieważne. Chciałbym zapytać o kogoś innego..."~ */ GOTO 279
  IF ~~ THEN REPLY #62822 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62823 /* ~"Omówimy to kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 340.5 341.4
  SAY #62824 /* ~"Dlaczego jej nie ufasz?"~ */
  IF ~~ THEN REPLY #62825 /* ~"Przypadkowo znalazła mnie w Alei Uporczywych Westchnień, kiedy umarłem, pomimo tego, że pozostali zbieracze boją się tam chodzić. Jest córką Faroda, złodziejem z Ula, z domieszką krwi biesów. Mam kontynuować?"~ */ GOTO 343
  IF ~~ THEN REPLY #62826 /* ~"Nieważne. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62827 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62828 /* ~"Omówimy to kiedy indziej. A teraz ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 347 // from: 340.7 341.6
  SAY #62829 /* ~"Wstrzymywanie się jest dopuszczalne." Nie-Sława uśmiecha się. "Ciągła wstrzemięźliwość mogłaby być trudna."~ */
  IF ~~ THEN REPLY #62830 /* ~"*Ty* to wiesz."~ */ GOTO 361
  IF ~~ THEN REPLY #62831 /* ~"Dobrze, dobrze... Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62832 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62833 /* ~"Możliwe. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 205.5
  SAY #62834 /* ~Mówi cicho: "Udręka." Przez chwilę przygląda się symbolowi na twoim ramieniu. "Upadły powiedział..." Nabiera powietrza. "...że ciało wie kiedy cierpi, nawet jeśli umysł zapomni. Upadły powiedział, że ta runa działa jak magnes przyciągający do ciebie inne udręczone dusze."~ */
  IF ~~ THEN REPLY #62835 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62836 /* ~"Możliwe. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 139.16
  SAY #62837 /* ~"Nie... rzadko jest ku temu potrzeba, a ja nie mogę znieść dotyku zimnego żelaza, czy nawet stali przez dłuższy okres czasu. Na wszelki wypadek dysponuję pewną liczbą... naturalnych środków obrony, które odstraszają agresorów."~ */
  IF ~~ THEN REPLY #62838 /* ~"Na przykład?"~ */ JOURNAL #61616 /* ~Nie-Sława powiedziała mi, że jej pocałunek jest zdolny wyssać całe życie z ofiary. Wiadomość ta z pewnych powodów obudziła we mnie żywe zainteresowanie. No bo niby jestem nieśmiertelny, nieprawdaż? Hmmmm. Wrócę jeszcze do tego.~ */ GOTO 350
  IF ~~ THEN REPLY #62839 /* ~"Och. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62840 /* ~"Rozumiem... Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #62841 /* ~"Pocałunek sukkuba jest zabójczy dla śmiertelników - choć rzadko zdają sobie z tego sprawę przed śmiercią." Nie-Sława wzrusza ramionami. "Mogę to wykorzystać, jeśli zajdzie taka potrzeba."~ */
  IF ~~ THEN REPLY #62842 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62843 /* ~"Intrugujące... ee, mam na myśli straszne. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 351 // from: 205.2
  SAY #62844 /* ~"To prawda. Yves nie potrzebuje do swej tajemnicy więcej opowieści... a moja opowieść nie pomogłaby jej w poszukiwaniu prawdy."~ */
  IF ~~ THEN REPLY #62845 /* ~"Powiesz mi?"~ */ GOTO 352
  IF ~~ THEN REPLY #62846 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62847 /* ~"Możliwe. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 205.3 206.1 207.2 212.0 351.0
  SAY #62848 /* ~"To długa opowieść i nie tak interesująca jak niektórzy mogliby sądzić." Wzrusza ramionami. "Jest podobna do innych opowieści o wojnie i niewoli - to nie jest przyjemna opowieść."~ */
  IF ~~ THEN REPLY #62849 /* ~"I tak chciałbym ją usłyszeć."~ */ GOTO 353
  IF ~~ THEN REPLY #62850 /* ~"Rozumiem. Mam kilka innych pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62851 /* ~"W takim razie ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #62852 /* ~"Dobrze... pamiętaj, że moja przeszłość nie sięga zbyt daleko, przynajmniej według norm tanar'ri. Nie wiem, co wiesz o tanar'ri, ale jesteśmy jedną z ras Otchłani, wstrząsających Sfer pełnych chaosu i złych serc."~ */
  IF ~~ THEN REPLY #62853 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ GOTO 354
  IF ~~ THEN REPLY #62854 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62855 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #62856 /* ~"Jestem tanar'ri, biesem, sukkubem... dorastałam w pierwszej sferze Otchłani. Moja matka była sukkubem - jak zapewne wiesz, sukkuby uwodzą śmiertelników, by ściągnąć ich dusze do otchłani. Moja matka była w tym jedną z najlepszych, uwiodła niezliczone rzesze ludzi, ku ich wiecznemu potępieniu. Teraz mieszka w Otchłani, sprzedaje w niewolę swe dzieci."~ */
  IF ~~ THEN REPLY #62857 /* ~"Twoja matka sprzedała cię w niewolę?"~ */ GOTO 355
  IF ~~ THEN REPLY #62858 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62859 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #62860 /* ~"Sprzedała mnie baatezu, zaciekłym wrogom tanar'ri. Chyba oczekiwała, że mnie zabiją. Pomimo wiedzy z innych dziedzin nie jest zbyt obeznana z ich kulturą i zamiłowaniem do torturowania innych."~ */
  IF ~~ THEN REPLY #62861 /* ~"W jaki sposób uciekłaś?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 356
  IF ~~ THEN REPLY #62862 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62863 /* ~"Dość już usłyszałem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #62864 /* ~"Baatezu to dumny lud. Sama myśl, że tanar'ri mogą ich pobić w jakiejkolwiek dziedzinie jest dla nich nie do przyjęcia. Wyzwałam więc najdumniejszego z balorów na konkurs improwizacji, moja natura tanar'ri dała mi przewagę - widzisz, tanar'ri to stwory chaosu, dzikie i nieprzewidywalne. Baatezu są bardziej przebiegli w swych uporządkowanych sercach. Rozumieją na czym polega improwizacja, ale nie radzą sobie z nią zbyt dobrze. Tym sposobem wygrałam wolność - a droga przywiodła mnie do Sigil."~ */
  IF ~~ THEN REPLY #62865 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 205
  IF ~~ THEN REPLY #62866 /* ~"To wszystko, co chciałem wiedzieć. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 279.0
  SAY #62867 /* ~"Co chciałbyś omówić?"~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62868 /* ~"Chciałbym, żebyś wiedziała, że kiedy pocałowałem Ravelę w labiryncie, ja..."~ */ GOTO 281
  IF ~~ THEN REPLY #62869 /* ~"Tak naprawdę, to jestem ciekaw jakie są twoje uczucia względem mnie."~ */ GOTO 287
  IF ~~ THEN REPLY #62870 /* ~"Chciałbym wiedzieć co myślisz o mojej sytuacji."~ */ GOTO 330
  IF ~~ THEN REPLY #62871 /* ~"Masz jakikolwiek pomysł, kim lub czym mogę być?"~ */ GOTO 288
  IF ~~ THEN REPLY #62872 /* ~"Nieważne. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62873 /* ~"Zapomnij o tym. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62874 /* ~"To nieważne. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from: 342.0 342.2
  SAY #62875 /* ~"Deionarra była tą kobietą w kamieniu doznań tęsknoty? Była tą, która kochała twoje poprzednie wcielenie?"~ */
  IF ~~ THEN REPLY #62876 /* ~"Tak. Zrobiłem jej coś strasznego, ale nie wiem co."~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 342.1 342.3 358.0
  SAY #62877 /* ~"Na to odpowiedziałabym w ten sposób - miłość może nawet poruszyć Sfery, gdy jest silna i prawdziwa. Pośród moich doświadczeń nie ma nic bardziej prawdziwego niż uczucie jakim obdarza się drugą osobę."~ */
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN GOTO 360
  IF ~~ THEN REPLY #62879 /* ~"Możliwe. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62880 /* ~"Może masz rację. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62881 /* ~"Porozmawiamy o tym następnym razem. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #62882 /* ~"Zanim zdecydujesz się chronić innych przed swoimi uczuciami, pamiętaj jedno - miłość jest potężna, tak potężna, że odnalazła drogę do czarnego serca Raveli, a jej dotyk kazał cenić jej drugą osobę bardziej niż siebie. Czy wiesz jakiej trzeba było siły, by odmienić serce kogoś takiego jak Ravela? Pomimo całego bólu jakiego mogła być źródłem, wydaje mi się, że trzeba powiedzieć o dobru, które stworzyła."~ */
  IF ~~ THEN REPLY #62883 /* ~"Możliwe. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62884 /* ~"Może masz rację. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62885 /* ~"Kiedy indziej o tym porozmawiamy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 347.0
  SAY #62886 /* ~"Ach - zasłużyłam na to." Nie-Sława uśmiecha się. "Tak na to odpowiem - uczucia do drugiej osoby mogą poruszyć nawet Sfery, nie ma nic bardziej prawdziwego niż uczucie jakim obdarza się drugą osobę."~ */
  IF ~~ THEN REPLY #62887 /* ~"Możliwe. Chciałbym porozmawiać o kimś innym..."~ */ GOTO 279
  IF ~~ THEN REPLY #62888 /* ~"Może masz rację. Mam kilka innych pytań..."~ */ GOTO 139
  IF ~~ THEN REPLY #62889 /* ~"Kiedy indziej o tym porozmawiamy. Ruszajmy."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #63241 /* ~"Tysiące."~ [FFG299] */
  IF ~~ THEN EXTERN ~BMORTE~ 33
END

IF ~~ THEN BEGIN 363 // from:
  SAY #63245 /* ~"Wiesz co, Morte, są takie sfery gdzie błazny robią za opał."~ [FFG300] */
  IF ~~ THEN EXTERN ~BMORTE~ 35
END

IF ~~ THEN BEGIN 364 // from:
  SAY #63246 /* ~"Wydaje się, że nieszczęście spowija nas wszystkich."~ [FFG301] */
  IF ~~ THEN EXTERN ~BMORTE~ 37
END

IF ~~ THEN BEGIN 365 // from:
  SAY #63248 /* ~"Nie, nie jest ładna... Ale z łatwością mogłaby być piękna."~ [FFG322] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #63469 /* ~"Podejrzewam, że tak długo jak będzie mi wolno."~ [FFG317] */
  IF ~~ THEN EXTERN ~BANNAH~ 17
END

IF ~~ THEN BEGIN 367 // from:
  SAY #63470 /* ~"Nie wiem czy będę tam wracać."~ [FFG318] */
  IF ~~ THEN EXTERN ~BANNAH~ 19
END

IF ~~ THEN BEGIN 368 // from:
  SAY #63471 /* ~"Będę ostrożna. Zapewniam cię, nie mam takich żądzy."~ [FFG319] */
  IF ~~ THEN EXTERN ~BANNAH~ 21
END

IF ~~ THEN BEGIN 369 // from:
  SAY #63472 /* ~"Nie wszystkie, Anno. Postaraj się choć trochę uwolnić od tych uprzedzeń. Też masz w sobie biesią krew, a posiadasz wiele dobrych cech."~ [FFG319A] */
  IF ~~ THEN EXTERN ~BANNAH~ 22
END

IF ~~ THEN BEGIN 370 // from:
  SAY #63473 /* ~"Anno, zazdrość ma podwójne ostrze. Jeśli dalej..."~ [FFG320] */
  IF ~~ THEN EXTERN ~BANNAH~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #63474 /* ~"A więc dobrze."~ [FFG320A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from:
  SAY #63475 /* ~"Anno, posłuchaj, moglibyśmy..."~ [FFG321] */
  IF ~~ THEN EXTERN ~BANNAH~ 26
END

IF ~~ THEN BEGIN 373 // from:
  SAY #63697 /* ~"Morte, daj spokój."~ [FFG332] */
  IF ~~ THEN EXTERN ~DMORTE~ 642
END

IF ~~ THEN BEGIN 374 // from:
  SAY #63698 /* ~"Och? Czy wlicza się w to Modrony?"~ [FFG302] */
  IF ~~ THEN EXTERN ~BNORDOM~ 28
END

IF ~~ THEN BEGIN 375 // from:
  SAY #63699 /* ~"Ależ któż ci naopowiadał takich rzeczy, Nordomie?"~ [FFG303] */
  IF ~~ THEN EXTERN ~DMORTE~ 644
END

IF ~~ THEN BEGIN 376 // from:
  SAY #63700 /* ~"Słucham?"~ [FFG333] */
  IF ~~ THEN EXTERN ~BNORDOM~ 31
END

IF ~~ THEN BEGIN 377 // from:
  SAY #63701 /* ~"Co proszę?"~ [FFG334] */
  IF ~~ THEN EXTERN ~BNORDOM~ 33
END

IF ~~ THEN BEGIN 378 // from:
  SAY #63702 /* ~"Dlaczego... Myślę, że taka postać po prostu mi odpowiada... A poza tym, zdecydowanie lubię skrzydła."~ [FFG334A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 34
END

IF ~~ THEN BEGIN 379 // from:
  SAY #63703 /* ~"A cóż to, Nordomie, próbujesz mnie osądzać?"~ [FFG334B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 35
END

IF ~~ THEN BEGIN 380 // from:
  SAY #63860 /* ~"Te 'grzechy' nie łamią praw Tanar'ri, Vhailorze. Ma ścieżka to mój wolny wybór, a nie kara."~ [FFG304] */
  IF ~~ THEN EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",3)
~ THEN BEGIN 381 // from:
  SAY #68209 /* ~Nie-Sława chwiejąc się staje na nogi, gdy twoja moc jej dotyka - nawet zdezorientowana w jakiś sposób zachowuje spokój.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68210 /* ~"Nie-Sławo jesteśmy w Fortecy Żalu, znalazłem mego zabójcę - to moja własna śmiertelność - nastaje na swoje własne życie. Teraz naprawdę potrzebuję twojej pomocy."~ */ DO ~SetGlobal("Fortress_Grace","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 382
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68354 /* ~"NIE-SŁAWO."~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #68211 /* ~Powoli kiwa głową, siły zdają się do niej wracać, gdy słucha twych słów. "Boje się, że teraz, gdy już weszliśmy to miejsce łatwo nas nie wypuści."~ [FFG070] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68212 /* ~"Przekonamy się..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68213 /* ~"Przekonamy się..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68214 /* ~"Przekonamy się..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68215 /* ~"Przekonamy się..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68242 /* ~"Przekonamy się..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68435 /* ~"Przekonamy się..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68436 /* ~"Przekonamy się..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68445 /* ~"Przekonamy się..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.1
  SAY #68355 /* ~Nie-Sława unosi wzrok i przez chwilę patrzy ci w oczy. Nagle się uśmiecha - ale to mizerny uśmiech, zdradzający więcej smutku niż czegokolwiek innego. "Twój głos - więc w końcu się odnalazłeś?"~ */
  IF ~~ THEN REPLY #68356 /* ~"TAK. CENA BYŁA... WYSOKA. KOSZTOWAŁA WIELE ŻYĆ, MOICH I INNYCH."~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68357 /* ~"Cena takich rzeczy rzadko jest określana w miedzi." Nie-Sława obserwuje twoją reakcję "Czy wciąż jesteś..."~ */
  IF ~~ THEN REPLY #68358 /* ~"WCIĄŻ JESTEM TYM KOGO ZNASZ - ALE MOJE SPOJRZENIE SIĘ... ZMIENIŁO. NIE ZAPOMNIAŁEM CIĘ, JEŚLI TEGO SIĘ OBAWIASZ."~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68359 /* ~Nie-Sława ponownie się uśmiecha, tym samym uśmiechem co poprzednio. "Nie, o to się nie bałam."~ */
  IF ~~ THEN REPLY #68360 /* ~"NIE MOGĘ ZOSTAĆ TU DŁUŻEJ. MOJA KARA WZYWA. PRZEZNACZENIE I CZAS WKRÓTCE TU BĘDĄ. JEŚLI CHCESZ ODEŚLĘ CIĘ DO SIGIL."~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #68361 /* ~"To nie jest moje życzenie." Nie-Sława wyciąga rękę, jej dłoń dotyka lekko twego ramienia. Czujesz lekkie mrowienie, ledwie wyczuwalne - zabiera rękę. "Znowu cię *znajdę*, bez względu na to w którym miejscu Niższych Sfer będziesz - ty też będziesz mógł mnie odnaleźć."~ */
  IF ~~ THEN REPLY #68362 /* ~"TO MOŻE DŁUGO POTRWAĆ. TAM, DOKĄD TRAFIĘ, CZASU NIE MIERZY SIĘ W LATACH. A ZBRODNIE, KTÓRE POPEŁNIŁEM, SĄ POTĘŻNIEJSZE NIŻ JAKAKOWIEK KLATKA."~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #68363 /* ~"Żadna klatka nas nie rozdzieli, żadna Sfera nas nie rozłączy." Twarz Nie-Sławy staje się twarda jak głaz. "Myśl o mnie, a wtedy znowu się spotkamy."~ */
  IF ~~ THEN REPLY #68364 /* ~"NIE ZAPOMNĘ NICZEGO CO DLA MNIE POŚWIĘCIŁAŚ."~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #68365 /* ~Potrząsa głową. "Tylko mnie nie zapomnij."~ */
  IF ~~ THEN REPLY #68366 /* ~"CZAS NISZCZY WSZYSTKO, ALE BĘDĘ WALCZYŁ, TAK DŁUGO JAK BĘDĘ MÓGŁ."~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #68367 /* ~"Czas nie jest twoim wrogiem. Wieczność - tak."~ [FFG196] */
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68368 /* ~"MOŻLIWE. ŻEGNAJ, SŁAWO."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68369 /* ~"MOŻLIWE. ŻEGNAJ, SŁAWO."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68370 /* ~"MOŻLIWE. ŻEGNAJ, SŁAWO."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68371 /* ~"MOŻLIWE. ŻEGNAJ, SŁAWO."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68499 /* ~"MOŻLIWE. ŻEGNAJ, SŁAWO."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68500 /* ~"MOŻLIWE. ŻEGNAJ, SŁAWO."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68501 /* ~"MOŻLIWE. ŻEGNAJ, SŁAWO."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",4)
~ THEN BEGIN 390 // from:
  SAY #68416 /* ~Nie-Sława kiwa głową gdy do niej mówisz. "Boje się, że teraz, gdy już weszliśmy to miejsce łatwo nas nie wypuści."~ [FFG070] */
  IF ~~ THEN REPLY #68417 /* ~"Zobaczymy. Najpierw zajmijmy się moją śmiertelnością..."~ */ EXIT
END
