// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR7~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38109 /* ~To řekli - Byl jsi rozdělen. Jsi jeden z mnoha mužů. Máš mnoho jmen, a každé zanechalo jizvy na tvém těle.~ */
  IF ~~ THEN REPLY #53751 /* ~Pokračuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53752 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53753 /* ~ZTRACENÝ... NESMRTELNÝ... KONEC INKARNACE... MUŽ TISÍCE SMRTÍ... TEN, KTERÝ JE ODSOUZEN K ŽIVOTU... NEKLIDNÝ... JEDEN Z MNOHA... TEN, KTERÉHO UVĚZNIL ŽIVOT... NOSIČ STÍNŮ... ZRANĚNÝ... PŘINAŠEČ UTRPENÍ... YEMETH...~ */
  IF ~~ THEN REPLY #53754 /* ~Pokračuj.~ */ GOTO 2
  IF ~~ THEN REPLY #53755 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53756 /* ~Začínám být unavený.~ */
  IF ~  Global("Inscr_7","GLOBAL",0)
~ THEN REPLY #53757 /* ~Prozkoumej panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53758 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53759 /* ~Panel je kvalitně udělaný, rozhodně práce mistra. Máš pocit, že by se dal zatlačit do zdi.~ */
  IF ~~ THEN REPLY #53760 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_7","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53761 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53762 /* ~Panel hladce zajel do zdi. Ze sarkofágu za tebou slyšíš cvaknutí.~ */
  IF ~~ THEN REPLY #53763 /* ~Odvrať se od nápisu.~ */ EXIT
END
