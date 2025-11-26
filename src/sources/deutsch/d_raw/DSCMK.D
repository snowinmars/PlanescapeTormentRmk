// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCMK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCMK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~Du siehst einen ungepflegten, schlecht gekämmten Mann. Er hat eine starke Fahne. "Jaaa? Wwwas wwwillst du?" Er beugt sich vor und mustert dich von Kopf bis Fuß. "Sieht aus, als könntest du einen HEILKUNDIGEN gebrauchen!" Er lacht lauthals über seinen eigenen schlechten Witz, und der widerliche Geruch von Alkohol und halb gekautem Essen schlägt dir entgegen.~ */
  IF ~~ THEN REPLY #3372 /* ~"Wer bist du?"~ */ EXIT
END
