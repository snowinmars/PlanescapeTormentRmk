// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #26110 /* ~Der ältere, gut gekleidete Herr ist offensichtlich in Eile.~ */
  IF ~~ THEN REPLY #26111 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #26199 /* ~Laß ihn seiner Wege gehen.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26112 /* ~Er bleibt kurz stehen, um in deine Richtung zu schauen, runzelt die Stirn und zieht eine Augenbraue hoch, als er dich wahrnimmt. Schließlich schaut er dir in die Augen. "Mmm?"~ */
  IF ~~ THEN REPLY #26113 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26198 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 23
  IF ~~ THEN REPLY #26206 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #26114 /* ~Er spricht in einem bitteren, etwas herablassenden Tonfall: "Eine Unverschämtheit... also wirklich. Ich habe keine Zeit für Eure Fragen. Leb wohl."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #26115 /* ~"Nur eine kurze Frage?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #26188 /* ~"Nur eine kurze Frage?"~ */ GOTO 20
  IF ~~ THEN REPLY #26192 /* ~"Dann *nimmst* du dir eben Zeit! Und jetzt beantworte meine Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #26193 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26116 /* ~Er rümpft etwas die Nase. "Huh! Wenn's denn sein muß. Also los... stellt Eure 'Frage'. Und beeilt Euch ein bißchen!"~ */
  IF ~~ THEN REPLY #26117 /* ~"Wo bin ich hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #26132 /* ~"Was gibt es hier Interessantes?"~ */ GOTO 8
  IF ~~ THEN REPLY #26139 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #26144 /* ~"Ich bräuchte nur ein paar Wegbeschreibungen..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26179 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 21
  IF ~~ THEN REPLY #26187 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26118 /* ~"Hätte ich mir denken können, daß Ihr Euch verlaufen habt. Ihr seid hier im Bezirk der Kuratoren, 'mein Herr'. Wenn Ihr in den Unteren Bezirk zurück möchtet - oder wo auch immer Ihr herkommt - das Tor befindet sich im nordwestlichen Teil dieser Gegend. Leb wohl."~ */
  IF ~~ THEN REPLY #26119 /* ~"Warte... Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26131 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0 22.1 22.2
  SAY #26120 /* ~"Keine Fragen mehr. Sucht Euch einen anderen, den Ihr belästigen könnt, wenn Ihr unbedingt müßt. Leb wohl."~ */
  IF ~~ THEN REPLY #26121 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #26130 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #26122 /* ~Er bläst sich auf, starrt dir in die Augen und brüllt "Ich werde *keine* Fragen mehr beantworten! Haut ab, ungehobelter Kerl, bevor ich ein paar Offiziere des Harmoniums herbeirufe, um Euch in den vernarbten Hintern zu treten und aus diesem Bezirk zu entfernen!"~ */
  IF ~~ THEN REPLY #26123 /* ~"Ich bezweifle, daß dich noch jemand rechtzeitig retten kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #26127 /* ~"Du rufst besser niemand, wenn dir deine Gesundheit lieb ist!"~ */ GOTO 7
  IF ~~ THEN REPLY #26128 /* ~"Verzeihung. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #26129 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #26124 /* ~"Wache! Wache!" Der Mann weicht zurück.~ */
  IF ~~ THEN REPLY #26125 /* ~Greif ihn an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #26126 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #26133 /* ~Er verdreht die Augen. "Seh ich etwa aus wie ein Schlepper, mein Herr? Ich hab' etwas zu erledigen!" Er murmelt etwas vor sich hin und ergreift dann erneut das Wort: "Geht zur Städtischen Festhalle. Da gibt es vielleicht etwas, daß Euch interessiert."
