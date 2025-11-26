// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPENTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPENTA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #54184 /* ~Du erblickst ein leeres Pentagramm. Die Luft darin ist trocken und kalt. Ein Gefühl großen Übels durchdringt die Umgebung.~ */
  IF ~~ THEN REPLY #54185 /* ~Laß es in Ruhe.~ */ EXIT
  IF ~  PartyHasItem("AgScroll")
~ THEN REPLY #54186 /* ~Untersuche die Schriftrolle von Dona Quisho. ~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",3)
SinisterPoof("S113SMOK",[850.438],1)
CreateCreature("Agril",[850.438],S)
DestroyPartyItem("AgScroll",TRUE)
AddexperienceParty(60000)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #54187 /* ~Die Luft verdunkelt sich für einen Moment, und eine Art Windstoß durchdringt deinen Kopf und dein Herz. Als du wieder deutlich sehen kannst, ragt vor dir ein riesiges Scheusal auf!~ */
  IF ~~ THEN EXTERN ~DAGRIL~ 0
END
