// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43025 /* ~Diese Person atmet schwer und ist mit Schweißperlen bedeckt, als hätte sie gerade eine anstrengende Übung gemacht. Sie dreht sich zu dir um, als du näherkommst. "Ja?"~ */
  IF ~~ THEN REPLY #43026 /* ~"Was ist das für ein Ort?"~ */ GOTO 1
  IF ~~ THEN REPLY #43027 /* ~"Nichts... Bin nur zufälllig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43028 /* ~Die Gestalt nickt in Richtung der Übungspuppen. "Der Trainingsraum der Krieger."~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #43029 /* ~"Wo ist die Ausbilderin?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",1)
~ JOURNAL #66874 /* ~Ich bin in den Kampftrainingsraum in der Städtischen Festhalle gegangen, aber dort war kein Lehrer zu finden. Einer der Lehrlinge dort hat mir gesagt, daß Qui-Sai, der Kampflehrer, sich irgendwo in der Festhalle aufhalten soll, und daß man ihn kaum übersehen könne, da seine Haut wie grauer Stein sei.~ */ GOTO 2
  IF ~  GlobalGT("Qui_Sai","GLOBAL",0)
GlobalLT("Qui_Sai","GLOBAL",4)
~ THEN REPLY #66875 /* ~"Wo ist die Ausbilderin?"~ */ GOTO 2
  IF ~~ THEN REPLY #43030 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43031 /* ~"Qui-Sai?" Die Gestalt zuckt mit den Achseln und wischt sich den Schweiß von der Stirn. "Wahrscheinlich steckt er irgendwo in der Festhalle. Du kannst ihn kaum verfehlen... Seine Haut sieht aus wie die Oberfläche eines grauen Gesteins."~ */
  IF ~~ THEN REPLY #43032 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
