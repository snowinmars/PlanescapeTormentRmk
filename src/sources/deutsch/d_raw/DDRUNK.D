// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9710 /* ~Dieser Mann hat sich vollaufen lassen. Er kann sich kaum auf den Beinen halten, geschweige denn mit dir sprechen. Er hat eine Alkoholfahne und stinkt nach Urin und Erbrochenem.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #9807 /* ~"Ich habe ein paar Fragen an dich..."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #9809 /* ~"Ich habe ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #9811 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9792 /* ~Der Betrunkene scheint kaum wahrzunehmen, daß du mit ihm sprichst. Er blickt verwirrt um sich, als ob er sich fragt, woher die Stimme kommt. Du siehst, wie Annah sich von hinten an ihn heranschleicht, wahrscheinlich auf der Suche nach einer Geldbörse.~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #9813 /* ~"Annah... nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 75
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #9816 /* ~"Annah... nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 76
  IF ~~ THEN REPLY #9819 /* ~Schüttel ihn, damit er dich bemerkt.~ */ GOTO 4
  IF ~~ THEN REPLY #9824 /* ~Laß ihn in Ruhe.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 77
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #9793 /* ~Der Betrunkene scheint kaum wahrzunehmen, daß du mit ihm sprichst. Er blickt verwirrt um sich, als ob er sich fragt, woher deine Stimme kommt.~ */
  IF ~~ THEN REPLY #9828 /* ~Schüttel ihn, damit er dich bemerkt.~ */ GOTO 3
  IF ~~ THEN REPLY #9830 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9795 /* ~"Häääh? Was? Würg!" Er fängt plötzlich an zu würgen, und du weichst zurück, um nichts abzubekommen. Aus diesem ramponierten, stinkenden Jammerlappen wirst du wohl nichts herausbekommen.~ */
  IF ~~ THEN REPLY #9832 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #9796 /* ~"Häääh? Was? Würg!" Er fängt plötzlich an zu würgen, und du und Annah weichen zurück, um nichts abzubekommen. Aus diesem ramponierten, stinkenden Jammerlappen werdet ihr wohl nichts herausbekommen.~ */
  IF ~~ THEN REPLY #9834 /* ~Laß ihn in Ruhe.~ */ EXIT
END
