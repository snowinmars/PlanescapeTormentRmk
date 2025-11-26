// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPTCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPTCOFF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51470 /* ~Pokusil ses zvednout víko sarkofágu, ale tvé pokusy jsou marné. Vypadá to, že je pevně zamčený.~ */
  IF ~~ THEN REPLY #51471 /* ~Odejdi.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Inscr_1","GLOBAL",1)
Global("Inscr_2","GLOBAL",1)
Global("Inscr_3","GLOBAL",1)
Global("Inscr_4","GLOBAL",1)
Global("Inscr_5","GLOBAL",1)
Global("Inscr_6","GLOBAL",1)
Global("Inscr_7","GLOBAL",1)
Global("Inscr_8","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #51473 /* ~Víko sarkofágu se lehce zvedlo. Mechanismus zámku byl vyřazen.~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53782 /* ~Otevři sarkofág.~ */ GOTO 5
  IF ~  Global("Lo_Quest","GLOBAL",2)
~ THEN REPLY #53783 /* ~Otevři sarkofág.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 2
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #53784 /* ~Otevři sarkofág.~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #53785 /* ~Otevřel jsi sarkofág... a objevil jsi pouze jeden klíč. Jinak tam nic není, žádné tělo a, což je důležitější, žádná lebka.~ */
  IF ~~ THEN REPLY #53786 /* ~"Mám pocit, že Lothar nebude mít zrovna radost, až mu to řeknu..."~ */ JOURNAL #51472 /* ~Našel jsem hrobku, ze které chtěl Lothar lebku. Bohužel, sarkofág v hrobce byl prázdný. Měl bych to oznámit Lotharovi.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53787 /* ~Chvíli stojíš potichu a prohlížíš si vnitřek sarkofágu.~ */
  IF ~~ THEN REPLY #53788 /* ~Vezmi klíč a odejdi.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Player1,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #53789 /* ~Otevřel jsi sarkofág... a objevil jsi pouze jeden klíč. Jinak tam nic není, žádné tělo, nic cenného.~ */
  IF ~~ THEN REPLY #53790 /* ~Vezmi klíč a odejdi.~ */ DO ~SetGlobal("Journal","GLOBAL",1)
AddexperienceParty(2000)
GiveItemCreate("PTKey4",Protagonist,1,0,0)
~ JOURNAL #51475 /* ~V katakombách jsem našel hrobku. V jejím centru byl prázdný sarkofág.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0
  SAY #53791 /* ~Sarkofág je prázdný. Nic se nezměnilo od doby, kdy ses naposledy díval dovnitř.~ */
  IF ~~ THEN REPLY #53792 /* ~Odejdi.~ */ EXIT
END
