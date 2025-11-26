// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39450 /* ~Tohle je tvůj Lim-Lim. Když si všiml tvé pozornosti, zamilovaně na tebe zapípal. "Piyo!"~ */
  IF ~~ THEN REPLY #42733 /* ~Prozkoumej svého Lim-Lima.~ */ GOTO 1
  IF ~~ THEN REPLY #42734 /* ~Vezmi svého Lim-Lima zpět.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42735 /* ~Laskej svého Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42736 /* ~Kopni svého Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42737 /* ~Přestaň si teď hrát se svým Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42730 /* ~Zdá se, že tvůj Lim-Lim je jak hmyz tak i zvíře. Jeho nohy jsou přerostlé, ale jeho ruce jsou malé, téměř zakrnělé, a vesele kropenatá půlka skořápky zmenšuje jeho záda. Hraje si se dvěma páry jakoby hmyzích křídel, a má malé černé oči a ústa, která vypadají jako by se stále smála.~ */
  IF ~~ THEN REPLY #42738 /* ~Vezmi svého Lim-Lima zpět.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42739 /* ~Laskej svého Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42740 /* ~Kopni svého Lim-Lima.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42741 /* ~Přestaň si teď hrát se svým Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42731 /* ~"Piyo! Piyo!" Lim-Lim vesele řádí, jeho křídla bzučí. Zdá se, že se mu to ohromně líbí.~ */
  IF ~~ THEN REPLY #42742 /* ~Vezmi svého Lim-Lima zpět.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42743 /* ~Laskej svého Lim-Lima.~ */ GOTO 2
  IF ~~ THEN REPLY #42744 /* ~Kopni svého Lim-Lima.~ */ GOTO 3
  IF ~~ THEN REPLY #42745 /* ~Přestaň si teď hrát se svým Lim-Limem.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42732 /* ~Pokoušíš se rychlým kopnutím uzemnit svého Lim-Lima, ale hbitě ti uskakuje z cesty. "Piyo!" Otáčí se a utíká, křídla bzučí.~ */
  IF ~~ THEN REPLY #42746 /* ~Nech ho jít.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #42747 /* ~Hoň se za ním a zkus ho znovu kopnout.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
END
