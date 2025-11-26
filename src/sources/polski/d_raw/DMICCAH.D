// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMICCAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMICCAH~

IF ~  Global("Know_BandM","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45919 /* ~Ta pulchna kobieta, której wyglądu dopełniają jędzowate oczy i nosowy głos, ryczy: "A to co znowu? Klient? Czy me oczy wyśledziły klienta?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_BandM","GLOBAL",1)
~ EXTERN ~DBROKAH~ 2
END

IF ~  Global("Know_BandM","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45921 /* ~"Truposz powrócił. Broka! Truposz powrócił!"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #45923 /* ~Jego partnerka, maleńka kobietka o ryczącym głosie, taksuje cię wzrokiem i odpowiada: "To klient, głupi. Mówię o tym od wieków! Mówiłam, że będziemy mieć klientów, ale nigdy mi nie wierzyłeś. A teraz - proszę bardzo! Czy jesteś gotowy obsłużyć... tego... no... człowieka o wyglądzie truposza?"~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY #45925 /* ~"Mam oczy, to przecież widzę? Widzę go, widzę go, przestań mnie męczyć, ty pomarszczony worze na kości!" Zwraca się do ciebie i zmienionym głosem mówi: "Czym stara Mikka może ci służyć?"~ */
  IF ~~ THEN REPLY #45926 /* ~"Pogadajmy o interesach."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45927 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~~ THEN REPLY #45928 /* ~"Opowiedz mi o sobie."~ */ GOTO 6
  IF ~~ THEN REPLY #45929 /* ~"Kim on jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #45931 /* ~"Opowiedz mi o frakcjach."~ */ GOTO 8
  IF ~~ THEN REPLY #45932 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45933 /* ~"To właśnie ci mówiłam!" Zniża głos i zwraca się do ciebie: "Czym możemy ci służyć?"~ */
  IF ~~ THEN REPLY #45934 /* ~"Porozmawiajmy o gildiach."~ */ DO ~StartStore("Brokah",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45935 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 5
  IF ~~ THEN REPLY #45936 /* ~"Opowiedz mi o sobie."~ */ GOTO 6
  IF ~~ THEN REPLY #45939 /* ~"Kim on jest?"~ */ GOTO 7
  IF ~~ THEN REPLY #45941 /* ~"Opowiedz mi o frakcjach."~ */ GOTO 8
  IF ~~ THEN REPLY #45942 /* ~"Nic, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1
  SAY #45944 /* ~Jestem pewna, że mój mąż z największą rozkoszą opowie ci o Gmachu Rozrywki i Przybytku..." pociąga nosem, "ale moje gusty kierują się bardziej w stronę..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 14
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2
  SAY #45947 /* ~"Ja? Ależ ja jestem przykuta do tego lombardu niczym statek, który zrzucił kotwicę, na dodatek z mężem, który wcale mnie nie docenia..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 15
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.3
  SAY #45951 /* ~"On? To Broka. Jest moim mężem od ponad dwudziestu lat, chociaż jak spojrzeć na jego niestałą naturę, aż dziw bierze, że w tym czasie z nikim nie uciekł..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 16
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.4
  SAY #45955 /* ~"Frakcje? Frakcje? Ech. Wszystko, co robią, to opodatkowywanie tego biednego kramiku na śmierć. Przegnali nas do Ula, albo jeszcze gorzej, a Broka stracił przez nie resztki swego męstwa, choć i tak nigdy nie miał go za wiele..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 17
END

IF ~~ THEN BEGIN 9 // from:
  SAY #45958 /* ~Mikka wtrąca się: "A pierwsza rzecz, o której wspomnisz, to przybytek, tak tak, przybytek dla was, mężczyzn! Zawsze tak jest: Przybytek albo Gmach Rozrywki - nigdy Plac Targowy albo..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 9
END

IF ~~ THEN BEGIN 10 // from:
  SAY #45961 /* ~"On jest po prostu grzeczny. Tak naprawdę to nie dba o to. I tak nie masz nic użytecznego do powiedzenia. Masz lombard i tylko to ci zostało, ponieważ brak ci ambicji..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 11
END

IF ~~ THEN BEGIN 11 // from:
  SAY #45964 /* ~"...największym darem w jego życiu, czyż nie? Ocaliłam go, wyrwałam z życia, jakie jego rodzice mu zgotowali, a on obiecał, że zabierze mnie daleko stąd. I co? Widzisz, jakie życie mi zgotował. Powiadam ci, niejeden chłop by się rozpił..."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY #45967 /* ~"Mam uszy, więc słyszę, co on mówi. Broka nie ma nic wspólnego z frakcjami, ponieważ ich członkowie dobrze wiedzą, że nie potrafi trwać przy jakimś poglądzie na tyle długo, aby weń uwierzyć."~ */
  IF ~~ THEN EXTERN ~DBROKAH~ 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY #45969 /* ~"Cenny osąd, doprawdy. Cenny, powiadam, bo pozwoliłam, aby twoje słowa odciągnęły moją uwagę od wcale obiecującej przyszłości, jaka przede mną była, a teraz..." Para małżonków wdaje się błyskawicznie w gwałtowny spór.~ */
  IF ~~ THEN REPLY #45970 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #45971 /* ~"Chciałbym coś kupić..."~ */ GOTO 17
  IF ~~ THEN REPLY #45972 /* ~"A zatem żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from:
  SAY #45973 /* ~"Coś, co wierzyłam, że małżeństwo może uleczyć, i co - jak się okazało - było całkowicie próżną nadzieją. Ech!" Para małżonków ponownie wdaje się w jeszcze jedną nużącą kłótnię i ignoruje cię.~ */
  IF ~~ THEN REPLY #45974 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #45975 /* ~"Chciałbym coś kupić..."~ */ GOTO 17
  IF ~~ THEN REPLY #45976 /* ~"A zatem żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY #45977 /* ~"O tak, kozły na farmie pewnie tęsknią za twoją czułą opieką..." Broka robi się purpurowy i para małżonków znów wdaje się w coś, co wygląda na najnowszą z całej serii kłótnię. Zwracają uwagę tylko na siebie, zaś ciebie całkowicie ignorują.~ */
  IF ~~ THEN REPLY #45979 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #45980 /* ~"Chciałbym coś kupić..."~ */ GOTO 17
  IF ~~ THEN REPLY #45981 /* ~"A zatem żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from:
  SAY #45982 /* ~Przez chwilę prycha i parska bez związku, a potem wdaje się w długą przemowę, od której puchną ci uszy. Wkrótce Broka też wrzeszczy równie głośno. Ignorują cię.~ */
  IF ~~ THEN REPLY #45983 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #45985 /* ~"Chciałbym coś kupić..."~ */ GOTO 17
  IF ~~ THEN REPLY #45987 /* ~"A zatem żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 13.2 14.0 14.1 14.2 15.0 15.1 15.2 16.0 16.1 16.2
  SAY #45988 /* ~Para małżonków w daje się w gorący spór. Całkowicie cię ignorują, a ich słowa głośno rozbrzmiewają w całym sklepie.~ */
  IF ~  NearbyDialog("Dmorte")
Global("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #45989 /* ~"W takim razie przyjdę później. Żegnaj."~ */ DO ~SetGlobal("Insult_BandM_1","GLOBAL",1)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ EXTERN ~DMORTE~ 730
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Insult_BandM_1","GLOBAL",0)
~ THEN REPLY #66818 /* ~"W takim razie przyjdę później. Żegnaj."~ */ EXIT
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #66819 /* ~"W takim razie przyjdę później. Żegnaj."~ */ EXIT
END
