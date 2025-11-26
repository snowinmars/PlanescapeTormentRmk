// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELDOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELDOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #47128 /* ~Er verzieht keine Miene, doch hinter seinen Worten scheint sich heißer Zorn zu verbergen. "Du hast unsere Ideale verraten. Du hast hier nichts zu suchen. Unsere Wachen werden dich hinausbegleiten. Also, gehst du freiwillig?"~ */
  IF ~~ THEN REPLY #47129 /* ~"Ich bitte um Verzeihung und möchte Mitglied der Gläubigen der Quelle werden."~ */ GOTO 1
  IF ~~ THEN REPLY #47130 /* ~"Ich gehe freiwillig."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47131 /* ~"Du mußt mich hier schon fortjagen."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47132 /* ~"Jetzt, da du unseren Überzeugungen den Rücken gekehrst hast, gibt es kein Zurück mehr. Du kannst dies als eine weitere Prüfung ansehen, wenn du willst, aber wir werden uns dir weder öffnen noch dir bei deiner Suche nach Erleuchtung behilflich sein. Also... gehst du freiwillig, oder soll Blut vergossen werden?"~ */
  IF ~~ THEN REPLY #47133 /* ~"Ich gehe freiwillig."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47134 /* ~"Du mußt mich hier schon fortjagen."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #47135 /* ~"Ich grüße dich, Kamerad! Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #47136 /* ~"Ich hätte gern ein bißchen Heilung, wenn möglich."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47137 /* ~"Ich müßte ein paar Gegenstände kaufen."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47138 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47139 /* ~"Ich würde gern das geheime Projekt sehen."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47140 /* ~"Ich hab das Zeichen verloren, um in den Raum für das geheime Projekt zu gelangen."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47143 /* ~"Bedai-Lihn hat mich beauftragt, die Maschine zu sabotieren."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47144 /* ~"Bedai-Lihn ist diejenige, die die Maschine zerstört hat."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47145 /* ~"Bedai-Lihn ist diejenige, die die Maschine zerstört hat."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47146 /* ~"Bedai-Lihn hat mich beauftragt, die Maschine zu sabotieren. Ich hab sie abgestellt, aber ich hab mir gedacht, daß ich es dir sagen sollte."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47147 /* ~"Bedai-Lihn hat mich beauftragt, Sandoz zu ermorden. Ich finde, du solltest das wissen."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47148 /* ~"Bedai-Lihn hat mich beauftragt, Sandoz zu ermorden. Ich finde, du solltest das wissen."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47149 /* ~"Bedai-Lihn ist diejenige, die Sandoz ermordet hat."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47150 /* ~"Bedai-Lihn ist diejenige, die Sandoz ermordet hat."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47151 /* ~"Ich habe eine Botschaft für dich von Goldspore, dem Auktionator."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51167 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 9.3
  SAY #47152 /* ~"Du hast dich als vertrauenswürdig erwiesen. Hier! Nimm dies!" Er drückt dir ein mit dem Symbol der Göttermenschen verziertes Zeichen in die Hand. "Verlier es nicht. Ich fürchte, ich kann es dir nicht ersetzen, wenn du's verlierst. Paß also gut darauf auf. Kann ich sonst noch was für dich tun?"~ */
  IF ~~ THEN REPLY #47153 /* ~"Ja, ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #47154 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 9.4
  SAY #47155 /* ~"Ich bedaure, aber kann dir kein anderes geben. Ich hab dich doch gewarnt, daß ich es nicht ersetzen kann, oder?" Er seufzt."Kann ich sonst noch was für dich tun?"~ */
  IF ~~ THEN REPLY #47156 /* ~"Beantworte mir nur noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #47157 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 2.9 2.10 2.12 9.5 9.7 9.8 9.9 9.10 9.12
  SAY #47158 /* ~Sein freundliches Gesicht nimmt harte und strenge Züge an. "So, so! Dann nehmen wir sie fest und finden die Wahrheit heraus. Und wenn dem so sein sollte... dann richten wir sie hin. Entschuldige, aber ich hab zu tun."~ */
  IF ~~ THEN REPLY #47159 /* ~"Laß dir Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47160 /* ~Als Keldor wiederkommt, ist sein Gesichtsausdruck gelöst. "Dank deiner Informationen konnte eine gefährliche Verbrecherin festgenommen werden. Wir sind dadurch mit dem Harmonium und den Gnadentötern gleichgezogen, und das verdanken wir dir. Du hast unseren Dank, und zudem auch meinen ganz persönlichen Dank dafür, daß ich recht hatte, in dir eine gute Wahl für einen Göttermenschen zu sehen."~ */
  IF ~~ THEN REPLY #47161 /* ~"Kein Problem. Ich hätte da noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #47162 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.6 2.11 9.6 9.11
  SAY #47163 /* ~Sein freundliches Gesicht nimmt harte und strenge Züge an. "So, so! Dann nehmen wir sie fest und finden die Wahrheit heraus. Und wenn dem so sein sollte... dann richten wir sie hin. Entschuldige, aber ich hab zu tun."~ */
  IF ~~ THEN REPLY #47164 /* ~"Laß dir Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47165 /* ~Als er wiederkommt, ist sein Gesichtsausdruck noch grimmiger. "Sie ist weg! Niemand hat gesehen, wie sie entkommen ist, und niemand weiß, wohin sie geflüchtet ist. Aber du hast meinen Dank dafür, daß du uns über ihren Verrat aufgeklärt hast. Sei versichert, daß ihr letztes Stündlein geschlagen hat, wenn sie sich nochmal hier blicken läßt. Darauf gebe ich dir mein Wort."~ */
  IF ~~ THEN REPLY #47166 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #47167 /* ~"Wenn ich sie sehe, werde ich selbst dafür sorgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.0 6.0 8.0 11.0 55.0
  SAY #47168 /* ~"Mehr Fragen? Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #47169 /* ~"Ich hätte gern ein bißchen Heilung, wenn möglich."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47170 /* ~"Ich müßte ein paar Gegenstände kaufen."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47171 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47172 /* ~"Ich würde gern das geheime Projekt sehen."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47173 /* ~"Ich hab das Zeichen verloren, um in den Raum für das geheime Projekt zu gelangen."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47174 /* ~"Bedai-Lihn hat mich beauftragt, die Maschine zu sabotieren."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47175 /* ~"Bedai-Lihn ist diejenige, die die Maschine zerstört hat."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47176 /* ~"Bedai-Lihn ist diejenige, die die Maschine zerstört hat."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47177 /* ~"Bedai-Lihn hat mich beauftragt, die Maschine zu sabotieren. Ich hab sie abgestellt, aber ich hab mir gedacht, ich sollte es dir sagen."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47178 /* ~"Bedai-Lihn hat mich beauftragt, Sandoz zu ermorden. Ich finde, du solltest das wissen."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47179 /* ~"Bedai-Lihn hat mich beauftragt, Sandoz zu ermorden. Ich finde, du solltest das wissen."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47180 /* ~"Bedai-Lihn ist diejenige, die Sandoz ermordet hat."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47181 /* ~"Bedai-Lihn ist diejenige, die Sandoz ermordet hat."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47182 /* ~"Ich habe eine Botschaft für dich von Goldspore, dem Auktionator."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51168 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",5)
