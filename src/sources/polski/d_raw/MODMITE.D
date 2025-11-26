// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MODMITE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~MODMITE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64181 /* ~Dzięki tej magicznej różdżce można wzywać konstrukty Modrona i posyłać je do walki ze wskazanymi przeciwnikami. Na wezwanie stawi się od jednego do trzech konstruktów. Konstrukty te bez wahania staną do walki i będą walczyły nieustraszenie, aż padną.~ */
  IF ~~ THEN REPLY #64182 /* ~Użyj różdżki.~ */ DO ~CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64183 /* ~Odłóż różdżkę.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 1 // from:
  SAY #64184 /* ~Dzięki tej magicznej różdżce można wzywać konstrukty Modrona i posyłać je do walki ze wskazanymi przeciwnikami. Na wezwanie stawi się od jednego do trzech konstruktów. Konstrukty te bez wahania staną do walki i będą walczyły nieustraszenie, aż padną.~ */
  IF ~~ THEN REPLY #64185 /* ~Użyj różdżki.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64186 /* ~Odłóż różdżkę.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 2 // from:
  SAY #64188 /* ~Dzięki tej magicznej różdżce można wzywać konstrukty Modrona i posyłać je do walki ze wskazanymi przeciwnikami. Na wezwanie stawi się od jednego do trzech konstruktów. Konstrukty te bez wahania staną do walki i będą walczyły nieustraszenie, aż padną.~ */
  IF ~~ THEN REPLY #64189 /* ~Użyj różdżki.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64191 /* ~Odłóż różdżkę.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 3 // from:
  SAY #67150 /* ~Od różdżki, spoczywającej nieporuszenie w twoich dłoniach, bije przenikliwy i martwy chłód. Może po prostu tutaj, gdzie się teraz znajdujesz, nie będzie działała.~ */
  IF ~~ THEN REPLY #67151 /* ~Odłóż różdżkę.~ */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 4 // from:
  SAY #67152 /* ~Od różdżki, spoczywającej nieporuszenie w twoich dłoniach, bije przenikliwy i martwy chłód. Może po prostu tutaj, gdzie się teraz znajdujesz, nie będzie działała.~ */
  IF ~~ THEN REPLY #67153 /* ~Odłóż różdżkę.~ */ EXIT
END
