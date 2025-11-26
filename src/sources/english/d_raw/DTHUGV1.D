// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGV1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGV1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1956 /* ~As you approach, the man takes a step back; his eyes have a cowardly, predatory light, like a scavenger... just looking at him, you realize he's sizing you up to see if he can best you - but his voice quavers with uncertainty. "Leave me be, I d-d-done nothin' to you."~ */
  IF ~~ THEN REPLY #1957 /* ~"Don't even think about attacking me, or my blade will have a new home."~ */ GOTO 3
  IF ~~ THEN REPLY #1958 /* ~"Are you *looking* for a fight?"~ */ GOTO 1
  IF ~~ THEN REPLY #1960 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #1959 /* ~"I'm not lookin' for a fight..." Spittle flies from his mouth as he speaks. "...but ye're the one who should watch yerself if you think yeh can take me, you should!"~ */
  IF ~~ THEN REPLY #1961 /* ~"*No one* speaks to me that way, and *no one* threatens me. Take back what you have said, or you'll be too dead to have a second chance."~ */ GOTO 2
  IF ~~ THEN REPLY #1962 /* ~"Yeah, yeah. Just keep your distance, or you'll regret it."~ */ GOTO 3
  IF ~~ THEN REPLY #1963 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1964 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1965 /* ~He looks at you sullenly.~ */
  IF ~~ THEN REPLY #1966 /* ~"You *understand* me? Take back what you said, or I'll gut you."~ */ GOTO 4
  IF ~~ THEN REPLY #1971 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1972 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.1
  SAY #1967 /* ~He looks at you sullenly.~ */
  IF ~~ THEN REPLY #1968 /* ~"You *understand* me? Keep your distance, or I'll gut you."~ */ GOTO 5
  IF ~~ THEN REPLY #1969 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1970 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #1973 /* ~His voice quavers. "I... swallow me words, then. I meant no offense."~ */
  IF ~~ THEN REPLY #1974 /* ~"All right then. Get out of my sight."~ */ EXIT
  IF ~~ THEN REPLY #1975 /* ~"Leave my sight."~ */ EXIT
  IF ~~ THEN REPLY #1976 /* ~Attack him anyway.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #1977 /* ~"You and I shall not cross paths, then. No offense was meant by sharing the street wit ye."~ */
  IF ~~ THEN REPLY #1978 /* ~"All right then. Get out of my sight now."~ */ EXIT
  IF ~~ THEN REPLY #1979 /* ~"Leave my sight."~ */ EXIT
  IF ~~ THEN REPLY #1980 /* ~Attack him anyway. ~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
