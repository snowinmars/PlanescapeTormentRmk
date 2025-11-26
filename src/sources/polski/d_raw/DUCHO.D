// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUCHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DUCHO~

IF ~  True()
True()
~ THEN BEGIN 0 // from:
  SAY #49968 /* ~Ta piękna, kusząco odziana ladacznica zupełnie nie przypomina wszetecznych dziewek, jakie widziałeś w Ulu. Bije od niej woń kosztownych perfum, a subtelne piękno twarzy podkreślają delikatne, ciepłe barwy makijażu. Dziewczyna uśmiecha się na twój widok i wdzięcznie dyga. "Witaj, dobry panie. Mniemam, że pragniesz zaspokoić żądzę, wobec której Przybytek Pani Sławy pozostaje bezradny?"~ */
  IF ~  Global("AR0605_Visited","GLOBAL",0)
~ THEN REPLY #61436 /* ~"Nic mi nie wiadomo o żadnym 'Przybytku', ale jestem otwarty na wszelkie propozycje."~ */ GOTO 4
  IF ~  Global("AR0605_Visited","GLOBAL",1)
~ THEN REPLY #61437 /* ~"Tak."~ */ GOTO 4
  IF ~  Global("Morte_UCHO","GLOBAL",1)
~ THEN REPLY #61438 /* ~"Ja akurat nie jestem zainteresowany, ale wydaje mi się, że Morte owszem..."~ */ GOTO 9
  IF ~~ THEN REPLY #61439 /* ~"Nie... ale mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #61440 /* ~"Nie, dziękuje. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY #49972 /* ~Kurtyzana przykłada palec do twoich ust i ucisza cię. "Jest tylko jedno pytanie, na które potrafię odpowiedzieć, dobry panie, a odpowiedź na nie brzmi: 'Tak, z przyjemnością, za pięćset miedziaków'."~ */
  IF ~~ THEN REPLY #49973 /* ~"Pięćset, powiadasz? To niemało..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61441 /* ~"Chyba się skuszę. Tak, chodźmy."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61442 /* ~"Chyba się skuszę. Tak, chodźmy."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61443 /* ~"Chyba się skuszę. Tak, chodźmy."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61444 /* ~"Nie mam tyle."~ */ GOTO 7
  IF ~~ THEN REPLY #61445 /* ~"Nie, dziękuję. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.5 3.7 4.5
  SAY #49975 /* ~"Szkoda. Proszę powróć tu, kiedy zmienisz zdanie, dobry panie - Będę tutaj niecierpliwie czekać. Żegnaj."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #49976 /* ~Odejdź.~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61446 /* ~Odejdź.~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61447 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #49977 /* ~Kurtyzana obdarza cię obiecującym uśmiechem "Och zapewniam cię, panie..." Pochyla się ku tobie i szepcze ci na ucho "To jest warte każdych pieniędzy."~ */
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #49978 /* ~"Chyba się skuszę. Tak, chodźmy."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61448 /* ~"Chyba się skuszę. Tak, chodźmy."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61449 /* ~"Chyba się skuszę. Tak, chodźmy."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61450 /* ~"Nie mam tyle."~ */ GOTO 7
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61451 /* ~"Szczerze w to powątpiewam. Żegnaj."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61452 /* ~"Szczerze w to powątpiewam. Żegnaj."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61453 /* ~"Szczerze w to powątpiewam. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #61454 /* ~"Nie, dziękuje. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1
  SAY #61401 /* ~"To zaledwie pięćset miedziaków, dobry panie, a ja mogę zaspokoić cię na tysiąc sposobów..." Kurtyzana przechyla zalotnie głowę i posyła ci figlarny uśmiech. "Czy zatem zdecydujesz się na moje towarzystwo?"~ */
  IF ~~ THEN REPLY #61459 /* ~"Pięćset, powiadasz? To niemało..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61455 /* ~"Wchodzę w to bez zastanowienia. Chodźmy."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61456 /* ~"Wchodzę w to bez zastanowienia. Chodźmy."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61457 /* ~"Wchodzę w to bez zastanowienia. Chodźmy."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61458 /* ~"Nie mam tyle."~ */ GOTO 7
  IF ~~ THEN REPLY #61460 /* ~"Nie, dziękuje. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #61402 /* ~Kurtyzana uśmiecha się z wyższością, a potem dyga. "Może następnym razem, dobry panie. Kiedy będziesz wolny od towarzystwa swojej... przyjaciółki. Żegnaj."~ */
  IF ~~ THEN REPLY #61461 /* ~"Niech cię diabli, Anno. No nic, żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #61462 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61403 /* ~Kurtyzana cofa się z lękiem w oczach. Kiedy tylko oddala się od Anny na wystarczającą odległość, wraca jej pewność siebie i woła do diabelstwa z szyderstwem w głosie. "To miejsce to nie jakiś rynsztok w Ulu, z którego musiałaś wypełznąć, mieszańcu... Jeszcze jeden krok, a będziesz miała na karku wszystkich strażników Harmonium. Oni już postarają się, żeby nie pozostał tu po tobie nawet cień twojego wścibskiego ogona!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 286
END

IF ~~ THEN BEGIN 7 // from: 1.4 3.3 4.4
  SAY #61404 /* ~"Wielka szkoda. Proszę, powróć do mnie... kiedy twoja sytuacja się poprawi, dobry panie! Będę wyglądać twojego powrotu z wielką niecierpliwością."~ */
  IF ~~ THEN REPLY #61463 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 3.0 4.1
  SAY #61405 /* ~"Zatem, cóż... Mam nadzieję, że się dobrze bawiłeś, panie."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61464 /* ~"Bez obaw. Było bardzo przyjemnie. Żegnaj."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61465 /* ~"Bez obaw. Było bardzo przyjemnie. Żegnaj."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61466 /* ~"Bez obaw. Było bardzo przyjemnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY #61406 /* ~Młoda kobieta mierzy przez chwilę Mortego badawczym spojrzeniem, a potem kiwa głową. "Tak... Myślę, że to się da zrobić. Na pewno sobie jakoś poradzimy. To wszystko za tę samą cenę, naturalnie - skromne pięćset miedziaków."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61467 /* ~"Oczywiście. Proszę, oto i pieniądze..."~ */ DO ~TakePartyGold(500)
IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
~ EXTERN ~DMORTE~ 601
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61468 /* ~"Wybacz, Morte, ale nasze fundusze są zbyt szczupłe. Chodźmy."~ */ EXIT
  IF ~~ THEN REPLY #61469 /* ~"Tak nawiasem mówiąc, Morte, to będziemy się zbierać. Bywaj zdrowa, panienko."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61407 /* ~Kurtyzana wreszcie powraca. Morte podąża u jej boku w nieco rozhuśtanych podskokach. Cała czaszka błyszczy, jak gdyby przed chwilą ją nawoskowano i wypolerowano, a na szczycie czerwienią się ślady od szminki. "Wydaje mi się, że twój... mimir? ...panie, dobrze się bawił."~ */
  IF ~~ THEN REPLY #61470 /* ~"Morte?"~ */ EXTERN ~DMORTE~ 602
  IF ~~ THEN REPLY #61471 /* ~"Dobrze. Żegnaj."~ */ EXIT
END
