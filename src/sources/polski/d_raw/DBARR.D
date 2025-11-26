// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2835 /* ~Strażnik patrzy na ciebie z mieszaniną strachu i nienawiści, ale pospiesza, by otworzyć ci bramę. Gdy przechodzisz, nie patrzy ci w oczy.~ */
  IF ~~ THEN REPLY #2836 /* ~"Pobudka, chłopaki!"~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #19865 /* ~Strażnik prostuje się. "Masz to, czego chciał Farod, trepie?"~ */
  IF ~~ THEN REPLY #19866 /* ~"Tak."~ */ GOTO 2
  IF ~~ THEN REPLY #19867 /* ~"Jeszcze nie."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19868 /* ~"Pokaż mi to, a ja podniosę bramę. Ale nie wcześniej, jasne?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #19869 /* ~Pokaż mu to.~ */ GOTO 4
  IF ~~ THEN REPLY #19870 /* ~"Dobra, nie mam tego. Ale mam coś, czym możesz być zainteresowany."~ */ GOTO 5
  IF ~~ THEN REPLY #19871 /* ~"Nie sądzę. Wrócę tu."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #19872 /* ~"Jeśli tego nie masz, to czemu marnujesz mój czas?" Strażnik chichocze pod nosem.~ */
  IF ~~ THEN REPLY #19873 /* ~"Nie mam, ale mam coś, czym możesz być zainteresowany..."~ */ GOTO 5
  IF ~~ THEN REPLY #19874 /* ~"Dobra. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #19875 /* ~"Dobra. Właź."~ */
  IF ~~ THEN REPLY #19876 /* ~"Dzięki."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #19877 /* ~"Tia? A co to może być?"~ */
  IF ~~ THEN REPLY #19878 /* ~"Brzdęk. Co sądzisz o miedziaku?"~ */ GOTO 7
  IF ~~ THEN REPLY #19879 /* ~"Brzdęk. Jak ci się podoba dycha?"~ */ GOTO 8
  IF ~~ THEN REPLY #19880 /* ~"Brzdęk. Co powiesz na dwadzieścia pięć?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19881 /* ~"Brzdęk. Co powiesz na pięćdziesiąt?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19882 /* ~"Brzdęk. Co powiesz na pięćdziesiąt?"~ */ GOTO 11
  IF ~~ THEN REPLY #19883 /* ~"Brzdęk. Co powiesz na stówę?"~ */ GOTO 12
  IF ~~ THEN REPLY #19884 /* ~"Jak się nad tym zastanowić, to nic."~ */ GOTO 6
  IF ~~ THEN REPLY #19885 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.6
  SAY #19886 /* ~"Zatem nie wchodzisz do środka, trepie." Spluwa ci pod nogi.~ */
  IF ~~ THEN REPLY #19887 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #19888 /* ~Uśmiecha się złowrogo. "Właściwie to mnie obrażasz, trepie. Spróbuj jeszcze raz."~ */
  IF ~~ THEN REPLY #19889 /* ~"Dobra. Jak ci się podoba dycha?"~ */ GOTO 8
  IF ~~ THEN REPLY #19890 /* ~"Dobra. Co powiesz na dwadzieścia pięć?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19892 /* ~"Dobra. Co powiesz na pięćdziesiąt?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19893 /* ~"Dobra. Co powiesz na pięćdziesiąt?"~ */ GOTO 11
  IF ~~ THEN REPLY #19895 /* ~"Dobra. Co powiesz na sto?"~ */ GOTO 12
  IF ~~ THEN REPLY #19896 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #19899 /* ~"Nie sądzę..."~ */
  IF ~~ THEN REPLY #19900 /* ~"Dobra. Co powiesz na dwadzieścia pięć?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19901 /* ~"Dobra. Co powiesz na pięćdziesiąt?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19902 /* ~"Dobra. Co powiesz na pięćdziesiąt?"~ */ GOTO 11
  IF ~~ THEN REPLY #19903 /* ~"Dobra. Co powiesz na sto?"~ */ GOTO 12
  IF ~~ THEN REPLY #19904 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 7.1 8.0
  SAY #19905 /* ~"Ciepło, ciepło, trepie, ale jeszcze nie to."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19906 /* ~"Dobra. Co powiesz na pięćdziesiąt?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19907 /* ~"Dobra. Co powiesz na pięćdziesiąt?"~ */ GOTO 11
  IF ~~ THEN REPLY #19908 /* ~"Dobra. Co powiesz na sto?"~ */ GOTO 12
  IF ~~ THEN REPLY #19909 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3 7.2 8.1 9.0 25.1
  SAY #19910 /* ~Uśmiech przecina jego brzydką twarz. "Wystarczy. Podaj, a ja otworzę ci bramę."~ */
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19911 /* ~"Chyba tyle nie mam."~ */ GOTO 14
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19912 /* ~Daj mu pięćdziesiąt monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19913 /* ~Daj mu czterdzieści monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19914 /* ~Niech po nie sięgnie: "Bierz, są twoje."~ */ GOTO 15
  IF ~~ THEN REPLY #19915 /* ~"Zapomnij. Wracam do katakumb."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.4 7.3 8.2 9.1
  SAY #19916 /* ~Kalkuluje w myślach, po czym odpowiada: "Nie. Chcesz wejść, to musisz przynieść ze sobą więcej."~ */
  IF ~~ THEN REPLY #19917 /* ~"W porządku. Co powiesz na sto?"~ */ GOTO 12
  IF ~~ THEN REPLY #19918 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.5 7.4 8.3 9.2 11.0 26.1
  SAY #19919 /* ~"Wystarczy. Całkiem nieźle. Podaj, a ja otworzę ci bramę."~ */
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19920 /* ~"Chyba tyle nie mam."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19921 /* ~Daj mu sto monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19922 /* ~Daj mu dziewięćdziesiąt monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19923 /* ~Niech po nie sięgnie: "Bierz, są twoje."~ */ GOTO 16
  IF ~~ THEN REPLY #19924 /* ~"Zapomnij. Wracam do katakumb."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 10.2 12.1 12.2 15.4 15.5 16.5 16.6
  SAY #19925 /* ~Waży je, monety przesypują mu się przez palce, i mówi. "Chyba wystarczy." Otwiera bramę.~ */
  IF ~~ THEN REPLY #19926 /* ~"Żegnaj."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 12.0 15.6 16.4 21.0 25.0 26.0
  SAY #19927 /* ~"To niedobrze. Zobaczymy się, gdy będziesz tyle miał. Do tego czasu nie przejdziesz." Odwraca się.~ */
  IF ~~ THEN REPLY #19928 /* ~"W porządku..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #19929 /* ~Sięga przez bramę po monety, które trzymasz.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19930 /* ~Schwyć jego rękę i przyciśnij ją.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19931 /* ~Schwyć jego rękę i przyciśnij ją.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19932 /* ~Schwyć jego rękę i przyciśnij ją.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19933 /* ~Schwyć jego rękę i przyciśnij ją.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19934 /* ~Daj mu pięćdziesiąt monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19935 /* ~Daj mu czterdzieści monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19936 /* ~"Chyba tyle nie mam."~ */ GOTO 14
  IF ~~ THEN REPLY #19937 /* ~"Zapomnij. Wracam na dół."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #19938 /* ~Sięga przez bramę po monety, które trzymasz.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19939 /* ~Schwyć jego rękę i przyciśnij ją.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19940 /* ~Schwyć jego rękę i przyciśnij ją.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19941 /* ~Schwyć jego rękę i przyciśnij ją.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19942 /* ~Schwyć jego rękę i przyciśnij ją.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19943 /* ~"Chyba tyle nie mam."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19944 /* ~Daj mu sto monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19945 /* ~Daj mu dziewięćdziesiąt monet. "Trzymaj. Tutaj są."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19946 /* ~"Zapomnij. Wracam do katakumb."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0
  SAY #19947 /* ~Zwinnie przygniatasz jego ramię do bramy i wykręcasz je. Strażnik krzyczy z bólu, gdy ręka trzeszczy mu w stawie.~ */
  IF ~~ THEN REPLY #19948 /* ~"Wpuść mnie, albo ci ją złamię!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19949 /* ~Puść go. "A teraz wpuść mnie, albo rozerwę cię na strzępy. Dość już twoich gierek."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1 15.2 16.1 16.2
  SAY #19950 /* ~Gdy sięga po monety, chwytasz go za rękę. On stara się wyrwać z twojego uścisku, ale w końcu udaje ci się przygnieść jego rękę do bramy i wykręcić. Strażnik sapie z bólu.~ */
  IF ~~ THEN REPLY #19951 /* ~"Wpuść mnie, albo ci ją złamię!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19952 /* ~Puść go. "A teraz wpuść mnie, albo rozerwę cię na strzępy. Dość już twoich gierek."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.3 16.3
  SAY #6783 /* ~Gdy sięga po monety, starasz się chwycić go za rękę. On wyrywa ją z twego uścisku i szybko chowa za kratę, rycząc: "Zapłacisz za to podwójnie, łajzo! Zejdź mi z oczu!" Odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #6844 /* ~"Zatem żegnaj..."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.1 18.0 18.1
  SAY #19953 /* ~Szybko otwiera bramę, zanim zdążysz zrealizować swoją groźbę i staje poza twoim zasięgiem, gdy przez nią przechodzisz.~ */
  IF ~~ THEN REPLY #19954 /* ~"Jeszcze raz staniesz mi na drodze, a będą zbierać twoje członki z trzech różnych krypt. Jasne? To dobrze."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19955 /* ~"Mamy nauczkę, co? Następnym razem okaż nieco więcej szacunku. Żegnaj."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  Global("No_Pin","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #19956 /* ~Strażnik wpatruje się w ciebie nienawistnie. "Będzie cię to kosztować dwieście, trepie. I żadnych więcej numerów!"~ */
  IF ~~ THEN REPLY #19957 /* ~"Nie mam tyle."~ */ GOTO 14
  IF ~  PartyGoldGT(199)
