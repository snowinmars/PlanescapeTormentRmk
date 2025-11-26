// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9710 /* ~Cet homme, fin saoul, tient à peine debout et ne risque donc pas de te parler. Il pue l'alcool, le vomi et l'urine rance.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #9807 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #9809 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #9811 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9792 /* ~Cet ivrogne semble à peine se rendre compte que tu lui parles. Perplexe, il regarde alentour afin de découvrir l'origine de ta voix. Tu remarques qu'Annah s'approche de lui par derrière, sans doute pour lui dérober sa bourse.~ */
  IF ~  GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #9813 /* ~"Annah… Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 75
  IF ~  GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #9816 /* ~"Annah… Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Drunk_1","GLOBALLaw",1)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 76
  IF ~~ THEN REPLY #9819 /* ~Secoue-le pour attirer son attention.~ */ GOTO 4
  IF ~~ THEN REPLY #9824 /* ~Laisse-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 77
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #9793 /* ~Cet ivrogne semble à peine se rendre compte que tu lui parles. Perplexe, il regarde alentour afin de découvrir l'origine de ta voix.~ */
  IF ~~ THEN REPLY #9828 /* ~Secoue-le pour attirer son attention.~ */ GOTO 3
  IF ~~ THEN REPLY #9830 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9795 /* ~"Hein ? Quoi ? B-bouaaarf !" Il crache soudain un jet de vomi ; tu sautes en arrière pour éviter les éclaboussures. Il n'y a rien à tirer de cette épave hirsute et puante.~ */
  IF ~~ THEN REPLY #9832 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #9796 /* ~"Hein ? Quoi ? B-bouaaarf !" Il crache soudain un jet de vomi ; Annah et toi sautez en arrière pour éviter les éclaboussures. Il n'y a rien à tirer de cette épave hirsute et puante.~ */
  IF ~~ THEN REPLY #9834 /* ~Laisse-le tranquille.~ */ EXIT
END
