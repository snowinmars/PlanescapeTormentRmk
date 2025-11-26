// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSARHAVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSARHAVA~

IF ~  Global("Sarhava","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #32064 /* ~Wokół tej młodej kobiety unosi się ciężki zapach alkoholu. Pomimo jej ciemnej cery widzisz, że jej twarz - piękna, choć wyglądająca na okrutną - pokryta jest rumieńcem. Kobieta jest zgrabna choć dobrze umięśniona, przyozdobiona egzotyczną biżuterią i półprzezroczystym jedwabnym ubraniem. Liczne blizny przecinają się na jej udach i przedramionach; wygląda na to, że pochodzą od bitewnych ran.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #32065 /* ~"Witaj..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 24
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
NearbyDialog("DMorte")
~ THEN REPLY #32536 /* ~"Witaj..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
!NearbyDialog("DGrace")
!NearbyDialog("DMorte")
~ THEN REPLY #32537 /* ~"Witaj..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32538 /* ~"Witaj..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 29
  IF ~  NearbyDialog("Ddakkon")
!NearbyDialog("DAnnah")
~ THEN REPLY #32539 /* ~"Witaj..."~ */ DO ~SetGlobal("Sarhava","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #32540 /* ~Nie zbliżaj się do tej kobiety.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 30.2 31.1 33.2 36.1 37.1
  SAY #32491 /* ~"Jakież zło dało początek *twojemu* życiu, sirrah?" Wykrzywia twarz z obrzydzeniem, po czym śmieje się szorstko. "I co za odór! Jesteś jednym z bękartów śmierci?" Zauważasz długi, zakrzywiony nóż zwisający u jej biodra; ręka dziewczyny spoczywa luźno na jego rękojeści.~ */
  IF ~~ THEN REPLY #32541 /* ~"*Co* powiedziałaś, dziewczyno?"~ */ GOTO 23
  IF ~~ THEN REPLY #32542 /* ~Blef: "Adhana? Czy to ty?"~ */ GOTO 4
  IF ~~ THEN REPLY #32543 /* ~"Co się z tobą dzieje?"~ */ GOTO 21
  IF ~~ THEN REPLY #32544 /* ~"Nic do ciebie nie mam. Zostaw mnie i odejdź w swoją stronę."~ */ GOTO 10
  IF ~~ THEN REPLY #32545 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32546 /* ~Zignoruj ją i odejdź.~ */ GOTO 12
END

IF ~~ THEN BEGIN 2 // from: 0.1 30.1 31.0 33.1 36.0 37.0
  SAY #32492 /* ~"Jakież zło dało początek *twojemu* życiu, sirrah?" Wykrzywia twarz z obrzydzeniem, po czym śmieje się szorstko. "I co za odór! Jesteś jednym z bękartów śmierci?" Zauważasz długi, zakrzywiony nóż zwisający u jej biodra; ręka dziewczyny spoczywa luźno na jego rękojeści.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 310
END

IF ~~ THEN BEGIN 3 // from:
  SAY #32493 /* ~"Och, muszę *to* zobaczyć. Powiedz mi więc, 'sirrah', czy cuchniesz jak rynsztoki Ula? Czy też jego rynsztoki cuchną jak *ty*?"~ */
  IF ~~ THEN REPLY #32547 /* ~"*Co* powiedziałaś, dziewczyno?"~ */ GOTO 23
  IF ~~ THEN REPLY #32548 /* ~Blef: "Adhana? Czy to ty?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32549 /* ~"Co się z tobą dzieje?"~ */ GOTO 21
  IF ~~ THEN REPLY #32550 /* ~"Nic do ciebie nie mam. Zostaw mnie i odejdź w swoją stronę."~ */ GOTO 10
  IF ~~ THEN REPLY #32551 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32552 /* ~Zignoruj ją i odejdź.~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 1.1 23.0
  SAY #32494 /* ~Kobieta mruga ze zdziwienia.~ */
  IF ~~ THEN REPLY #32553 /* ~"Adhana? Nie pamiętasz mnie?"~ */ GOTO 5
  IF ~~ THEN REPLY #32554 /* ~"Mówiłem ci już, Adhano: nigdy cię nie kochałem i nie będę kochał. A teraz zostaw mnie w spokoju."~ */ GOTO 6
  IF ~~ THEN REPLY #32555 /* ~"Och... przepraszam. Myślałem, że jesteś Adhaną, ale ty jesteś dwakroć brzydsza i cuchniesz dwa razy bardziej niż ona."~ */ GOTO 6
  IF ~~ THEN REPLY #32556 /* ~"Nieważne. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32495 /* ~Przez chwilę dziewczyna przygląda ci się ostrożnie, po czym uśmiecha się. "Twoje głębokie rany musiały cię wprawić w zakłopotanie, sirrah." Kobieta chichocze. "Nie jestem twoją przyjaciółką i nigdy nie utożsamiałabym się z kimś takim jak ty."~ */
  IF ~~ THEN REPLY #32557 /* ~"Och... przepraszam. Myślałem, że jesteś Adhaną, ale ty jesteś dwakroć brzydsza i cuchniesz dwa razy bardziej niż ona."~ */ GOTO 6
  IF ~~ THEN REPLY #32558 /* ~"Nieważne. Żegnaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 5.0
  SAY #32496 /* ~Dziewczyna słucha cię przez chwilę zmieszana, po czym wydaje z siebie warknięcie i próbuje dobyć swojej broni.~ */
  IF ~~ THEN REPLY #32559 /* ~Walcz z nią.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32560 /* ~Wezwij straże.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 11.1 13.1 17.1 20.1 31.2 38.1 42.1
  SAY #32497 /* ~Zszokowana dziewczyna syczy. "Ty głupcze... jesteś szalony? Twoje słowo nigdy nie będzie warte dla strażników więcej od mojego!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #32561 /* ~"Jesteś bez wątpienia pijana, a te twoje blizny zdradzają, że masz charakter wojownika... z pewnością już masz taką reputację. Sądzę, że mnie wysłuchają."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #32562 /* ~"Jesteś bez wątpienia pijana, a te twoje blizny zdradzają, że masz charakter wojownika. Sądzę, że mnie wysłuchają."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from:
  SAY #32498 /* ~Dziewczyna wpatruje się z ciebie zażarcie, zaciskając zęby. "Lepiej módl się żebyśmy się więcej nie spotkali w jakimś innym miejscu, *psie*!" Odwraca się, aby pospiesznie się oddalić.~ */
  IF ~~ THEN REPLY #32563 /* ~"Och, mam nadzieję, że tak się *stanie*..."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32564 /* ~Gdy odchodzi, ziewnij jakbyś był znudzony.~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #32565 /* ~"Żegnaj."~ */ DO ~EscapeArea()
SetGlobal("Sarhava","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1
  SAY #32499 /* ~Dziewczyna wpatruje się z ciebie zażarcie, zaciskając zęby. "Zapomnijmy więc o całej sprawie i rozejdźmy się, każde w swoją stronę."~ */
  IF ~~ THEN REPLY #32566 /* ~"Zgoda - już zmarnowałaś dość mojego czasu. Żegnaj."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32567 /* ~"Zgoda. Żegnaj."~ */ DO ~SetGlobal("Sarhava","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.3 3.3 23.3
  SAY #32500 /* ~"Och, z pewnością. Ale najpierw..." Robi przerwę, jej usta wykrzywiają się w ohydnym uśmiechu. "...jedno pytanie: czy ktoś może naprawdę stać się tak brzydki jak ty w ciągu jednego żywota?"~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32568 /* ~"Tak... spójrz na siebie, a znajdziesz tego dowód."~ */ GOTO 11
  IF ~~ THEN REPLY #32569 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32570 /* ~Odejdź.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0 22.0 22.1 25.0
  SAY #32501 /* ~Dziewczyna przygląda ci się przez chwilę, zaskoczona, a następnie wydaje z siebie warknięcie, sięgając po swój sztylet...~ */
  IF ~~ THEN REPLY #32571 /* ~Walcz z nią.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32572 /* ~Wezwij straże.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 1.5 3.5 4.3 5.1 10.2 21.3 22.3 23.5
  SAY #32502 /* ~"Nie odwracaj się do mnie plecami, psie. Twoja obecność w tym miejscu, na tej ulicy, wielce mnie obraża. Musisz za to przeprosić." Wysuwa do przodu jedną stopę. "Liż mojego buta i zniknij mi z oczu, a wszystko zostanie ci wybaczone."~ */
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32573 /* ~Uklęknij i pocałuj jej but.~ */ GOTO 14
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32574 /* ~Uklęknij i pocałuj jej but.~ */ EXTERN ~DANNAH~ 174
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #32575 /* ~Uklęknij i pocałuj jej but.~ */ EXTERN ~DMORTE~ 312
  IF ~~ THEN REPLY #32576 /* ~Uklęknij, poczekaj na okazję by ją zranić.~ */ GOTO 16
  IF ~~ THEN REPLY #32577 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32578 /* ~Zignoruj jej groźby i odejdź.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.5
  SAY #32503 /* ~Gdy odwracasz się by odejść, ona wydaje z siebie warknięcie i sięga po swój sztylet...~ */
  IF ~~ THEN REPLY #32579 /* ~Walcz z nią.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32580 /* ~Wezwij straże.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.4
  SAY #32504 /* ~Jej ostry śmiech, wzniosły i szyderczy, odbija się echem pośród ulic. "Teraz odejdź stąd tchórzu. Spróbuj przemówić do mnie jeszcze raz, a moje ostrze wydrze twoje serce z piersi zanim twoje słowa dotrą do mych uszu."~ */
  IF ~~ THEN REPLY #32581 /* ~"W porządku, dość tego. Zobaczmy jak posługujesz się tym swoim nożykiem, dziewczyno."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32582 /* ~Odejdź.~ */ DO ~SetGlobal("Sarhava","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32505 /* ~"Świnie!" skrzeczy. "Zabiję was!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Myself,"Annah")
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #32506 /* ~Gdy przed nią przyklękasz, dziewczyna kładzie ręce na swoich biodrach i odrzuca do tyłu głowę. Jej ostry śmiech, wzniosły i szyderczy, odbija się echem pośród ulic.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #32583 /* ~Odgryź kawałek jej gołej nogi.~ */ DO ~Damage("Sarhava",LOWER,2)
SetGlobal("Sarhava","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 18
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32584 /* ~Odgryź kawałek jej gołej nogi.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #32585 /* ~Podetnij jej nogi.~ */ DO ~Damage("Sarhava",LOWER,2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32586 /* ~Podetnij jej nogi.~ */ GOTO 17
  IF ~~ THEN REPLY #32587 /* ~Pocałuj jej but.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.3
  SAY #32507 /* ~Próbujesz to zrobić... ale ona zręcznie się cofa. "Zapłacisz za to swoim *życiem*, ty psie!" Wyciąga swój sztylet...~ */
  IF ~~ THEN REPLY #32588 /* ~Walcz z nią.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32589 /* ~Wezwij straże.~ */ GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #32508 /* ~Chwytasz jej łydkę i zatapiasz w niej swoje zęby. Kobieta skrzeczy z bólu, wyzwalając się z twojego uścisku i wyciągając swój sztylet - twoje ukąszenie szybko ją otrzeźwiło. "*OSZALAŁEŚ*?!"~ */
  IF ~~ THEN REPLY #32590 /* ~Uśmiechnij się do niej i zliż ze swoich ust krew.~ */ GOTO 19
  IF ~~ THEN REPLY #32591 /* ~"Dzisiaj nie będę całował żadnych butów, dziewczyno. A teraz odejdź zanim zacznę odgryzać większe kawałki."~ */ GOTO 19
  IF ~~ THEN REPLY #32592 /* ~Po prostu odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #32509 /* ~Wzdraga się, na jej twarzy pojawia się niedowierzanie i obrzydzenie. "Uch! Obym nigdy więcej nie spotkała kogoś takiego jak ty! Bestio..." Odwraca się, aby odejść.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32593 /* ~Gdy odchodzi, naśladuj odgłosy gryzienia.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32594 /* ~Gdy odchodzi, naśladuj odgłosy gryzienia.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_3","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32595 /* ~"Żegnaj."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32596 /* ~"Żegnaj."~ */ EXTERN ~DMORTE~ 314
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32597 /* ~Pozwól jej odejść w spokoju.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32598 /* ~Pozwól jej odejść w spokoju.~ */ EXTERN ~DMORTE~ 314
END

IF ~~ THEN BEGIN 20 // from: 16.2
  SAY #32510 /* ~Chwytasz ją za kostki i podcinasz jej nogi. Przez chwilę zdaje się zawisać w powietrzu, z szeroko otwartymi ze zdziwienia ustami - po czym uderza ciężko o bruk, wydając przy tym *głuchy odgłos* wskazujący na niemały ból towarzyszący upadkowi. Zrywa się na równe nogi, a jej oczy są dzikie ze złości. "*Zabiję* cię!" Wyciąga swój sztylet...~ */
  IF ~~ THEN REPLY #32599 /* ~Walcz z nią.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32600 /* ~Wezwij straże.~ */ GOTO 7
END

IF ~~ THEN BEGIN 21 // from: 1.2 3.2 23.2
  SAY #32511 /* ~"Sprawa jest *ohydna*, sirrah." Naśmiewa się z obrzydzeniem. "Samo patrzenie na ciebie powoduje, że do gardła podchodzi mi żółć."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32601 /* ~"Czy nie to powiedziała twoja matka, gdy się urodziłaś?"~ */ GOTO 11
  IF ~~ THEN REPLY #32602 /* ~"Odejdę, dziewczyno, zanim skończysz tak jak ja."~ */ GOTO 22
  IF ~~ THEN REPLY #32603 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32604 /* ~Zignoruj ją i odejdź.~ */ GOTO 12
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #32512 /* ~"Och, ni, ni... nigdy nie mogłabym być taka jak ty, sirrah. Tak *niewielu* ludzi jada swoje odchody."~ */
  IF ~~ THEN REPLY #32605 /* ~"Otwórz swoje usta jeszcze raz, dziewczyno, a ja dopilnuję, żeby zaczęło ci to smakować."~ */ GOTO 11
  IF ~~ THEN REPLY #32606 /* ~"Gdybym potrzebował odchodów, ścisnąłbym twoją głowę, dziewczyno."~ */ GOTO 11
  IF ~~ THEN REPLY #32607 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32608 /* ~Zignoruj ją i odejdź.~ */ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 1.0 3.0
  SAY #32513 /* ~"Myślę, że właściwym pytaniem, sirrah, jest pytanie o ten *zapach*?" Wącha powietrze, po czym marszczy nos z odrazą. "Hej, myślę, że to ty! To naprawdę ty, ty popstrzona przez muchy człowiecza padlino!"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32609 /* ~Blef: "Zaczekaj... poznaję cię. Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32610 /* ~Blef: "Zaczekaj... poznaję cię. Adhana!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarhava_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 311
  IF ~~ THEN REPLY #32611 /* ~"Co się z tobą dzieje?"~ */ GOTO 21
  IF ~~ THEN REPLY #32612 /* ~"Nic do ciebie nie mam. Zostaw mnie i odejdź w swoją stronę."~ */ GOTO 10
  IF ~~ THEN REPLY #32613 /* ~Zaatakuj ją.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32614 /* ~Zignoruj ją i odejdź.~ */ GOTO 12
END

IF ~~ THEN BEGIN 24 // from: 0.0
  SAY #32514 /* ~"Jakież zło dało początek *twojemu* życiu, sirrah?" Wykrzywia twarz z obrzydzeniem, po czym śmieje się szorstko. "I co za odór! Jesteś jednym z bękartów śmierci?" Zauważasz długi, zakrzywiony nóż zwisający u jej biodra; ręka dziewczyny spoczywa luźno na jego rękojeści.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 130
END

IF ~~ THEN BEGIN 25 // from:
  SAY #32515 /* ~Młoda kobieta wygląda przez chwilę na zmieszaną, po czym rozpoznaje Nie-Sławę. Zdaje się być wstrząśnięta i speszona. "Pani Sławo! Nie zauważyłam cię... przyznaję to z największym wstydem ponieważ twoje pojawienie się zauważyłby nawet głupek."~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #32615 /* ~"Bez wątpienia nie jesteś nawet głupkiem, dziewczyno."~ */ GOTO 11
  IF ~~ THEN REPLY #32616 /* ~Pozwól Sławie dalej mówić.~ */ EXTERN ~DGRACE~ 131
END

IF ~~ THEN BEGIN 26 // from:
  SAY #32516 /* ~Wygląda na zawstydzona. "Tak, Pani... żałuję, że takie słowa padły w twojej obecności."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 132
END

IF ~~ THEN BEGIN 27 // from:
  SAY #32517 /* ~"Ech..." Marszczy czoło, po czym odzyskuje pewność siebie. "W każdym bądź razie, Pani, co cię sprowadza? Jakieś zadanie?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 133
END

IF ~~ THEN BEGIN 28 // from:
  SAY #32518 /* ~Sarhava kłania się nisko. "Pozwól więc, Pani Sławo, że przeproszę ciebie i twoich towarzyszy. Moje słowa były źle dobrane. To z powodu alkoholu, który sprawił że wygadywałam takie głupstwa. Płonę ze wstydu, że umniejszyłam sobie tak bardzo w obecności mojego dawnego nauczyciela." Kłania się, odwraca i odchodzi.~ */
  IF ~~ THEN REPLY #32617 /* ~Odejdź.~ */ DO ~SetGlobal("Sarhava","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.3
  SAY #32519 /* ~"Proszę, proszę... co my tu mamy? Małe diabelstwo, królową rynsztoku, która wypełzła z Ula?" Kobieta nadyma usta, mówiąc jak dorośli do dzieci. "Zgubiłaś się, małe diabelstwo? Och, spójrzcie! Ma ogon! Jakie to... urocze!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 178
END

IF ~~ THEN BEGIN 30 // from:
  SAY #32520 /* ~"Nie waż się tego robić, biesie." Kobieta zdaje się nic sobie nie robić z tego, że Anna wyciąga broń i mlaska z dezaprobatą językiem. "Ostrożnie albo odetnę ten ogon i nakarmię nim moje psy."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32618 /* ~"Dość, dziewczyno. Przeproś ją albo posiekam *cię* na kawałki."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32619 /* ~"Dość, dziewczyno. Przeproś ją albo posiekam *cię* na kawałki."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32620 /* ~Pozwól Annie się tym zająć.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32621 /* ~"Nie przejmuj się tym Anno. Nie warta jest naszego czasu."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DANNAH~ 179
END

IF ~~ THEN BEGIN 31 // from:
  SAY #32521 /* ~"Ty plugawy pomiocie Niższych Sfer, bękarcie, którego nawet tanar'ri nie trzymałby w swojej zagrodzie!" Wyciąga swoje ostrze.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32622 /* ~"Schowaj to ostrze, dziewczyno, albo zatopię je w twoim ciele."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32623 /* ~"Schowaj to ostrze, dziewczyno, albo zatopię je w twoim ciele."~ */ DO ~SetGlobal("CW_Help_Annah","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #32624 /* ~Wezwij straże.~ */ GOTO 7
  IF ~~ THEN REPLY #32625 /* ~Pozwól sprawom potoczyć się ich własnym torem.~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 0.4
  SAY #32522 /* ~"A cóż *to* jest?! Gith? Tak *daleko* od kloacznego dołu Limbo, wychodka sfer?" Mruży oczy, oczekując odpowiedzi Dak'kona.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 114
END

IF ~~ THEN BEGIN 33 // from:
  SAY #32523 /* ~Dziewczyna marszczy czoło. "Myślałam, że twój gatunek lepiej się czuje pośród mięsożernych żab, które swawolą w zupach na Limbo."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 130
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32626 /* ~"Być może lepiej byś się czuła w Kostnicy, dziewczyno."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
~ THEN REPLY #32627 /* ~"Być może lepiej byś się czuła w Kostnicy, dziewczyno."~ */ GOTO 1
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32628 /* ~Pozwól Dak'konowi się tym zająć.~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3
  SAY #32524 /* ~Dziewczyna czeka przez chwilę na odpowiedź, po czym kontynuuje swój słowny atak na Dak'kona: "Dlaczego nie powrócisz do Limbo?" Myśli przez chwilę, drapiąc się w podbródek. "A może twój gatunek mieszka w Sferze Astralnej? Twój naród wydaje mi się taki pomieszany - githyanki, githzerai, kto by to odróżnił..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DDAKKON~ 115
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32629 /* ~Kontynuuj.~ */ EXTERN ~DDAKKON~ 115
END

IF ~~ THEN BEGIN 35 // from:
  SAY #32525 /* ~Kobieta nagle uśmiecha się. "Och! Opowiedz mi jakiś dowcip!" Klaszcze z zadowolenia w dłonie. "Oświeć mnie sławnym humorem twojej rasy, *githyanki*!"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 116
END

IF ~~ THEN BEGIN 36 // from:
  SAY #32526 /* ~Dziewczyna naśmiewa się z Dak'kona. "A kiedy spotkałam cię na ulicach Sigil, młoda Sarhava spojrzała na plugastwo githa i powiedziała, 'niewiele jest tu warte choćby splunięcia'. Jesteś jedynie bezbożnym psem *githyanki*, który musi kazirodczo czcić bękarty własnej rasy i płodzić żaby." Chwyta rękojeść swojego sztyletu. "Dobądź swojego kawałka kruchej stali, plugawy githcie."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32630 /* ~"Miarka się przebrała, dziewczyno. Ucisz się."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32631 /* ~"Miarka się przebrała, dziewczyno. Ucisz się."~ */ GOTO 1
  IF ~~ THEN REPLY #32632 /* ~Sam ją zaatakuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32633 /* ~"Zaatakuj ją, Dak'konie."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32634 /* ~Poczekaj na reakcję Dak'kona.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.4
  SAY #32527 /* ~Czeka, ale Dak'kon wciąż nie odpowiada. "Chciałabym, żeby władcy umysłów wciąż trzymali cię w niewoli, githcie, tak aby oszczędzić wieloświatu niebezpieczeństwa jakie niesie ze sobą rozmnażanie się waszej rasy."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #32635 /* ~"Miarka się przebrała, dziewczyno. Ucisz się."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32636 /* ~"Miarka się przebrała, dziewczyno. Ucisz się."~ */ GOTO 1
  IF ~~ THEN REPLY #32637 /* ~Sam ją zaatakuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32638 /* ~"Zaatakuj ją, Dak'konie."~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
  IF ~~ THEN REPLY #32639 /* ~Poczekaj na reakcję Dak'kona.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.4
  SAY #32528 /* ~Dak'kon stoi milcząc jak kamień. Kobieta wydaje z siebie warknięcie i przygotowuje się, aby się na niego rzucić. "Niech cię więc Baator pochłonie, tchórzu!"~ */
  IF ~~ THEN REPLY #32640 /* ~Pomóż Dak'konowi z nią walczyć.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32641 /* ~Wezwij straże.~ */ GOTO 7
  IF ~~ THEN REPLY #32642 /* ~Pozwól sprawom potoczyć się ich własnym torem.~ */ DO ~Enemy()
ForceAttack(Myself,"Dakkon")
ForceAttack("Dakkon",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #32529 /* ~Zaskoczona kobieta nie odpowiada.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 317
END

IF ~~ THEN BEGIN 40 // from:
  SAY #32530 /* ~"Co... kto... jak śmiesz..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 318
END

IF ~~ THEN BEGIN 41 // from:
  SAY #32531 /* ~"Ja... ja..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 319
END

IF ~~ THEN BEGIN 42 // from:
  SAY #32532 /* ~Kobieta dobywa swego ostrza i warcząc jak rozwścieczone zwierzę rzuca się na Mortego.~ */
  IF ~~ THEN REPLY #32643 /* ~Pomóż Mortemu z nią walczyć.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32644 /* ~Wezwij straże.~ */ GOTO 7
  IF ~~ THEN REPLY #32645 /* ~Pozwól sprawom potoczyć się ich własnym torem.~ */ DO ~Enemy()
Attack("Morte")
~ EXIT
END

IF ~  Global("Sarhava","GLOBAL",2)
~ THEN BEGIN 43 // from:
  SAY #32533 /* ~Młoda kobieta nie chce z tobą w ogóle rozmawiać.~ */
  IF ~~ THEN REPLY #32646 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 44 // from:
  SAY #32534 /* ~Młoda kobieta naśmiewa się okrutnie i wysuwa do przodu czubek swojego buta. "Przybyłeś, aby znowu skosztować mojego buta, psie? Nie dostaniesz go! Czyż nie mówiłam ci, żeby się nigdy więcej do mnie nie odzywać? Precz stąd zanim dobędę mojego ostrza."~ */
  IF ~~ THEN REPLY #32647 /* ~"Dość mam już ciebie, dziewczyno... wyciągaj swoją broń."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32648 /* ~Pozostań i walcz z nią.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32649 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 45 // from:
  SAY #32535 /* ~Sarhava odnotowuje twoją obecność skinieniem głowy, ale nie chce z tobą rozmawiać.~ */
  IF ~~ THEN REPLY #32650 /* ~Odejdź.~ */ EXIT
END
