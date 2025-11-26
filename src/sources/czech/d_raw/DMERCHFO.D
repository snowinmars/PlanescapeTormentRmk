// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHFO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHFO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9368 /* ~Tato stará žena s malým obličejem pokřikuje na lidi kolem sebe. Jak ses k ní přiblížil, usmála se a zvedla dlaně plné něčeho, co vypadá jako mrtví ptáci a krysy. "Máš hlad, panáčku?"~ */
  IF ~~ THEN REPLY #9369 /* ~"Ne, právě ne. Díky."~ */ EXIT
END