~ THEN REPLY #19958 /* ~"Dobra. Trzymaj."~ */ DO ~TakePartyGold(200)
~ GOTO 22
  IF ~~ THEN REPLY #19959 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #19960 /* ~Bierze monety i ostrożnie je przelicza. Gdy jest zadowolony, że nie oszukałeś go nawet na jednej, otwiera bramę. "Nie zapominaj, trepie... tyle samo będzie kosztować, gdy wrócisz!"~ */
  IF ~~ THEN REPLY #19961 /* ~"Tia, co tylko powiesz."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19962 /* ~"Z pewnością mam więcej, niż potrzeba."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
!Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #19963 /* ~Strażnik lekko się prostuje. "Masz pieniądze, by zapłacić za przejście?"~ */
  IF ~~ THEN REPLY #19965 /* ~"Zapłacić? Ile?"~ */ GOTO 25
  IF ~~ THEN REPLY #19966 /* ~"Nie wiedziałem, że trzeba płacić."~ */ GOTO 24
  IF ~~ THEN REPLY #19967 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #19964 /* ~"Wielu nie wie, ale trzeba."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19968 /* ~"Ile?"~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19969 /* ~"Ile?"~ */ GOTO 26
  IF ~~ THEN REPLY #19970 /* ~"Zapomnij. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #19971 /* ~"Dla ciebie? Pięćdziesiąt."~ */
  IF ~~ THEN REPLY #19972 /* ~"Pięćdziesiąt? Nie wiem, czy chcę płacić aż tyle."~ */ GOTO 14
  IF ~~ THEN REPLY #19973 /* ~"Chyba mogę zapłacić."~ */ GOTO 10
  IF ~~ THEN REPLY #19974 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #19975 /* ~"Dla ciebie? Sto."~ */
  IF ~~ THEN REPLY #19976 /* ~"Sto? Nie wiem, czy chcę płacić aż tyle."~ */ GOTO 14
  IF ~~ THEN REPLY #19977 /* ~"Chyba mogę zapłacić."~ */ GOTO 12
  IF ~~ THEN REPLY #19978 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 30.2 31.0 32.1 33.0 34.0 35.0 37.0 38.0
  SAY #19979 /* ~"Czego znowu?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19980 /* ~"Farod dał mi pozwolenie na przejście do katakumb. Otwórz mi bramę."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19981 /* ~"Co znajduje się za bramą?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19982 /* ~"Co znajduje się za bramą?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19983 /* ~"Czy możesz ponownie otworzyć dla mnie bramę?"~ */ GOTO 36
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19984 /* ~"Co możesz powiedzieć mi o miejscach znajdujących się za bramą?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19985 /* ~"Chcę tam zejść."~ */ GOTO 35
  IF ~~ THEN REPLY #19986 /* ~"Kim jesteś?"~ */ GOTO 37
  IF ~~ THEN REPLY #19987 /* ~"Co robisz?"~ */ GOTO 38
  IF ~~ THEN REPLY #19988 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 28 // from:
  SAY #19989 /* ~Widzisz potężnego człowieka, odzianego w zniszczone, połatane ubranie i śmierdzącego starym piwem. Jest naprawdę potężny - widać, że wybrano go do tej funkcji ze względu na jego siłę, a nie rozum. "Czego?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19990 /* ~"Farod dał mi pozwolenie na przejście do katakumb. Otwórz mi bramę."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19991 /* ~"Co znajduje się za bramą?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19992 /* ~"Co znajduje się za bramą?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19993 /* ~"Co możesz powiedzieć mi o miejscach znajdujących się za bramą?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19994 /* ~"Chcę tam zejść."~ */ GOTO 35
  IF ~~ THEN REPLY #19995 /* ~"Kim jesteś?"~ */ GOTO 37
  IF ~~ THEN REPLY #19996 /* ~"Czym się zajmujesz?"~ */ GOTO 38
  IF ~~ THEN REPLY #19997 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #19998 /* ~Otwiera bramę. "Więc właź, trepie, i nie marnuj naszego czasu."~ */
  IF ~~ THEN REPLY #19999 /* ~"Żegnaj."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.4 28.1 28.3
  SAY #20000 /* ~"Katakumby Łkających Kamieni. Wiele truposzy, wiele krypt do złupienia."~ */
  IF ~~ THEN REPLY #20001 /* ~"Czemu nazywają je katakumbami Łkających Kamieni?"~ */ GOTO 31
  IF ~~ THEN REPLY #20002 /* ~"Czy możesz podać mi jakieś szczegóły?"~ */ GOTO 32
  IF ~~ THEN REPLY #20003 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 27
  IF ~~ THEN REPLY #20004 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #20005 /* ~"Sporo wody skapuje z góry, co wygląda, jakby ściany płakały. Stąd nazwa."~ */
  IF ~~ THEN REPLY #20006 /* ~"Rozumiem. Czy możesz odpowiedzieć mi jeszcze na kilka pytań?"~ */ GOTO 27
  IF ~~ THEN REPLY #20007 /* ~"Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #20008 /* ~"Niewiele. Raz czy dwa jeno tam byłem... to raczej inni szukają tam ciał. Gris złupił najwięcej, ale chyba coś go tam w dole złapało i wpisało to księgi umarłych."~ */
  IF ~~ THEN REPLY #20009 /* ~"Gris?"~ */ GOTO 33
  IF ~~ THEN REPLY #20010 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 27
  IF ~~ THEN REPLY #20011 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #20012 /* ~"Tia, 'Gris Sęp'. On i jeszcze dwaj chłopcy zeszli tam kilka szczytów temu i nikt ich od tego czasu nie widział. Jeśli znajdziesz jego ciało, przynieś je." Uśmiecha się jak szakal. "Możemy sprzedać je Grabom za trochę brzdęku."~ */
  IF ~~ THEN REPLY #20013 /* ~"Ha. Mam jeszcze kilka pytań..."~ */ GOTO 27
  IF ~~ THEN REPLY #20014 /* ~"Jasne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.2 28.2
  SAY #20015 /* ~Strażnik patrzy przez chwilę na ciebie i parska. "Sypialnia twojej matki. Musieliśmy tu zamontować bramę, bo tłok był nieco zbyt duży, wiesz?" Ryczy ze śmiechu. "Odszpicuj się, zanim dołączysz do truposzy tam w dole."~ */
  IF ~~ THEN REPLY #20016 /* ~"Tylko odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 27
  IF ~~ THEN REPLY #20017 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.5 28.4
  SAY #20018 /* ~Strażnik patrzy na ciebie, po czym potrząsa głową. "Tia, tia... wszyscy aż żebrzemy, żeby móc tam pójść. Słuchaj. Z pewnością nie jesteś stąd. Odszpicuj się."~ */
  IF ~~ THEN REPLY #20019 /* ~"Zatem tylko odpowiedz mi jeszcze na kilka pytań..."~ */ GOTO 27
  IF ~~ THEN REPLY #20020 /* ~"Jasne."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.3
  SAY #20021 /* ~Patrzy na ciebie i otwiera bramę bez słowa.~ */
  IF ~~ THEN REPLY #20022 /* ~"Żegnaj."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.6 28.5
  SAY #20023 /* ~"Szczerze mówiąc, to nie twój przeklęty interes. Odszpicuj się."~ */
  IF ~~ THEN REPLY #20024 /* ~"Najpierw odpowiedz mi na pytanie lub dwa..."~ */ GOTO 27
  IF ~~ THEN REPLY #20025 /* ~"Dzięki... przyjacielu."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.7 28.6
  SAY #20026 /* ~"A co, wygląda jakbym prał ci bieliznę? Spadaj stąd, głupi trepie!"~ */
  IF ~~ THEN REPLY #20027 /* ~"Jeszcze tylko jedno pytanie..."~ */ GOTO 27
  IF ~~ THEN REPLY #20028 /* ~"Nieważne."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Open_Door","AR0109",0)
~ THEN BEGIN 39 // from:
  SAY #56027 /* ~"Brama nie jest teraz zamknięta, więc nie musisz mi przeszkadzać."~ */
  IF ~~ THEN REPLY #56028 /* ~Odejdź.~ */ EXIT
END
