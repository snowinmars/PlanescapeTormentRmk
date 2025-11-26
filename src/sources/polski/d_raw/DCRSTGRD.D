// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1536 /* ~Widzisz jednego ze strażników Klątwy. Krwawi i dyszy ciężko. "Nie mam czasu na rozmowy. Jeśli masz wolną rękę, pomóż nam... w obronie." Macha ręką, nakazując ci, byś odszedł.~ */
  IF ~~ THEN REPLY #58830 /* ~"Co się stało?"~ */ GOTO 1
  IF ~~ THEN REPLY #58832 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1538 /* ~"To się stało, że jakiś szpicowany głupek wypuścił coś na wolność i nagle, niespodziewanie, musimy walczyć w Tartarze o nasze życie. Teraz opuść to miejsce i zajmij się czymś pożytecznym."~ */
  IF ~~ THEN REPLY #58831 /* ~"Żegnaj więc."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1539 /* ~"Czy ci nie mówiłem, żebyś się zajął własnymi sprawami?"~ */
  IF ~~ THEN REPLY #58833 /* ~"Dobrze, dobrze."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 3 // from:
  SAY #1540 /* ~"Co ty, na Dziewięć Piekieł, robisz tu na dole?"~ */
  IF ~~ THEN REPLY #58834 /* ~"Tak się tylko rozglądam wokoło."~ */ GOTO 5
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58835 /* ~"Co możesz mi powiedzieć o tej zbroi?"~ */ GOTO 6
  IF ~~ THEN REPLY #58836 /* ~"Szukam devy."~ */ GOTO 7
  IF ~~ THEN REPLY #58837 /* ~"Nic. Żegnaj."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #1541 /* ~"Nie ruszaj się!" Strażnik rusza do ataku!~ */
  IF ~~ THEN REPLY #58838 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58839 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 6.1
  SAY #58840 /* ~"Rozglądasz się? W więzieniu? Jesteś tu, by pomóc w ucieczce!" Robi na ciebie zamach swoją bronią!~ */
  IF ~~ THEN REPLY #58858 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58859 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #58841 /* ~"Nie wiem. Odkąd sięgam pamięcią, była częścią więzienia. Nie jesteśmy w stanie otworzyć celi, nie ważne, jak się staramy. Niezła to zbroja, ale nie możemy się do niej dostać. Teraz twoja kolej, by odpowiedzieć na pytanie: Co robisz tu, na dole?"~ */
  IF ~~ THEN REPLY #58860 /* ~"Szukam devy."~ */ GOTO 7
  IF ~~ THEN REPLY #58861 /* ~"Po prostu rozglądam się wokół."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.0
  SAY #58842 /* ~Uśmiecha się. "Już niedługo dołączysz do chórów niebiańskich, trepie." Wyciąga broń i rusza do ataku!~ */
  IF ~~ THEN REPLY #58862 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58863 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #58843 /* ~Widzisz jednego z elity Klątwy. Zdaje się być trochę znudzony. "Czego chcesz? Nie wiesz, że ogłoszono stan kryzysowy?"~ */
  IF ~~ THEN REPLY #58864 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 10
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58865 /* ~"Kobieta zwana Lady Robertą zamieszana jest w plan zabicia jej męża, Karla. Sądzę, że jest jednym z pomocników Włodarza."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58866 /* ~"Chcę się przyznać do zamordowania Karla Parfidora."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58867 /* ~"Jeden z urzędników tego miasta zlecił mi zabicie innego. Przyszło mi na myśl, że dobrze będzie was o tym ostrzec."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58868 /* ~"Chcę, żebyś mnie aresztował."~ */ GOTO 15
  IF ~~ THEN REPLY #58869 /* ~"Szukam devy."~ */ GOTO 16
  IF ~~ THEN REPLY #58870 /* ~"Chcę się widzieć z kimś, kto tu rządzi."~ */ GOTO 11
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58871 /* ~"Jeden z urzędników tego miasta zlecił mi zabicie innego. Przyszło mi na myśl, że dobrze będzie was o tym ostrzec."~ */ GOTO 22
  IF ~~ THEN REPLY #58929 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from: 10.0 11.0 12.1 13.1 14.0 15.2 16.0 17.1 22.0
  SAY #58844 /* ~"Czego tym razem chcesz?"~ */
  IF ~~ THEN REPLY #58872 /* ~"Co możesz mi powiedzieć o tym miejscu."~ */ GOTO 10
  IF ~~ THEN REPLY #58873 /* ~"Chcę się widzieć z kimś, kto tu rządzi."~ */ GOTO 11
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58874 /* ~"Kobieta zwana Lady Robertą zamieszana jest w plan zabicia jej męża, Karla. Sądzę, że jest jednym z pomocników Włodarza."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58875 /* ~"Chcę się przyznać do zamordowania Karla Parfidora."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58876 /* ~"Jeden z urzędników tego miasta zlecił mi zabicie innego. Przyszło mi na myśl, że dobrze będzie was o tym ostrzec."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58877 /* ~"Chcę, żebyś mnie aresztował."~ */ GOTO 15
  IF ~~ THEN REPLY #58878 /* ~"Szukam devy."~ */ GOTO 16
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58879 /* ~"Jeden z urzędników tego miasta zlecił mi zabicie innego. Przyszło mi na myśl, że dobrze będzie was o tym ostrzec."~ */ GOTO 22
  IF ~~ THEN REPLY #58932 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #58845 /* ~"Jesteśmy uziemieni z powody plagi. Nie wiemy, co jest jej źródłem. Utrzymujemy części miasta w izolacji, dopóki się tego nie dowiemy. Chcesz czegoś jeszcze?"~ */
  IF ~~ THEN REPLY #58880 /* ~"Mam parę innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #58881 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.6 9.1 17.0
  SAY #58846 /* ~"Z Włodarzem? Znajdziesz go w budynku administracyjnym. Trzeba mieć jednak dużo szczęścia, żeby się do niego dostać. W tych dniach *nikogo* nie przyjmuje. Zajmuje się zdecydowanie innej natury sprawami..."~ */
  IF ~~ THEN REPLY #58882 /* ~"Mam parę innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #58883 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 9.2
  SAY #58847 /* ~"Lady Roberta?" Marszczy czoło, zastanawiając się. "Zajmiemy się tym." Odwraca wzrok. "Dzięki."~ */
  IF ~~ THEN REPLY #58884 /* ~"Co? Nie ma za to wynagrodzenia?"~ */ GOTO 17
  IF ~~ THEN REPLY #58885 /* ~"Mam parę innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #58886 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2 9.3
  SAY #58848 /* ~"To nie jest coś, z czego sobie można żarty stroić. Bardzo poważnie podchodzimy do sprawy tej śmierci. Ktokolwiek to zrobił, spędzi sporo czasu za kratkami."~ */
  IF ~~ THEN REPLY #58887 /* ~"Mówię poważnie. Zabiłem go."~ */ GOTO 18
  IF ~~ THEN REPLY #58888 /* ~"Och. Przepraszam za ten żart. Mam parę innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #58889 /* ~"Och, przepraszam. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3 9.4
  SAY #58849 /* ~Potrząsa głową. "Może ci się to wydać głupie, trepie, ale nie wdaję się w polityczne niesnaski. Cenię swoją pracę... i swoje życie. Idź z tym do kapitana."~ */
  IF ~~ THEN REPLY #58890 /* ~"Dobrze. W takim razie mam parę innych pytań."~ */ GOTO 9
  IF ~~ THEN REPLY #58891 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4 9.5
  SAY #58850 /* ~"Aresztować cię? Za co?"~ */
  IF ~~ THEN REPLY #58892 /* ~"Po prostu chcę iść do więzienia."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 19
  IF ~~ THEN REPLY #58893 /* ~"Ponieważ jestem kompletnym świrem! Trara-rara, bum-cyk-cyk!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 20
  IF ~~ THEN REPLY #58894 /* ~"Zapomnij o tym. Odpowiedz mi na parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #58895 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 9.6
  SAY #58851 /* ~"W takim razie szukasz na nieodpowiednim końcu Wielkiego Kręgu, trepie. Nawet gdyby był tu taki, to i tak byś go nie znalazł. Trzymany byłby pod kluczem niczym złoto skąpca."~ */
  IF ~~ THEN REPLY #58896 /* ~"No dobrze. Mam kilka pytań do ciebie..."~ */ GOTO 9
  IF ~~ THEN REPLY #58897 /* ~"W takim razie mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.0
  SAY #58852 /* ~Uśmiecha się wywyższająco. "Moralność sama w sobie stanowi nagrodę, czyż nie? Jeśli chcesz się czegoś więcej dowiedzieć, porozmawiaj z którymś z dowodzących."~ */
  IF ~~ THEN REPLY #58898 /* ~"W takim razie chcę porozmawiać z kimś, kto tu dowodzi."~ */ GOTO 11
  IF ~~ THEN REPLY #58899 /* ~"W porządku. Mam kilka pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #58900 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #58853 /* ~"Pójdziesz po dobroci, czy mamy obyć się z tobą surowiej?"~ */
  IF ~~ THEN REPLY #58901 /* ~"Pójdę po dobroci."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58902 /* ~"Będziemy musieli walczyć."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #58854 /* ~"Skoro nalegasz. Chodźmy."~ */
  IF ~~ THEN REPLY #58903 /* ~"Rozmyśliłem się. Zapomnij o tym."~ */ GOTO 21
  IF ~~ THEN REPLY #58904 /* ~"W porządku. Chodźmy."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #58855 /* ~"Przekonałeś mnie. Chodźmy więc."~ */
  IF ~~ THEN REPLY #58905 /* ~"Rozmyśliłem się. Zapomnij o tym."~ */ GOTO 21
  IF ~~ THEN REPLY #58906 /* ~"W porządku. Chodźmy."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #58856 /* ~"Trochę na to za późno, trepie. Pójdziesz po dobroci, czy nie?"~ */
  IF ~~ THEN REPLY #58908 /* ~"Pójdę po dobroci."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58909 /* ~"Będziemy musieli walczyć."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.7 9.7
  SAY #58928 /* ~Potrząsa głową. "Może ci się to wydać głupie, trepie, ale nie wdaję się w polityczne niesnaski. Cenię swoją pracę... i swoje życie. Idź z tym do kapitana. Znajdziesz go przy bramie wiodącej do śródmieścia, zaraz zanim skręcasz do innej części miasta."~ */
  IF ~~ THEN REPLY #58930 /* ~"Dobrze. W takim razie mam parę innych pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #58931 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
Global("Curst_Arrest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #58933 /* ~"Co się dzie... WŁAMANIE DO WIĘZIENIA!" Strażnik atakuje!~ */
  IF ~~ THEN REPLY #58934 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58935 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
