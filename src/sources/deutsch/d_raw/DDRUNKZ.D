// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNKZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNKZ~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9711 /* ~Dieser Mann schwankt vor und zurück, findet einen Moment lang zu seinem Gleichgewicht zurück und schafft es dann, ein kränkliches, verzerrtes Lächeln aufzusetzen, das auf etwas gleich neben deinem rechten Ohr gerichtet ist.~ */
  IF ~~ THEN REPLY #9864 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #9866 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9855 /* ~Er nickt langsam und gibt dann ein schleimiges Gurgeln von sich. Grünlicher Speichel beginnt aus seinem Mundwinkel in seinen zotteligen, dreckverkrusteten Bart zu laufen. Er sieht aus, als könnte er sich kaum aufrecht halten, geschweige denn eine Unterhaltung führen.~ */
  IF ~~ THEN REPLY #9867 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END
