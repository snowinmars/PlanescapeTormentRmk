// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38099 /* ~Nápis vypadá jako rady na tvých zádech, které ti přečetl Morte v márnici:

Vím že se cítíš jako kdybys vypil pár sudů z řeky STYX, ale musíš se soustředit. Mezi tvými věcmi je deník, jenž ti objasní pár temných míst. PHAROD ti doplní ostatní, pokud už není v knize mrtvých. ~ */
  IF ~~ THEN REPLY #53675 /* ~Pokračuj, osvěž si vzpomínky.~ */ GOTO 1
  IF ~  Global("Inscr_2","GLOBAL",0)
~ THEN REPLY #53676 /* ~Ignoruj zbytek nápisu a prozkoumej panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53677 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53678 /* ~Neztrať deník, nebo zase skončíme ve Styxu. A ať už budeš dělat cokoli, nikomu NEŘÍKEJ KDO jsi, nebo CO se ti stalo, nebo tě rychle pošlou na vnitřní prohlídku krematoria. Udělej, co ti říkám: PŘEČTI si deník a pak NAJDI Pharoda.~ */
  IF ~  Global("Morte_Warning","GLOBAL",0)
~ THEN REPLY #53679 /* ~Pokračuj.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #53680 /* ~Pokračuj.~ */ GOTO 5
  IF ~~ THEN REPLY #53681 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53682 /* ~K tvému překvapení je tady ještě jeden řádek - který ti Morte tenkrát v Márnici nepřečetl: 'Nevěř lebce.'~ */
  IF ~~ THEN REPLY #53683 /* ~Prozkoumej panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53684 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 5.0
  SAY #53685 /* ~Panel je vytvořený tak, že se dá zatlačit do zdi. Alespoň máš takový pocit.~ */
  IF ~~ THEN REPLY #53686 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_2","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53687 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53688 /* ~Zatlačil jsi na panel, který hladce zajel do zdi. Ze sarkofágu za tebou se ozvalo cvaknutí.~ */
  IF ~~ THEN REPLY #53689 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #53690 /* ~Je tady ještě jeden řádek: 'Nevěř lebce.'~ */
  IF ~~ THEN REPLY #53691 /* ~Prozkoumej panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53692 /* ~Odvrať se od nápisu.~ */ EXIT
END
