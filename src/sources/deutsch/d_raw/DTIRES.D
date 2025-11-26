// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIRES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIRES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38116 /* ~Du siehst einen alten Mann in zerlumpten Fetzen. Als du näher kommst, stellst du fest, daß ihm beide Augen fehlen. Die narbige Haut seiner Augenlider ist in seine leeren Augenhöhlen gesunken, wodurch seine Züge den makaberen Ausdruck eines verwesenden Totenschädels annehmen.~ */
  IF ~~ THEN REPLY #38141 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #38142 /* ~Laß den Alten in Frieden.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #38117 /* ~Der Alte dreht sich in deine Richtung, wobei seine Arme ausgestreckt sind, als wolle er nach dir fühlen. "Dunkel, wessen Stimme sei das? Des Freundes Worte spreche ich zu dir und rufe das Chaos."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38143 /* ~"Worte sprechen vom Chaos in mir. Fürchte dich nicht, denn *auch ich* bin ein Mitglied des Bundes der Xaositekten."~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,INT)
GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38144 /* ~"Stimme... sprich - stich - brich."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38145 /* ~"Sprich die Worte des Chaos, und du nennst mich einen Freund? Ist diese verhedderte Wirrwarrsprache wirklich notwendig?"~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #38146 /* ~"Hä?"~ */ GOTO 16
  IF ~~ THEN REPLY #38147 /* ~"Äh... schon gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #38118 /* ~"Ah... Chaos bist du, wie ich und mir." Der Blinde lächelt und macht vorsichtig einen Schritt auf dich zu. Als er sich bewegt, meinst du, daß er ein Bein nachzieht.~ */
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38148 /* ~"Was ist mit deinem Bein? Bist du verletzt?"~ */ GOTO 3
  IF ~  Global("Know_Tiresias","GLOBAL",0)
~ THEN REPLY #38149 /* ~"Kannst du mir sagen, wie ich zur Gasse der hallenden Seufzer komme?"~ */ GOTO 15
  IF ~  Global("Know_Tiresias","GLOBAL",1)
~ THEN REPLY #38150 /* ~"Du sagtest, du kennst einen Weg, auf dem man an den Ausgehungerten Hunden vorbei zur Gasse gelangt?"~ */ GOTO 8
  IF ~  Global("Know_Tiresias","GLOBAL",2)
~ THEN REPLY #38151 /* ~"Wo war noch gleich diese Geheimtür?"~ */ GOTO 18
  IF ~~ THEN REPLY #38152 /* ~"Ja... also, ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #38119 /* ~"Nein, in Ordnung werde ich sein. Nur ein bißchen aufgeschlitzt, das ist schon alles." Während er das sagt, beugt er sich nach unten und zieht das zerlumpte Tuch zur Seite, das sein Bein bedeckt. Dabei wird eine böse klaffende Wunde von seiner Kniescheibe bis zur Hüfte sichtbar.~ */
  IF ~~ THEN REPLY #38153 /* ~"Was ist passiert?"~ */ GOTO 4
  IF ~~ THEN REPLY #38154 /* ~"Kannst du mir sagen, wie ich zur Gasse der hallenden Seufzer komme?"~ */ GOTO 15
  IF ~~ THEN REPLY #38155 /* ~"Ja... also, ich muß jetzt los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #38120 /* ~"Bekam die Klinge eines dieser Ausgehungerten Bellenden Hunde zu spüren. Haben sich in der Haupthalle da gleich gegenüber versammelt. Köter - Töter - Schwerenöter."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38157 /* ~"Erzähl mir was über diese Ausgehungerten Hunde."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38158 /* ~"Die Ausgehungerten Bellenden Hunde? Wie viele von ihnen sind da drin?"~ */ GOTO 7
  IF ~~ THEN REPLY #38159 /* ~"Ich verstehe. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 15.0
  SAY #38122 /* ~"Sind hinterhältige Chaoten. Brüder einem, doch Bruder keinem."~ */
  IF ~~ THEN REPLY #38160 /* ~"Wenn das Xaositekten sind, warum haben sie dich angegriffen?"~ */ GOTO 6
  IF ~~ THEN REPLY #38161 /* ~"Wie viele sind es?"~ */ GOTO 7
  IF ~~ THEN REPLY #38162 /* ~"Ich verstehe. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #38127 /* ~Der Alte schüttelt den Kopf. "Egal ist. Greifen egal wen und was an, jawohl. So und nicht anders spricht Chaos zu ihnen. Dich werden sie auch aufschlitzen, gehst du da hinein."~ */
  IF ~~ THEN REPLY #38163 /* ~"Wie viele sind es?"~ */ GOTO 7
  IF ~~ THEN REPLY #38165 /* ~"Ich verstehe. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 6.0 15.1
  SAY #38129 /* ~Der alte Chaot hält kurz inne, seinen leeren Blick auf den freien Raum fixiert. "Viele sind sie... stark und teuflisch. Aber einen andren Weg gibt es. Einen geheimen Weg, nur mir und ich bekannt. Ein sicherer Weg hindurch zur Gasse dahinter."~ */
  IF ~~ THEN REPLY #38166 /* ~"Was ist das für ein Geheimweg?"~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #38167 /* ~"Schon gut. Ich finde schon selbst meinen Weg."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 7.0
  SAY #38130 /* ~"Dunkel ist nicht Licht, und Licht ist nicht Dunkel. Strahlende, glänzende Münzen erhellen vielleicht trotzdem." Der Alte reibt seine Finger aneinander, um seinem Ausspruch noch mehr Gewicht zu verleihen.

