// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNESTOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNESTOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30119 /* ~Du siehst einen alten Mann in schmutziger und zerlumpter Kleidung, der wie ein Irrer in der Ecke auf und abgeht. Sein schmutziges weißes Haar fällt ihm in fettigen Strähnen auf die Schultern, und sein zerzauster, mit Dreck und Blut verkrusteter Bart geht ihm bis über die Hüfte. Alle paar Sekunden bleibt er stehen, schlägt plötzlich wild um sich und murmelt und flucht, als ob er von einem unsichtbaren Feind angegriffen würde. Er scheint nicht zu bemerken, daß du dich ihm näherst.~ */
  IF ~~ THEN REPLY #30133 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #30134 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #30120 /* ~Der alte Mann bleibt stehen und schaut dich nervös an. "Gabel? Gabel? Gabel? Kann nicht nach Hause ohne meine Gabel."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30135 /* ~"Hör zu... Arlo will, daß du dich verziehst. Also geh."~ */ GOTO 5
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30136 /* ~"Deine... Gabel?"~ */ GOTO 6
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30137 /* ~"Ist das hier deine Gabel?" Gib Nestor die Gabel aus Stahl.~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30138 /* ~"Egal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #30121 /* ~Beim Klang deiner Stimme wirbelt der alte Irre herum und starrt dich mit großen Augen, die weit aus ihren Höhlen hervortreten, an. Er sieht dich kurz an und setzt dann seinen merkwürdigen Tanz fort. "Nein! Nein! Neiiiiiiiin! Das bist du nicht... huh huh! Aber bald... ja, bald."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30139 /* ~"Bist du Nestor?"~ */ GOTO 3
  IF ~~ THEN REPLY #30140 /* ~"Äh... mit wem redest du?"~ */ GOTO 3
  IF ~~ THEN REPLY #30141 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #30122 /* ~Der alte Mann scheint dich völlig vergessen zu haben. "Huh huh huh! Du wirst zurückkommen. Ja... du wirst zurückkommen. Und der alte Nestor wird auf dich warten!"~ */
  IF ~~ THEN REPLY #30142 /* ~"Geht's dir nicht gut?"~ */ GOTO 5
  IF ~~ THEN REPLY #30143 /* ~"Du wartest? Auf wen wartest du?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30144 /* ~"Hör zu... Arlo will, daß du dich verziehst. Also geh."~ */ GOTO 5
  IF ~~ THEN REPLY #30145 /* ~"Macht nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #30123 /* ~"Ich warte, warte..." Plötzlich fällt er erschöpft zu Boden. "Lange habe ich gewartet... und warte." Er holt tief Luft und springt wieder auf die Füße. "Ich warte ewig, wenn's sein muß! Hörst du?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30146 /* ~"Hör zu... Arlo will, daß du dich verziehst. Also geh."~ */ GOTO 5
  IF ~~ THEN REPLY #30147 /* ~"Geht's dir nicht gut?"~ */ GOTO 5
  IF ~~ THEN REPLY #30148 /* ~"Äh... naja, dann laß ich dich in Ruhe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 3.0 3.2 4.0 4.1
  SAY #30124 /* ~"Neiiiiiiin!" Nestors Gesicht läuft feuerrot an und sein gesamter Körper zittert. "Meine Gabel! Kann nicht ohne meine Gabel gehen! Huh huh! Gabel, Gabel, Gabel!"~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30149 /* ~"Deine... Gabel?"~ */ GOTO 6
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30150 /* ~"Genug gebabbelt, alter Mann. Du mußt jetzt gehen...mit oder ohne deine Gabel."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #30151 /* ~"Ich seh schon, so wird das nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 11.0
  SAY #30125 /* ~"Gabel? Gabel! Gabel! Kann nicht nach Hause ohne meine Gabel!" Nestors Wahnsinn erreicht einen dramatischen Höhepunkt. Er fängt an, wie ein Verrückter herumzuspringen, bleibt dann plötzlich stehen, senkt seinen Kopf und läuft dann geradewegs in einen großen Holzschrank, der hinten in der Spelunke steht. Durch die Macht des Aufpralls fliegt der alte Mann nach hinten auf seinen Rücken. Ein paar Sekunden später steht er mit einem verwirrten Gesichtsausdruck wieder auf. "Weg. Gestohlen. Kann nicht nach Hause ohne meine Gabel."~ */
  IF ~~ THEN REPLY #30152 /* ~"Gestohlen, sagst du? Wer hat dir deine Gabel weggenommen?"~ */ GOTO 7
  IF ~~ THEN REPLY #30153 /* ~"Ich seh schon, so wird das nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30126 /* ~Nestor starrt dich eine ganze Weile an und kramt dann in den Taschen seiner schmutzigen Robe herum. Ein paar Sekunden später holt er etwas hervor, das wie ein abgetrenntes Ohr aussieht. Nach dem Gestank und der Farbe des Ohrs zu urteilen muß der alte Knabe es schon eine ganze Weile mit sich herumgetragen haben. "Du hast meine Gabel, stimmt's? Gib's zu! Huh huh!" Er hält das Ohr ganz nah an sich heran, als ob er mit ihm spricht. "Bring mir meine Gabel zurück!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30154 /* ~"Wenn ich dir eine Gabel bringe, gehst du dann?"~ */ GOTO 8
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30155 /* ~"Vielleicht kann ich dir helfen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nestor_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #30156 /* ~"Äh... vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30127 /* ~"Ich warte! Warte! Warte! Huh huh!" Er schüttelt das Ohr heftig, als er in es hineinschreit. "Bis du sie mir zurückbringst! Dann kann ich nach Hause gehen!"
~ */
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30157 /* ~"Ist das hier die Gabel, von der du sprichst?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30158 /* ~"Na gut. Ich werde deine Gabel suchen. Leb wohl."~ */ DO ~SetGlobal("Nestor_Quest","GLOBAL",1)
~ JOURNAL #29868 /* ~Ich habe Nestor, dem Irren in der Spelunke, versprochen, ihm dabei zu helfen, seine Gabel wiederzufinden. Der arme Kerl scheint ziemlich durch den Wind zu sein, trägt ein abgetrenntes Ohr in der Tasche und spricht mit ihm, als ob es ihn hören könnte. Aber ich glaube nicht, daß es so schlimm sein kann, für ihn nach einer Gabel zu suchen.~ */ EXIT
  IF ~~ THEN REPLY #30159 /* ~"Weißt du, ich habe Besseres zu tun, als für einen Irren Besteck zu suchen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #30128 /* ~"Neiiiiiin! Kann nicht nach Hause ohne meine Gabel!" Er weicht schnaubend vor dir zurück und fletscht die Zähne wie ein Tier, das in die Enge getrieben wurde.~ */
  IF ~~ THEN REPLY #30160 /* ~Pack ihn.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_2","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #30161 /* ~"Ich will dir nicht wehtun... aber du *mußt* jetzt gehen."~ */ GOTO 11
  IF ~~ THEN REPLY #30162 /* ~"Dann mach doch, was du willst. Leb wohl." ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30129 /* ~Du willst ihn packen, doch der alte Mann ist erstaunlich flink für sein Alter. Ehe du ihn wirklich zu fassen bekommst, hat er sich schon aus deinem Griff befreit und rammt seine Zähne in deine ausgestreckte Hand. Vor Schmerz ziehst du deine Hand schleunigst zurück.~ */
  IF ~~ THEN REPLY #30163 /* ~"Na gut. Dann muß ich's eben auf die unschöne Art tun..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30164 /* ~"Ich will dir nicht wehtun... aber du *mußt* jetzt gehen."~ */ GOTO 11
  IF ~~ THEN REPLY #30165 /* ~"Dann mach doch, was du willst. Leb wohl." ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1
  SAY #30130 /* ~Nestor beruhigt sich etwas und seine hervorstehenden Augen scheinen kurz davor zu sein, sich mit Tränen zu füllen. "Kann nicht nach Hause. Kann nicht. Kann nicht. Kann nicht. Nicht ohne Gabel."~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30166 /* ~"Deine... Gabel?"~ */ GOTO 6
  IF ~~ THEN REPLY #30167 /* ~"Ich seh schon, so wird das nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2 8.0
  SAY #30131 /* ~Nestor greift hastig nach der  Gabel. "Meine Gabel? Meine Gabel! Gabel! Gabel! Gabel! Huh huh!" Er hüpft aufgeregt auf und ab, wobei er die Gabel mit einer eleganten Bewegung über seinem Kopf hin- und herschwenkt, als ob er eine Art Ritual vollzieht. "Jetzt kann ich nach Hause gehen! Leb wohl! Huh huh!"~ */
  IF ~~ THEN REPLY #30168 /* ~"Leb wohl, Nestor."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #30132 /* ~Nestor macht sich auf den Weg. Dann dreht er sich plötzlich um, als ob ihm noch etwas eingefallen ist, und gibt dir etwas, das sich weich und gummiartig anfühlt: das abgetrennte Ohr. Bei näherer Betrachtung stellst du fest, daß an ihm noch ein Ohrring baumelt.~ */
  IF ~~ THEN REPLY #30169 /* ~Steck den Ohrring ein und schmeiß das verwesende Stück Fleisch weg.~ */ DO ~GiveItemCreate("ObEar",Protagonist,1,0,0)
SetGlobal("Nestor_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #28825 /* ~Ich habe Nestors Gabel zurückgebracht. Die Gabel stellte sich als irgendein Portalschlüssel heraus. Mit dieser Gabel konnte Nestor dahin zurückkehren, wo er herkommt, wo auch immer das sein mag. Ich frage mich, wie lange der arme Kerl in Sigil festsaß, ohne nach Hause kommen zu können? ~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #61633 /* ~Nestor ignoriert dich völlig, sein Blick ist auf den Schrank am Ende des Raums fixiert.~ */
  IF ~~ THEN REPLY #61634 /* ~Geh weg.~ */ EXIT
END
