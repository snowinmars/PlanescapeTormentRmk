// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DUHIR~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #23329 /* ~Dir bleibt gerade genug Zeit, das völlig verschreckte Gesicht des in Lumpen gekleideten Sammlers zu sehen, da dreht er sich schon um und flüchtet.~ */
  IF ~  Global("Uhir","GLOBAL",0)
~ THEN REPLY #22957 /* ~"Vielleicht das nächste Mal..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~  GlobalGT("Uhir","GLOBAL",0)
~ THEN REPLY #23331 /* ~"Uhir, warte... verdammt."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.2
  SAY #23335 /* ~"Äh... nun ja, ich bin von einem Ghul gebissen worden, als ich da unten nach Zeug zum Verscherbeln gesucht hab'."~ */
  IF ~~ THEN REPLY #23337 /* ~"Da unten?"~ */ GOTO 5
  IF ~~ THEN REPLY #23340 /* ~"Ich hätte noch ein paar andere Fragen an dich."~ */ GOTO 3
  IF ~~ THEN REPLY #23342 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY #23344 /* ~"Ich bin Uhir, jawoll." Er spuckt. "Als ob daß hier unten jemand interessieren würd'."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23345 /* ~"Ist das hier dein Messer, mit dem eingravierten 'UHIR'?"~ */ GOTO 16
  IF ~~ THEN REPLY #23347 /* ~"Okay. Ich hätte da noch ein paar andere Fragen an dich."~ */ GOTO 3
  IF ~~ THEN REPLY #23348 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.1 5.1 7.0 8.0 9.1 10.2 10.3 11.0 12.0
  SAY #23349 /* ~Er nickt, sagt aber nichts.~ */
  IF ~~ THEN REPLY #23350 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #23351 /* ~"Was machst du da?"~ */ GOTO 4
  IF ~~ THEN REPLY #23352 /* ~"Du bist in Verbände eingewickelt. Was ist mit dir geschehen?"~ */ GOTO 1
  IF ~~ THEN REPLY #23353 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #23354 /* ~"Ich wart, daß meine Wunden heilen, damit ich wieder runter kann. Ich verkauf das Zeug, das ich da unten finde."~ */
  IF ~~ THEN REPLY #23355 /* ~"Da unten?"~ */ GOTO 5
  IF ~~ THEN REPLY #23357 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #23359 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #23366 /* ~Er nickt. "Da unten in den Katakomben, wo all die Totenbüchler sind. Sag mal... gehst du zufällig mal dahin?"~ */
  IF ~~ THEN REPLY #23368 /* ~"Vielleicht. Warum?"~ */ GOTO 9
  IF ~~ THEN REPLY #23370 /* ~"Naja, egal. Ich hätte noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #23371 /* ~"Vielleicht. Leb wohl."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",3)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #23372 /* ~Uhir nickt dir zu. "Danke noch mal Schleifer, daß du mir dabei geholfen hast, mein Glücksmesser wiederzufinden."~ */
  IF ~~ THEN REPLY #23373 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",1)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #23374 /* ~Uhir beäugt dich mißtrauisch wie ein Hund, der fürchtet, daß man ihm sein Futter stiehlt. "Hä? Schon wieder? Was willst du?"~ */
  IF ~~ THEN REPLY #23375 /* ~"Ich wollte ein paar Antworten."~ */ GOTO 3
  IF ~~ THEN REPLY #23376 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",0)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #23377 /* ~Als du auf ihn zugehst, fährt der mürrisch schauende Mann mittleren Alters zusammen und greift an seinen Gürtel... Als er dort keine Waffe spürt, weicht er vor dir zurück. Du kannst erkennen, daß unter seinen Sammlerroben die Unterschenkel und Unterarme in dreckverkrusteten Bandagen eingewickelt sind. "Was willst du?"~ */
  IF ~~ THEN REPLY #23378 /* ~"Nur die Antworten auf ein paar Fragen..."~ */ DO ~SetGlobal("Uhir","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #23379 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #23380 /* ~"Weil ich mein Glücksmesser verloren hab'!" Er grunzt verärgert und stampft mit dem Fuß auf. "Ich trage es schon seit vielen Jahren, genau hier..." Er zeigt auf die leere Scheide an seinem Gürtel.~ */
  IF ~~ THEN REPLY #23381 /* ~"Was ist damit passiert?"~ */ GOTO 10
  IF ~~ THEN REPLY #23382 /* ~"Das tut mir leid. Ich hätte noch eine andere Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #23383 /* ~"Hoffe, du findest es wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.3
  SAY #23384 /* ~"Ich hab' in den Katakomben da unten rumgestochert und bin prompt mit einem Ghul zusammengestoßen! Muß 'n Nachzügler gewesen sein, denn die tauchen meist nicht allein auf. Er hat mich ins Gesicht gebissen, und ich hab' mich mit den Armen geschützt und hab' ihm in die Augen gestochen. Er fiel runter und hat mich dann so lange ins Bein gebissen, bis ich das Biest abschütteln und nach oben entkommen konnte."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23385 /* ~"Ist es dieses Messer hier, mit dem eingravierten 'UHIR'?"~ */ GOTO 16
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23386 /* ~"Was für 'ne Geschichte. Ich bring dein Messer mit, wenn ich's da unten finde."~ */ DO ~SetGlobal("Uhir","GLOBAL",2)
~ JOURNAL #21912 /* ~Uhir hat sein "Glücksmesser" in den Katakomben unten verloren - er hat einen Ghul damit in die Augen gestochen und ist geflohen. Wenn ich es zufällig finde, kann ich es ihm auch gleich zurückbringen.~ */ GOTO 11
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23387 /* ~"Hoffe, du findest dein Messer. Ich hätte noch ein paar andere Fragen."~ */ GOTO 3
  IF ~  Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23388 /* ~"Wie ich schon gesagt habe, ich bring's mit, wenn ich's finde. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #23389 /* ~"Schätze, der Ghul ist genauso sauer wie du. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #23390 /* ~"Das würdest du tun? Ich wäre dir echt dankbar. In den Griff ist mein Name eingraviert..."~ */
  IF ~~ THEN REPLY #23391 /* ~"Ich helfe gern. Bevor ich gehe, würde ich dir gern noch ein paar Fragen stellen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #23392 /* ~"Ich erwarte natürlich eine Gegenleistung."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #23393 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #23394 /* ~Uhir runzelt die Stirn. "Ich geb dir, was ich hab', aber es ist nicht viel. Schau, Schleifer... ich kann dich nicht gerade mit Reichtümern überschütten."~ */
  IF ~~ THEN REPLY #23395 /* ~"Das muß dann reichen. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #23396 /* ~"Wir unterhalten uns weiter darüber, wenn ich dein Messer hab'. Leb wohl."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",2)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #23397 /* ~Uhir zwinkert dir zu. "Hast du mein Messer zufällig gefunden?"~ */
  IF ~  PartyHasItem("UhrKnf")
