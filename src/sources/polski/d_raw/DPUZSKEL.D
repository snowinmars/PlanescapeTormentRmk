// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPUZSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPUZSKEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20282 /* ~Szkielet, którego widzisz, coś do siebie mruczy, od czas do czasu przerywając, żeby podrapać się po czaszce. Jest tak stary, że na kościach nie ma już żadnego mięsa... tylko kilka kolorowych szmat.~ */
  IF ~~ THEN REPLY #20296 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #20297 /* ~Zostaw szkielet w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20283 /* ~Szkielet kiwa głową na powitanie, ale nie odpowiada ani słowem.~ */
  IF ~~ THEN REPLY #20298 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #20299 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20284 /* ~Szkielet spogląda na ciebie i mruczy sfrustrowany: "Nie teraz! Wybacz, ale próbuję właśnie rozwiązać *okropną* zagadkę i ciągle mi się nie udaje!"~ */
  IF ~~ THEN REPLY #20300 /* ~"Co to za zagadka?"~ */ GOTO 3
  IF ~~ THEN REPLY #20301 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20285 /* ~Szkielet wydaje się być zaskoczony. "Och? Spróbujesz?"~ */
  IF ~~ THEN REPLY #20302 /* ~"Tak, słucham."~ */ DO ~SetGlobal("DN_Riddle","AR1500",1)
~ GOTO 4
  IF ~~ THEN REPLY #20303 /* ~"Nie, mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.3
  SAY #20286 /* ~"Zatem dobrze. Pochodzi ona od pewnego chichoczącego błazna, którego można spotkać tu w pobliżu. Nie chce wyjawić mi odpowiedzi, a ta zagadka zaczyna mnie *dobijać*!"~ */
  IF ~~ THEN REPLY #20304 /* ~"W takim razie słucham..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20287 /* ~Szkielet kiwa potakująco głową. "Pomyśl o słowach, które zaczynają się na 'GB'. Jedno z nich to gbur. We Wspólnym Języku są dwa słowa... jakie jest to drugie? To coś, czego używa się na co dzień. Jeśli słuchałeś uważnie, to już ci powiedziałem co to jest."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20305 /* ~"Oczywiście, że powiedziałeś. To 'język'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
AddexperienceParty(6250)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20306 /* ~"To... ee... hmm."~ */ GOTO 9
  IF ~~ THEN REPLY #20307 /* ~"Pomyślę o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 10.0 12.0 12.1 13.0
  SAY #20288 /* ~Wygląda na oszołomionego. "*Co*? Ale..."~ */
  IF ~~ THEN REPLY #20308 /* ~"Dwa pierwsze zdania są tylko dla zmylenia. Pamiętasz: we 'Wspólnym Języku' są dwa słowa... jakie jest to drugie? Drugie słowo to 'język'."~ */ GOTO 8
  IF ~~ THEN REPLY #20309 /* ~Roześmiej się i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #20289 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20290 /* ~"To... to... och! Jaka zwodnicza sztuczka! No cóż, przecież ja nie mam języka!" Szkielet milknie, a potem wybucha śmiechem. "A to dobre. Dziękuję!"~ */
  IF ~~ THEN REPLY #20310 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #20291 /* ~"Też nie wiesz, co? Daj mi znać, jeśli znajdziesz odpowiedź... Powodzenia, jeśli spróbujesz posłuchać tej zagadki z ust tego gadającego głupca, od którego ja ją usłyszałem!"~ */
  IF ~~ THEN REPLY #20311 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  GlobalGT("DN_Riddle","AR1500",0)
GlobalLT("DN_Riddle","AR1500",3)
~ THEN BEGIN 10 // from:
  SAY #20292 /* ~Szkielet spogląda na ciebie pytającym wzrokiem. "Udało ci się już rozwiązać tę przeklętą zagadkę?"~ */
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20312 /* ~"Tak. To 'język'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20313 /* ~"Tak, ale odpowiedzi ci nie podam."~ */ GOTO 12
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20314 /* ~Kłamstwo: "Ee... nie. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20315 /* ~"Nie. Powtórz mi tę zagadkę jeszcze raz."~ */ GOTO 4
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20316 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",3)
~ THEN BEGIN 11 // from:
  SAY #20293 /* ~"Jeszcze raz dziękuję ci za rozwiązanie tej zagadki! Wyobrażam sobie, jak mój 'przyjaciel' by się złościł!" Szkielet wybucha serdecznym śmiechem.~ */
  IF ~~ THEN REPLY #20317 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20294 /* ~"Ale... ale dlaczego? Daj spokój! *Musisz* mi powiedzieć!"~ */
  IF ~  !Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20318 /* ~"Dobrze. To 'język'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20319 /* ~"Dobrze. To 'język'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20320 /* ~"Obiecałem, że tego nie zrobię."~ */ GOTO 13
  IF ~~ THEN REPLY #20321 /* ~"Czy naprawdę muszę? Żegnaj."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #20295 /* ~Szkielet zaczyna zgrzytać zębami. "Ha! Tak po prostu! Dziękuję!"~ */
  IF ~~ THEN REPLY #20322 /* ~"Dobrze, dobrze. To 'język'."~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~~ THEN REPLY #20323 /* ~"Przepraszam. Żegnaj."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Evil_PuzSkel","AR1500",1)
~ THEN BEGIN 14 // from:
  SAY #68086 /* ~Szkielet krzyżuje ręce i nie chce powiedzieć ani słowa.~ */
  IF ~~ THEN REPLY #68087 /* ~Odejdź.~ */ EXIT
END