~ THEN BEGIN 10 // from: 12.12
  SAY #47183 /* ~"Du hast alle Prüfungen bestanden, die wir dir auferlegt haben, Suchender. Es bleibt nur noch eine. Schwörst du den Eid der Göttermenschen, und schließt du dich uns an?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47184 /* ~"Das werde ich."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47185 /* ~"Das werde ich."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47186 /* ~"Das werde ich."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66311 /* ~"Das werde ich."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66312 /* ~"Das werde ich."~ */ GOTO 56
  IF ~~ THEN REPLY #66313 /* ~"Noch nicht. Ich hätte da erst noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #66314 /* ~"Noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 51.0 52.0 56.0 56.1 56.2 56.3 56.4
  SAY #47187 /* ~Der Eid: "Kummer und Sorgen im Leben sind Prüfungen. Alle Situationen, in die ich gerate, sind Lektionen. Durch Schmerz verstärkt das Multiversum eine Lektion. Was ich an anderen am meisten hasse ist ein Spiegelbild dessen, was ich an mir selbst am meisten hasse. Mein Handeln soll mein Potential aktivieren und anderen beim Erreichen ihrer Ziele helfen. Ich werde daran denken, daß der göttliche Funke in allem gegenwärtig ist. Ich schwöre, den Gläubigen der Quelle und ihren Zielen treu ergeben zu sein und ihnen niemals zu entsagen." Du schwörst den Eid und Keldor lächelt. "Willkommen bei den Göttermenschen, mein Freund. Brauchst du noch etwas von mir?"~ */
  IF ~~ THEN REPLY #47188 /* ~"Ich hätte da ein paar Fragen..."~ */ JOURNAL #46638 /* ~Ich bin den Gläubigen der Quelle beigetreten und bin jetzt offiziell ein Göttermensch. Mein Schwur lautete folgendermaßen: "Die Sorgen des Lebens sind ein Test. Es gibt nichts, was mir widerfährt, das keine Lektion wäre. Schmerz ist die Art des Multiversums, eine Lektion zu erteilen. Was ich an anderen am meisten hasse, ist eine Reflexion dessen, was ich an mir selbst am meisten hasse. Ich werde handeln, um mein Potential zu aktivieren und um anderen zu helfen, ihre Ziele zu erreichen. Ich werde daran denken, daß in allem ein Funken von Göttlichkeit vorhanden ist. Ich schwöre, daß ich den Gäubigen der Quelle und ihren Zielen Loyalität erweisen und sie nie im Stich lassen werde."~ */ GOTO 9
  IF ~~ THEN REPLY #47189 /* ~"Nicht jetzt. Leb wohl."~ */ JOURNAL #46638 /* ~Ich bin den Gläubigen der Quelle beigetreten und bin jetzt offiziell ein Göttermensch. Mein Schwur lautete folgendermaßen: "Die Sorgen des Lebens sind ein Test. Es gibt nichts, was mir widerfährt, das keine Lektion wäre. Schmerz ist die Art des Multiversums, eine Lektion zu erteilen. Was ich an anderen am meisten hasse, ist eine Reflexion dessen, was ich an mir selbst am meisten hasse. Ich werde handeln, um mein Potential zu aktivieren und um anderen zu helfen, ihre Ziele zu erreichen. Ich werde daran denken, daß in allem ein Funken von Göttlichkeit vorhanden ist. Ich schwöre, daß ich den Gäubigen der Quelle und ihren Zielen Loyalität erweisen und sie nie im Stich lassen werde."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.5 13.0 14.0 16.0 18.0 19.0 20.2 21.0 22.0 23.1 24.10 25.10 26.0 27.2 28.2 29.2 30.0 31.3 32.1 33.1 34.1 35.1 36.1 37.2 38.1 39.4 43.0 44.0 47.0 50.0 51.5 52.5 53.0 54.0 55.1
  SAY #47190 /* ~"Was willst du wissen?"~ */
  IF ~~ THEN REPLY #47191 /* ~"Wer bist du?"~ */ GOTO 23
  IF ~~ THEN REPLY #47192 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47193 /* ~"Was sind die Vorteile einer Mitgliedschaft bei den Göttermenschen?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #47194 /* ~"Erzähl mir mehr über deinen Bund."~ */ GOTO 25
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47195 /* ~"Was kannst du mir über deinen Bund erzählen?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47196 /* ~"Ich möchte Mitglied bei den Göttermenschen werden."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47197 /* ~"Ich möchte Mitglied bei den Göttermenschen werden."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47198 /* ~"Ich möchte Mitglied bei den Göttermenschen werden."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47199 /* ~"Ich möchte Mitglied bei den Göttermenschen werden."~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #47200 /* ~"Ich würde dir gern ein paar Fragen zur Schmiede stellen."~ */ GOTO 39
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #47201 /* ~"Ich wollte mit dir über die Ermittlung in dem Mordfall sprechen."~ */ GOTO 44
  IF ~  Global("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #47202 /* ~"Ich wollte mit dir über Sandoz sprechen."~ */ GOTO 50
  IF ~  Global("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #47203 /* ~"Ich möchte den Eid der Göttermenschen schwören."~ */ GOTO 10
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47204 /* ~"Ich würde gern das geheime Projekt sehen."~ */ GOTO 13
  IF ~  Global("Token_A","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47205 /* ~"Ich hab das Zeichen verloren, um in den Raum für das geheime Projekt zu gelangen."~ */ GOTO 14
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47206 /* ~"Bedai-Lihn hat mich beauftragt, die Maschine zu sabotieren."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 15
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47207 /* ~"Bedai-Lihn ist diejenige, die die Maschine zerstört hat."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 17
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47208 /* ~"Bedai-Lihn ist diejenige, die die Maschine zerstört hat."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 15
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47209 /* ~"Bedai-Lihn hat mich beauftragt, die Maschine zu sabotieren. Ich hab sie abgestellt, aber ich hab mir gedacht, daß ich es dir sagen sollte."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47210 /* ~"Bedai-Lihn hat mich beauftragt, Sandoz zu ermorden. Ich finde, du solltest das wissen."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 15
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47211 /* ~"Bedai-Lihn hat mich beauftragt, Sandoz zu ermorden. Ich finde, du solltest das wissen."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47212 /* ~"Bedai-Lihn ist diejenige, die Sandoz ermordet hat."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 17
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47213 /* ~"Bedai-Lihn ist diejenige, die Sandoz ermordet hat."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Ich habe Bedai-Lihn wegen ihrer Anarchisten-Sympathien und ihrer Versuche, die Operation der Gießerei zu stören, an Keldor ausgeliefert. Keldor war zufrieden.~ */ GOTO 15
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #51169 /* ~"Ich habe eine Botschaft für dich von Goldspore, dem Auktionator."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #51170 /* ~"Nichts, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.13
  SAY #47215 /* ~Er lächelt. "Mein Freund, das kann ich dir erst geben, wenn du dich als Freund der Göttermenschen erwiesen hast."~ */
  IF ~~ THEN REPLY #47216 /* ~"Dann beantworte mir noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47217 /* ~"Vielleicht später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.14
  SAY #47218 /* ~"Ich bedaure es, daß ich Euch keinen anderen geben kann". Er seufzt. "Kann ich noch irgend etwas für Euch tun?"~ */
  IF ~~ THEN REPLY #47219 /* ~"Beantworte mir nur noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47220 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.15 12.17 12.18 12.19 12.20 12.22
  SAY #47221 /* ~Sein freundliches Gesicht nimmt harte und strenge Züge an. "So, so! Dann nehmen wir sie fest und finden die Wahrheit heraus. Und wenn dem so sein sollte... dann richten wir sie hin. Entschuldige, aber ich hab zu tun."~ */
  IF ~~ THEN REPLY #47222 /* ~"Laß dir Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47223 /* ~Als Keldor wiederkommt, ist sein Gesichtsausdruck gelöst. "Dank deiner Informationen konnte eine gefährliche Verbrecherin festgenommen werden. Wir sind dadurch mit dem Harmonium und den Gnadentötern gleichgezogen, und das verdanken wir dir. Du hast unseren Dank, und zudem auch meinen ganz persönlichen Dank dafür, daß ich recht hatte, in dir eine gute Wahl für einen Göttermenschen zu sehen."~ */
  IF ~~ THEN REPLY #47224 /* ~"Kein Problem. Ich hätte da noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47225 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.16 12.21
  SAY #47226 /* ~Sein freundliches Gesicht nimmt harte und strenge Züge an. "So, so! Dann nehmen wir sie fest und finden die Wahrheit heraus. Und wenn dem so sein sollte... dann richten wir sie hin. Entschuldige, aber ich hab zu tun."~ */
  IF ~~ THEN REPLY #47227 /* ~"Laß dir Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #47228 /* ~Als er wiederkommt, ist sein Gesichtsausdruck noch grimmiger. "Sie ist weg! Niemand hat gesehen, wie sie entkommen ist, und niemand weiß, wohin sie geflüchtet ist. Aber du hast meinen Dank dafür, daß du uns über ihren Verrat aufgeklärt hast. Sei versichert, daß ihr letztes Stündlein geschlagen hat, wenn sie sich nochmal hier blicken läßt. Darauf gebe ich dir mein Wort."~ */
  IF ~~ THEN REPLY #47229 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47230 /* ~"Wenn ich sie sehe, werde ich selbst dafür sorgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2
  SAY #47231 /* ~"Neben der angenehmen Gesellschaft der Leute hier," er lächelt, "erhältst du fast uneingeschränkten Zugang zu allen Einrichtungen und Vorräten. Wir haben Zaubersprüche, Gegenstände und Ruheplätze. Einiges davon ist speziell auf unseren Bund abgestimmt. Einiges findet man in ganz Sigil. Doch für unsere Mitglieder ist alles viel billiger."~ */
  IF ~~ THEN REPLY #47232 /* ~"Okay. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47233 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY #47234 /* ~"Das ist die Große Gießerei, Ort der Gläubigen der Quelle, die auch Göttermenschen genannt werden. Hier stellen wir Gegenstände her, die in alle Ebenen verschickt werden - wir genießen in vielen Welten einen guten Ruf. Hier arbeiten nur die Besten. Es heißt, daß unsere Schmiede es sogar mit denen vom Berg Clangeddin aufnehmen können. Ich persönlich glaube nicht, daß wir so gut sind - aber wir sind NAH dran."~ */
  IF ~~ THEN REPLY #47235 /* ~"Könnt ihr noch zusätzliche Aufträge annehmen?"~ */ GOTO 21
  IF ~~ THEN REPLY #47236 /* ~"Was kannst du mir über die Leute hier erzählen?"~ */ GOTO 22
  IF ~~ THEN REPLY #47237 /* ~"Verstehe. Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #47238 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #47239 /* ~"Das können wir leider nicht, mein Freund. Wir sind gerade an einen langfristigen Vertrag gebunden, der einen Großteil unserer Ressourcen bindet. Vielleicht, wenn wir damit fertig sind... in ein paar Jahren." Er zuckt mit den Achseln. "Tut mir leid."~ */
  IF ~~ THEN REPLY #47240 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #47241 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #47242 /* ~"Wir haben Leute aus allen Bereichen hier. Die meisten von ihnen sind Schmiede und Arbeiter, die den Laden hier am Laufen halten. Es gibt hier außerdem noch ein paar Ingenieure, die Unglaubliches mit dem Gefüge der Realität anstellen. Frag Nihil Xander irgendwann mal nach seinem Traumerzeuger."~ */
  IF ~~ THEN REPLY #47243 /* ~"Mach ich vielleicht. Ich hätte da noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47244 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #47245 /* ~Er lächelt breit. "Mein Freund, ich bin Keldor von Durian, eines der Faktotums der Göttermenschen und habe namentlich die Leitung über diesen Ort, während unsere eigentlichen hohen Tiere in Klausur gegangen sind."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47246 /* ~"Was kannst du mir über deinen Bund erzählen?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #47247 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47248 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.4 23.0
  SAY #47249 /* ~Er lächelt, und auf seinem Gesicht spielen zahllose Fältchen. "Was möchtest du über uns wissen?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47250 /* ~"Wie kann ich Mitglied werden?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47251 /* ~"Wie kann ich Mitglied werden?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47252 /* ~"Wie kann ich Mitglied werden?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47253 /* ~"Wie kann ich Mitglied werden?"~ */ GOTO 29
  IF ~~ THEN REPLY #47254 /* ~"Woran glaubt dieser Bund?"~ */ GOTO 31
  IF ~~ THEN REPLY #47255 /* ~"Erzähl mir was über die Geschichte des Bundes."~ */ GOTO 32
  IF ~~ THEN REPLY #47256 /* ~"Was bringt es mir, wenn ich Mitglied des Bundes bin?"~ */ GOTO 33
  IF ~~ THEN REPLY #47257 /* ~"Welche Feinde hat der Bund?"~ */ GOTO 34
  IF ~~ THEN REPLY #47258 /* ~"Was macht ihr hier überhaupt?"~ */ GOTO 35
  IF ~~ THEN REPLY #47259 /* ~"Woher kommt Euer Name?"~ */ GOTO 36
  IF ~~ THEN REPLY #47260 /* ~"Im Moment nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47261 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.3 27.1 28.1 29.1 31.2 32.0 33.0 34.0 35.0 36.0 37.1 38.0
  SAY #47262 /* ~"Gern. Was wolltest du wissen?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47263 /* ~"Wie kann ich Mitglied werden?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47264 /* ~"Wie kann ich Mitglied werden?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47265 /* ~"Wie kann ich Mitglied werden?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47266 /* ~"Wie kann ich Mitglied werden?"~ */ GOTO 29
  IF ~~ THEN REPLY #47267 /* ~"Woran glaubt dieser Bund?"~ */ GOTO 31
  IF ~~ THEN REPLY #47268 /* ~"Erzähl mir was über die Geschichte des Bundes."~ */ GOTO 32
  IF ~~ THEN REPLY #47269 /* ~"Was bringt es mir, wenn ich Mitglied des Bundes bin?"~ */ GOTO 33
  IF ~~ THEN REPLY #47270 /* ~"Welche Feinde hat der Bund?"~ */ GOTO 34
  IF ~~ THEN REPLY #47271 /* ~"Was macht ihr hier überhaupt?"~ */ GOTO 35
  IF ~~ THEN REPLY #47272 /* ~"Woher kommt Euer Name?"~ */ GOTO 36
  IF ~~ THEN REPLY #47273 /* ~"Im Moment nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #47274 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.5 24.0 25.0 27.0 28.0 29.0
  SAY #47275 /* ~"Wenn Ihr Euch den Gläubigen der Quelle anschließen wollt, müßt Ihr drei Aufgaben lösen. Die erste Aufgabe ist dies: Ihr müßt zur Schmiede gehen und ein Objekt erschaffen. Dies wird zeigen, daß Ihr in der Lage seid, die Möglichkeiten zu sehen, die selbst in einem einfachen Klumpen Eisen schlummern, und daß Ihr in der Lage seid, etwas hervorzubringen, das den Prüfungen der Zeit standhält. Dadurch wird Eure Vorstellungskraft und Eure Fähigkeit geprüft, aus dem Möglichen Tatsächliches zu machen. Redet mit Alissa, dem Gießereiaufseher in der Hauptgießerei, um zu erfahren, wie alles funktioniert."~ */
  IF ~~ THEN REPLY #47276 /* ~"Ich hätte da noch ein paar Fragen."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Ich bin auf dem Wege, ein Göttermensch zu werden. Ich soll einen Schmied in der Großen Gießerei finden und mir von ihm die Schmiede erklären lassen, damit ich einen Gegenstand schmieden kann. Damit soll ich beweisen, daß ich selbst in einem kalten Klumpen Fels seinen verborgenen Wert sehen kann. Sollte ja nicht so schwer sein.~ */ GOTO 12
  IF ~~ THEN REPLY #47277 /* ~"Mach ich. Leb wohl."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Ich bin auf dem Wege, ein Göttermensch zu werden. Ich soll einen Schmied in der Großen Gießerei finden und mir von ihm die Schmiede erklären lassen, damit ich einen Gegenstand schmieden kann. Damit soll ich beweisen, daß ich selbst in einem kalten Klumpen Fels seinen verborgenen Wert sehen kann. Sollte ja nicht so schwer sein.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.6 24.1 25.1
  SAY #47278 /* ~Ein vielsagendes Lächeln zeigt sich auf seinem Gesicht. "Nun, zuerst mußt du deine Mitgliedschaft bei den Staubmenschen aufgeben."~ */
  IF ~~ THEN REPLY #47279 /* ~"Also gut. Werd ich machen. Was muß ich tun?"~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47280 /* ~"Ich bin mir nicht sicher, ob ich dazu bereit bin. Beantworte mir noch ein paar Fragen zu deinem Bund, ja?"~ */ GOTO 25
  IF ~~ THEN REPLY #47281 /* ~"Noch nicht. Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund."~ */ GOTO 12
  IF ~~ THEN REPLY #47282 /* ~"Noch nicht, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.7 24.2 25.2
  SAY #47283 /* ~Ein vielsagendes Lächeln zeigt sich auf seinem Gesicht. "Nun, zuerst mußt du deine Mitgliedschaft bei den Sinnsaten aufgeben."~ */
  IF ~~ THEN REPLY #47284 /* ~"Also gut. Werd ich machen. Was muß ich tun?"~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47285 /* ~"Ich bin mir nicht sicher, ob ich dazu bereit bin. Beantworte mir noch ein paar Fragen zu deinem Bund, ja?"~ */ GOTO 25
  IF ~~ THEN REPLY #47286 /* ~"Noch nicht. Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund."~ */ GOTO 12
  IF ~~ THEN REPLY #47287 /* ~"Noch nicht, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 12.8 24.3 25.3
  SAY #47288 /* ~Ein vielsagendes Lächeln zeigt sich auf seinem Gesicht. "Nun, zuerst mußt du deine Mitgliedschaft bei den Xaositekten aufgeben."~ */
  IF ~~ THEN REPLY #47289 /* ~"Also gut. Werd ich machen. Was muß ich tun?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47290 /* ~"Ich bin mir nicht sicher, ob ich dazu bereit bin. Beantworte mir noch ein paar Fragen zu deinem Bund, ja?"~ */ GOTO 25
  IF ~~ THEN REPLY #47291 /* ~"Noch nicht. Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund."~ */ GOTO 12
  IF ~~ THEN REPLY #47292 /* ~"Noch nicht, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 39.0
  SAY #47293 /* ~"Jeder der Schmiede müßte dir weiterhelfen können."~ */
  IF ~~ THEN REPLY #47294 /* ~"Gut. Ich hätte da noch ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #47295 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4 25.4
  SAY #47296 /* ~"Wir glauben, daß das Universum eine riesige Prüfanstalt ist, ein Ort, an dem wir uns in einer Reihe von Prüfungen bewähren. Diese Kette von Prüfungen reißt während deines gesamten Lebens, während all deiner Leben nicht ab. Jeden Tag kann jede Handlung möglicherweise eine Prüfung für dich darstellen, und wie du im nächsten Leben belohnt wirst, hängt davon ab, wie gut du deine Lektionen in diesem Leben lernst. Wir glauben, daß der Körper aus Erfahrung lernt... und daß sich die Erfahrung durch deine Leben zieht und aus dir etwas Größeres macht als nur ein einziges Leben."~ */
  IF ~~ THEN REPLY #47297 /* ~"Was hat das Ganze für einen Sinn?"~ */ GOTO 37
  IF ~~ THEN REPLY #47298 /* ~"Leuchtet soweit ein. Erzähl weiter."~ */ GOTO 38
  IF ~~ THEN REPLY #47299 /* ~"Gut... Noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47300 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47301 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.5 25.5
  SAY #47302 /* ~"Es wird gemeinhin angenommen, daß wir von Perrine gegründet worden sind, und zwar vor dem Großen Aufruhr, als aus allen Bünden insgesamt 15 wurden. Während des Aufruhrs verdichtete Augy von Faunel die Überzeugungen des Bundes und machte sie zu dem, was sie heute sind; sie war tausendmal wiedergeboren worden und konnte sich an *jede einzelne* ihrer Wiedergeburten erinnern. Sie lehrte uns, wie wir mit unserer Intuition umgehen sollen und führte uns in eine neue Ära. Diese zwei waren die wichtigsten Vertreter unseres Bundes... Es gibt noch viel mehr Geschichten über uns, aber dies sind die wichtigsten Fakten."~ */
  IF ~~ THEN REPLY #47303 /* ~"Gut... Ich hätte da noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47304 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47305 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.6 25.6
  SAY #47306 /* ~"Nun, neben dem Zugang zu unserer ausgezeichneten Gießerei, Unterkunft und Verpflegung für dich und deine Freunde, besonderen Gegenständen und Zaubersprüchen sowie einem besseren Eindruck, den du bei den Leuten auf der Straße hinterläßt, haben wir eigentlich nicht viel zu bieten. Wenn du allerdings vorhast, nur der Vorteile wegen bei uns Mitglied zu werden, dann müßte ich dir davon abraten."~ */
  IF ~~ THEN REPLY #47331 /* ~"Gut... Ich hätte da noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47332 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47333 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 24.7 25.7
  SAY #47334 /* ~"Wir haben an sich keine Feinde. Es gibt jedoch einige, die unseren Überzeugungen entgegenstehen. Die Öde Ränke spottet über die Vorstellung, daß wir uns zu etwas Perfekterem entwickeln. Ich finde, wenn sie nicht glauben, daß da etwas dran ist, könnten sie es hinter sich bringen... wie auch die Staubmenschen. Die Staubmenschen halten das Leben für eine Illusion, die auf den Großen Tod vorbereitet, während unser Glaube die Sache des Lebens verfechtet. Sie fördern den Tod, wir feiern das Leben. Kann es einen größeren Gegensatz geben?"~ */
  IF ~~ THEN REPLY #47335 /* ~"Gut... Ich hätte da noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47336 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47337 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 24.8 25.8
  SAY #47338 /* ~"Nun, wir leiten die Große Gießerei. Wir leiten auch das Haus der Herolde, wo wir Leute ausbilden, die angehende Mächte zu sein scheinen... Knochenbrecher, die irgendeine besondere Fähigkeit bewiesen haben, die sie von normalen Sterblichen unterscheidet. Manche sagen, wir machen das, weil wir eine Macht auf unserer Seite haben wollen, aber die Wahrheit ist, daß wir es machen, weil wir glauben, daß es auch Teil unserer Prüfungen ist. Wir tun unser Bestes, um sicherzustellen, daß jedes Wesen sich seiner Verantwortung stellt - wir wollen sehen, daß das Multiversum vorankommt."~ */
  IF ~~ THEN REPLY #47339 /* ~"Gut... Ich hätte da noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47340 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47341 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 24.9 25.9
  SAY #47342 /* ~"Eine gute Frage. Unser wahrer Name lautet Gläubige der Quelle, denn wir glauben daran, daß alles Leben einer reinen Urquelle entspringt. Weil wir aber glauben, daß alle Wesen das Potential für Göttlichkeit in sich tragen, ist es nur natürlich, daß wir mit Spitznamen die Göttermenschen genannt werden."~ */
  IF ~~ THEN REPLY #47343 /* ~"Gut... Ich hätte da noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47344 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47345 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.0
  SAY #47346 /* ~"Wir sind nicht ganz sicher. Schließlich sind wir noch nicht am Ende angelangt, nicht wahr? Die beste Vorstellung für uns ist die, daß wir uns durch unser Leben durchwursteln, nach den richtigen Antworten suchen und schließlich zur Göttlichkeit und weiter aufsteigen. Was uns da erwartet, weiß keiner."~ */
  IF ~~ THEN REPLY #47347 /* ~"Gut. Erzähl weiter."~ */ GOTO 38
  IF ~~ THEN REPLY #47348 /* ~"Gut... Ich hätte da noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47349 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47350 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1 37.0
  SAY #47351 /* ~"Also. Das Leben ist eine Prüfung. Wir stellen uns der Prüfung. Wenn wir sie bestehen, gehen wir in eine neue Form über. Das kann die Form eines Archonen, eines Scheusals oder einer Macht sein. Die Entscheidungen, die wir in diesem Leben treffen, helfen uns wie immer dabei, unseren Kurs festzulegen. Ob wir über freien Willen verfügen oder nicht ist noch nicht geklärt." Er lächelt. "Ich bin natürlich auf der Seite der Menschen mit freiem Willen... Ich hasse die Vorstellung, daß meine Entscheidungen bereits für mich getroffen worden sind."~ */
  IF ~~ THEN REPLY #47352 /* ~"Gut... Ich hätte da noch ein paar Fragen zu deinem Bund."~ */ GOTO 25
  IF ~~ THEN REPLY #47353 /* ~"Ich hätte da noch ein paar Fragen, aber nicht zu deinem Bund..."~ */ GOTO 12
  IF ~~ THEN REPLY #47354 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 44 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",2)
~ THEN BEGIN 39 // from: 12.9
  SAY #47355 /* ~"Du hast Fragen zur Schmiede? Ich werde soviele wie möglich beantworten."~ */
  IF ~~ THEN REPLY #47356 /* ~"An wen soll ich mich nochmal wenden?"~ */ GOTO 30
  IF ~  Global("G_Test1","GLOBAL",3)
~ THEN REPLY #47357 /* ~Zeig ihm den geschmiedeten Gegenstand: "Mein geschmiedeter Gegenstand ist fertiggeschmiedet."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 40
  IF ~  Global("G_Test1","GLOBAL",4)
~ THEN REPLY #47358 /* ~Zeig ihm den geschmiedeten Gegenstand: "Mein geschmiedeter Gegenstand ist fertiggeschmiedet."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 41
  IF ~  Global("G_Test1","GLOBAL",5)
~ THEN REPLY #47359 /* ~Zeig ihm den geschmiedeten Gegenstand: "Mein geschmiedeter Gegenstand ist fertiggeschmiedet."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 42
  IF ~~ THEN REPLY #47360 /* ~"Kannst du mir eben noch ein paar Fragen beantworten..."~ */ GOTO 12
  IF ~~ THEN REPLY #47361 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #47362 /* ~Er nimmt den Gegenstand entgegen und prüft ihn sorgfältig. Er scheint sich einen strengen Kommentar zu verkneifen. "Du hast es immerhin versucht, hm? Bist du bereit für die nächste Prüfung? Ich hoffe doch..."~ */
  IF ~~ THEN REPLY #47363 /* ~"Ich denke schon..."~ */ DO ~GiveExperience(Protagonist,6000)
~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY #47364 /* ~Er nimmt den Gegenstand entgegen und prüft ihn sorgfältig. "Das genügt. Mit ein bißchen Übung könnte aus dir ein durchaus brauchbarer Schmied werden. Bist du bereit für die nächste Prüfung? Ich hoffe doch..."~ */
  IF ~~ THEN REPLY #47365 /* ~"Ich denke schon..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY #47366 /* ~Er nimmt den Gegenstand entgegen und prüft ihn sorgfältig. "Das ist zweifelsohne eines der besseren Stücke, die ich bisher von einem Prüfling gesehen hab. Du wirst es weit bringen, mein Freund. Bist du bereit für die nächste Prüfung? Ich hoffe doch..."~ */
  IF ~~ THEN REPLY #47367 /* ~"Ich denke schon..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.0 41.0 42.0
  SAY #47368 /* ~Er fährt grimmig fort. "Ein Mörder hat in der Gießerei zugeschlagen, und ich verzichte auf die übliche Prüfung, damit du diesen Killer zur Strecke bringst. Sprich mit der Aufseherin Alissa Tield in der Hauptgießerei und nimm das dann als Ausgangspunkt. Wenn du deine Ermittlungen abgeschlossen hast und einen Schuldigen nennen kannst, kommst du zu mir zurück."~ */
  IF ~~ THEN REPLY #47369 /* ~"In Ordnung. Beantworte mir erst noch ein paar Fragen..."~ */ JOURNAL #39501 /* ~Meine zweite Prüfung zur Aufnahme in den Bund der Göttermenschen steht bevor: die Ermittlung in einem Mordfall. Ich soll mit der Aufseherin der Gießerei reden und dann Keldor berichten, wenn ich die Beweisführung abgeschlossen habe.~ */ GOTO 12
  IF ~~ THEN REPLY #47370 /* ~"Bin bald zurück. Leb wohl."~ */ JOURNAL #39501 /* ~Meine zweite Prüfung zur Aufnahme in den Bund der Göttermenschen steht bevor: die Ermittlung in einem Mordfall. Ich soll mit der Aufseherin der Gießerei reden und dann Keldor berichten, wenn ich die Beweisführung abgeschlossen habe.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 44 // from: 12.10
  SAY #47371 /* ~"Nun? Hast du den Schuldigen für dieses ruchlose Verbrechen ausfindig gemacht? Hast du Beweise?"~ */
  IF ~~ THEN REPLY #47372 /* ~"Nicht genug. Ich hätte da erst noch ein paar Fragen an dich..."~ */ GOTO 12
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_T","GLOBAL",1)
~ THEN REPLY #47373 /* ~"Ja. Thildon ist der Schuldige. Er hat kein wirkliches Alibi."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_S","GLOBAL",1)
~ THEN REPLY #47374 /* ~"Ja. Saros ist der Schuldige. Er schleicht immer viel um die Gießerei herum."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",3)
~ THEN REPLY #47375 /* ~"Ja. Thildon und Saros sind schuldig, ebenso Bedai-Lihn. Keiner von ihnen hat ein Alibi für die Mordnacht."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #47376 /* ~"Ja. Thildon ist schuldig. Saros hat mir eine Ahle gegeben, die er neben der Leiche gefunden hat. Es war Thildons Ahle."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_1","GLOBALLaw",-2)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #47377 /* ~"Ja. Saros ist der Schuldige. Er wollte Thildon etwas anhängen. Dazu hat er Thildons Ahle gestohlen. Dann hat er behauptet, er hätte sie neben der Leiche gefunden. Thildon bestreitet jedoch, von all dem gewußt zu haben. Saros ist der Täter."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_2","GLOBALLaw",-2)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #47378 /* ~"Saros hat es getan. Er steckt mit den Anarchisten unter einer Decke."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47379 /* ~"Thildon hat die Tat begangen, aber Saros hat versucht, sie ihm anzuhängen - das Ganze ist ein Komplott der Anarchisten mit Saros als Drahtzieher. Nehm sie beide fest."~ */ DO ~SetGlobal("G_Test2","GLOBAL",11)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 49
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47380 /* ~"Thildon hat es getan. Er hat Meinungsverschiedenheiten mit Avildon gehabt und wollte Saros die Tat anhängen. Richte ihn hin."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47381 /* ~"Saros ist ein Anarchist, der die Gießerei zerstören wollte. Er hat versucht, Thildon die Tat anzuhängen."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 44.1 44.2 44.3
  SAY #47382 /* ~Er schüttelt den Kopf. "Das sind wir bereits durchgegangen. Diese Beweise reichen für eine Überführung nicht aus. Geh zurück, und führe noch ein paar Ermittlungen durch." Er widmet sich wieder seiner Arbeit.~ */
  IF ~~ THEN REPLY #47383 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.4 44.8
  SAY #47384 /* ~Er schüttelt den Kopf. "Thildon wäre mir nie in den Sinn gekommen. Ich vertraue darauf, daß deine Ermittlungen gründlich waren... und ich vertraue dir. Erlaube mir, die Wachen zu rufen."~ */
  IF ~~ THEN REPLY #47385 /* ~"Laß dir Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #39500 /* ~Ich habe Thildon des Mordes an dem Schmied Avildon angeklagt. Er wurde verhaftet.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 48.0 49.0
  SAY #47386 /* ~Das Urteil scheint ihn traurig zu stimmen. "Es ist vollbracht. Ich danke dir für die Durchführung der Ermittlungen. Du hast nur noch eine Aufgabe zu erfüllen. Sandoz, Vater von Sarossa und Saros und eines unserer wichtigen Mitglieder, ist von einer grauenhaften Reise zurückgekehrt. Er hat sich in seinem Turmzimmer eingeschlossen und droht, sich umzubringen. Sprich mit ihm. Bring ihn davon ab."~ */
  IF ~~ THEN REPLY #47387 /* ~"Ich bin dabei. Beantworte mir nur noch ein paar Fragen..."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Meine letzte Prüfung zur Aufnahme in den Bund der Göttermenschen ist, daß ich mit einem selbstmordgefährdeten Mitglied reden soll. Sein Name ist Sandoz, und er ist der Vater von Saros und Sarossa.~ */ GOTO 12
  IF ~~ THEN REPLY #47388 /* ~"Ich bin dabei. Leb wohl."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Meine letzte Prüfung zur Aufnahme in den Bund der Göttermenschen ist, daß ich mit einem selbstmordgefährdeten Mitglied reden soll. Sein Name ist Sandoz, und er ist der Vater von Saros und Sarossa.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.5 44.6 44.9
  SAY #47389 /* ~Er ringt nach Luft. "Ich kann nicht glauben, daß Saros zu so etwas fähig sein kann... aber warum sollte Thildon lügen? Es ist eine grauenvolle Aufgabe, aber wenn du behauptest, daß es so ist, dann muß es stimmen. Ich werde ihn festnehmen lassen. Erlaube mir, die Wachen zu rufen."~ */
  IF ~~ THEN REPLY #47390 /* ~"Laß dir Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",9)
FadeFromColor([20.0],0)
~ JOURNAL #39498 /* ~Ich habe Saros des Mordes an dem Schmied Avildon angeklagt. Er wurde verhaftet.~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 44.7
  SAY #47391 /* ~"Was? Alle beide? Dies ist ein trauriger Tag für die Göttermenschen, ein wahrhaft trauriger Tag... Gestatte mir eben, die Wachen zu rufen."~ */
  IF ~~ THEN REPLY #47392 /* ~"Laß dir Zeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",11)
FadeFromColor([20.0],0)
~ JOURNAL #39495 /* ~Ich habe sowohl Thildon als auch Saros des Mordes an dem Schmied Avildon angeklagt. Sie wurden verhaftet.~ */ GOTO 47
END

IF WEIGHT #5 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 50 // from: 12.11
  SAY #47393 /* ~"Ist es dir gelungen, ihn davon zu überzeugen, daß das Leben lebenswert ist?"~ */
  IF ~  !Global("G_Test3","GLOBAL",6)
!Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47394 /* ~"Noch nicht. Aber er ist zumindest noch am Leben. Könntest du mir noch ein paar Fragen beantworten?"~ */ GOTO 12
  IF ~  Global("G_Test3","GLOBAL",6)
~ THEN REPLY #47395 /* ~"Es ist mir gelungen. Er hat seinen Lebenswillen wiedergefunden."~ */ DO ~AddexperienceParty(12000)
SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64545 /* ~Ich habe meinen Erfolg bei der Rettung von Sandoz' Leben Keldor berichtet. Er war ausgesprochen erfreut.~ */ GOTO 51
  IF ~  Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47396 /* ~"Ich hab es nicht geschafft. Er hat sich das Leben genommen."~ */ DO ~SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64546 /* ~Ich habe meinen Mißerfolg bei der Rettung von Sandoz' Leben Keldor berichtet. Wenn er auch enttäuscht war, hat er verstanden, daß es eine schwierige Aufgabe war, und er hat mir gesagt, daß ich allein durch den Versuch den Test bestanden hätte.~ */ GOTO 52
  IF ~~ THEN REPLY #47397 /* ~"Noch nicht. Ich bin dabei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #47398 /* ~"Du hast es geschafft? Welch frohe Botschaft! Gratuliere, mein Freund! Du hast dich als würdig erwiesen, Mitglied der Göttermenschen zu werden! Möchtest du den Eid jetzt schwören oder vielleicht noch ein bißchen warten?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47399 /* ~"Ich tu es jetzt gleich."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47400 /* ~"Ich tu es später. Beantworte mir doch noch ein paar Fragen, ja?"~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47401 /* ~"Ich tu es später. Leb wohl."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67783 /* ~"Jetzt."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67784 /* ~"Jetzt."~ */ GOTO 56
  IF ~~ THEN REPLY #67785 /* ~"Später. Beantworte mir ein paar Fragen, ja?"~ */ GOTO 12
  IF ~~ THEN REPLY #67786 /* ~"Später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.2
  SAY #47402 /* ~"Du hast es nicht geschafft? Das ist eine sehr traurige Nachricht. Aber du hast es versucht, ja? Das ist das Wichtigste. Hauptsache, du hast es versucht." Er gibt sein Bestes, um heiter zu wirken, doch scheitert dabei kläglich. "Möchtest du den Eid jetzt schwören oder später?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47403 /* ~"Ich tu es jetzt gleich."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47404 /* ~"Ich tu es später. Beantworte mir doch noch ein paar Fragen, ja?"~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47405 /* ~"Ich tu es später. Leb wohl."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67787 /* ~"Jetzt."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67788 /* ~"Jetzt."~ */ GOTO 56
  IF ~~ THEN REPLY #67789 /* ~"Später. Beantworte mir ein paar Fragen, ja?"~ */ GOTO 12
  IF ~~ THEN REPLY #67790 /* ~"Später. Leb wohl."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 53 // from:
  SAY #47406 /* ~Du siehst einen stämmigen Mann, der so aussieht, als ob er vor Vitalität nur so strotzt. Sein Gesicht ist gebräunt und faltig, und in seinen schwarzen Bart mischt sich ein wenig Weiß. "Sei gegrüßt, Fremder! Schön, dich zu treffen! Was kann ich an diesem herrlichen Tag für dich tun?"~ */
  IF ~~ THEN REPLY #47407 /* ~"Ich möchte dir ein paar Fragen stellen..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47408 /* ~"Ich habe eine Botschaft für dich von Goldspore, dem Auktionator."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54086 /* ~"Im Moment nichts, danke sehr. Leb wohl."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 54 // from:
  SAY #47409 /* ~"Schön, dich zu treffen, mein Freund! Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #47410 /* ~"Du kannst mir ein paar Fragen beantworten..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47411 /* ~"Ich habe eine Botschaft für dich von Goldspore, dem Auktionator."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54087 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 12.23 53.1 54.1
  SAY #51171 /* ~"Eine Nachricht, so?" Er nimmt dir die Nachricht ab. "Sehr gut. Du kannst ihm sagen, daß die Nachricht überbracht wurde. Gibt es sonst noch etwas?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51172 /* ~"Ich hätte noch ein paar Fragen."~ */ GOTO 9
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51173 /* ~"Ich hätte noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #51174 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.1 10.2 10.3 10.4 51.1 51.2 51.3 51.4 52.1 52.2 52.3 52.4
  SAY #66315 /* ~Er sieht dich finster an. "Zuerst mußt du deine Mitgliedschaft in dem Bund kündigen, dem du vor deinem Antrag auf Mitgliedschaft bei den Göttermenschen angehört hast."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66318 /* ~Kündige ehrlich deine Mitgliedschaft bei den Anarchisten: "Ich kündige die Mitgliedschaft in diesem Bund."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Anarchists","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66319 /* ~"Ich kündige die Mitgliedschaft bei den Sinnsaten."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66320 /* ~"Ich kündige die Mitgliedschaft bei den Staubmenschen."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Dustmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66321 /* ~"Ich kündige die Mitgliedschaft bei den Chaoten."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66322 /* ~Lüge, um dich für die Anarchisten in den Bund einzuschleusen: "Ich kündige die Mitgliedschaft in diesem Bund."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~~ THEN REPLY #66323 /* ~"Ich helfe euch nicht."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.5
  SAY #66316 /* ~"Dann kann ich dir nicht erlauben, Mitglied in meinem Bund zu werden. Leb wohl." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #66317 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #6342 /* ~"Du wirst sehen, daß ich nicht wehrlos bin, Narbengezeichneter. Bleib mir vom Leib."~ */
  IF ~~ THEN REPLY #6343 /* ~Erledigt.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 59 // from:
  SAY #6344 /* ~"Du gehörst eindeutig nicht hierher. Geh jetzt, Eindringling, oder die Wachen werden zu härteren Maßnahmen greifen als dich lediglich hinauszubegleiten."~ */
  IF ~~ THEN REPLY #6347 /* ~Verschwinde.~ */ EXIT
END