Global("Good_Uhir_1","GLOBAL",1)
~ THEN REPLY #23398 /* ~"Ja... hier ist es."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~  PartyHasItem("UhrKnf")
Global("Evil_Uhir_1","GLOBAL",1)
~ THEN REPLY #23399 /* ~"Ja, hab' ich."~ */ GOTO 15
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23400 /* ~Lüge: "Nein... hab' ich nicht. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Uhir_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23401 /* ~"Nein, noch nicht. Wo hattest du es noch mal verloren?"~ */ GOTO 10
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23402 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 15.1 16.0
  SAY #23403 /* ~Uhir nimmt das Messer und hält es liebevoll in der Hand. "Ah, du bist wieder da! Mein Glücksmesser... danke, Schleifer. Und *du!"* Er hält seinem Messer eine Standpauke und schüttelt es: "Daß du mir ja nicht wieder abhaust!" Lächelnd schiebt er die Klinge in die Scheide.~ */
  IF ~~ THEN REPLY #23404 /* ~"Leb wohl, Uhir."~ */ JOURNAL #22025 /* ~Ich habe Uhir sein "Glücksmesser" zurückgegeben. Vielleicht leistet es ihm ja in Zukunft bessere Dienste..., obwohl es ja bereits *einmal* verhindert hat, daß er von einem Ghul gefressen wurde.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.1
  SAY #23405 /* ~"Ich hab' nur diese Handvoll Kupfermünzen, Schleifer..." Er reicht dir etwa ein Dutzend Münzen. "Reicht das?"~ */
  IF ~~ THEN REPLY #23406 /* ~"Ja, das dürfte reichen. Hier ist dein Messer."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
GivePartyGold(13)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23407 /* ~"Behalt dein Geld, Uhir... hier ist dein Messer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23408 /* ~"Hmm. Dann behalt ich eben das hier. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Ich habe beschlossen, Uhirs "Glücksmesser" selbst zu behalten. Er schien darüber nicht sonderlich glücklich.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 10.0
  SAY #23409 /* ~Uhirs Augen werden vor Überraschung groß. "Es ist mein Glücksmesser!"
~ */
  IF ~~ THEN REPLY #23410 /* ~"Hier, nimm das Messer. Es gehört schließlich dir."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Uhir_1","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #23411 /* ~"Wenn du es wiederhaben möchtest - ich wäre unter Umständen zu einem Verkauf bereit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #23412 /* ~"Schönes Messer... ich werd's wohl behalten, Uhir. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Ich habe beschlossen, Uhirs "Glücksmesser" selbst zu behalten. Er schien darüber nicht sonderlich glücklich.~ */ EXIT
END
