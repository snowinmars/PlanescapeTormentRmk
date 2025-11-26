// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINAM~

IF ~  NumTimesTalkedTo(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46116 /* ~Dieser kleine Mann, der wie ein Gelehrter aussieht, macht einen nervösen Eindruck. Er mustert dich stirnrunzelnd von Kopf bis Fuß. "Seid gegrüßt. Ich bin Finam. Ich bitte um Verzeihung, aber ich mach mir nicht viel aus - geladenen oder *sonstigen* - Gästen. Falls ihr nichts Dringendes mit mir zu besprechen habt, bitte ich Euch höflich zu gehen."~ */
  IF ~~ THEN REPLY #46117 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #46118 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46119 /* ~Finam sieht stirnrunzelnd in deine Richtung. "Was verschafft mir die Ehre Eures erneuten Besuchs? Was wünscht Ihr diesmal?"~ */
  IF ~~ THEN REPLY #46120 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #46121 /* ~"Ach, gar nichts. Lebt wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #46122 /* ~"Ihr müßt wissen, daß ich Sprachgelehrter bin, mein Herr. Ich bin gerne bereit, Euch Fragen zu meinem Fach - dem Studium der Sprachen und verwandter Gebiete - zu beantworten, doch in anderen Dingen kann ich Euch nicht behiflich sein."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46123 /* ~Entfalte den Dodekaeder, bis eine Seite mit 'Schriftzeichen' erscheint. Frag ihn, ob er sie dir übersetzen kann.~ */ GOTO 3
  IF ~~ THEN REPLY #46124 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46125 /* ~Er nimmt den entfalteten Dodekaeder in die Hand und schaut ihn sich genau an. "Es handelt sich um eine seit langem tote Sprache, die so gut wie niemand kennt. Soviel ich weiß, kannte mein Vater sie. Er war ebenfalls Sprachgelehrter und damals vielleicht der einzige Mann in ganz Sigil, der sie verstand. Mir sind sie aus seinen Aufzeichnungen bekannt, aber ich kann sie nicht übersetzen."~ */
  IF ~~ THEN REPLY #46126 /* ~"Habt Ihr diese Aufzeichnungen noch?"~ */ GOTO 4
  IF ~~ THEN REPLY #46127 /* ~"Trotzdem danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46128 /* ~Finam schüttelt den Kopf. "Sie sind nutzlos, wenn Ihr etwas übersetzen müßt... Und die paar richtigen Bücher, die er über die Sprache hatte, sind meines Wissens ebenfalls zur selben Zeit verschwunden, als er ermordet wurde."~ */
  IF ~~ THEN REPLY #63620 /* ~"Ich würde sie trotzdem sehr gerne sehen...."~ */ GOTO 8
  IF ~~ THEN REPLY #46129 /* ~"Man hat Euren Vater ermordet?"~ */ GOTO 5
  IF ~~ THEN REPLY #46130 /* ~"Wie bedauerlich. Lebt wohl, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 8.3 11.0 12.3 13.0
  SAY #46131 /* ~Finam nickt. "Man hat ihn erdrosselt. Er war aus dem Haus gegangen, um einem Schüler Unterricht zu geben - er lehrte mehrere Sprachen, um sein Forschungsgehalt aufzubessern. Später fand man ihn tot in einem Nebenraum der Städtischen Festhalle. Der Mörder wurde nie gefaßt. Das war vielleicht vor fünfzig Jahren. Ich war damals noch ein Kind."~ */
  IF ~~ THEN REPLY #46132 /* ~"Er kannte die Sprache. Gut. Aber konnte er sie auch lehren?"~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #46133 /* ~"Ein Jammer. Lebt wohl, Finam."~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46134 /* ~"Sicher konnte er das. Und er würde es heute noch tun, wenn er noch am Leben wäre. Es heißt, er sei sogar ein sehr guter Lehrer gewesen." Finam seufzt traurig. "Ich habe seine Sprachbegabung geerbt, doch leider nicht seine Geduld mit anderen."~ */
  IF ~~ THEN REPLY #46135 /* ~"Ist er... in der Leichenhalle bestattet?"~ */ JOURNAL #39478 /* ~Ich hab mit dem Linguisten Finam über den seltsamen Text auf dem ausfaltbaren Dodekaeder gesprochen. Er meinte, sein Vater kannte die tote Sprache, in der der Text geschrieben sei; er sei jedoch vor langer Zeit von einem Unbekannten erwürgt worden. Die Urne mit der Asche des Vaters befindet sich nun in Finams Haus. Vielleicht gibt es einen Weg, irgendwie mit dem Geist von Finams Vater zu sprechen, da ich wohl keinen anderen finden werde, der diese seit langem ausgestorbene Sprache beherrscht.~ */ GOTO 7
  IF ~~ THEN REPLY #46136 /* ~"Lebt wohl, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46137 /* ~"Aber nein... Seine Asche wird hier aufbewahrt." Er zeigt auf eine Bronzeurne, die auf einem Schrank neben einem Strauß violetter Blumen steht. "Warum?" Ein ironisches Lächeln umspielt Finams Lippen. "Ihr seid ein Nekroskop, was? Sprecht mit den Toten?" Er runzelt plötzlich die Stirn. "Ich möchte nicht länger über diese Dinge sprechen. Ihr müßt mich entschuldigen, Herr... Lebt wohl."~ */
  IF ~~ THEN REPLY #46138 /* ~"Lebt wohl, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #49981 /* ~Finam seufzt verärgert. "Ich weiß gar nicht genau, wo sie jetzt sind, und außerdem such ich gerade etwas anderes - mein Forschungsjournal. Wenn ich es wiedergefunden hab, hab ich vielleicht Zeit, für Euch nach diesen Aufzeichnungen zu suchen."~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #49982 /* ~"Ist es vielleicht dieses Buch hier?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Ich hab Finam, dem Linguisten, sein Forschungsjournal zurückgebracht.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49983 /* ~"Ist es vielleicht dieses Buch hier?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Ich hab Finam, dem Linguisten, sein Forschungsjournal zurückgebracht.~ */ GOTO 10
  IF ~~ THEN REPLY #49984 /* ~"Dann such ich es für dich. Wo hast du es zuletzt gehabt?"~ */ DO ~SetGlobal("Finam","GLOBAL",1)
~ JOURNAL #49988 /* ~Ich hab mich bereiterklärt, das Forschungsjournal von Finam, dem Linguisten, wiederzufinden... als Lohn hoffe ich von ihm die Aufzeichnungen seines Vaters zu der Sprache auf dem Dodekaeder zu erhalten. Hört sich an, als ob er es irgendwo im Bordell zum Befriedigen Intellektueller Lüste gelassen hätte.~ */ GOTO 11
  IF ~~ THEN REPLY #49985 /* ~"Hast du da eben gesagt, daß dein Vater ermordet wurde?"~ */ GOTO 5
  IF ~~ THEN REPLY #49986 /* ~"Wie bedauerlich. Lebt wohl, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #49989 /* ~Finam zieht die Augenbrauen hoch. "Nun, ja, das ist es!" Er nimmt es von dir entgegen, und fängt dann an, in seinen Taschen zu kramen. "Also dann, hier... Die Aufzeichnungen meines Vaters. Jetzt sind wir quitt, oder? Gut. Ich muß jetzt meine Aufzeichnungen durchsehen. Also, wenn Ihr mich jetzt entschuldigen würdet..."~ */
  IF ~~ THEN REPLY #49990 /* ~"Danke Finam. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #49991 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 12.1
  SAY #49992 /* ~Finam zieht die Augenbrauen hoch. "Nun, ja, das ist es!" Er nimmt es von dir entgegen und fängt dann an, in seinen Taschen zu kramen. "Hmm... das ist komisch! Sie sind weg! Tut mir leid, aber es sieht so aus, als ob jemand die Aufzeichnungen meines Vaters mitgehen lassen hat. Ah, tja... so'n Pech! Ich muß jetzt meine Aufzeichnungen durchsehen. Also, wenn Ihr mich jetzt entschuldigen würdet..."~ */
  IF ~~ THEN REPLY #49993 /* ~"Mach dir darum keine Sorgen. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #49994 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 12.2
  SAY #49995 /* ~"Äh... nun ja... ich weiß nicht recht. Es könnte im... nun ja, vielleicht ist es irgendwie ins Bordell zum Befriedigen Intellektueller Lüste gelangt. Aber wie das geschehen sein könnte, weiß ich nicht." Er räuspert sich und schaut weg.~ */
  IF ~~ THEN REPLY #49997 /* ~"Ich schau da mal nach. Hast du da eben gesagt, daß dein Vater ermordet worden ist?"~ */ GOTO 5
  IF ~~ THEN REPLY #49996 /* ~"Dann seh ich da mal nach. Leb wohl."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #49998 /* ~Finam unterbricht seine Suche, um dich anzusehen. "Habt Ihr vielleicht schon mein Buch gefunden?"~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #50000 /* ~"Ist es vielleicht dieses Buch hier?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Ich hab Finam, dem Linguisten, sein Forschungsjournal zurückgebracht.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49999 /* ~"Ist es vielleicht dieses Buch hier?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Ich hab Finam, dem Linguisten, sein Forschungsjournal zurückgebracht.~ */ GOTO 10
  IF ~~ THEN REPLY #50001 /* ~"Nein. Wo hast du es doch gleich zuletzt gehabt?"~ */ GOTO 11
  IF ~~ THEN REPLY #50002 /* ~"Nein... Aber was hast du da eben vom Mord an deinem Vater gesagt?"~ */ GOTO 5
  IF ~~ THEN REPLY #50003 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #50004 /* ~Finam sieht dich etwas verärgert an. "Ich muß jetzt meine Aufzeichnungen durchsehen. Also, wenn Ihr mich jetzt entschuldigen würdet..."~ */
  IF ~~ THEN REPLY #50005 /* ~"Nur noch eine Frage. Du hast gesagt, daß dein Vater ermordet wurde?"~ */ GOTO 5
  IF ~~ THEN REPLY #50006 /* ~"Dann leb wohl."~ */ EXIT
END
