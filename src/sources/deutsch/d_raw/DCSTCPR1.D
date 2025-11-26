// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10146 /* ~Du siehst eine junge Frau in einem billigen Kleid. Ihr Mieder ist eindeutig enger als nötig, so daß ihr großer Busen aus dem Ausschnitt herausquillt.~ */
  IF ~~ THEN REPLY #10147 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #10148 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10149 /* ~Nachdem sie dich kurz gemustert hast, macht sie eine gelangweilte Miene. "Ich glaube, du bist mir zu ungehobelt. Am besten, du gehst weiter, Schleifer."~ */
  IF ~~ THEN REPLY #10150 /* ~"Wovon redest du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #10151 /* ~"Ich will dir bloß ein paar Fragen stellen."~ */ GOTO 6
  IF ~~ THEN REPLY #10152 /* ~"Ähh... Ja. Leb wohl."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10153 /* ~Sie schaut dich vielsagend an und lehnt sich an dich. "Denk drüber nach, Dussel. Was glaubst du wohl, welchem Gewerbe ich nachgehe?" Ihr Blick gleitet auf ihren Busen, und sie zwinkert dir zu. "Siehst du was, das dir gefällt?"~ */
  IF ~~ THEN REPLY #10154 /* ~"Wenn du sowieso meinst, daß ich nicht dein Typ bin, warum zeigst du mir deine 'Waren' dann so...?" Dir will das Wort nicht einfallen, das du eigentlich verwenden willst.~ */ GOTO 3
  IF ~~ THEN REPLY #10155 /* ~"Ich wollte dir bloß ein paar Fragen stellen."~ */ GOTO 6
  IF ~~ THEN REPLY #10156 /* ~"Hmm, was würde mich das kosten?"~ */ GOTO 23
  IF ~~ THEN REPLY #10157 /* ~"Eigentlich nicht. Ich geh jetzt lieber."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10158 /* ~Kichernd richtet sie sich wieder auf. "Ich will mich nur ein wenig amüsieren. Willst du irgendwas?"~ */
  IF ~~ THEN REPLY #10159 /* ~"Ich wollte dir bloß ein paar Fragen stellen."~ */ GOTO 6
  IF ~~ THEN REPLY #10160 /* ~"Hmm, was würde mich das kosten?"~ */ GOTO 23
  IF ~~ THEN REPLY #10161 /* ~"Eigentlich nicht. Ich geh jetzt lieber."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #10162 /* ~Sie wirft dir einen bösen Blick zu. "He! Pack ein, Dussel. Was besseres als mich findest du auf diesen Straßen nicht."~ */
  IF ~~ THEN REPLY #10163 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #10164 /* ~Sie lächelt dich an. "Dann mach's gut."~ */
  IF ~~ THEN REPLY #10166 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 2.1 3.0 7.1 8.1 9.2 10.0 11.0 15.1 16.0 20.0 22.0 23.0 25.0 26.0
  SAY #10165 /* ~Sie schaut dich gelangweilt an und seufzt. "Was möchtest du wissen?"~ */
  IF ~~ THEN REPLY #10167 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."
