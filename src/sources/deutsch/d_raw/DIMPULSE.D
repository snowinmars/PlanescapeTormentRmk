// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIMPULSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DIMPULSE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52690 /* ~Dieser riesige Kristall, der über dem Krater in der Mitte des Raums schwebt, strahlt ein pulsierendes, geisterhaftes Licht aus. Der Rhythmus seines Pulsierens erinnert dich an das Schlagen eines Herzens, aber das eines langsamen und kränklichen. Das Licht aus dem Kristall berührt wie Finger die Ecken des Raums, jeder Strahl wirft einen Lichtschein auf die zerstörten Gesichter der ihn umgebenden Statuen.~ */
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
!Dead("IgnusF")
~ THEN REPLY #52691 /* ~Berühr den Kristall...~ */ GOTO 2
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
!Dead("VhailF")
~ THEN REPLY #64586 /* ~Berühr den Kristall...~ */ GOTO 3
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Dead("IgnusF")
~ THEN REPLY #64587 /* ~Berühr den Kristall...~ */ GOTO 1
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Dead("VhailF")
~ THEN REPLY #64588 /* ~Berühr den Kristall...~ */ GOTO 1
  IF ~~ THEN REPLY #64589 /* ~Laß den Kristall in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.3
  SAY #59895 /* ~Dir wird einen Moment lang schwindlig, als du den Kristall berührst; Kälte kriecht langsam durch deinen Körper, und du merkst, daß deine Muskeln erstarrt sind. Deine Hände sind an der Oberfläche des Kristalls festgefroren. Einen Augenblick herrscht Stille, dann durchsplittert ein scharfer, zerreißender Schmerz deinen Körper, und du fühlst dich, als hätte man dein INNERSTES zu Eis gefroren und *zerschlagen*...~ */
  IF ~~ THEN REPLY #59896 /* ~Dunkelheit umgibt dich...~ */ DO ~TeleportParty("AR1203",[932.703],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64590 /* ~Als du den Kristall berührst, spürst du eine Hitzewelle, einen orange-weißen Blitz, und du ziehst schnell die Hand zurück - der Kristall brennt wie die Hitze von Ignus' Flammen. Im Inneren des Kristalls tanzt und flackert das schwache weiß-blaue Licht wie Feuer.~ */
  IF ~~ THEN REPLY #64591 /* ~"Sieht so aus, als müßte ich dich zuerst ins Totenbuch eintragen, Ignus..."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64592 /* ~Als du den Kristall berührst, verspürst du plötzlich eine Kälte, ein helles weißes Licht, und du ziehst schnell deine Hand zurück - der Kristall ist wie Eis, wie die Kälte aus Vhailors Rüstung. Im Inneren des Kristalls blinkt das schwache weiß-blaue Licht, wie das Auge einer großen Bestie.~ */
  IF ~~ THEN REPLY #64593 /* ~"Sieht so aus, als müßte ich dich zuerst ins Totenbuch eintragen, Vhailor..."~ */ EXIT
END
