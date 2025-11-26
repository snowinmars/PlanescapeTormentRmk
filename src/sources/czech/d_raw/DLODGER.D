// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLODGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLODGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66627 /* ~Je docela překvapený, že tě vidí. "To je divné... jsem si jistý, že jsem zamykal. V každém případě bych tě ale chtěl požádat, abys odešel."~ */
  IF ~~ THEN REPLY #66629 /* ~"Jasně. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #67880 /* ~"Odejdu, kdy se mi bude chtít. Sbohem."~ */ EXIT
END
