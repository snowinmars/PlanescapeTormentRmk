// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTTRANS~

IF ~  Global("Know_Tower_Key","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #62298 /* ~Přistoupil jsi k místu, o kterém se zmiňoval ten kluk, jak se jen jmenoval... Lazlo. Tak tady někde by měl existovat portál. V duchu ses vrátil k vašemu rozhovoru. "Dost možná, že celá finta, jak se dostat dovnitř, je nechtít vejít..." zopakoval si polohlasem.~ */
  IF ~~ THEN REPLY #62299 /* ~Potlač jakékoliv myšlenky na vstup do věže.~ */ DO ~SetGlobal("Siege_Tower_Portal","AR0500",1)
SetPortalCursor("to0501",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0501",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #62300 /* ~Odejdi.~ */ EXIT
END
