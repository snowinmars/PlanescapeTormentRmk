// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTENCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTENCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Cet homme te toise de l'étrange regard fixe d'un insecte. Il a des yeux *énormes*… si énormes qu'ils ont l'air prêts à jaillir de ses orbites pour rouler sur les pavés. À ton approche, il se met à dodeliner de la tête comme un oiseau… et tu perçois soudain la puanteur d'urine et de matières fécales qui émane de lui.~ */
  IF ~~ THEN REPLY #9339 /* ~"Bonjour."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Il renifle, s'essuie le nez sur sa manche, puis ouvre la bouche, montrant des gencives noircies. "Hé ! m'sieur ! une 'tite pièce pour une histoire ?" Il a une haleine pestilentielle, comme s'il stockait de la viande pourrie dans sa bouche. "Une 'tite pièce pour une histoire ?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Qui es-tu ?"~ */ EXIT
END
