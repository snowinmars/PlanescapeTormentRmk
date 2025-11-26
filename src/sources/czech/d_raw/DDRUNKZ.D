// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNKZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNKZ~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9711 /* ~Muž se nejistě kymácí ze strany na stranu, na chvíli vyrovnal rovnováhu, pak se mu podařilo ztěžka se usmát na něco za tvým pravým uchem.~ */
  IF ~~ THEN REPLY #9864 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #9866 /* ~Nechej ho být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9855 /* ~Pomalu přikývl, pak zabručel. Z koutku úst mu řine zeleně zabarvená slina, která stéká do jeho rozcuchané, zašpiněné bradky. Vypadá to, že se téměř nedokáže udržet na nohách, natož s někým konverzovat.~ */
  IF ~~ THEN REPLY #9867 /* ~"To nic... sbohem."~ */ EXIT
END