~ */
  IF ~~ THEN REPLY #26134 /* ~"Sonst noch was?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26135 /* ~"Nein." Er scheint zu überlegen. "Nun ja... vielleicht. Ich bin mir nicht sicher, ob Euch dieser Ort gefällt, aber Ihr könntet das Bordell... zum Befriedigen Intellektueller Lüste besuchen."~ */
  IF ~~ THEN REPLY #26136 /* ~"Erzähl mir was über dieses Bordell."~ */ GOTO 5
  IF ~~ THEN REPLY #26137 /* ~"Laß mich dich noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26138 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #26140 /* ~Er wirkt überrascht. "Ihr sucht ehrliche Arbeit? Das ist gut. Fragt den Apotheker. Oder den Advokaten. Jeder sollte hier eine Anstellung finden, wißt Ihr - eine Aufgabe zum Nutzen für das Gemeinwohl."~ */
  IF ~~ THEN REPLY #26141 /* ~"Ich hätte eine Frage zu einem der Orte, die du erwähnt hast..."~ */ GOTO 5
  IF ~~ THEN REPLY #26142 /* ~"Ich hätte da noch eine andere Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #26143 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #26145 /* ~"Wohin? Raus damit, Mann!"~ */
  IF ~~ THEN REPLY #26146 /* ~"Das Haus des Advokaten."~ */ GOTO 12
  IF ~~ THEN REPLY #26150 /* ~"Die Apotheke."~ */ GOTO 13
  IF ~~ THEN REPLY #26154 /* ~"Den Kunstladen."~ */ GOTO 14
  IF ~~ THEN REPLY #26158 /* ~"Das Bordell."~ */ GOTO 15
  IF ~~ THEN REPLY #26162 /* ~"Die Katakomben unter dem Bezirk."~ */ GOTO 16
  IF ~~ THEN REPLY #26166 /* ~"Die Städtische Festhalle."~ */ GOTO 17
  IF ~~ THEN REPLY #26170 /* ~"Den Kuriositätenladen."~ */ GOTO 18
  IF ~~ THEN REPLY #26174 /* ~"Den Schneider."~ */ GOTO 19
  IF ~~ THEN REPLY #26178 /* ~"Nichts, schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26147 /* ~"Ihr sucht den Advokaten? Hmm. Geht vom Tor zum Unteren Bezirk in südliche Richtung . Ihr findet das Haus auf der östlichen Seite der Straße."~ */
  IF ~~ THEN REPLY #26148 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26149 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #26151 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk nach Osten führt. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Das Haus liegt östlich der Straße. Es liegt nach Süden und hat drei farbige Fenster."~ */
  IF ~~ THEN REPLY #26152 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26153 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #26155 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk nach Osten führt. Wenn sich die Straße nach Nordosten und Südosten gabelt, geht in südliche Richtung... Das Haus liegt westlich der Straße. Es liegt nach Süden und hat ein Dach, dessen Ziegel mit  großen Steinen beschwert sind."~ */
  IF ~~ THEN REPLY #26156 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26157 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #26159 /* ~"G'rad östlich vom Tor zum Unteren Bezirk. Es ist ein großes rundes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #26160 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26161 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #26163 /* ~"Es gibt zwei Eingänge - der eine befindet sich zwischen dem Schneider und der Festhalle, östlich des Tors zum Unteren Bezirk, und der andere befindet sich südlich desselben Tores."~ */
  IF ~~ THEN REPLY #26164 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26165 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #26167 /* ~"Die Festhalle ist ein Riesengebäude im nordöstlichen Teil dieser Gegend. Ihr müßtet schon blind und gleichzeitig ein Idiot sein, wenn Ihr das Ding verfehlt."~ */
  IF ~~ THEN REPLY #26168 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26169 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #26171 /* ~"Hmm. Mir wurde gesagt, daß es da eine Frau gibt, die sich selbst Importeurin nennt, und Dinge von anderen Ebenen verkauft... hauptsächlich den Unteren Ebenen. Wenn Ihr so was sucht. Ihr Laden befindet sich im südwestlichen Teil dieser Gegend am Ende einer breiten Treppe."~ */
  IF ~~ THEN REPLY #26172 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26173 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #26175 /* ~"Geht vom Tor zum Unteren Bezirk in nordöstliche Richtung. Es ist ein ausgedehntes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #26176 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26177 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #26180 /* ~Er schüttelt den Kopf und winkt dich fort. "Sucht einen anderen, den Ihr belästigen könnt, wenn' unbedingt sein muß. Leb wohl."~ */
  IF ~~ THEN REPLY #26181 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #26185 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #26182 /* ~Der Mann schweigt einen Augenblick. "Ich weiß wenig. Nur das, was ich in Büchern gelesen hab', in denen sie kurz erwähnt wurde."~ */
  IF ~~ THEN REPLY #26183 /* ~"Was stand in diesen Büchern über sie drin?"~ */ GOTO 22
  IF ~~ THEN REPLY #26184 /* ~"Verstehe. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #26186 /* ~"Danke, mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26189 /* ~"Nur, daß sie ein äußerst böses Wesen war. Viele Leute glauben, daß sie ein Mythos ist, aber die Bücher bezeugen ihre Existenz. Zwar spärlich, aber eben doch. Was Ihr weiteres Schicksal angeht, ... nach ihrem Versuch, Sigil zu zerstören... nun, ich glaube, sie wurde in einen der Irrgänge der Dame der Schmerzen verbannt."~ */
  IF ~~ THEN REPLY #26190 /* ~"Erzähl mir was über die Dame der Schmerzen."~ */ GOTO 5
  IF ~~ THEN REPLY #26191 /* ~"Kann überhaupt jemand zu diesen Irrgängen gelangen?"~ */ GOTO 5
  IF ~~ THEN REPLY #26194 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 5
  IF ~~ THEN REPLY #26207 /* ~"Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #26195 /* ~"Schaut Euch doch an, Mann! Ihr seid... Ihr seid... praktisch nackt, in Lumpen gehüllt, wandert durch die Straßen Sigils, sprecht Passanten an... warum? Ich hab' schon Typen mit besseren Manieren und gepflegterem Äußeren gesehen. Ich will Euch ja nicht beleidigen, aber ich enthalte einem Menschen eine ehrliche Antwort nicht vor."~ */
  IF ~~ THEN REPLY #26196 /* ~"So genau wollt' ich's gar nicht wissen. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #26197 /* ~"Danke, daß war's schon. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #26200 /* ~"Ihr schon wieder! Ich habe heute keine Zeit für Eure Fragen. Leb wohl!"~ */
  IF ~~ THEN REPLY #26201 /* ~"Warte. Ich hab' da ein paar Fragen..."~ */ GOTO 25
  IF ~~ THEN REPLY #26205 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26202 /* ~"Nein. Keine Fragen. Ich hab's eilig und laß mich doch nicht von der Neugier anderer Leute aufhalten. Sucht Euch einen anderen, den Ihr belästigen könnt, wenn es denn sein muß. Leb wohl."~ */
  IF ~~ THEN REPLY #26203 /* ~"Halt. Du bleibst hier und beantwortest meine Fragen!"~ */ GOTO 6
  IF ~~ THEN REPLY #26204 /* ~"Na dann leb wohl."~ */ EXIT
END
