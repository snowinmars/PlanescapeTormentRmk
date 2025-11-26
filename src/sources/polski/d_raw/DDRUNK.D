// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9710 /* ~Ten mężczyzna spił się na umór. Ledwo może stać, gorzej z mówieniem. Cuchnie alkoholem, wymiocinami i zatęchłym moczem.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #9807 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #9809 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #9811 /* ~Zignoruj go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9792 /* ~Pijany wydaje się być troszkę świadomym, że mówisz do niego. Rozgląda się zmieszany, starając się odkryć źródło twojego głosu. Dostrzegasz, że Anna zakrada się na jego tyły, najpewniej by skraść mu sakiewkę.~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #9813 /* ~"Anno... Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 75
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #9816 /* ~"Anno... Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 76
  IF ~~ THEN REPLY #9819 /* ~Potrząśnij nim, by zwrócił na ciebie uwagę.~ */ GOTO 4
  IF ~~ THEN REPLY #9824 /* ~Zostaw go.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 77
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #9793 /* ~Pijany wydaje się być troszkę świadomym, że mówisz do niego. Rozgląda się zmieszany, starając się odkryć źródło twojego głosu.~ */
  IF ~~ THEN REPLY #9828 /* ~Potrząśnij nim, by zwrócił na ciebie uwagę.~ */ GOTO 3
  IF ~~ THEN REPLY #9830 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9795 /* ~"Yle, yle? Yłle? B-leeeeee!" Niespodziewanie wymiotuje obficie. Odskakujesz do tyłu, by nie zostać opryskanym. Nie uzyskasz niczego pożytecznego od tego brudnego, przeżartego smrodem życiowego nieużytku.~ */
  IF ~~ THEN REPLY #9832 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #9796 /* ~"Yle, yle? Yłle? Bleeeeee!" Niespodziewanie wymiotuje obficie. Ty i Anna odskakujecie do tyłu, by nie zostać opryskanym. Nie uzyskasz niczego pożytecznego od tego brudnego, przeżartego smrodem życiowego nieużytku.~ */
  IF ~~ THEN REPLY #9834 /* ~Zostaw go.~ */ EXIT
END
