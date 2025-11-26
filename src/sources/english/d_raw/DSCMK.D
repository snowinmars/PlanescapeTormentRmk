// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCMK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCMK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~You see a scruffy, ill-kempt man. He smells strongly of alcohol. "Yeah? Whaddya want, eh?" He leans in close and looks you up and down. "Looks like you could use a HEALER!" He laughs loudly at his own poor humor, and the nauseating stench of liquor and poorly-chewed food washes over you.~ */
  IF ~~ THEN REPLY #3372 /* ~"Who are you?"~ */ EXIT
END
