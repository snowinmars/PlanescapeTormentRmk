// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIPSY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIPSY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Dieser ältere Mann starrt in seinen Bierkrug, und in sein Gesicht ist das Elend gegraben. Der zerbeulte Zinnkrug sieht ungewöhnlich aus... Er ist mit feinen Gravuren von seltsamen Runen und bärtigen Gesichtern sowie mit dünnem Frost bedeckt. Er sieht auf, als du näherkommst. "Seid gegrüß... mein Herr..." Er scheint etwas besäuselt zu sein.~ */
  IF ~~ THEN REPLY #7234 /* ~"Ist irgend etwas nicht in Ordnung?"~ */ GOTO 2
  IF ~~ THEN REPLY #46154 /* ~"Was ist das für ein Humpen?"~ */ GOTO 5
  IF ~~ THEN REPLY #46155 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 1
  IF ~~ THEN REPLY #46156 /* ~"Sei gegrüßt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #46157 /* ~Er schüttelt traurig den Kopf und nimmt noch einen Schluck Bier. "Nein, nein... Hier wirst du keine Antworten bekommen... Ganz bestimmt nicht."~ */
  IF ~~ THEN REPLY #46158 /* ~"Stimmt was nicht?"~ */ GOTO 2
  IF ~~ THEN REPLY #46159 /* ~"Was ist das für ein Humpen?"~ */ GOTO 5
  IF ~~ THEN REPLY #46160 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #46161 /* ~Er seufzt und rülpst in die vorgehaltene Hand. Dann nickt er und nimmt noch einen Schluck Bier. "Das kann man wohl sagen. Ich hab meine Lehrstelle verloren. Ich war verkatert und hab meinem Mentor ein Experiment vermasselt. Und alles wegen dieser Trinkerei!" Höhnisch grinsend schaut er auf den Humpen in seiner Hand - aber schon kurz darauf nimmt er munter den nächsten Schluck. "Diese Trinkerei ruiniert mir alles..."~ */
  IF ~~ THEN REPLY #46162 /* ~"Warum hörst du dann nicht einfach auf zu trinken?"~ */ JOURNAL #66804 /* ~Ich habe im Café im Bezirk der Kuratoren einen Mann getroffen, dessen Trunksucht seine Karriere als Zauberlehrling ruiniert hat. Wenn ich bedenke, daß er nicht die Willenskraft besitzt, sich von seinem Verlangen nach Alkohol zu befreien, frage ich mich, was ein solcher Mann tun könnte, um eine solche Sucht loszuwerden...~ */ GOTO 3
  IF ~~ THEN REPLY #46163 /* ~"Wenn du zu schwach bist aufzuhören, bist du selber schuld. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #46164 /* ~"Oh je. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46165 /* ~Er zuckt mit den Achseln und seufzt kläglich. "Ich... ich kann nicht. Ich würde ja gern, aber ich kann nicht... Ich *muß* trinken. Immer wenn ich aufhören will, ist meine Sucht stärker. Ich bin so ein... Wrack geworden!" Er schüttet sich den Rest Bier in den Rachen und bestellt ein neues.~ */
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #46166 /* ~"Ein klarer Fall für Unerfülltes Verlangen: Geh zu ihr in der Städtischen Festhalle und erzähl ihr von deinem Verlangen nach Alkohol... Sie wird es dir austreiben."~ */ DO ~GiveItemCreate("DwfMug",Protagonist,1,0,0)
AddexperienceParty(10000)
~ JOURNAL #66805 /* ~Ich habe dem betrunkenen Zauberlehrling, den ich im Bezirk der Kuratoren getroffen habe, über Unerfülltes Verlangen erzählt... Ich bin sicher, daß die seltsamen Kräfte, die sie hat, genügen werden, ihn seines Verlangens zu entledigen. Er war so nett, mir seinen magischen Eisbierhumpen als eine Art Geschenk zu geben. Er behauptete, daß er ihn nicht mehr braucht.~ */ GOTO 4
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46167 /* ~"Verstehe. Was ist das für ein Humpen?"~ */ GOTO 5
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46168 /* ~"Wenn du zu schwach bist aufzuhören, bist du selber schuld. Leb wohl."~ */ EXIT
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46169 /* ~"Oh je. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46170 /* ~Seine Augen leuchten. "Wirklich? Ich geh gleich hin und sprech mit ihr... Danke, mein Herr." Dann hält er inne und schaut in seinen leeren Krug. "Hier... Nimm das. Ich brauch's nicht mehr." Er überreicht dir den mit Runen bedeckten Krug.~ */
  IF ~~ THEN REPLY #46171 /* ~"Danke... leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #46172 /* ~"Der hier?" Er blickt auf seinen Zinnkrug hinab. "Den hab ich beim Würfeln gewonnen. Sein Zauber bewirkt, daß jeder Inhalt darin eisgekühlt bleibt. In meinem Fall heißt das... billiges Bier." Er runzelt die Stirn, reibt sich die Augen und nimmt noch einen kräftigen Schluck.~ */
  IF ~~ THEN REPLY #46173 /* ~"Stimmt was nicht?"~ */ GOTO 2
  IF ~~ THEN REPLY #46174 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
