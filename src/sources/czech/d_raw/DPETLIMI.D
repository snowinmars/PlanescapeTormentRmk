// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39448 /* ~Tohle je tvůj Lim-Lim. Když si všiml tvé pozornosti, zamilovaně na tebe zapípal. "Piyo!"~ */
  IF ~~ THEN REPLY #39449 /* ~Prozkoumej svého Lim-Lima.~ */ GOTO 1
  IF ~~ THEN REPLY #42748 /* ~Polož svého Lim-Lima, ať se trochu proběhne kolem.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42749 /* ~Laskej svého Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42750 /* ~Kopni svého Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42751 /* ~Přestaň si teď hrát se svým Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42752 /* ~Zdá se, že tvůj Lim-Lim je jak hmyz tak i zvíře. Jeho nohy jsou přerostlé, ale jeho ruce jsou malé, téměř zakrnělé, a vesele kropenatá půlka skořápky zmenšuje jeho záda. Hraje si se dvěma páry jakoby hmyzích křídel, a má malé černé oči a ústa, která vypadají jako by se stále smála.~ */
  IF ~~ THEN REPLY #42753 /* ~Polož svého Lim-Lima, ať se trochu proběhne kolem.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42754 /* ~Laskej svého Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42755 /* ~Kopni svého Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42756 /* ~Přestaň si teď hrát se svým Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42757 /* ~"Piyo! Piyo!" Lim-Lim vesele řádí, jeho křídla bzučí. Zdá se, že se mu to ohromně líbí.~ */
  IF ~~ THEN REPLY #42758 /* ~Polož svého Lim-Lima, ať se trochu proběhne kolem.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42759 /* ~Laskej svého Lim-Lima o něco víc.~ */ GOTO 2
  IF ~~ THEN REPLY #42760 /* ~Kopni svého Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42761 /* ~Přestaň si teď hrát se svým Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42762 /* ~Pokusil jsi se nakopnout Lim-Lima, ale vykroutil se ze tvého sevření a uletěl na zem!~ */
  IF ~~ THEN REPLY #42763 /* ~"Oj..."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
END
