// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBPORTAL~

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #52724 /* ~Hier ist ein Spalt in den Felsen. Es sieht aus, als ob du dich gerade eben in ihn quetschen könntest, aber er scheint nirgends hinzuführen. Du bemerkst, daß der Boden hier mit Obsidianscherben bedeckt ist, wahrscheinlich das Ergebnis der Feuerbälle, die du hier gelegentlich gesehen hast, und die durch die Luft fliegen und sich in die großen Felsblöcke bohren, die dieses Tal säumen.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #52725 /* ~Heb eine Obsidianscherbe auf, nimm sie in den Mund und beiß drauf, so daß sie dir in die Zunge schneidet...~ */ DO ~SetGlobal("BD1000_Port_Active","GLOBAL",1)
SetPortalCursor("Baator_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Baator_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Portal_Open","GLOBAL",0)
~ GOTO 1
  IF ~~ THEN REPLY #52778 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52779 /* ~Als das gezahnte Stück vulkanisches Glas in deine Zunge schneidet, fühlst du ein seltsames Kribbeln in deinem Mund. Der Bereich um den Spalt in den Felsen schimmert, und plötzlich ist dort ein Portal...~ */
  IF ~~ THEN REPLY #52780 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #68118 /* ~In dem Felsen ist ein Spalt. Er sieht aus, als ob du dich gerade so hineinzwängen könntest, aber er scheint nirgendwo hinzuführen. Du bemerkst, daß der Boden hier mit Obsidianscherben übersät ist, vermutlich von den Feuerbällen, die du ab und zu durch die Luft hast rasen sehen und die in die großen Felsbrocken eingeschlagen sind, die dieses Tal umgeben.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #68119 /* ~Nimm eine Obsidianscherbe, steck sie dir in den Mund, und kaue sie, so daß sie dir die Zunge zerschneidet...~ */ GOTO 3
  IF ~~ THEN REPLY #68121 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #68120 /* ~Als du gerade das Portal benutzen willst, wird dir plötzlich klar, daß du noch immer keine Ahnung hast, wo das Portal zur Festung der Reue ist und wo oder was der Schlüssel sein könnte. Solange du dir diese Informationen nicht von der Säule besorgt hast, solltest du Baator nicht verlassen.~ */
  IF ~~ THEN REPLY #68122 /* ~Geh weg.~ */ EXIT
END