~ */ GOTO 7
  IF ~~ THEN REPLY #10168 /* ~"Was gibt's für Neuigkeiten?"~ */ GOTO 12
  IF ~~ THEN REPLY #10169 /* ~"Wer hat hier was zu sagen?"~ */ GOTO 20
  IF ~~ THEN REPLY #10170 /* ~"Was kannst du mir über Verdammnis erzählen?"~ */ GOTO 21
  IF ~~ THEN REPLY #10171 /* ~"Wie ist dein Name?"~ */ GOTO 25
  IF ~~ THEN REPLY #10172 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10173 /* ~Sie zieht eine Schnute und runzelt nachdenklich die Stirn. Dann lächelt sie. "Ja, ich erinnere mich. Er ist im Gefängnis." Sie runzelt erneut die Stirn: "Ungewöhnlicher Ort für einen Deva, findest du nicht?~ */
  IF ~~ THEN REPLY #10174 /* ~"Gefängnis? Bist du dir da sicher?"~ */ DO ~SetGlobal("Know_Deva_Prison","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #10175 /* ~"Ich verstehe. Kann ich dich vielleicht was andres fragen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10176 /* ~"Du hast mir wirklich sehr geholfen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10177 /* ~Sie schaut dich ernst an. "Natürlich bin ich sicher. Einer der Wächter hat's mir erzählt. Der Deva sitzt sicher hinter Schloß und Riegel. Sie haben den Gefängnisbereich vergrößert und sind dabei vor kurzem auf einen Hohlraum im Fels gestoßen. Dort fanden sie ihn, und dort ist er jetzt auch sprichwörtlich eingelocht."~ */
  IF ~~ THEN REPLY #10178 /* ~"Hmm. Das wird es erschweren, ihn zu treffen."~ */ GOTO 9
  IF ~~ THEN REPLY #10179 /* ~"Noch eine Frage."~ */ GOTO 6
  IF ~~ THEN REPLY #10180 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10181 /* ~Sie streckt dir ihre Hand entgegen und lächelt dich verschlagen an. "Klimper? Klimper?"~ */
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10182 /* ~Gib ihr ein paar Münzen.~ */ DO ~TakePartyGold(2)
~ GOTO 10
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10183 /* ~Lüge: "Tut mir leid, ich hab' kein Geld."~ */ GOTO 11
  IF ~~ THEN REPLY #10184 /* ~"Darf ich dir noch eine andere Frage stellen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10185 /* ~"Macht nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10186 /* ~Mit einem süßen Lächeln beugt sie sich vor und gewährt dir noch einmal Einblick in ihr pralles Dekolleté. "Geh zum Verrätertor und hör dich um. Irgend jemand dort kann dir bestimmt helfen." Sie steckt die Münze in ihr Mieder.~ */
  IF ~~ THEN REPLY #10187 /* ~"Danke, das werd ich. Darf ich dich dann noch etwas anderes fragen?"~ */ GOTO 6
  IF ~~ THEN REPLY #67907 /* ~"Ich muß jetzt gehen, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #10188 /* ~Sie seufzt und zieht einen Schmollmund. "Ich mag bescheuert sein, aber ich helf dir trotzdem. Geh ins Verrätertor und hör dich um. Irgend jemand dort kann dir bestimmt helfen."~ */
  IF ~~ THEN REPLY #10189 /* ~"Danke, das werd ich. Darf ich dich dann noch etwas anderes fragen?"~ */ GOTO 6
  IF ~~ THEN REPLY #67908 /* ~"Ich muß jetzt gehen, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1
  SAY #10190 /* ~"Die Pest ist ja endlich eingedämmt. Mehrere Stadtteile wurden abgeriegelt, damit sie sich nicht ausbreiten kann. Sie mußten sogar auf dem Marktplatz das Tor nach Carzeri schließen." Sie denkt nach.~ */
  IF ~~ THEN REPLY #10191 /* ~"Erzähl weiter."~ */ GOTO 13
  IF ~~ THEN REPLY #10192 /* ~"Wie bitte? Pest?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #10193 /* ~"Ich danke dir für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 17.0 24.0
  SAY #10194 /* ~"Die Tochter von Besudelter Barse wird vermißt. Er ist völlig aus dem Häuschen deswegen und sucht nach einem Knochenbrecher, er ihm hilft, sie zu finden."~ */
  IF ~~ THEN REPLY #10195 /* ~"Erzähl weiter."~ */ GOTO 14
  IF ~~ THEN REPLY #10196 /* ~"Wer ist denn der Besudelte Barse, und wo kann ich ihn finden?"~ */ GOTO 18
  IF ~~ THEN REPLY #10197 /* ~"Mein Dank gebührt dir. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #10198 /* ~"Irgendein armer Schlucker wird heute einen Kopf kürzer gemacht. Auf dem Marktplatz. Wirklich widerlich." Sie runzelt die Stirn und wendet den Blick von dir ab.~ */
  IF ~~ THEN REPLY #10199 /* ~"Erzähl weiter."
~ */ GOTO 15
  IF ~~ THEN REPLY #10200 /* ~"Was hat er denn getan?"~ */ GOTO 19
  IF ~~ THEN REPLY #10201 /* ~"Ich danke dir, meine Dame. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 19.0
  SAY #10202 /* ~Für einen Moment scheint sie in Gedanken versunken zu sein. "Mehr fällt mir gerade nicht ein." Sie zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #10203 /* ~"Du scheinst blendend informiert zu sein. Ich bin beeindruckt."~ */ GOTO 16
  IF ~~ THEN REPLY #10204 /* ~"Dürfte ich dich vielleicht noch etwas anderes fragen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10205 /* ~"Mein Dank gebührt Dir. Leb wohl, meine Dame."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10206 /* ~Sie lächelt, beugt sich vor und zwinkert dir verführerisch zu. "Irgendwie kommen die Leute immer zu mir, um ihr Herz auszuschütten. Keine Ahnung, weshalb. " Sie richtet sich wieder auf und kichert.~ */
  IF ~~ THEN REPLY #10207 /* ~"Ähh... Ja, ich frage mich, warum. Naja, ich wollte dich noch was andres fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #10208 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #10209 /* ~"Ja, aber mach dir keine Sorgen. Sie ist unter Kontrolle, seitdem die verseuchten Gebiete abgeriegelt wurden."~ */
  IF ~~ THEN REPLY #10210 /* ~"Verstehe. Erzähl weiter."~ */ GOTO 13
  IF ~  Global("Know_Deva_Prison","Global",1)
