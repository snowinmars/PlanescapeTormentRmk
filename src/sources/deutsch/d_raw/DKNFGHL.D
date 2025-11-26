// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKNFGHL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKNFGHL~

IF ~  NumTimesTalkedTo(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 0 // from:
  SAY #23790 /* ~Quer über das Gesicht des Ghuls verläuft eine Schnittwunde, und eins seiner Augen ist vollständig zerstört. Obwohl die Wunde noch relativ frisch ist, scheint sie der nach Fäulnis riechenden Kreatur weder Schmerzen noch Unbehagen zu bereiten. Du entdeckst ein schmutziges Messer, daß in seinem Hosenbund steckt... In den Griff sind die Buchstaben 'UHIR' eingraviert.~ */
  IF ~~ THEN REPLY #23791 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23808 /* ~"Äh... könnte ich das Messer haben, daß da in deinem Gürtel steckt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23811 /* ~Laß den Ghul in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 10.0
  SAY #23812 /* ~Der Ghul kneift die Augen zusammen und knurrt dich an. Seine Zunge - die zwei Handlängen lang ist - kommt aus seinem Mund geringelt und leckt über seine aufgesprungenen Lippen.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23813 /* ~"Äh... könnte ich das Messer haben, daß da in deinem Gürtel steckt?"~ */ GOTO 5
  IF ~  HasItem("UhrKnf","KnfGhl")
!Global("Uhir","GLOBAL",2)
~ THEN REPLY #23814 /* ~"Bist du... Uhir?"~ */ GOTO 2
  IF ~~ THEN REPLY #23815 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #23816 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #23817 /* ~Der Ghul beäugt dich weiter hungrig. Er ballt und öffnet seine bekrallten Fäuste, als ob er gegen den Drang ankämpft, sich auf dich zu stürzen und dich zu verspeisen.~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23818 /* ~"Äh... könnte ich das Messer haben, daß da in deinem Gürtel steckt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23819 /* ~"Beruhige dich, und beantworte meine Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #23820 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #23821 /* ~Der Ghul zischt dich an: "Schweig, Fleisch! Sei ruhig! Ich hör kein Fleischding an! Ich hör nur dein Herz, Blut in den Venen des Fleischdings, süßes, leckeres Blut... schmackhaftes, reichhaltiges Herzfleisch..." Geifer läuft aus seinem Maul und platscht auf die staubigen Fliesen. "NICHT REDEN!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf","KnfGhl")
~ THEN REPLY #23822 /* ~"Äh... könnte ich das Messer haben, daß da in deinem Gürtel steckt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23823 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
HasItem("UhrKnf",Myself)
~ THEN BEGIN 4 // from:
  SAY #23824 /* ~Quer über das Gesicht des Ghuls verläuft eine Schnittwunde, und eins seiner Augen ist vollständig zerstört. Du entdeckst ein schmutziges Messer, das in seinem Hosenbund steckt. Der Ghul zischt dich an, als du näherkommst: "Hau ab! Geh weg! Ich *sprech* nicht mit Fleischzeugs, ich *hör* keinem Fleisch zu! GEH!"~ */
  IF ~  Global("Uhir","GLOBAL",2)
Global("DN_Knife","AR1500",0)
HasItem("UhrKnf",Myself)
~ THEN REPLY #23825 /* ~"Äh... könnte ich das Messer haben, daß da in deinem Gürtel steckt?"~ */ GOTO 5
  IF ~~ THEN REPLY #23826 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.0 2.0 3.0 4.0
  SAY #23827 /* ~Der Ghul schaut zum Messer in seinem Hosenbund hinunter und kratzt sich am Kopf, als ob er sich fragt, wie es wohl da hingekommen sein mag. Schließlich wendet er sich dir zu und grinst dich listig mit entblößten Zähnen an... "Fleisch will mein Messer? Fleisch treibt Handel, ja..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23828 /* ~"Wie wär's mit diesen Rattenschwänzen?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23829 /* ~"Wie wär's mit diesen Rattenschwänzen?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23830 /* ~"Ich könnte dir Kupfermünzen geben..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23831 /* ~"Aber ich hab' keine Kupfermünzen, die ich dir geben könnte."~ */ GOTO 6
  IF ~~ THEN REPLY #23832 /* ~"Gib's her, Ghul... bevor ich's dir wegnehmen muß."~ */ GOTO 9
  IF ~~ THEN REPLY #23833 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.3 9.2 9.3
  SAY #23834 /* ~Der Ghul schüttelt den Kopf und zeigt dann auf seinen Mund. "Nein, nein... Essen, Fleisch, ja..." Seine lange graue Zunge hängt heraus und Unmengen von Speichel rinnen ihm aus dem Mund.~ */
  IF ~~ THEN REPLY #23835 /* ~"Ich komme zurück, wenn ich was zu essen für dich finde."~ */ JOURNAL #23836 /* ~Ich habe den Ghul gefunden, der Uhirs Messer hat. Er möchte Nahrung im Tausch gegen die Klinge... Vielleicht finde ich ja hier unten etwas Eßbares, das ich töten kann, zum Beispiel eine Ratte.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 9.0
  SAY #23837 /* ~Der Ghul betrachtet sie kritisch. "Lecker, ja, aber klein. Mehr, Fleisch... mehr! Großer Hunger!"~ */
  IF ~~ THEN REPLY #23838 /* ~"Dann muß ich eben beim nächsten Mal mehr mitbringen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 9.1
  SAY #23839 /* ~"Ja, ja!" Der Ghul schnappt sie gierig und verschlingt sie. Als er seine Klauenfinger abgeleckt hat, wirft er dir Uhirs Messer hin.~ */
  IF ~~ THEN REPLY #23840 /* ~"Äh... danke. Leb wohl."~ */ DO ~SetGlobal("DN_Knife","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.4
  SAY #23841 /* ~"Hssst! Du Fleisch, leckres, rotes, saftiges Fleisch - nicht drohen! Fleisch will Messer? Fleisch macht Handel!"~ */
  IF ~  NumItemsPartyGT("Tail",0)
NumItemsPartyLT("Tail",6)
~ THEN REPLY #23842 /* ~"Wie wär's mit diesen Rattenschwänzen?"~ */ GOTO 7
  IF ~  NumItemsPartyGT("Tail",5)
~ THEN REPLY #23843 /* ~"Wie wär's mit diesen Rattenschwänzen?"~ */ DO ~GiveItem("UhrKnf",Protagonist)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
DestroyPartyItem("Tail",FALSE)
AddexperienceParty(600)
~ GOTO 8
  IF ~  PartyGoldGT(0)
~ THEN REPLY #23845 /* ~"Ich könnte dir Kupfermünzen geben..."~ */ GOTO 6
  IF ~  PartyGold(0)
~ THEN REPLY #23846 /* ~"Aber ich hab' keine Kupfermünzen, die ich dir geben könnte."~ */ GOTO 6
  IF ~~ THEN REPLY #23847 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 10 // from:
  SAY #23848 /* ~Quer über das Gesicht des Ghuls verläuft eine Schnittwunde, und eins seiner Augen ist vollständig zerstört. Obwohl die Wunde noch relativ frisch ist, scheint sie der nach Fäulnis riechenden Kreatur keine Schmerzen und kein Unbehagen zu bereiten.~ */
  IF ~~ THEN REPLY #23849 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #23850 /* ~Laß den Ghul in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!HasItem("UhrKnf",Myself)
~ THEN BEGIN 11 // from:
  SAY #23851 /* ~Quer über das Gesicht des Ghuls verläuft eine Schnittwunde, und eins seiner Augen ist vollständig zerstört. Der Ghul zischt dich an, als du näherkommst: "Hau ab! Geh weg! Ich *spreche* nicht mit Fleischzeugs, ich *höre* keinem Fleisch zu! GEH!"~ */
  IF ~~ THEN REPLY #23852 /* ~Geh weg.~ */ EXIT
END
