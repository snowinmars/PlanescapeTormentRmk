// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGV1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGV1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1956 /* ~Als du dich näherst, geht der Mann einen Schritt zurück. "Laß mich! Ich habe dir nichts getan."~ */
  IF ~~ THEN REPLY #1957 /* ~"Hör endlich auf, mich zu verfolgen, oder meine Klinge kriegt ein neues Zuhause."~ */ GOTO 3
  IF ~~ THEN REPLY #1958 /* ~"Warum verfolgst du mich?"~ */ GOTO 1
  IF ~~ THEN REPLY #1960 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #1959 /* ~"Ich verfolge dich überhaupt nicht..." Ihm läuft Speichel aus dem Mund, als er spricht. "... außerdem bist du derjenige, der sich in acht nehmen sollte!"~ */
  IF ~~ THEN REPLY #1961 /* ~"*Niemand* kann sich herausnehmen, so mit mir zu reden, und *niemand* wagt es, mir zu drohen. Nimm sofort zurück, was du gesagt hast, oder du bist so schnell mausetot, daß sich das mit der zweiten Chance von selbst erledigt."~ */ GOTO 2
  IF ~~ THEN REPLY #1962 /* ~"Blabla. Hör auf, mich zu verfolgen, oder du wirst es bereuen, Dussel."~ */ GOTO 3
  IF ~~ THEN REPLY #1963 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1964 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1965 /* ~Er schaut dich mürrisch an.~ */
  IF ~~ THEN REPLY #1966 /* ~"*Verstehst* du mich? Nimm sofort zurück, was du gesagt hast, oder ich nehm dich aus."~ */ GOTO 4
  IF ~~ THEN REPLY #1971 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1972 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.1
  SAY #1967 /* ~Er schaut dich mürrisch an.~ */
  IF ~~ THEN REPLY #1968 /* ~"*Verstehst* du mich? Hör auf, mich zu verfolgen, oder ich nehm dich aus."~ */ GOTO 5
  IF ~~ THEN REPLY #1969 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1970 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #1973 /* ~Seine Stimme bebt. "Ich... nehme alles zurück. War nicht so gemeint."~ */
  IF ~~ THEN REPLY #1974 /* ~"Also gut. Geh mir aus den Augen."~ */ EXIT
  IF ~~ THEN REPLY #1975 /* ~"Geh mir aus den Augen."~ */ EXIT
  IF ~~ THEN REPLY #1976 /* ~Greif ihn trotzdem an.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #1977 /* ~"Dann will ich dir nicht weiter in die Quere kommen. Ich wollte dich nicht beleidigen."~ */
  IF ~~ THEN REPLY #1978 /* ~"Also gut. Geh mir schleunigst aus den Augen."~ */ EXIT
  IF ~~ THEN REPLY #1979 /* ~"Geh mir aus den Augen."~ */ EXIT
  IF ~~ THEN REPLY #1980 /* ~Greif ihn trotzdem an.
~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