~ THEN REPLY #10211 /* ~"Kam die Pest vielleicht zu der Zeit über euch, als sie das Gefängnis des Devas ausgebuddelt haben?"~ */ DO ~SetGlobal("Deva_Plague","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #10212 /* ~"Ich muß mich jetzt auf den Weg machen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.1
  SAY #10213 /* ~"Er ist der Wirt vom Verrätertor. Liegt ungefähr in dieser Richtung." Sie zeigt die Straße hinunter.~ */
  IF ~~ THEN REPLY #10214 /* ~"Erzähl weiter."~ */ GOTO 14
  IF ~~ THEN REPLY #10215 /* ~"Ich danke dir für deine Hilfe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.1
  SAY #10216 /* ~Sie runzelt kurz die Stirn und schaut weg. Dann zuckt sie mit den Achseln. "Weiß ich leider nicht. Keiner meiner... Informanten hat mir je den Grund genannt."~ */
  IF ~~ THEN REPLY #10217 /* ~"Erzähl weiter."~ */ GOTO 15
  IF ~~ THEN REPLY #10218 /* ~"Du bist mir eine große Hilfe gewesen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 6.2
  SAY #10219 /* ~Sie kichert. "Er heißt Tovus, Tovus Giljaf. Er kann ganz schön... aufbrausen, aber zu mir ist er immer total süß. Außerdem zahlt er gut." Sie zögert und scheint ihr Verhalten kurz zu überdenken. "Ich sollte allerdings nicht über Tovus sprechen. Du findest ihn im Verwaltungsbüro am Marktplatz."
~ */
  IF ~~ THEN REPLY #10220 /* ~"Also gut, eine andere Frage."~ */ GOTO 6
  IF ~~ THEN REPLY #10221 /* ~"Ich muß dich jetzt verlassen."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3
  SAY #10222 /* ~"Verdammnis..." Sie seufzt und macht einen leicht verzweifelten Eindruck. "Die Stadt ist ein Kerker der Einsamen. Die Schlucker, die du hier siehst, sind durch Betrug und Verrat dahin gekommen, wo sie heute sind. Jetzt müssen sie stets auf der Hut sein und wissen nie, wem sie über den Weg trauen können und wem nicht."~ */
  IF ~~ THEN REPLY #10223 /* ~"Gilt das auch für dich?"~ */ GOTO 22
  IF ~~ THEN REPLY #10224 /* ~"Interessant. Ich glaube, ich sollte jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #10225 /* ~Sie wendet wehmütig den Blick ab. "Ich habe auch meinen Teil dazu beigetragen. Heute bereue ich es..." Sie dreht sich wieder zu dir um. "Wenn ich dir einen guten Rat geben darf: Egal was du tust in deinem Leben - tue nichts, das du dir nicht verzeihen kannst."~ */
  IF ~~ THEN REPLY #10226 /* ~"Ich werd's mir merken. Kann ich dich noch was andres fragen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10227 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.2 3.1
  SAY #10228 /* ~Sie mustert dich wieder von Kopf bis Fuß. "Hm... wenn du versprichst, daß du mich gut behandelst und mir nicht weh tust... zehn Münzen."~ */
  IF ~~ THEN REPLY #10229 /* ~"Du bringst mich in Versuchung... aber ich kann jetzt nicht. Kann ich dich noch was andres fragen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10230 /* ~"Tut mir leid, aber da muß ich passen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.1
  SAY #10231 /* ~Sie runzelt nachdenklich die Stirn und läßt ihren Blick in die Ferne schweifen. Nach einer Weile wendet sie sich wieder dir zu. "Wenn ich mir das richtig überlege, hast du recht. Die Pest ist ausgebrochen, kurz nachdem man ihn gefunden hat."~ */
  IF ~~ THEN REPLY #10232 /* ~"Verstehe. Erzähl weiter."~ */ GOTO 13
  IF ~~ THEN REPLY #10233 /* ~"Das hat mir sehr geholfen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.4
  SAY #10234 /* ~Sie schenkt dir ein süßes Lächeln. "Ich heiße Sharlene. Aber meine Freunde nennen mich Shar."
~ */
  IF ~~ THEN REPLY #10235 /* ~"Shar ist ein schöner Name. Darf ich dich noch etwas anderes fragen?"~ */ GOTO 6
  IF ~~ THEN REPLY #10236 /* ~"Du hast mir sehr geholfen. Leb wohl, Shar."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 26 // from:
  SAY #63238 /* ~Du siehst Sharlene, die Hure. Sie lächelt dich süß an. "Hallo nochmals, Schleifer. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #63239 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #63240 /* ~Nichts, leb wohl.~ */ EXIT
END
