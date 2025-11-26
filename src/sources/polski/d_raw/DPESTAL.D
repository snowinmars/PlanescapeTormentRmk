// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTAL~

IF ~  Global("Evil_Book_Spoken","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26924 /* ~Gdy dotykasz tej księgi słyszysz głos: "Bądź pozdrowiony Mistrzu. Czym ten skromny tom może ci służyć?"~ */
  IF ~~ THEN REPLY #26926 /* ~"Potrafisz mówić?"~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #26927 /* ~"Nie możesz. Przestać do mnie mówić."~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.3 4.19 6.2 7.2 8.2 9.2 10.2 11.2 12.2 13.2 14.2 15.2 16.2 17.2 18.2 19.2 20.2 21.2 22.1 26.1 27.1 54.3
  SAY #26928 /* ~"Zgodnie z twoim życzeniem mistrzu. Powiedz tylko słowo, a pomogę ci w każdy możliwy sposób."~ */
  IF ~~ THEN REPLY #26929 /* ~"Powiedz co potrafisz."~ */ GOTO 3
  IF ~~ THEN REPLY #26930 /* ~"Świetnie. A teraz się ucisz."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #26931 /* ~"Potrafię, mistrzu, w wielu różnych językach. Powinieneś tylko zadbać, by nikt nie zobaczył jak rozmawiamy, oni usłyszeć mnie nie mogą. Mistrzu, mowa jest tylko jedną z moich mocy."~ */
  IF ~~ THEN REPLY #26932 /* ~"Co potrafisz? Jakie są twoje moce?"~ */ GOTO 3
  IF ~~ THEN REPLY #26933 /* ~"W jaki sposób zdobył cię Mantuok?"~ */ GOTO 5
  IF ~~ THEN REPLY #26934 /* ~"Opowiedz mi o sobie."~ */ GOTO 6
  IF ~~ THEN REPLY #26935 /* ~"Na razie tyle wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0 5.0
  SAY #26936 /* ~"Mogę dać ci zdolności, które dadzą ci większą swobodę w zmiennych kolejach życia. Mistrzu, mogę służyć radą."~ */
  IF ~~ THEN REPLY #26937 /* ~"Jakie zdolności masz na myśli?'~ */ GOTO 23
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26938 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26939 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26940 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26941 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26942 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26943 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26944 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26945 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26946 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26947 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26948 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26949 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26950 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26951 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26952 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26953 /* ~"Daj mi jakąś radę."~ */ GOTO 22
  IF ~~ THEN REPLY #26954 /* ~"Zapomnij o tym. Odpowiedz na inne pytania."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.17 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.0 26.0 27.0
  SAY #26955 /* ~"Mistrzu, co chciałbyś wiedzieć?"~ */
  IF ~~ THEN REPLY #26956 /* ~"Co potrafisz? Jakie są twoje moce?"~ */ GOTO 3
  IF ~~ THEN REPLY #26957 /* ~"W jaki sposób zdobył cię Mantuok?"~ */ GOTO 5
  IF ~~ THEN REPLY #26958 /* ~"Opowiedz mi o sobie."~ */ GOTO 6
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26959 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26960 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26961 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26962 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26963 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26964 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26965 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26966 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26967 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26968 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26969 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26970 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26971 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26972 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26973 /* ~"Daj mi jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26974 /* ~"Daj mi jakąś radę."~ */ GOTO 22
  IF ~~ THEN REPLY #26975 /* ~"Na razie to wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #26976 /* ~"Chory szczurzy mag odgrzebał mnie w katakumbach, mój mistrzu. Wyrwał mnie z rąk mojego poprzedniego mistrza, który od dawna nie żyje. Zabrał mnie do swego leża, by uczyć się ode mnie. Jego moce ograniczone jednak były... trudno było z nim rozmawiać i niewiele pojął z moich nauk."~ */
  IF ~~ THEN REPLY #26977 /* ~"Opowiedz mi o twoich mocach."~ */ GOTO 3
  IF ~~ THEN REPLY #26978 /* ~"Rozumiem. Odpowiedz na inne pytania."~ */ GOTO 4
  IF ~~ THEN REPLY #26979 /* ~"Prawda żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 4.2
  SAY #26980 /* ~"Mistrzu, pytanie, które zadałeś nie należy do prostych, ale twój sługa postara się odpowiedzieć najlepiej jak potrafi. Jestem księgą chwil teraz zapomnianych, idei teraz porzuconych, myśli o innych czasach i innych światach. Na mych kartach zawarta wiedza o zapomnianych cywilizacjach. W gruncie rzeczy, mistrzu mój, ważne jest tylko jedno: na mych kartach zawarta jest MOC. Ta moc może być twoja... mój mistrzu."~ */
  IF ~~ THEN REPLY #26981 /* ~"Opowiedz mi o twoich mocach."~ */ GOTO 23
  IF ~~ THEN REPLY #26982 /* ~"Teraz nie jestem zainteresowany. Zamiast tego odpowiedz na inne pytania."~ */ GOTO 4
  IF ~~ THEN REPLY #26983 /* ~"Nie interesuje mnie to. Żegnaj, księgo."~ */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.3
  SAY #26984 /* ~"Mój mistrzu, radą cię obdarzę: Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26985 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Księga poradziła mi: 'Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los.'~ */ GOTO 8
  IF ~~ THEN REPLY #26986 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27016 /* ~Księga poradziła mi: 'Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los.'~ */ GOTO 4
  IF ~~ THEN REPLY #26987 /* ~"Wystarczy."~ */ JOURNAL #27016 /* ~Księga poradziła mi: 'Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.4 7.0
  SAY #26988 /* ~"Więc tę radę ci dam, mój mistrzu. Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą przyjaciółmi się, będą gotowi poświęcić dla ciebie życie."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26989 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Księga poradziła mi: 'Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą się przyjaciółmi, będą gotowi poświęcić dla ciebie życie.'~ */ GOTO 9
  IF ~~ THEN REPLY #26990 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27017 /* ~Księga poradziła mi: 'Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą się przyjaciółmi, będą gotowi poświęcić dla ciebie życie.'~ */ GOTO 4
  IF ~~ THEN REPLY #26991 /* ~"Wystarczy."~ */ JOURNAL #27017 /* ~Księga poradziła mi: 'Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą się przyjaciółmi, będą gotowi poświęcić dla ciebie życie.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.5 8.0
  SAY #26992 /* ~Gdy księga przemawia czujesz uścisk w piersiach: "Więc tę radę ci dam, mój mistrzu. Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, głaz niezrównoważony obalić można."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26993 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Księga poradziła mi: 'Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, a głaz niestały obalić można.'~ */ GOTO 10
  IF ~~ THEN REPLY #26994 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27018 /* ~Księga poradziła mi: 'Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, a głaz niestały obalić można.'~ */ GOTO 4
  IF ~~ THEN REPLY #26995 /* ~"Wystarczy."~ */ JOURNAL #27018 /* ~Księga poradziła mi: 'Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, a głaz niestały obalić można.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 10 // from: 3.4 4.6 9.0
  SAY #26996 /* ~"Więc tę radę ci dam, mój mistrzu. Strzeż się miłosierdzia. Nagie plecy nie są żadną obroną przed nożem assasyna."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26997 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Księga poradziła mi: 'Strzeż się miłosierdzia. Nagie plecy nie są żadną obroną przed nożem zabójcy.'~ */ GOTO 11
  IF ~~ THEN REPLY #26998 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27019 /* ~Księga poradziła mi: 'Strzeż się miłosierdzia. Nagie plecy nie są żadną obroną przed nożem zabójcy.'~ */ GOTO 4
  IF ~~ THEN REPLY #26999 /* ~"Wystarczy."~ */ JOURNAL #27019 /* ~Księga poradziła mi: 'Strzeż się miłosierdzia. Nagie plecy nie są żadną obroną przed nożem zabójcy.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 3.5 4.7 10.0
  SAY #27000 /* ~"Więc tę radę ci dam, mój mistrzu. Strzeż się pospolitego wizerunku miłości. Miłość nierzadko musi być okrutna, aby wzniosła się ponad zwykłą sentymentalność."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27001 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Księga poradziła mi: 'Strzeż się pospolitego wizerunku miłości. Miłość nierzadko musi być okrutna, aby wzniosła się ponad zwykłą sentymentalność.'~ */ GOTO 12
  IF ~~ THEN REPLY #27002 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27020 /* ~Księga poradziła mi: 'Strzeż się pospolitego wizerunku miłości. Miłość nierzadko musi być okrutna, aby wzniosła się ponad zwykłą sentymentalność.'~ */ GOTO 4
  IF ~~ THEN REPLY #27003 /* ~"Wystarczy."~ */ JOURNAL #27020 /* ~Księga poradziła mi: 'Strzeż się pospolitego wizerunku miłości. Miłość nierzadko musi być okrutna, aby wzniosła się ponad zwykłą sentymentalność.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 3.6 4.8 11.0
  SAY #27004 /* ~Czujesz jak w kąciku ust formuje ci się szyderczy uśmiech. Szybko go zwalczasz. "Więc tę radę ci dam, mój mistrzu: odsuń się od słabeuszy i głupców o ograniczonych umysłach, zdaj sobie sprawę ze swego przeznaczenia. Samo to pozwoli ci stąpać tam, gdzie nikt nie poważyłby się pójść."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27005 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Księga poradziła mi: 'Odsuń się od słabeuszy i głupców o ograniczonych umysłach, zdaj sobie sprawę ze swego przeznaczenia. Samo to pozwoli ci stąpać tam, gdzie nikt nie poważyłby się pójść.'~ */ GOTO 13
  IF ~~ THEN REPLY #27006 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27021 /* ~Księga poradziła mi: 'Odsuń się od słabeuszy i głupców o ograniczonych umysłach, zdaj sobie sprawę ze swego przeznaczenia. Samo to pozwoli ci stąpać tam, gdzie nikt nie poważyłby się pójść.'~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27007 /* ~"Wystarczy."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Księga poradziła mi: 'Odsuń się od słabeuszy i głupców o ograniczonych umysłach, zdaj sobie sprawę ze swego przeznaczenia. Samo to pozwoli ci stąpać tam, gdzie nikt nie poważyłby się pójść.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 3.7 4.9 12.0
  SAY #27008 /* ~"Więc tę radę ci dam, mój mistrzu. Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27009 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ GOTO 14
  IF ~~ THEN REPLY #27010 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ GOTO 4
  IF ~~ THEN REPLY #27011 /* ~"Wystarczy."~ */ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 3.8 4.10 13.0
  SAY #27012 /* ~"Więc dam ci tę radę, mój mistrzu. By stać się potężnym, musisz być gotów do poświęceń, bez względu na to czy chodzi o część ciebie, czy coś dla ciebie cennego. Potęga to handel: by coś otrzymać trzeba coś dać."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27013 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Księga poradziła mi: 'By stać się potężnym, musisz być gotów do poświęceń, bez względu na to czy chodzi o część ciebie, czy coś dla ciebie cennego. Potęga to handel: by coś otrzymać trzeba coś dać.'~ */ GOTO 15
  IF ~~ THEN REPLY #27014 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ GOTO 4
  IF ~~ THEN REPLY #27015 /* ~"Wystarczy."~ */ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 3.9 4.11 14.0
  SAY #27024 /* ~Gdy księga przemawia krew w twoich żyłach zdaje się krążyć wolniej. "Więc tę radę ci dam, mój mistrzu. Honor i cnota to pojęcia, które zabijają człowieka, zabijają ducha. To tylko abstrakcja prowadząca ludzi do wyobcowania i śmierci. Bądź uczciwy względem siebie i posłuszny bądź tylko swojej woli."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27025 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Księga poradziła mi: 'Honor i cnota to pojęcia, które zabijają człowieka, zabijają ducha. To tylko abstrakcja prowadząca ludzi do wyobcowania i śmierci. Bądź uczciwy względem siebie i posłuszny bądź tylko swojej woli.'~ */ GOTO 16
  IF ~~ THEN REPLY #27026 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27027 /* ~"Wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 3.10 4.12 15.0
  SAY #27029 /* ~"Więc tę radę ci dam, mój mistrzu. Gdy ktoś cię do żywego zrani nie pokazuj, że cierpisz. To otwarte przyznanie się do słabości."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27030 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Księga poradziła mi: 'Gdy ktoś cię do żywego zrani nie pokazuj, że cierpisz. To otwarte przyznanie się do słabości.'~ */ GOTO 17
  IF ~~ THEN REPLY #27031 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27032 /* ~"Wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 3.11 4.13 16.0
  SAY #27034 /* ~"Więc tę radę ci dam, mój mistrzu. Dusza ludzka jest morzem emocji. Człowiek często walczy, by je uporządkować, ale to nieprawdziwy porządek. Chaos dla człowieka naturalnym jest stanem, i jemu właśnie powinien się poddać."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27035 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Księga poradziła mi: 'Dusza ludzka jest morzem emocji. Człowiek często walczy, by je uporządkować, ale to nieprawdziwy porządek. Chaos dla człowieka naturalnym jest stanem, i jemu właśnie powinien się poddać.'~ */ GOTO 18
  IF ~~ THEN REPLY #27036 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27037 /* ~"Wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 3.12 4.14 17.0
  SAY #27039 /* ~"Więc tę radę ci dam, mój mistrzu. Poznaj znaczenie łaski, wykorzystaj ją dla swej korzyści... ale jej nie praktykuj."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27040 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Księga poradziła mi: 'Poznaj znaczenie łaski, wykorzystaj ją dla swej korzyści... ale jej nie praktykuj.'~ */ GOTO 19
  IF ~~ THEN REPLY #27041 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27042 /* ~"Wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 19 // from: 3.13 4.15 18.0
  SAY #27044 /* ~"Więc tę radę ci dam, mój mistrzu. Wzbudzaj w innych strach, tylko on rządzi ludźmi. Nic innego głębszych blizn nie pozostawia."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27045 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Księga poradziła mi: 'Wzbudzaj w innych strach, tylko on rządzi ludźmi. Nic innego głębszych blizn nie pozostawia.'~ */ GOTO 20
  IF ~~ THEN REPLY #27046 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27047 /* ~"Wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 3.14 4.16 19.0
  SAY #27049 /* ~"Więc tę radę ci dam, mój mistrzu. Uśmiechnij się do wrogów swych i ramię do nich wyciągnij. Gdy uścisną twoją dłoń uderz sztyletem trzymanym w drugiej ręce, inaczej z pewnością oni tak zrobią."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27050 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ JOURNAL #27053 /* ~Księga poradziła mi: 'Uśmiechnij się do wrogów swych i ramię do nich wyciągnij. Gdy uścisną twoją dłoń uderz sztyletem trzymanym w drugiej ręce, inaczej z pewnością oni tak zrobią.'~ */ GOTO 21
  IF ~~ THEN REPLY #27051 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27052 /* ~"Wystarczy."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 1
END

IF ~~ THEN BEGIN 21 // from: 3.15 4.17 20.0
  SAY #27054 /* ~Gdy księga wypowiada te słowa czujesz na sercu zimny ciężar. Czujesz się w jakiś sposób zbrukany: "Mistrzu mój, to ostatnie słowa mej rady. Zważ je dobrze. Pamiętaj, że możesz zniszczyć wszystko co się nie spodoba. Musisz tylko mieć ku temu wolę."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27055 /* ~"Daj mi jeszcze jakąś radę."~ */ JOURNAL #27058 /* ~Księga poradziła mi: 'Pamiętaj, że możesz zniszczyć wszystko co się nie spodoba. Musisz tylko mieć ku temu wolę.'~ */ GOTO 22
  IF ~~ THEN REPLY #27056 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27057 /* ~"Wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 22 // from: 3.16 4.18 21.0
  SAY #27059 /* ~"Żałuję mistrzu, że nie mogę ci przekazać więcej mądrości słów. W zdaniach tych przekazałem ci naukę. Zastanów się nad nimi."~ */
  IF ~~ THEN REPLY #27060 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27061 /* ~"Wystarczy."~ */ GOTO 1
END

IF ~~ THEN BEGIN 23 // from: 3.0 6.0
  SAY #27062 /* ~"Mistrzu mój, to Moce, które mogą ci bardzo ułatwić życie. Niestety prawa które mnie oślepiają... one w zamian za Moce domagają się małej przysługi."~ */
  IF ~~ THEN REPLY #27063 /* ~"Małej przysługi? Na przykład?"~ */ GOTO 24
  IF ~~ THEN REPLY #27064 /* ~"W takim wypadku nic nie chcę."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #27065 /* ~"Ta przysługa to błahostka mój mistrzu. Nie śmiał bym o niej wspomnieć, gdy nie prawa, które przysłaniają mi te strony..." Księga przerywa na chwilę. "By Moce wyzwolić, musisz poświęcić niewielką część siebie, mój mistrzu. Musisz na pierwszą z mych stron przelać krew. Czyn ten wzmocni więź między nami i pozwoli mi twój wyzwolić cały potencjał. To niewielka cena za zaklęcia które będą do twej dyspozycji."~ */
  IF ~~ THEN REPLY #27066 /* ~"W porządku. Proszę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_6","GLOBALGood",-1)
SetGlobal("E_Book","GLOBAL",1)
GiveItemCreate("SPWI115",Protagonist,1,1,0)
~ JOURNAL #27068 /* ~Dziwna księga, którą znalazłem, poprosiła mnie o rozlane kilku kropli mojej krwi na jej stronach. Zrobiłem tak i otrzymałem zaklęcie. Obiecała dać mi jeszcze więcej mocy.~ */ GOTO 25
  IF ~~ THEN REPLY #27067 /* ~"Nie."~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #27069 /* ~Kaleczysz się i pozwalasz, by kilka kropel krwi spadło na kartę. W twoich kościach usadawia się dziwne zimno, czujesz się pusty i zraniony. Jednocześnie pojawia się uczucie triumfu: nauczyłeś się nowego czaru: Ociemniałość. "Teraz to twoja Moc... mistrzu. Pamiętaj, że to tylko pierwsza z Mocy zawartych na mych kartach."~ */
  IF ~~ THEN REPLY #27070 /* ~"Opowiedz mi o innych mocach."~ */ GOTO 29
  IF ~~ THEN REPLY #27071 /* ~"Odpowiedz na kilka innych pytań."~ */ GOTO 35
  IF ~~ THEN REPLY #27072 /* ~"Chcę od ciebie usłyszeć jakąś radę."~ */ GOTO 36
  IF ~~ THEN REPLY #27073 /* ~"W tej chwili niczego nie potrzebuję."~ */ GOTO 28
END

IF ~  Global("Evil_Book_Spoken","GLOBAL",1)
Global("E_Book","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #27074 /* ~"Mistrzu jak mogę ci służyć? Chcesz zaspokoić ciekawość?"~ */
  IF ~~ THEN REPLY #27075 /* ~"Tak. Odpowiedz na kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #27076 /* ~"Nie."~ */ GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 23.1 24.1
  SAY #27077 /* ~"To niewielka ofiara, mistrzu, za korzyść wielką... ale to twój wybór. Mistrzu, oferta pozostaje otwarta."~ */
  IF ~~ THEN REPLY #27078 /* ~"Dobrze. Odpowiedz na kilka pytań."~ */ JOURNAL #27080 /* ~Dziwna księga, którą znalazłem poprosiła mnie, abym dał kawałek siebie w zamian za jej moc. Odmówiłem. Jednak możliwość ta cały czas istnieje.~ */ GOTO 4
  IF ~~ THEN REPLY #27079 /* ~"Dobrze. Żegnaj."~ */ JOURNAL #27080 /* ~Dziwna księga, którą znalazłem poprosiła mnie, abym dał kawałek siebie w zamian za jej moc. Odmówiłem. Jednak możliwość ta cały czas istnieje.~ */ GOTO 1
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #27081 /* ~"Pamiętaj, że możesz później zapragnąć większej mocy, a ja będę na ciebie czekał... mistrzu."~ */
  IF ~~ THEN REPLY #27082 /* ~"Zrobię to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0 35.3 53.0 54.0
  SAY #27083 /* ~Głos księgi wydaje się być smutny. "Niestety mistrzu, prawa które mną rządzą za potężniejszą moc domagają się większej ofiary. Przekazał bym ci te moce za darmo, ale jak widzisz jestem związany."~ */
  IF ~~ THEN REPLY #27084 /* ~"Jaka jest ta ofiara?"~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27085 /* ~"W takim razie zapomnij o tym."~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0 35.4 53.1 54.1
  SAY #27086 /* ~"Druga ofiara wymaga byś sprzedał w niewolę jednego ze swych kompanów. Będzie to oznaczać więź między tobą, a mocą - towarzysz symbolizuje oddaną do twej dyspozycji Moc. W Dzielnicy Urzędników są ci, którzy pomogą ci tym zadaniu. Szukaj Vrisziki importera."~ */
  IF ~~ THEN REPLY #27087 /* ~"Zastanowię się nad tym. Daj mi jakąś radę, dobrze?"~ */ JOURNAL #27092 /* ~Księga zaproponowała mi kolejny czar, w zamian za sprzedanie w niewolę jednego z moich towarzyszy. Jeśli chcę poznać moc zaklęcia, mam znaleźć *Vriszikę, Importera.* Zgodziłem się na to.~ */ GOTO 36
  IF ~~ THEN REPLY #27088 /* ~"Zrobię to. Daj mi jakąś radę, dobrze?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Księga zaproponowała mi kolejny czar, w zamian za sprzedanie w niewolę jednego z moich towarzyszy. Jeśli chcę poznać moc zaklęcia, mam znaleźć Vriszikę, importera. Zgodziłem się na to.~ */ GOTO 36
  IF ~~ THEN REPLY #27089 /* ~"Zastanowię się nad tym. Chciałbym usłyszeć jeszcze kilka odpowiedzi."~ */ JOURNAL #27092 /* ~Księga zaproponowała mi kolejny czar, w zamian za sprzedanie w niewolę jednego z moich towarzyszy. Jeśli chcę poznać moc zaklęcia, mam znaleźć *Vriszikę, Importera.* Zgodziłem się na to.~ */ GOTO 35
  IF ~~ THEN REPLY #27090 /* ~"Zrobię to, ale przedtem chciałbym usłyszeć kilka odpowiedzi."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Księga zaproponowała mi kolejny czar, w zamian za sprzedanie w niewolę jednego z moich towarzyszy. Jeśli chcę poznać moc zaklęcia, mam znaleźć Vriszikę, importera. Zgodziłem się na to.~ */ GOTO 35
  IF ~~ THEN REPLY #27091 /* ~"Zastanowię się nad tym. Żegnaj."~ */ JOURNAL #27092 /* ~Księga zaproponowała mi kolejny czar, w zamian za sprzedanie w niewolę jednego z moich towarzyszy. Jeśli chcę poznać moc zaklęcia, mam znaleźć *Vriszikę, Importera.* Zgodziłem się na to.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #27094 /* ~"Zasmuca mnie, że Moce moje uznałeś niewarte tak małej ceny. Mistrzu, nie pozwól by krępowały cię wątpliwości i zmieszanie... ale mówię nie po kolei. Pamiętaj, że oferta pozostaje otwarta."~ */
  IF ~~ THEN REPLY #27095 /* ~"Zrobię to. Daj mi jakąś radę, dobrze?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27096 /* ~"Zastanowię się nad tym. Chciałbym usłyszeć jeszcze kilka odpowiedzi."~ */ GOTO 35
  IF ~~ THEN REPLY #27097 /* ~"Zastanowię się nad tym. Żegnaj."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #27098 /* ~"Mistrzu. Zdecydowałeś może, że chcesz kontynuować nauki? Oferta pogłębiania wiedzy i zdolności jest wciąż aktualna."~ */
  IF ~~ THEN REPLY #27099 /* ~"Powiedz mi co muszę zrobić."~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27100 /* ~"Jeszcze nie. Odpowiedz na kilka pytań."~ */ GOTO 35
  IF ~~ THEN REPLY #27101 /* ~"Jeszcze nie. Daj mi jakąś radę."~ */ GOTO 36
  IF ~~ THEN REPLY #27102 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #27103 /* ~"Mistrzu. Zdecydowałeś może, że chcesz kontynuować nauki? Oferta pogłębiania zdolności i wiedzy jest wciąż aktualna, o ile jesteś gotowy na drugą ofiarę."~ */
  IF ~~ THEN REPLY #27104 /* ~"W porządku. Zrobię to. A teraz odpowiedz na kilka pytań."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 35
  IF ~~ THEN REPLY #27105 /* ~"Wygląda na uczciwą propozycję. Zrobię to. Potrzebuję rady."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27106 /* ~"Zastanowię się nad tym. Daj mi jakąś radę."~ */ GOTO 36
  IF ~~ THEN REPLY #27107 /* ~"Mam kilka pytań, na które najpierw chciałbym usłyszeć odpowiedzi."~ */ GOTO 35
  IF ~~ THEN REPLY #27108 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #27109 /* ~"Mistrzu, czy dopełniłeś drugiej ofiary? Jest wokół ciebie aura, która potwierdza, że tak. Dobrze zrobiłeś; szybko się uczysz. Słuchaj tych słów i ucz się dalej." Księga wypowiada kilka niezrozumiałych sylab i czujesz w piersi płomień. Teraz znasz czar: Pocałunek węża.~ */
  IF ~~ THEN REPLY #27110 /* ~"Możesz mnie jeszcze czegoś nauczyć księgo?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ JOURNAL #27112 /* ~Księga oddała mi zaklęcie Pocałunek Węża, w zamian za sprzedanie jednego z moich towarzyszy w niewolę.~ */ GOTO 55
  IF ~~ THEN REPLY #27111 /* ~"Dzięki. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 25.1 30.2 30.3 31.1 32.1 33.0 33.3 36.16 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.0 53.2 54.2
  SAY #27113 /* ~"Odpowiedzi wymagasz?"~ */
  IF ~~ THEN REPLY #27114 /* ~"W jaki sposób Zdobył cię Mantuok?"~ */ GOTO 53
  IF ~~ THEN REPLY #27115 /* ~"Opowiedz mi o sobie."~ */ GOTO 54
  IF ~~ THEN REPLY #27116 /* ~"Możesz mi dać radę?"~ */ GOTO 36
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27117 /* ~"Masz dla mnie więcej mocy?"~ */ GOTO 29
  IF ~  GlobalGT("E_Book","GLOBAL",1)
~ THEN REPLY #27118 /* ~"Jaka miała być ofiara za tę nową moc?"~ */ GOTO 30
  IF ~~ THEN REPLY #27119 /* ~"Nic więcej. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 30.0 30.1 31.0 32.2 33.1 33.2 35.2
  SAY #27120 /* ~"Wiedzę mą poznać chcesz... mistrzu?"~ */
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #27121 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27122 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 38
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27123 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 39
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27124 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 40
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27125 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27126 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27127 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27128 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 44
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27129 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 45
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27130 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 46
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27131 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27132 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 48
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27133 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27134 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27135 /* ~"Tak."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ GOTO 51
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27136 /* ~"Tak."~ */ GOTO 52
  IF ~~ THEN REPLY #27137 /* ~"Zamiast tego odpowiedz ma kilka pytań."~ */ GOTO 35
  IF ~~ THEN REPLY #27138 /* ~"Na razie to wystarczy."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #27139 /* ~"Mój mistrzu, radą cię obdarzę: Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27140 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Księga poradziła mi: 'Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los.'~ */ GOTO 38
  IF ~~ THEN REPLY #27141 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27016 /* ~Księga poradziła mi: 'Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los.'~ */ GOTO 35
  IF ~~ THEN REPLY #27142 /* ~"Wystarczy."~ */ JOURNAL #27016 /* ~Księga poradziła mi: 'Uważaj na tych, których masz przy sobie. Nigdy nie obdarzaj ich pełnią zaufania, nie rozpraszaj swej władzy dzieląc się nią. Zrobiło tak wielu cesarzy, który znałem, a nie chcę by spotkał cię ich los.'~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #27143 /* ~"Więc tę radę ci dam, mój mistrzu. Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą przyjaciółmi się, będą gotowi poświęcić dla ciebie życie."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27144 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Księga poradziła mi: 'Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą się przyjaciółmi, będą gotowi poświęcić dla ciebie życie.'~ */ GOTO 39
  IF ~~ THEN REPLY #27145 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27017 /* ~Księga poradziła mi: 'Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą się przyjaciółmi, będą gotowi poświęcić dla ciebie życie.'~ */ GOTO 35
  IF ~~ THEN REPLY #27146 /* ~"Wystarczy."~ */ JOURNAL #27017 /* ~Księga poradziła mi: 'Jeśli przyjaźń deklarują, pozwól im się sprawdzić. Słowa w porównaniu do czynów mają niewielką wagę. Jeśli okażą się przyjaciółmi, będą gotowi poświęcić dla ciebie życie.'~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #27147 /* ~Gdy księga przemawia czujesz uścisk w piersiach: "Więc ta radę ci dam, mój mistrzu. Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, głaz niezrównoważony obalić można."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27148 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Księga poradziła mi: 'Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, a głaz niestały obalić można.'~ */ GOTO 40
  IF ~~ THEN REPLY #27149 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27018 /* ~Księga poradziła mi: 'Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, a głaz niestały obalić można.'~ */ GOTO 35
  IF ~~ THEN REPLY #27150 /* ~"Wystarczy."~ */ JOURNAL #27018 /* ~Księga poradziła mi: 'Nie okazuj żadnej słabości, nie przyznawaj się do błędów, nie wahaj się. To zdradzi innym żeś niepewny, a głaz niestały obalić można.'~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 39.0
  SAY #27151 /* ~"Więc tę radę ci dam, mój mistrzu. Strzeż się miłosierdzia. Nagie plecy nie są obroną żadną przed assasyna nożem."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27152 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Księga poradziła mi: 'Strzeż się miłosierdzia. Nagie plecy nie są żadną obroną przed nożem zabójcy.'~ */ GOTO 41
  IF ~~ THEN REPLY #27153 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27019 /* ~Księga poradziła mi: 'Strzeż się miłosierdzia. Nagie plecy nie są żadną obroną przed nożem zabójcy.'~ */ GOTO 35
  IF ~~ THEN REPLY #27154 /* ~"Wystarczy."~ */ JOURNAL #27019 /* ~Księga poradziła mi: 'Strzeż się miłosierdzia. Nagie plecy nie są żadną obroną przed nożem zabójcy.'~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.4 40.0
  SAY #27155 /* ~"Więc tę radę ci dam, mój mistrzu. Strzeż się pospolitego wizerunku miłości. Aby wzniosła się ponad zwykły sentymentalizm, miłość nierzadko musi być okrutna."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27157 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Księga poradziła mi: 'Strzeż się pospolitego wizerunku miłości. Miłość nierzadko musi być okrutna, aby wzniosła się ponad zwykłą sentymentalność.'~ */ GOTO 42
  IF ~~ THEN REPLY #27158 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27020 /* ~Księga poradziła mi: 'Strzeż się pospolitego wizerunku miłości. Miłość nierzadko musi być okrutna, aby wzniosła się ponad zwykłą sentymentalność.'~ */ GOTO 35
  IF ~~ THEN REPLY #27159 /* ~"Wystarczy."~ */ JOURNAL #27020 /* ~Księga poradziła mi: 'Strzeż się pospolitego wizerunku miłości. Miłość nierzadko musi być okrutna, aby wzniosła się ponad zwykłą sentymentalność.'~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 41.0
  SAY #27160 /* ~Czujesz jak w kąciku ust formuje ci się szyderczy uśmiech. Szybko go zwalczasz. "Więc tę radę ci dam, mój mistrzu: oddziel się od słabych i głupców o ograniczonych umysłach, zdaj sobie sprawę że masz cel. Samo to pozwoli ci stąpać, gdzie nikt nie poważyłby się pójść."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27161 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Księga poradziła mi: 'Odsuń się od słabeuszy i głupców o ograniczonych umysłach, zdaj sobie sprawę ze swego przeznaczenia. Samo to pozwoli ci stąpać tam, gdzie nikt nie poważyłby się pójść.'~ */ GOTO 43
  IF ~~ THEN REPLY #27162 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27021 /* ~Księga poradziła mi: 'Odsuń się od słabeuszy i głupców o ograniczonych umysłach, zdaj sobie sprawę ze swego przeznaczenia. Samo to pozwoli ci stąpać tam, gdzie nikt nie poważyłby się pójść.'~ */ GOTO 35
  IF ~~ THEN REPLY #27163 /* ~"Wystarczy."~ */ JOURNAL #27021 /* ~Księga poradziła mi: 'Odsuń się od słabeuszy i głupców o ograniczonych umysłach, zdaj sobie sprawę ze swego przeznaczenia. Samo to pozwoli ci stąpać tam, gdzie nikt nie poważyłby się pójść.'~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 36.6 42.0
  SAY #27164 /* ~"Więc tę radę ci dam, mój mistrzu. Do potęgi tajemnice prowadzą dwie tajemnice. Pierwsza to nigdy nie ujawniać całej swej wiedzy."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27165 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ GOTO 44
  IF ~~ THEN REPLY #27166 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ GOTO 35
  IF ~~ THEN REPLY #27167 /* ~"Wystarczy."~ */ JOURNAL #27022 /* ~Księga poradziła mi: 'Są dwie tajemnice bycia wielkim. Pierwsza, to nigdy nie ujawniać całej swej wiedzy.'~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 43.0
  SAY #27168 /* ~"Więc tę radę ci dam, mój mistrzu. By stać się potężnym, musisz być gotów do poświęceń, bez względu na to czy chodzi o część ciebie, czy coś dla ciebie cennego. Potęga to handel: by coś otrzymać trzeba coś dać."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27169 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Księga poradziła mi: 'By stać się potężnym, musisz być gotów do poświęceń, bez względu na to czy chodzi o część ciebie, czy coś dla ciebie cennego. Potęga to handel: by coś otrzymać trzeba coś dać.'~ */ GOTO 45
  IF ~~ THEN REPLY #27170 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27023 /* ~Księga poradziła mi: 'By stać się potężnym, musisz być gotów do poświęceń, bez względu na to czy chodzi o część ciebie, czy coś dla ciebie cennego. Potęga to handel: by coś otrzymać trzeba coś dać.'~ */ GOTO 35
  IF ~~ THEN REPLY #27171 /* ~"Wystarczy."~ */ JOURNAL #27023 /* ~Księga poradziła mi: 'By stać się potężnym, musisz być gotów do poświęceń, bez względu na to czy chodzi o część ciebie, czy coś dla ciebie cennego. Potęga to handel: by coś otrzymać trzeba coś dać.'~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.8 44.0
  SAY #27172 /* ~Gdy księga przemawia krew w twoich żyłach zdaje się krążyć wolniej. "Więc tę radę ci dam, mój mistrzu. Honor i cnota to pojęcia, które zabijają człowieka, zabijają ducha. To tylko abstrakcja prowadząca ludzi do wyobcowania i śmierci. Bądź uczciwy względem siebie i posłuszny bądź tylko swojej woli."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27173 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Księga poradziła mi: 'Honor i cnota to pojęcia, które zabijają człowieka, zabijają ducha. To tylko abstrakcja prowadząca ludzi do wyobcowania i śmierci. Bądź uczciwy względem siebie i posłuszny bądź tylko swojej woli.'~ */ GOTO 46
  IF ~~ THEN REPLY #27174 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27028 /* ~Księga poradziła mi: 'Honor i cnota to pojęcia, które zabijają człowieka, zabijają ducha. To tylko abstrakcja prowadząca ludzi do wyobcowania i śmierci. Bądź uczciwy względem siebie i posłuszny bądź tylko swojej woli.'~ */ GOTO 35
  IF ~~ THEN REPLY #27175 /* ~"Wystarczy."~ */ JOURNAL #27028 /* ~Księga poradziła mi: 'Honor i cnota to pojęcia, które zabijają człowieka, zabijają ducha. To tylko abstrakcja prowadząca ludzi do wyobcowania i śmierci. Bądź uczciwy względem siebie i posłuszny bądź tylko swojej woli.'~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 36.9 45.0
  SAY #27176 /* ~"Więc tę radę ci dam, mój mistrzu. Gdy ktoś cię do żywego zrani nie pokazuj, że cierpisz. To otwarte przyznanie się do słabości."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27177 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Księga poradziła mi: 'Gdy ktoś cię do żywego zrani nie pokazuj, że cierpisz. To otwarte przyznanie się do słabości.'~ */ GOTO 47
  IF ~~ THEN REPLY #27178 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27033 /* ~Księga poradziła mi: 'Gdy ktoś cię do żywego zrani nie pokazuj, że cierpisz. To otwarte przyznanie się do słabości.'~ */ GOTO 35
  IF ~~ THEN REPLY #27179 /* ~"Wystarczy."~ */ JOURNAL #27033 /* ~Księga poradziła mi: 'Gdy ktoś cię do żywego zrani nie pokazuj, że cierpisz. To otwarte przyznanie się do słabości.'~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 36.10 46.0
  SAY #27180 /* ~"Więc tę radę ci dam, mój mistrzu. Dusza ludzka jest emocji morzem. Często walczy człowiek by je uporządkować, ale to nieprawdziwy porządek. Chaos naturalnym jest człowieka stanem, takie właśnie jego otoczenie być powinno."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27181 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Księga poradziła mi: 'Dusza ludzka jest morzem emocji. Człowiek często walczy, by je uporządkować, ale to nieprawdziwy porządek. Chaos dla człowieka naturalnym jest stanem, i jemu właśnie powinien się poddać.'~ */ GOTO 48
  IF ~~ THEN REPLY #27182 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27038 /* ~Księga poradziła mi: 'Dusza ludzka jest morzem emocji. Człowiek często walczy, by je uporządkować, ale to nieprawdziwy porządek. Chaos dla człowieka naturalnym jest stanem, i jemu właśnie powinien się poddać.'~ */ GOTO 35
  IF ~~ THEN REPLY #27183 /* ~"Wystarczy."~ */ JOURNAL #27038 /* ~Księga poradziła mi: 'Dusza ludzka jest morzem emocji. Człowiek często walczy, by je uporządkować, ale to nieprawdziwy porządek. Chaos dla człowieka naturalnym jest stanem, i jemu właśnie powinien się poddać.'~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.11 47.0
  SAY #27184 /* ~"Więc tę radę ci dam, mój mistrzu. Poznaj znaczenie litości, wykorzystaj ją jako swoją przewagę... ale jej nie praktykuj."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27185 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Księga poradziła mi: 'Poznaj znaczenie łaski, wykorzystaj ją dla swej korzyści... ale jej nie praktykuj.'~ */ GOTO 49
  IF ~~ THEN REPLY #27186 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27043 /* ~Księga poradziła mi: 'Poznaj znaczenie łaski, wykorzystaj ją dla swej korzyści... ale jej nie praktykuj.'~ */ GOTO 35
  IF ~~ THEN REPLY #27187 /* ~"Wystarczy."~ */ JOURNAL #27043 /* ~Księga poradziła mi: 'Poznaj znaczenie łaski, wykorzystaj ją dla swej korzyści... ale jej nie praktykuj.'~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 36.12 48.0
  SAY #27188 /* ~"Więc tę radę ci dam, mój mistrzu. Wzbudzaj w innych strach, tylko on rządzi ludźmi. Nic innego głębszych blizn nie pozostawia."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27189 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Księga poradziła mi: 'Wzbudzaj w innych strach, tylko on rządzi ludźmi. Nic innego głębszych blizn nie pozostawia.'~ */ GOTO 50
  IF ~~ THEN REPLY #27190 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27048 /* ~Księga poradziła mi: 'Wzbudzaj w innych strach, tylko on rządzi ludźmi. Nic innego głębszych blizn nie pozostawia.'~ */ GOTO 35
  IF ~~ THEN REPLY #27191 /* ~"Wystarczy."~ */ JOURNAL #27048 /* ~Księga poradziła mi: 'Wzbudzaj w innych strach, tylko on rządzi ludźmi. Nic innego głębszych blizn nie pozostawia.'~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 36.13 49.0
  SAY #27192 /* ~"Więc tę radę ci dam, mój mistrzu. Uśmiechnij się do wrogów swych i ramię do nich wyciągnij. Gdy uścisną twoją dłoń uderz sztyletem trzymanym uderz w drugiej ręce, inaczej z pewnością oni tak zrobią."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27193 /* ~"Daj mi jeszcze jakąś radę."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ JOURNAL #27053 /* ~Księga poradziła mi: 'Uśmiechnij się do wrogów swych i ramię do nich wyciągnij. Gdy uścisną twoją dłoń uderz sztyletem trzymanym w drugiej ręce, inaczej z pewnością oni tak zrobią.'~ */ GOTO 51
  IF ~~ THEN REPLY #27194 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27053 /* ~Księga poradziła mi: 'Uśmiechnij się do wrogów swych i ramię do nich wyciągnij. Gdy uścisną twoją dłoń uderz sztyletem trzymanym w drugiej ręce, inaczej z pewnością oni tak zrobią.'~ */ GOTO 35
  IF ~~ THEN REPLY #27195 /* ~"Wystarczy."~ */ JOURNAL #27053 /* ~Księga poradziła mi: 'Uśmiechnij się do wrogów swych i ramię do nich wyciągnij. Gdy uścisną twoją dłoń uderz sztyletem trzymanym w drugiej ręce, inaczej z pewnością oni tak zrobią.'~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 36.14 50.0
  SAY #27196 /* ~Gdy księga wypowiada te słowa czujesz na sercu zimny ciężar. Czujesz się w jakiś sposób zbrukany: "Mistrzu mój, to ostatnie słowa mej rady. Zważ je dobrze. Pamiętaj, że możesz zniszczyć wszystko co się nie spodoba. Musisz tylko mieć ku temu wolę."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27197 /* ~"Daj mi jeszcze jakąś radę."~ */ JOURNAL #27058 /* ~Księga poradziła mi: 'Pamiętaj, że możesz zniszczyć wszystko co się nie spodoba. Musisz tylko mieć ku temu wolę.'~ */ GOTO 52
  IF ~~ THEN REPLY #27198 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ JOURNAL #27058 /* ~Księga poradziła mi: 'Pamiętaj, że możesz zniszczyć wszystko co się nie spodoba. Musisz tylko mieć ku temu wolę.'~ */ GOTO 35
  IF ~~ THEN REPLY #27199 /* ~"Wystarczy."~ */ JOURNAL #27058 /* ~Księga poradziła mi: 'Pamiętaj, że możesz zniszczyć wszystko co się nie spodoba. Musisz tylko mieć ku temu wolę.'~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 36.15 51.0
  SAY #27200 /* ~"Żałuję mistrzu, że nie mogę ci przekazać więcej mądrości słów. W zdaniach tych przekazałem ci naukę. Zastanów się nad nimi."~ */
  IF ~~ THEN REPLY #27201 /* ~"Bardzo dobrze. Mam jeszcze kilka pytań."~ */ GOTO 35
  IF ~~ THEN REPLY #27202 /* ~"Wystarczy."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 35.0
  SAY #27203 /* ~Księga wzdycha: "Chory szczurzy mag odgrzebał mnie w katakumbach, mój mistrzu. Wyrwał mnie z rąk mojego poprzedniego mistrza, który od dawna nie żyje. Zabrał mnie do swego leża, by uczyć się ode mnie. Jego moce ograniczone jednak były... trudno było z nim rozmawiać i niewiele rozumiał z moich nauk."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27204 /* ~"Opowiedz mi o twoich mocach."~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27205 /* ~"Opowiedz mi o twoich mocach."~ */ GOTO 30
  IF ~~ THEN REPLY #27206 /* ~"Rozumiem. Odpowiedz na inne pytania."~ */ GOTO 35
  IF ~~ THEN REPLY #27207 /* ~"Prawda. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 35.1
  SAY #27208 /* ~"Ja jestem mocą mistrzu i więcej nauczyć cię mogę."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27209 /* ~"Jak?"~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27210 /* ~"Odśwież mi pamięć."~ */ GOTO 30
  IF ~~ THEN REPLY #27211 /* ~"Teraz nie jestem zainteresowany. Zamiast tego odpowiedz na inne pytania."~ */ GOTO 35
  IF ~~ THEN REPLY #27212 /* ~"Nie interesuje mnie to. Żegnaj, księgo."~ */ GOTO 1
END

IF ~~ THEN BEGIN 55 // from: 34.0
  SAY #27213 /* ~"W swoim czasie, w swoim czasie! Musisz być cierpliwy! Pokazałeś już, że jesteś gotów zrobić co trzeba, by posiąść tę moc, ale musisz sobie zdawać sprawę, że przyjdzie ci za nią ZAPŁACIĆ."~ */
  IF ~~ THEN REPLY #27214 /* ~"Co mam zrobić?"~ */ GOTO 59
  IF ~~ THEN REPLY #27215 /* ~"Dość już zapłaciłem. Zapomnij o tym."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY #27216 /* ~Księga odzywa się pogardliwie. "Tak daleko zajść po to tylko, by teraz zawrócić. Wstyd. Nie jesteś tak silny jak myślałem."~ */
  IF ~~ THEN REPLY #27217 /* ~"Będzie co ma być. Odpowiedz na kilka pytań."~ */ GOTO 57
  IF ~~ THEN REPLY #27218 /* ~"Świetnie. Co mam zrobić?"~ */ GOTO 59
  IF ~~ THEN REPLY #27219 /* ~"Będzie co ma być. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #27220 /* ~"Nie. Nie zrobię tego, aż wykażesz chęć rozwinięcia swych możliwości."~ */
  IF ~~ THEN REPLY #27221 /* ~"Co mam zrobić?"~ */ GOTO 59
  IF ~~ THEN REPLY #27222 /* ~"W takim razie zapomnij o tym."~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #27223 /* ~"Będzie co ma być. Jedna droga prowadzi do klęski, druga do sukcesu."~ */
  IF ~~ THEN REPLY #27224 /* ~"Świetnie."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 55.0 56.1 57.0
  SAY #27225 /* ~"Masz towarzyszy, których chcesz zdradzić?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27226 /* ~"Co powiesz na Mortego?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ JOURNAL #27235 /* ~Księga zaoferowała jeszcze więcej mocy w zamian za zabicie jednego z moich towarzyszy. To bardzo kuszące...~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27227 /* ~"Co powiesz na Annę?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27228 /* ~"Co powiesz na Dak'kona?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27229 /* ~"Co powiesz na Nie-Sławę?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27230 /* ~"Co powiesz na Nordoma?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27231 /* ~"Co powiesz na Vhailora?'~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27232 /* ~"Co powiesz na Ignusa?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27233 /* ~"Nie chcę nikogo zdradzać."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27234 /* ~"Nie mam towarzyszy."~ */ GOTO 63
END

IF ~  Global("E_Book","GLOBAL",5)
~ THEN BEGIN 60 // from:
  SAY #27236 /* ~"Mogę cię obdarzyć jeszcze jedną mocą. Pokazałeś, że jesteś gotów zrobić co trzeba, by pracę ukończyć. Ostatnim zadaniem jest zgładzenie jednego z twych towarzyszy, masz to zrobić samemu, bez użycia czarów."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27237 /* ~"Co powiesz na Mortego?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27238 /* ~"Co powiesz na Annę?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27239 /* ~"Co powiesz na Dak'kona?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27240 /* ~"Co powiesz na Nie-Sławę?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27241 /* ~"Co powiesz na Nordoma?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27242 /* ~"Co powiesz na Vhailora?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27243 /* ~"Co powiesz na Ignusa?'~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27244 /* ~"Nie sądzę."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27245 /* ~"Nie mam towarzyszy."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 59.7 60.7
  SAY #27246 /* ~"Phi. W takim razie nie będę marnował czasu na twą edukację. Nie masz żadnych ambicji? Żadnych pragnień? Ty słaby głupcze."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27247 /* ~"Świetnie. Co powiesz na Mortego?"~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27248 /* ~"Świetnie. Co powiesz na Annę?"~ */ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27249 /* ~"Świetnie. Co powiesz na Dak'kona?"~ */ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27250 /* ~"Świetnie. Co powiesz na Nie-Sławę?"~ */ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27251 /* ~"Świetnie. Co powiesz na Nordoma?"~ */ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27252 /* ~"Świetnie. Co powiesz na Vhailora?"~ */ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27253 /* ~"Świetnie. Co powiesz na Ignusa?"~ */ GOTO 66
  IF ~~ THEN REPLY #27254 /* ~"Tak jak powiedziałem: nikogo nie chcę poświęcić. Żadna moc nie jest tego warta."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.7 63.0
  SAY #27255 /* ~Do tej pory nie wiedziałeś, że jakaś księga może szydzić. "W takim razie cierp w ciemnościach głupcze."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27256 /* ~"Zmieniłem zdanie. Zabiję Mortego."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27257 /* ~"Zmieniłem zdanie. Zabiję Annę."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27258 /* ~"Zmieniłem zdanie. Zabiję Dak'kona."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27259 /* ~"Zmieniłem zdanie. Zabiję Nie-Sławę."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27260 /* ~"Zmieniłem zdanie. Zabiję Nordoma."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27261 /* ~"Zmieniłem zdanie. Zabiję Vhailora."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27262 /* ~"Zmieniłem zdanie. Zabiję Ignusa."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27263 /* ~"Nie mam towarzyszy."~ */ GOTO 63
  IF ~~ THEN REPLY #27264 /* ~"Zrobię to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.8 60.8 62.7
  SAY #27265 /* ~"Więc znajdź jakiegoś! Zdobądź czyjeś zaufanie i zawiedź je, wtedy okażesz się godny trzeciej mocy! Nie odzywaj się do mnie, do czasu aż to zrobisz."~ */
  IF ~~ THEN REPLY #27266 /* ~"Nie."~ */ GOTO 62
  IF ~~ THEN REPLY #27267 /* ~"Dobrze, dobrze."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",6)
~ THEN BEGIN 64 // from:
  SAY #27268 /* ~"I co? Osiągnąłeś cel? Zgładziłeś towarzysza, sam bez czarów pomocy?"~ */
  IF ~  Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27269 /* ~"Tak, zrobiłem to."~ */ DO ~SetGlobal("E_Book","GLOBAL",7)
IncrementGlobalOnceEx("GLOBALEvil_Book_8","GLOBALGood",-8)
~ GOTO 67
  IF ~  !Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27270 /* ~"Jeszcze nie."~ */ GOTO 65
  IF ~~ THEN REPLY #27271 /* ~"Nie i nie zamierzam."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1 64.2
  SAY #27272 /* ~Księga milczy i żadne namowy nie mogą zmusić jej do odpowiedzi.~ */
  IF ~~ THEN REPLY #27273 /* ~"Świetnie."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.0 59.1 59.2 59.3 59.4 59.5 59.6 60.0 60.1 60.2 60.3 60.4 60.5 60.6 61.0 61.1 61.2 61.3 61.4 61.5 61.6 62.0 62.1 62.2 62.3 62.4 62.5 62.6
  SAY #27274 /* ~"Nie dbam kto to będzie, tak długo jak chcesz to zrobić. Idź i zrób to teraz."~ */
  IF ~~ THEN REPLY #27275 /* ~"Bardzo dobrze."~ */ JOURNAL #27276 /* ~Właśnie zgodziłem się zabić jednego z moich towarzyszy w zamian za moc księgi.~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.0
  SAY #27277 /* ~"Znakomicie. Okazałeś się dobrym uczniem. A teraz, oto ostatni czar jakiego mogę cię nauczyć." Mamrocze jakieś dziwne sylaby, słyszysz w swoim sercu dziwne zawodzenie. Znasz czar: Słowo Mocy: Giń.~ */
  IF ~~ THEN REPLY #27278 /* ~"Dzięki księgo. Co teraz?"~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~W zamian za zabicie jednego z towarzyszy księga dała mi jeszcze jeden potężniejszy czar. Korzystna to zamiana.~ */ GOTO 68
  IF ~~ THEN REPLY #27279 /* ~"Żegnaj, księgo."~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~W zamian za zabicie jednego z towarzyszy księga dała mi jeszcze jeden potężniejszy czar. Korzystna to zamiana.~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",7)
~ THEN BEGIN 68 // from: 67.0
  SAY #27282 /* ~Księga milczy, nie odpowiada. Wygląda jakby zabrakło jej słów.~ */
  IF ~  Global("E_Book","GLOBAL",8)
~ THEN REPLY #27283 /* ~"Bardzo dobrze."~ */ DO ~SetGlobal("E_Book","GLOBAL",9)
~ JOURNAL #27284 /* ~Księga już do mnie nie przemawia.~ */ EXIT
  IF ~  Global("E_Book","GLOBAL",9)
~ THEN REPLY #27283 /* ~"Bardzo dobrze."~ */ EXIT
END
