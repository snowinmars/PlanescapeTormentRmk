// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBOSS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBOSS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2899 /* ~Ich bin der böse, klischeebehaftete Konstrukt-Boss, der den Modron-Würfel beherrscht. Verbeuge dich vor mir und weine kläglich, Fleischlicher.~ */
  IF ~~ THEN REPLY #2900 /* ~Denkste, übler Schmarotzer. Einen schönen Tag auch... und auf Nimmerwiedersehn.~ */ EXIT
END
