// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUATRAA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUATRAA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45430 /* ~Dieser Mann bewegt sich von einer Kiste zur nächsten, zählt irgendetwas und kritzelt das Ergebnis auf ein Stück Pergament. Er ist so sehr in seine Arbeit vertieft, daß er ein verärgertes Gesicht, als du ihn unterbrichst. "Was ist denn? Siehst du nicht, daß ich gerade Inventur mache? Such dir ein anderes Opfer." ~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45085 /* ~"Ich soll dir dieses Kästchen bringen."~ */ GOTO 2
  IF ~~ THEN REPLY #45431 /* ~"Ich wollte dich nicht stören. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45432 /* ~"Du schon wieder! Ich hab dir doch gesagt, du sollst mich in Ruhe lassen."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45433 /* ~"Ich soll dir dieses Kästchen bringen."~ */ GOTO 2
  IF ~~ THEN REPLY #45434 /* ~"Ich wollte dich nicht stören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #45435 /* ~"Sag das doch gleich, Mann! Zeig mal her, was du hast. Ich muß es sicher in die Bestandsliste aufnehmen."~ */
  IF ~~ THEN REPLY #45437 /* ~"Mar schickt mich. Ich soll dir das hier geben."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45438 /* ~Als du ihm das Kästchen entgegenstreckst, schlägt Ku'atraas Miene von Neugier in Entsetzen um. "Nein! Bitte... Halt mir das Ding vom Leib!"~ */
  IF ~~ THEN REPLY #45439 /* ~"Ich verstehe nicht... Weshalb fürchtest du dich vor diesem Kästchen?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45440 /* ~"Du sollst... zurücktreten! Tod... Böse... m-mußte Mar reinlegen... wußte einfach nicht mehr weiter. Bitte... gib's Braskin... lebt im Südwesten... Stock... ich... neeeein!" Er scheint den Anblick des Kästchens nicht zu verkraften und rennt schreiend aus dem Gebäude.~ */
  IF ~~ THEN REPLY #45441 /* ~"Warte! Was soll ich jetzt... damit tun?" ~ */ DO ~SetGlobal("FedEx","Global",2)
SetGlobal("Alpha","Global",2)
SetGlobal("Beta","Global",1)
AddexperienceParty(250)
StartCutSceneMode()
StartCutSceneEx("3009cut1",FALSE)
~ JOURNAL #39488 /* ~Ich hatte ein eigenartiges Treffen mit Ku'atraa, dem ich auf Mars Geheiß hin diesen seltsamen Kasten überbringen sollte. Ku'atraa schien Angst vor dem Inhalt des Kastens zu haben. Als ich ihn ihm gezeigt habe, fing er vor Panik an rumzuplappern und ergriff die Flucht. Soweit ich sein Gefasel verstanden habe, wollte er, daß ich die Kiste zu einem Mann namens Brasken bringe, der irgendwo im südwestlichen Teil des Stocks lebt. Ich kann nur hoffen, daß dieser Brasken dann die Sache klärt und mir den Kasten endlich abnimmt. Ich fühl mich immer ein wenig unwohl, wenn ich das Ding ansehe.~ */ EXIT
END
