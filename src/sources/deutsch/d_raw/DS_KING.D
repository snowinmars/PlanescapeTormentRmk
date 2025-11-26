// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_KING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_KING~

IF ~  Global("Took_Skull","AR1501",0)
~ THEN BEGIN 0 // from:
  SAY #51339 /* ~Diese ausgedörrte Leiche - in ihrer verzierten Paraderüstung trotz Staub und Spinnweben eine eindrucksvolle Erscheinung - ist offenbar der mächtige Schweigende König. Der Herr und Meister der Toten Lande scheint wenig mehr zu sein als eine vertrocknete Hülle.~ */
  IF ~  Global("1501_Undead_Alert","GLOBAL",1)
~ THEN REPLY #51340 /* ~Nimm seinen Schädel.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ GOTO 1
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
!Class(Protagonist,THIEF)
~ THEN REPLY #51425 /* ~Nimm seinen Schädel.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 2
  IF ~  Global("1501_Undead_Alert","GLOBAL",0)
Class(Protagonist,THIEF)
~ THEN REPLY #51426 /* ~Nimm seinen Schädel.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65532 /* ~Geh weg.~ */ DO ~SetGlobal("Silent_King","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51427 /* ~Du drehst und reißt erfolglos am Kopf des Schweigenden Königs... Er will sich einfach nicht bewegen. Schließlich stemmst du den Fuß gegen eine der Armlehnen, um mehr Kraft zu haben, und reißt den Kopf mit einem lauten *Krachen* ab.~ */
  IF ~~ THEN REPLY #51428 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #51429 /* ~Daß du den Kopf des Schweigenden Königs abgerissen hast, wird zweifellos diejenigen erzürnen, die sich derzeit im Thronsaal aufhalten... Du wirst dich zuerst mit ihnen befassen müssen.~ */
  IF ~~ THEN REPLY #51430 /* ~Versuch trotzdem, seinen Schädel wegzunehmen.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #51431 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1
  SAY #51432 /* ~Du versuchst, den Schädel des Schweigendes Königs unauffällig abzureißen, aber er läßt sich keinen Millimeter bewegen. Schließlich stemmst du den Fuß, um mehr Kraft zu haben, gegen eine der Armlehnen des Throns und reißt den Kopf mit einem lauten *Krachen* ab - was alle Anwesenden auf den Plan ruft. Sie drehen sich um, sehen, wie du ihrem geliebten Herrn den Kopf abreißt, und stürzen sich in den Angriff...~ */
  IF ~~ THEN REPLY #51433 /* ~Verteidige dich.~ */ DO ~SetGlobal("Took_Skull","AR1501",1)
GiveItemCreate("SkullSK",Protagonist,0,0,0)
~ EXIT
END

IF ~  Global("Took_Skull","AR1501",1)
~ THEN BEGIN 4 // from:
  SAY #51434 /* ~Der Herr und Meister der Toten Lande scheint wenig mehr zu sein als eine vertrocknete Hülle - eine kopflose noch dazu, da du ihm ja seinen Kopf abgerissen hast.~ */
  IF ~~ THEN REPLY #51435 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Took_Skull","AR1501",2)
~ THEN BEGIN 5 // from:
  SAY #65524 /* ~Der Herr und Meister der Toten Lande scheint mehr als nur eine ausgetrocknete Hülle zu sein. Sein Kopf sitzt ein wenig schief auf seinen Schultern, seitdem du seinen Schädel gegen einen anderen ausgetauscht hast.~ */
  IF ~~ THEN REPLY #65525 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.2
  SAY #65526 /* ~Wenn du den Kopf des Schweigenden Königs abreißt, wird das garantiert die derzeit Anwesenden im Thronsaal verärgern... du mußt dich zunächst um sie kümmern. Wenn du allerdings einen anderen echten Schädel hättest, dann könntest du vielleicht schnell genug sein und ihn mit dem Schädel unter dem Helm des Schweigenden Königs zu vertauschen, bevor irgend jemand etwas merkt...~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #65527 /* ~Vertausche die Schädel.~ */ DO ~SetGlobal("Took_Skull","AR1501",2)
DestroyPartyItem("Skull",FALSE)
GiveItemCreate("SkullSK",Protagonist,1,0,0)
AddexperienceParty(500)
~ GOTO 7
  IF ~  !PartyHasItem("Skull")
~ THEN REPLY #65530 /* ~Versuch trotzdem, seinen Schädel wegzunehmen.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #65531 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65528 /* ~Nachdem du sicher bist, daß dich niemand direkt beobachtet, hebst du den Helm des Schweigenden Königs, läßt den Schädel in deinem Inventar verschwinden und ersetzt den fehlenden Kopf mit dem anderen Schädel, den du hattest. Du setzt den Helm zurück, und keiner wird den Unterschied je bemerken...~ */
  IF ~~ THEN REPLY #65529 /* ~Geh weg.~ */ EXIT
END