~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #38168 /* ~Gib dem Blinden zehn Kupferstücke.~ */ GOTO 9
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38169 /* ~Gib dem Blinden zwanzig Kupferstücke.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38170 /* ~"Ich zahle keinen Heller. Du wirst mir sagen, was ich wissen will... oder ich lehre dich, was 'Dunkelheit' wirklich bedeutet."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38171 /* ~"Wie wär's mit Dunkel gegen Dunkel? Ich kann dir verraten, wo sich eine gewisse Diebin aufhält, die sich hier im Mietshaus versteckt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38172 /* ~"Schon gut. Ich finde schon selbst meinen Weg."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38131 /* ~Du legst dem Alten zehn Münzen in die Hand. Er wartet einen Moment und klimpert dann mit der Handvoll Münzen, als ob er ihr Gewicht einschätzte. Nach kurzer Bedenkzeit gibt er dir die Münzen zurück. "Nicht genug. Ist nicht Leben mehr wert als zehn Münzen?"~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38173 /* ~Gib ihm zwanzig Kupferstücke.~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38174 /* ~"Du willst feilschen? Nun gut... Wie wär's, wenn du mir verrätst, was ich wissen will, und ich lasse dich dafür leben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  Global("Sybil_Quest","GLOBAL",1)
~ THEN REPLY #38175 /* ~"Wie wär's mit Dunkel gegen Dunkel? Ich kann dir verraten, wo sich eine gewisse Diebin aufhält, die sich hier im Mietshaus versteckt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Tiresias_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #38176 /* ~"Schon gut. Ich finde schon selbst meinen Weg."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 13.1
  SAY #38132 /* ~Du gibst dem Alten die Münzen, und er steckt sie schnell in die Tasche. "Such du nach der Tür, die im Südwest-Zimmer versteckt ist. Öffnen tut sie sich auf der entlegenen Seite der Haupthalle, beim Ausgang zur Gasse."~ */
  IF ~~ THEN REPLY #38177 /* ~"Vielen Dank für deine Hilfe. Leb wohl."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~Ich habe einen blinden alten Xaositekten im Mietshaus der Schläger getroffen. Er hat mir von einer geheimen Tür erzählt, die in die Gasse der hallenden Seufzer führen soll, ohne daß man den Ausgehungerten Bellenden Hunden begegnet, die in der Haupthalle des Mietshauses versammelt sind. Die Tür befindet sich angeblich in einer südwestlichen Kammer, neben der Haupthalle. ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 13.2 17.0
  SAY #38133 /* ~Der Alte scheint außer sich angesichts deiner Drohung. "Kein Freund bist du und keine Freunde hast du hier! Freunde habe ich, und Freunde rufe ich!" Er holt tief Luft, als ob er laut rufen wolle.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #38178 /* ~Greif ihn und brich ihm das Genick, bevor er schreien kann.~ */ GOTO 12
  IF ~~ THEN REPLY #38179 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #38180 /* ~Geh schnell weg.~ */ DO ~Enemy()
