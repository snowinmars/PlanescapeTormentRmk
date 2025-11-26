// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9710 /* ~This man is drunk out of his gourd. He can barely stand, much less speak to you. He reeks of liquor, vomit, and stale urine.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #9807 /* ~"I have some questions for you..."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #9809 /* ~"I have some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #9811 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9792 /* ~The drunk seems only dimly aware of your speaking to him. He looks about, confused, trying to discover the source of your voice. You notice Annah creeping around behind him, most likely looking for a coin-purse.~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #9813 /* ~"Annah... don't."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 75
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #9816 /* ~"Annah... don't."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 76
  IF ~~ THEN REPLY #9819 /* ~Shake him to get his attention.~ */ GOTO 4
  IF ~~ THEN REPLY #9824 /* ~Leave him be.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 77
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #9793 /* ~The drunk seems only dimly aware of your speaking to him. He looks about, confused, trying to discover the source of your voice.~ */
  IF ~~ THEN REPLY #9828 /* ~Shake him to get his attention.~ */ GOTO 3
  IF ~~ THEN REPLY #9830 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9795 /* ~"Huh, huh? Whuh? G-guuuuurk!" He suddenly begins to retch copiously; you hop back to avoid being spattered. You won't be getting anything useful from this disheveled, stench-ridden waste of a life.~ */
  IF ~~ THEN REPLY #9832 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #9796 /* ~"Huh, huh? Whuh? G-guuuuurk!" He suddenly begins to retch copiously; you and Annah hop back to avoid being spattered. You won't be getting anything useful from this disheveled, stench-ridden waste of a life.~ */
  IF ~~ THEN REPLY #9834 /* ~Leave him be.~ */ EXIT
END
