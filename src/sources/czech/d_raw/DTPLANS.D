// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPLANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPLANS~

IF ~  Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 0 // from:
  SAY #61864 /* ~Plány odhalují, že má být hrobka plná pastí, ale nejsou uvedená přesná umístění. Na jedné straně jsi ale objevil poznámku, která odhaluje umístění té nejsmrtelnější pasti v každé místnosti. Dole je jinou rukou naškrábaná poznámka. Vypadá to jako tvůj rukopis.~ */
  IF ~~ THEN REPLY #61869 /* ~Přečti si poznámku.~ */ DO ~Explore()
~ GOTO 2
  IF ~~ THEN REPLY #61870 /* ~Hotovo.~ */ DO ~Explore()
~ EXIT
END

IF ~  !Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 1 // from:
  SAY #61866 /* ~Plány by dávaly větší smysl, kdybys byl v samotné hrobce. Tak můžeš přímo porovnávat mezi plány a realitou.~ */
  IF ~~ THEN REPLY #61867 /* ~Hotovo.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61868 /* ~"Past je nastavená a teď už mi stačí počkat, až mezi její zdi vstoupí můj mučitel. Napadá mě ale, že musím najít způsob, jak odtamtud dostat tělo bez toho, že bych nějak aktivoval pasti... Hm. Kouzlo možná... něco co přenese tělo zpět na začátek..."~ */
  IF ~~ THEN EXIT
END
