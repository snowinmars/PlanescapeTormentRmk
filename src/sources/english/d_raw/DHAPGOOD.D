// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAPGOOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAPGOOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2839 /* ~We're's the brothers who stand guard overs the gates inta th' Trash Warrens and the Buried Village below. Ye either have to trick us or fight us inta lettin' you by.~ */
  IF ~~ THEN REPLY #2840 /* ~Sounds fascinating. Can't wait to see it IMPLEMENTED by the DESIGNER. Sheesh. Good DAY, sirs.~ */ EXIT
END
