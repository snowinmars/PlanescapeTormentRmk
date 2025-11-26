// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17512 /* ~"Skacz, Lim-Limie, skacz!" Wydaje się, że dopiero cię zauważył. "Och, witaj! Czy chciałbyś kupić jednego z tych zabawnych, hasających Lim-Limów, mój panie?"~ */
  IF ~~ THEN REPLY #17537 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17539 /* ~"Jeszcze nie. Czym są te 'Lim-Limy'?"~ */ GOTO 3
  IF ~~ THEN REPLY #17540 /* ~"Tak."~ */ GOTO 4
  IF ~~ THEN REPLY #17541 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Buy_LL","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #17513 /* ~"Zobacz jak... och, to znowu ty, panie? Chcesz kupić Lim-Lima?"~ */
  IF ~~ THEN REPLY #17542 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17543 /* ~"Jeszcze nie. Czym są te 'Lim-Limy'?"~ */ GOTO 3
  IF ~~ THEN REPLY #17544 /* ~"Tak."~ */ GOTO 4
  IF ~~ THEN REPLY #17545 /* ~"Nie, dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.3 4.5 6.1 7.1 9.0
  SAY #17515 /* ~"Obawiam się, że mogę odpowiedzieć tylko na te, które dotyczą Lim-Limów, mój panie."~ */
  IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN REPLY #17546 /* ~"Więc może mi powiesz, dlaczego mój uciekł."~ */ GOTO 7
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17547 /* ~"Czym one są?"~ */ GOTO 3
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17548 /* ~"Chcę jednego kupić."~ */ GOTO 4
  IF ~~ THEN REPLY #17549 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1
  SAY #17516 /* ~"Są z Zewnętrza, mój panie. Nie są ani owadami, ani zwierzętami. Są przyjazne, lubią się bawić i są całkiem oddane." Ukradkiem spogląda na Lim-Limy, a potem nachyla się i szepcze: "Ostatecznie, są też całkiem smaczne."~ */
  IF ~~ THEN REPLY #17550 /* ~"Interesujące. Mam jeszcze kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17551 /* ~"Chcę jednego kupić."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.2 3.1
  SAY #17517 /* ~"Lim-Limy same dbają o swoje jedzenie - łapią robaki, małe gryzonie i tym podobne. Pójdą tam, gdzie ty. Łatwo po nich posprzątać, są ciche, bawią się same, głównie podskakując i, co najlepsze, skaczą na piętnaście stóp, gdy się je popchnie gorącymi węglami! Jeden kosztuje tylko czterdzieści miedziaków, mój panie, psie pieniądze za tak zabawne zwierzątko i wspaniałego przyjaciela!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17553 /* ~"Co o tym myślisz Morte?"~ */ EXTERN ~DMORTE~ 187
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17555 /* ~"Co o tym myślisz Anno?"~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17556 /* ~"Wezmę jednego."~ */ DO ~TakePartyGold(40)
~ GOTO 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17557 /* ~"Lepiej nie wydawać pieniędzy. Ale mam parę pytań..."~ */ GOTO 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17559 /* ~"Wolę zatrzymać pieniądze. Żegnaj."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17560 /* ~"Nie mam aż tyle, ale mam kilka pytań..."~ */ GOTO 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17562 /* ~"Nieważne. Nie mam nawet na jednego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #17518 /* ~"Och, jak miło, panie! Proszę bardzo..."~ */
  IF ~~ THEN REPLY #17563 /* ~"Mój własny Lim-Lim..."~ */ DO ~SetGlobal("Buy_LL","GLOBAL",1)
GiveItemCreate("LimLim",Protagonist,1,0,0)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #17519 /* ~"Patrz jak... Och, to znowu ty, panie? Gdzie twój Lim-Lim?"~ */
  IF ~~ THEN REPLY #17565 /* ~"W pewnym momencie uciekł. Powiedziałeś, że wszędzie za mną pójdzie."~ */ GOTO 7
  IF ~~ THEN REPLY #17567 /* ~"Nie chcę o tym mówić. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17568 /* ~"Nie pytaj. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 6.0
  SAY #17520 /* ~"Naprawdę? To bardzo dziwne!"~ */
  IF ~~ THEN REPLY #17569 /* ~"Spodziewam się odszkodowania."~ */ GOTO 8
  IF ~~ THEN REPLY #17570 /* ~"Nieważne. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17572 /* ~"Nie kłopocz się tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17521 /* ~"Ależ panie... to nie moja wina! Nie był tresowany, może go ukradziono..."~ */
  IF ~~ THEN REPLY #17573 /* ~"Po prostu zwróć mi moje czterdzieści miedziaków."~ */ GOTO 11
  IF ~~ THEN REPLY #17574 /* ~"Zwróć mi moje 40 miedziaków i dorzuć 20 za oszustwo."~ */ GOTO 11
  IF ~~ THEN REPLY #17575 /* ~"Zwróć mi moje 40 miedziaków i jeszcze 40 za kłopot."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Buy_LL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #17522 /* ~"Popatrz jak... Och, to znowu ty, panie?"~ */
  IF ~~ THEN REPLY #17730 /* ~"Tak. Mam parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #17731 /* ~"Tylko przechodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #17526 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 8.1 8.2
  SAY #17527 /* ~"Ale-ale-ale nie wolno ci! Nie możesz mnie za to winić, po prostu nie możesz!"~ */
  IF ~~ THEN REPLY #17576 /* ~"Mogę i tak właśnie zrobię; tak będzie sprawiedliwie. Powiedziałeś, że wszędzie za mną pójdzie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_LL_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #17577 /* ~Prawda: "Możesz zapłacić tutaj, albo w piekle. Wybieraj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17579 /* ~Blef: "Możesz zapłacić tutaj, albo w piekle. Wybieraj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_LL_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17580 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #17528 /* ~"Dobrze, już... Rety! Spójrz, cóż to takiego?" Nagle rzuca się do ucieczki.~ */
  IF ~~ THEN REPLY #17581 /* ~"Co do..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #17529 /* ~"Skacz Lim-Limie, uaaaaa!" Na twój widok zaczyna uciekać.~ */
  IF ~~ THEN REPLY #17582 /* ~"Cholera..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END