SetGlobal("Tenement_Alarm","GLOBAL",1)
FloatMessage(Myself,9635)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #38134 /* ~Du machst dich schnell über den Blinden her. Du legst eine Hand über seinen Mund, um ihn am Schreien zu hindern, packst ihn mit der anderen Hand im Nacken und drehst seinen Hals bis du ein deutliches Knacken hörst.~ */
  IF ~~ THEN REPLY #38181 /* ~"Kinderleicht."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2
  SAY #38135 /* ~"Dieb? Hier? Jemand *hat* Tiresias bestohlen... vielleicht der, von dem du redest." Der Alte faßt sich ans Kinn und überdenkt dein Angebot. "Abgemacht... Dunkel für Dunkel. Rede du zuerst."~ */
  IF ~~ THEN REPLY #38182 /* ~"Deine Diebin ist nichts als eine junge Göre. Sie versteckt sich im Vorzimmer auf der anderen Seite, nahe der Tür zur großen Halle."~ */ DO ~SetGlobal("Sybil_Betrayed","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Tiresias_2","GLOBALGood",-1)
~ GOTO 14
  IF ~  PartyGoldGT(19)
~ THEN REPLY #38183 /* ~"Wenn ich's mir recht überlege: hier hast du zwanzig Münzen. Sag mir, was du weißt."~ */ DO ~TakePartyGold(20)
~ GOTO 10
  IF ~~ THEN REPLY #38184 /* ~"Wenn ich's mir recht überlege: wieso sagst du mir nicht einfach, was du weißt... und ich lasse dich dafür leben."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38185 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38136 /* ~Tiresias nickt zustimmend. "Junge Diebin, sagst du? Drum kümmern werd ich mich, jawohl!"
~ */
  IF ~~ THEN REPLY #38186 /* ~"OK, also, erzähl mir doch etwas über diesen Geheimweg."~ */ GOTO 19
  IF ~~ THEN REPLY #38188 /* ~"Irgendwie bezweifle ich das. Also, nun sag mir schon, was du weißt, Alter."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 2.1 3.1
  SAY #38137 /* ~"Ja, Tiresias kennt den Weg. Der Ausgang zur Gasse ist durch die Haupthalle gegen Süden, aber hindurch kannst du nicht. Ausgehungerte Hunde sind dort versammelt und versperren den Weg."~ */
  IF ~  Global("Know_SDB","GLOBAL",0)
~ THEN REPLY #38189 /* ~"Erzähl mir was über diese Ausgehungerten Hunde."~ */ GOTO 5
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #38190 /* ~"Die Ausgehungerten Bellenden Hunde? Wie viele von ihnen sind da drin?"~ */ GOTO 7
  IF ~~ THEN REPLY #38191 /* ~"Ich verstehe. Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.2 1.3
  SAY #38138 /* ~Der alte Chaot neigt den Kopf zur Seite, seinen leeren Blick auf den freien Raum fixiert. "Chaos vom du nicht bist. Nicht! Wicht! Schlicht!"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #38192 /* ~"Äh... Was du da sagst, ergibt keinen Sinn."~ */ GOTO 17
  IF ~~ THEN REPLY #38193 /* ~"Haben hier denn alle den Verstand verloren?!"~ */ GOTO 17
  IF ~~ THEN REPLY #38194 /* ~Kümmere dich nicht um sein Gequassel und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38139 /* ~"Handeln, nicht Reden. Reden ist abgeschlossen. Abgeschlossen zur Abgeschlossenheit!" Er dreht dir den Rücken zu, anscheinend ist für ihn die Unterhaltung beendet.
~ */
  IF ~~ THEN REPLY #38195 /* ~"Hör zu, Alter, du solltest mir lieber ein paar direkte Antworten geben, sonst wird dir bald mehr fehlen als dein Augenlicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Tiresias_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #38196 /* ~"Offensichtlich komme ich so nicht weiter. Leb wohl"~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3
  SAY #38140 /* ~"In einem Südwest-Zimmer befindet sich die verborgene Tür. Nicht durch die Tür gegenüber, führen tut die zu den Hunden."~ */
  IF ~~ THEN REPLY #38197 /* ~"Vielen Dank für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1
  SAY #38187 /* ~"Such' nach der Tür, die im Südwest-Zimmer verborgen ist. Öffnen tut sie sich auf der entlegenen Seite der Haupthalle, beim Ausgang zur Gasse."~ */
  IF ~~ THEN REPLY #38198 /* ~"Vielen Dank für deine Hilfe. Leb wohl."~ */ DO ~SetGlobal("Know_Tiresias","GLOBAL",2)
~ JOURNAL #37703 /* ~Ich habe einen blinden alten Xaositekten im Mietshaus der Schläger getroffen. Er hat mir von einer geheimen Tür erzählt, die in die Gasse der hallenden Seufzer führen soll, ohne daß man den Ausgehungerten Bellenden Hunden begegnet, die in der Haupthalle des Mietshauses versammelt sind. Die Tür befindet sich angeblich in einer südwestlichen Kammer, neben der Haupthalle. ~ */ EXIT
END
