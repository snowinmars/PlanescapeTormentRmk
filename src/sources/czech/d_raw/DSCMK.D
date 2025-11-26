// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCMK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCMK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Vidíš muže silně páchnoucího alkoholem. "Jo? CO chceš, hm?" Naklonil se blíž a prohlédl si tě od hlavy k patě. "Vypadá to, že potřebuješ FELČARA!" Hlasitě se zasmál svému ubohému vtipu. Závan alkoholu a natráveného jidla tě skoro složil k zemi.~ */
  IF ~~ THEN REPLY #3372 /* ~"Kdo jsi?"~ */ EXIT
END
