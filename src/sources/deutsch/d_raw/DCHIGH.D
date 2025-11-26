// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHIGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHIGH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2901 /* ~Ich bin ein mechanisches Konstrukt der starken Drohung, aus dem Modron-Irrgang selbst gefertigt, um Eindringlinge herauszufordern. Ich bin nicht sicher, ob ich Dialoge führe, aber hier ist der Anfang, falls ich welche führen muß.~ */
  IF ~~ THEN REPLY #2902 /* ~Nett, sich mit dir zu unterhalten. Ich bin sicher, du wirst dich bewähren... äh, will heißen: wenn der Designer dich erstmal zum Laufen kriegt.~ */ EXIT
END
