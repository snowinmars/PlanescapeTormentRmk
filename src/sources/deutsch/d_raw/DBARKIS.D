// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3076 /* ~Du siehst einen Mann mit lederner Haut, dessen Gesicht ganz leicht aschfarbig ist. Seine Zähne scheinen besonders scharf zu sein und aus seinen Augen blickt dich die Langeweile an, die einen befällt, der zuviel gesehen hat. Er spricht näselnd und abgehackt. "Du schon wieder, was? Was willst du denn jetzt?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #3077 /* ~"'Du schon wieder'?" Was soll das heißen?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10238 /* ~"Du hast mein Auge doch noch, oder? Ich würd's gern zurückkaufen."~ */ GOTO 11
  IF ~~ THEN REPLY #10239 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #10240 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 13
  IF ~~ THEN REPLY #10241 /* ~"Was kannst du mir über die Gäste hier erzählen?"~ */ GOTO 15
  IF ~~ THEN REPLY #10242 /* ~"Ich will was zu trinken."~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10243 /* ~"Ich suche nach einem Journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10244 /* ~"Ich suche Pharod, den Sammler."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Goldspore, der Auktionator, wollte, daß du diesen Handzettel aufhängst."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68055 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10245 /* ~"Du schon wieder? Was willst du diesmal?"~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10246 /* ~"Als ich dich vorhin angesprochen habe, hast du gesagt 'du schon wieder?' Wie soll ich das verstehen?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10247 /* ~"Du sagtest, du hättest mein Auge. Ich hätt's jetzt gern zurück."~ */ GOTO 11
  IF ~~ THEN REPLY #10248 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #10249 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10250 /* ~"Was kannst du mir über die Gäste hier erzählen?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10251 /* ~"Ich will was zu trinken."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10252 /* ~"Mit Mochai wirst du keinen Ärger mehr haben."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10253 /* ~"Ich will was zu trinken."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10254 /* ~"Ich suche nach einem Journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10255 /* ~"Ich suche Pharod, den Sammler."~ */ GOTO 30
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10256 /* ~"Was kannst du mir über die Gäste hier erzählen?"~ */ GOTO 35
  IF ~  Global("Mochai_Dead_KAPUTZ","GLOBAL",1)
GlobalLT("Mochai","GLOBAL",3)
~ THEN REPLY #57941 /* ~"Du wirst keine Probleme mehr mit Mortai haben."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Goldspore, der Auktionator, wollte, daß du diesen Handzettel aufhängst."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #68056 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.4 4.2 5.2 7.0 9.0 11.4 12.1 13.1 14.0 15.1 16.0 16.1 17.14 18.7 19.1 20.2 21.2 22.2 23.2 24.4 25.1 26.1 27.0 28.2 29.0 30.0 31.1 32.1 34.0 35.0
  SAY #10257 /* ~"Mach's kurz. Verstanden? Ich hab' hier zahlende Kunden."
~ */
  IF ~  Global("Have_Eye","GLOBAL",0)
~ THEN REPLY #10258 /* ~"Als ich dich vorhin angesprochen habe, hast du gesagt 'du schon wieder?' Wie soll ich das verstehen?"~ */ GOTO 3
  IF ~  Global("Have_Eye","GLOBAL",1)
~ THEN REPLY #10259 /* ~"Du sagtest, du hättest mein Auge. Ich würd's gern zurückkaufen."~ */ GOTO 11
  IF ~~ THEN REPLY #10260 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #10261 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 13
  IF ~  Global("Mochai","GLOBAL",0)
~ THEN REPLY #10262 /* ~"Was kannst du mir über die Gäste hier erzählen?"~ */ GOTO 15
  IF ~  GlobalLT("Mochai","GLOBAL",2)
~ THEN REPLY #10263 /* ~"Ich will was zu trinken."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10264 /* ~"Ich hab' mich um die Zechprellerin gekümmert."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Mochai","GLOBAL",3)
~ GOTO 31
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10265 /* ~"Ich will was zu trinken."~ */ GOTO 18
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10266 /* ~"Ich suche nach einem Journal."~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10267 /* ~"Ich suche Pharod, den Sammler."~ */ GOTO 30
  IF ~  Global("Gilt_Miss","GLOBAL",5)
~ THEN REPLY #10268 /* ~"Goldspore, der Auktionator, wollte, daß du diesen Handzettel aufhängst."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",6)
~ GOTO 34
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #45135 /* ~"Was kannst du mir über die Gäste hier erzählen?"~ */ GOTO 35
  IF ~~ THEN REPLY #57942 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0
  SAY #10269 /* ~"Jawohl, 'du schon wieder'. Bist du jetzt etwa taub geworden? Du warst schon mal hier, vor ungefähr fünfzehn Jahren, bist ziemlich ausgerastet und hast hier alles kurz und klein geschlagen. Du hast ein paar Münzen dagelassen, um für den Schaden aufzukommen, aber sie reichten nicht. Dann hast du dir deinen eigenen verdammten Augapfel rausgerissen und angekündigt, ihn zurückzufordern, sobald du zweihundert Münzen beisammen hast. Mit fünfzehn Jahren Zinsen macht das jetzt zirka fünfhundert Münzen. Entweder du zahlst, Kumpel, oder ich behalte dein Auge."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10270 /* ~"Fünfhundert? Das ist ja lächerlich!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10271 /* ~"Fünfhundert? Das ist ja lächerlich!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10272 /* ~"Fünfhundert? Also gut. Bitteschön."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10273 /* ~"Soviel hab' ich nicht."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10274 /* ~"Kein Interesse im Moment. Beantworte mir statt dessen noch ein paar andere Fragen."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10275 /* ~"Vergiß es. Gehab dich wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #10276 /* ~Er zögert kurz. "Na ja, vielleicht. Gib mir einfach dreihundert Münzen, und das Auge gehört dir."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #10277 /* ~"Abgemacht. Hier hast du das Geld."~ */ DO ~TakePartyGold(300)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(300)
~ THEN REPLY #10278 /* ~"Auch das kann ich mir nicht leisten."~ */ GOTO 7
  IF ~~ THEN REPLY #10279 /* ~"Vergiß es. Gibt mir statt dessen noch ein paar Antworten auf andere Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10280 /* ~"Vergiß es. Ich komme wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 11.1
  SAY #10281 /* ~"Das ist mein letztes Angebot. Nimm es an oder pack ein."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10282 /* ~"Gut, ich nehm's."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10283 /* ~"Soviel hab' ich nicht."~ */ GOTO 7
  IF ~~ THEN REPLY #10284 /* ~"Vergiß es. Beantworte mir statt dessen noch ein paar andere Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10285 /* ~"Dann pack ich lieber ein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.0 5.0 11.2
  SAY #10286 /* ~"Abgemacht." Er holt eine dunkle, mit Wachs verschlossene Flasche mit weitem Hals aus seiner Tasche. Du hörst, wie eine Flüssigkeit darin schwappt, sowie ein gluckerndes Geräusch. Als er sie öffnet, wird dir von dem Gestank des Konservierungsmittels speiübel. In der Brühe schwimmt ein Augapfel. "Jetzt überleg dir mal schnell, was du damit machen willst... Jetzt, wo Luft drangekommen ist, kannst du genauso gut ein gekochtes Ei dazu tun -schlechter kann's davon auch nicht mehr werden. Überleg dir, was du willst, Schleifer."~ */
  IF ~  HPGT(Protagonist,15)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10287 /* ~Reiß deinen Augapfel heraus, und setz diesen in die Augenhöhle.~ */ DO ~GiveExperience(Protagonist,1000)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPGT(Protagonist,15)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10288 /* ~Reiß deinen Augapfel heraus, und setz diesen in die Augenhöhle.~ */ DO ~GiveExperience(Protagonist,750)
Damage(Protagonist,LOWER,15)
~ GOTO 8
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #10289 /* ~Reiß deinen Augapfel heraus, und setz diesen in die Augenhöhle.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 10
  IF ~~ THEN REPLY #10290 /* ~Sieh zu, wie er verrottet.~ */ GOTO 25
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.1 5.1 11.3
  SAY #10291 /* ~"Dann kriegst du auch dein Auge nicht wieder. Das verstehst du doch? Komm wieder, wenn du den Klimper beisammen hast."~ */
  IF ~~ THEN REPLY #10292 /* ~"Also schön. Dann beantworte mir noch ein paar andere Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10293 /* ~"Okay. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1
  SAY #10294 /* ~Nach kurzem Zögern greifst du in deine Augenhöhle und läßt dein Auge in deine Handfläche gleiten. Der Wirt hilft dir, den Sehnerv zu durchtrennen und führt deine Hand zu der Flasche mit der Brühe auf dem Tresen. Du legst dein Auge in das Konservierungsmittel, nimmst das alte Auge zwischen die Finger und setzt es in die leere Augenhöhle ein. Die Schmerzen dieses Eingriffs sind unglaublich. Doch kurz darauf spürst du schon, wie der Sehnerv an das neue Auge anwächst... und plötzlich steigen alte Erinnerungen in dir hoch!
~ */
  IF ~~ THEN REPLY #10295 /* ~Absorbiere sie.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10296 /* ~Erinnerung: Vor dir erstreckt sich eine unendliche, chaotische Einöde, die sich ständig verändert. Ein Schwarm menschenähnlicher Geier stürzt mit gezückten Waffen angriffslustig auf dich herab. Du hältst deine eigene, glänzende Klinge fest in der Hand...

Erinnerung: Drei hartgesottene Gestalten umzingeln dich. Sie tragen die Farben eines Feindes, den du nicht recht einordnen kannst. In ihren Händen blitzen lange Dolche, und sie blecken bedrohlich ihre Zähne. Du schaust auf deine narbigen Hände und weißt, daß sie bald blutbedeckt sein werden...

Erinnerung: Eine riesige, froschähnliche Gestalt kommt über die/durch die/unter der Chaos-Materie auf dich zu und zeigt ihr zahnbewehrtes Maul. Du wirfst deinen Speer durch die sich verändernde Materie und spießt die Gestalt auf einen plötzlich auftauchenden Steinsockel... Du erinnerst dich wieder an verloren geglaubte kämpferische Qualitäten.
~ */
  IF ~~ THEN REPLY #10297 /* ~Stell' Barkis noch mehr Fragen.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ GOTO 2
  IF ~~ THEN REPLY #10298 /* ~Geh.~ */ DO ~IncrementExtraProficiency(Protagonist,1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #10299 /* ~Du greifst in deine Augenhöhle. Der Schmerz ist unglaublich stark und raubt dir die Sinne. Du sinkst zu Boden. Blut fließt aus der frisch geöffneten Augenhöhle. Du bist gestorben.~ */
  IF ~~ THEN REPLY #10300 /* ~Erledigt.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.1 1.1 2.1
  SAY #10301 /* ~"Du willst es wiederhaben? Gut, dann gib mir fünfhundert Münzen. Wenn du die nicht hast, hast du Pech gehabt."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10302 /* ~"Fünfhundert? Das ist ja lächerlich!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #10303 /* ~"Fünfhundert? Das ist ja lächerlich!"~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 5
  IF ~  PartyGoldGT(499)
~ THEN REPLY #10304 /* ~"Fünfhundert? Also gut. Bitteschön."~ */ DO ~TakePartyGold(500)
SetGlobal("Have_Eye","GLOBAL",2)
~ GOTO 6
  IF ~  PartyGoldLT(500)
~ THEN REPLY #10305 /* ~"Soviel hab' ich nicht."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10306 /* ~"Kein Interesse im Moment. Beantworte mir statt dessen noch ein paar andere Fragen."~ */ DO ~SetGlobal("Have_Eye","GLOBAL",1)
SetGlobal("Have_Eye","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10307 /* ~"Vergiß es. Gehab dich wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 1.2 2.2
  SAY #10308 /* ~"Ich? Ich bin Barkis. Der Eigentümer und Chef dieses Ladens."~ */
  IF ~~ THEN REPLY #10309 /* ~"Was ist dies für ein Ort?"~ */ GOTO 13
  IF ~~ THEN REPLY #10310 /* ~"Dann bist du die Person, der ich Fragen stellen sollte."~ */ GOTO 2
  IF ~~ THEN REPLY #10311 /* ~"Nett hier. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 0.3 1.3 2.3 12.0
  SAY #10312 /* ~"Hast du das Schild draußen nicht gesehen? Hast du nicht den Dussel gesehn, der über dem Heizofen brennt? Das hier ist die Schwelende Leiche, Schleifer, die beste Kneipe Sigils. Jedenfalls ist es der beste Laden in diesem Teil des Stocks, und deshalb auch einer der besten Sigils. Im Viertel der Dame gibt es auch klasse Kneipen mit Pflanzen und allem drum und dran, und auch im restlichen Stock findet man hier und da ein paar höllisch gute Tavernen, aber an die Schwelende Leiche reicht keine heran."
~ */
  IF ~~ THEN REPLY #10313 /* ~"Und wo ist nun diese Leiche?"~ */ GOTO 14
  IF ~~ THEN REPLY #10314 /* ~"Ich verstehe. Dann erzähl mir halt was anderes, ja?"~ */ GOTO 2
  IF ~~ THEN REPLY #10315 /* ~"Da hast du gleich mehrmals recht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #10316 /* ~"Der da? Ignus. Er war mal ein Flammenzauberer; hat Teile des Stocks abgefackelt und sich dann von einem Haufen anderer Zauberer kassieren lassen. Wenn du mehr über ihn wissen willst, sprich mit Drusilla da unten bei der Tür."~ */
  IF ~~ THEN REPLY #10317 /* ~"Also gut. Ich würde gerne noch mehr über was anderes wissen."~ */ GOTO 2
  IF ~~ THEN REPLY #10318 /* ~"Also gut, werd ich tun. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.4 1.4 2.4
  SAY #10319 /* ~"Ich mische mich gewöhnlich nicht in die Angelegenheiten der Leute ein, die ihren hart verdienten Klimper bei mir ausgeben, es sei denn, sie bitten mich darum. Also. Da drüben das ist Candrian, ein Ebenenreisender. Er ist der richtige, wenn's ums Bereisen der Ebenen geht, denn er ist fast schon überall gewesen. Da unten siehst du Ebb Knarrknie, einen alten Knochenbrecher des Harmoniums - aber nimm ihm das nicht übel - und Schlepper. Er hat ein gutes Herz und kennt Sigil in- und auswendig. Die Scheusale da drüben sind Aethelgrin und Tegar'in. Aber ich rate dir, dich nicht mit ihnen einzulassen. Sie mögen zwar ganz unten in der Hierarchie der Scheusale stehen - doch Scheusal bleibt Scheusal. Da drüben haben wir Ilquix - dem NICHT zu trauen ist - und ein paar Gnadentöter, die nach irgendeinem armen Schlucker Ausschau halten. Dak'kon, der Ghithzerai dort, ist mir ein Rätsel. Über ihn weiß ich nicht viel, und er sagt auch nicht viel. Und du? Willst du dir nicht 'n bißchen Fusel verdienen?"~ */
  IF ~~ THEN REPLY #10320 /* ~"Ja."~ */ GOTO 16
  IF ~~ THEN REPLY #10321 /* ~"Eigentlich nicht. Beantworte mir doch noch ein paar andere Fragen, ja?"~ */ GOTO 2
  IF ~~ THEN REPLY #10323 /* ~"Nein. Ich muß gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10322 /* ~"Siehst du die Frau im Schatten da hinten an der Wand. Sie versucht schon die ganze Zeit, den Mut aufzubringen, abzuhauen und die Zeche zu prellen. Ich möchte, daß du sie davon abhältst. Wenn du es schaffst, kriegst du dein ganzes Leben lang freien Fusel."~ */
  IF ~~ THEN REPLY #10324 /* ~"Werd' mich drum kümmern. Beantworte mir erst noch ein paar Fragen."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #10325 /* ~"Würd' ich lieber lassen. Beantworte mir statt dessen ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10326 /* ~"Werd' mich drum kümmern. Ich sag' dir Bescheid, wenn ich fertig bin."~ */ DO ~SetGlobal("Mochai","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #10327 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 0.5 1.5 2.5 19.0 20.0 21.0 22.0 23.0 24.1 24.2 28.0
  SAY #10328 /* ~"Was willst du? Wir haben normales Bier für eine Münze, Starkbier für zwei, Met für vier. Wir haben Wasser direkt aus den Elementarebenen für acht Münzen, arboreanischen Feuerwein und Feuersamen für zehn, Herzwein aus Verdammnis für acht und echten Baator-Whiskey für zwanzig Münzen. Was nimmst du?"~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #10329 /* ~"Bier."~ */ DO ~TakePartyGold(1)
~ GOTO 20
  IF ~  PartyGoldLT(1)
~ THEN REPLY #10330 /* ~"Bier."~ */ GOTO 19
  IF ~  PartyGoldGT(1)
~ THEN REPLY #10331 /* ~"Starkbier."~ */ DO ~TakePartyGold(2)
~ GOTO 20
  IF ~  PartyGoldLT(2)
~ THEN REPLY #10332 /* ~"Starkbier."~ */ GOTO 19
  IF ~  PartyGoldGT(3)
~ THEN REPLY #10333 /* ~"Met."~ */ DO ~TakePartyGold(4)
~ GOTO 20
  IF ~  PartyGoldLT(4)
~ THEN REPLY #10334 /* ~"Met."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10335 /* ~"Wasser."~ */ DO ~TakePartyGold(8)
~ GOTO 21
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10336 /* ~"Wasser."~ */ GOTO 19
  IF ~  PartyGoldGT(9)
~ THEN REPLY #10337 /* ~"Feuerwein und Feuersamen."~ */ DO ~TakePartyGold(10)
~ GOTO 22
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10338 /* ~"Feuerwein und Feuersamen."~ */ GOTO 19
  IF ~  PartyGoldGT(7)
~ THEN REPLY #10340 /* ~"Herzwein."~ */ DO ~TakePartyGold(8)
~ GOTO 23
  IF ~  PartyGoldLT(8)
~ THEN REPLY #10341 /* ~"Herzwein."~ */ GOTO 19
  IF ~  PartyGoldGT(19)
~ THEN REPLY #10342 /* ~"Whiskey."~ */ DO ~TakePartyGold(20)
~ GOTO 24
  IF ~  PartyGoldLT(20)
~ THEN REPLY #10343 /* ~"Whiskey."~ */ GOTO 19
  IF ~~ THEN REPLY #10344 /* ~"Informationen."~ */ GOTO 2
  IF ~~ THEN REPLY #10345 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.7 2.7 20.1 21.1 22.1 23.1 24.3 28.1 32.0
  SAY #10339 /* ~"Du willst was zu trinken? Kein Problem. Wir haben Bier, Starkbier, Met, Wasser aus den Elementarebenen, arboreanischen Feuerwein und Feuersamen, Herzwein aus Verdammnis und Baator-Whiskey. Was darf's sein?"~ */
  IF ~~ THEN REPLY #10346 /* ~"Bier."~ */ GOTO 20
  IF ~~ THEN REPLY #10347 /* ~"Starkbier."~ */ GOTO 20
  IF ~~ THEN REPLY #10348 /* ~"Met."~ */ GOTO 20
  IF ~~ THEN REPLY #10349 /* ~"Wasser."~ */ GOTO 21
  IF ~~ THEN REPLY #10350 /* ~"Feuerwein und Feuersamen."~ */ GOTO 22
  IF ~~ THEN REPLY #10351 /* ~"Herzwein."~ */ GOTO 23
  IF ~~ THEN REPLY #10352 /* ~"Whiskey."~ */ GOTO 24
  IF ~~ THEN REPLY #10353 /* ~"Informationen."~ */ GOTO 2
  IF ~~ THEN REPLY #10354 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.3 17.5 17.7 17.9 17.11 17.13
  SAY #10355 /* ~Der Wirt schaut dich böse an. "Du hast nicht genügend Klimper, um zu bezahlen. Anschreiben lassen ist nicht drin. Ich bin in letzter Zeit zu oft übers Ohr gehauen worden. Sonst noch was?"
~ */
  IF ~~ THEN REPLY #10356 /* ~"Was hast Du an Getränken?"~ */ GOTO 17
  IF ~~ THEN REPLY #10357 /* ~"Ja. Informationen."~ */ GOTO 2
  IF ~~ THEN REPLY #10358 /* ~"Nein, tut mir leid."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.2 17.4 18.0 18.1 18.2
  SAY #10359 /* ~Du stürzt das schwache Gebräu herunter. Der Geschmack ist nicht gerade umwerfend, aber wenigstens löscht es den Durst und enthält Alkohol. Etwas anderes scheint es für dich nicht bereitzuhalten. "Was darf's sein, Schleifer?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10360 /* ~"Gib mir noch'n Drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10361 /* ~"Gib mir noch'n Drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10362 /* ~"Beantworte mir ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10363 /* ~"Nichts."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.6 18.3
  SAY #10364 /* ~Er geht zum Faß an der Wand und dreht den Zapfhahn auf. In das Glas, das er darunter hält, läuft das klarste Wasser, das du je gesehen hast. Er stellt es vor dich hin, und du nimmst einen großen Schluck. Es ist das reinste Getränk, das du je probiert hast, kühl und erfrischend. Du spürst einen Lufthauch von der Zunge bis zum Magen, wo die kühle Temperatur sogar deine dort wütenden Emotionen zu beruhigen vermag. "Direkt aus dem Herzen der Wasserebene," sagt der Wirt. " Im Vergleich dazu schmeckt jedes andere Wasser abgestanden."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10365 /* ~"Gib mir noch'n Drink!"~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10366 /* ~"Das war fantastisch. Gib mir noch'n Drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10367 /* ~"Wenn das so ist, würde ich gern einfach ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #10368 /* ~"Wirklich erstaunlich. Meinen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.8 18.4
  SAY #10369 /* ~Er reicht dir ein Glas mit rubinrotem Wein und eine Handvoll bunter Samen. "Nimm die Samen in den Mund," sagt er, "und nimm einen Schluck Wein. Mach' dir keine Sorgen, wenn die Samen Feuer fangen, sie werden dir nicht schaden. Ein unvergleichliches Geschmackserlebnis." Er hat recht. Du steckst einen Samen in den Mund, der sich mit deinem Speichel mischt und ein winziges Feuer verursacht. Du löschst es mit einem Schluck Feuerwein, und der Geschmack ist tatsächlich unbeschreiblich. Barkis lächelt. "Noch einen?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10370 /* ~"Teufel nochmal, ja. Gib mir noch'n Drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10371 /* ~"Weiter so, immer her damit."~ */ GOTO 18
  IF ~~ THEN REPLY #10372 /* ~"Im Moment nicht, danke. Ich würde dir statt dessen gern ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #10373 /* ~"Im Moment nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.10 18.5
  SAY #10374 /* ~Er reicht dir ein Glas des berühmten Herzweines aus Verdammnis. Das Bukett ist atemberaubend, und der Wein selbst ist vollmundig und fruchtig. Der Nachgeschmack könnte nicht besser sein. "Aus echten Klingenranken gekeltert. Das Geheimnis würde ich auch gerne kennen." Der Wirt nickt dem leeren Glas zu. "Willst du noch einen?"~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10375 /* ~"Mit Sicherheit."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10376 /* ~"Mit Sicherheit."~ */ GOTO 18
  IF ~~ THEN REPLY #10377 /* ~"Nein, aber ich hätte gern ein paar Antworten."~ */ GOTO 2
  IF ~~ THEN REPLY #10378 /* ~"Nein danke."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.12 18.6
  SAY #10379 /* ~Er stellt ein Schnapsglas voll irgendeiner dampfenden Flüssigkeit vor dich hin. Sie sieht aus wie kochender Urin. Die Dämpfe, die in deine Richtung ziehen, sind jedoch höchst verlockend. Obwohl das Getränk fast unerträglich heiß ist, nimmst du einen Schluck, und der Geschmack ist genauso rauchig wie der Geruch. Du hast das Gefühl, daß der Whiskey dich innerlich zu verbrennen droht, doch der Schmerz, den du empfindest, ist eher angenehm. Der Wirt macht große Augen. "Immer noch auf den Beinen? Die meisten verkraften nicht mal ein halbes Gläschen."~ */
  IF ~~ THEN REPLY #10380 /* ~"Mit geht's prächtig. Ich merke überhaupt nichts."~ */ GOTO 28
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10381 /* ~"Gib mir noch'n Drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",2)
~ THEN REPLY #10381 /* ~"Gib mir noch'n Drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10382 /* ~"Gib mir noch'n Drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10383 /* ~"Ich vertrag 'ne ganze Menge. Könntest du mir vielleicht eine Frage beantworten?"~ */ GOTO 2
  IF ~~ THEN REPLY #10384 /* ~"An mich kommt fast keiner ran. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.3
  SAY #10385 /* ~Das Auge löst sich vor deinen Augen auf und sondert eine stinkende Flüssigkeit ab, deren Geruch dir in die Nase steigt und die Luft um dich herum verpestet. Der Wirt fächelt sich mit der Hand vor seinem Gesicht herum, um den Gestank zu vertreiben und sagt: "Das war reine Geldverschwendung. Willst du sonst noch was?"~ */
  IF ~~ THEN REPLY #10386 /* ~"Mein Geld zurück. Sofort."~ */ GOTO 26
  IF ~~ THEN REPLY #10387 /* ~"Bloß die Antworten auf ein paar Fragen."
~ */ GOTO 2
  IF ~~ THEN REPLY #10388 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #10389 /* ~"Dussel, nur weil du dich nicht entschließen konntest, was du mit dem Ding anfangen sollst, heißt das noch lange nicht, daß ich schuld dran bist, daß es futsch ist. Wenn du das Auge noch nutzen wolltest, hättest du denselben Augentrick anwenden sollen, wie letztes Mal. Mein Problem ist es jedenfalls nicht."~ */
  IF ~~ THEN REPLY #10390 /* ~"Vielleicht doch, wenn ich dich umbringe."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Barkis_One","GLOBALGood",-1)
~ GOTO 27
  IF ~~ THEN REPLY #10391 /* ~"Nein, schätze nicht. Dann beantworte mir doch ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10392 /* ~"Vielleicht später mal. Schönen Tag noch."~ */ EXIT
  IF ~~ THEN REPLY #10393 /* ~"Nein, ich denke nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #10394 /* ~Er lächelt boshaft. "Trau dich."~ */
  IF ~~ THEN REPLY #10395 /* ~"Vergiß es. Beantworte mir lieber ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #10396 /* ~"Vergiß es."~ */ EXIT
  IF ~~ THEN REPLY #10397 /* ~Greif ihn an.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.0
  SAY #10398 /* ~Der Wirt betrachtet dich aufmerksam und stützt dabei sein Kinn auf die Hand. "Weißt du, Schleifer, es gibt Leute, die eine natürliche Immunität gegen Gifte und ähnliches Zeug haben. Andere Leute bezeichnen Fusel bereits als Gift. Wenn das der Fall ist, ist es ziemlich wahrscheinlich, daß du ganz gut gegen Giftmischer gewappnet bist."~ */
  IF ~  GlobalGT("Mochai","GLOBAL",3)
~ THEN REPLY #10399 /* ~"Nun, was sagst du dazu... Na, gib mir noch'n Drink."~ */ GOTO 17
  IF ~  Global("Mochai","GLOBAL",3)
~ THEN REPLY #10400 /* ~"Nun, was sagst du dazu... Na, gib mir noch'n Drink."~ */ GOTO 18
  IF ~~ THEN REPLY #10401 /* ~"Das könnte sich wohl nützlich erweisen. Könntest du mir vielleicht eine Frage beantworten?"~ */ GOTO 2
  IF ~~ THEN REPLY #10402 /* ~"Gut. Meinen Dank und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.6 1.8 2.8
  SAY #10403 /* ~"Journal? Worte auf Papier? Mein Freund, um derartige Dinge reißt man sich hier im Stock nicht unbedingt. Die Leute können ja kaum das Schild über der Tür lesen, geschweige denn ein ganzes Journal. Aber wenn du schon ein Journal suchst, solltest du wenigstens systematisch vorgehen, anstatt willkürlich wildfremde Leute auszuquetschen."~ */
  IF ~~ THEN REPLY #10404 /* ~"Danke für den ungefragten Ratschlag. Dann beantworte mir doch eine andere Frage."~ */ GOTO 2
  IF ~~ THEN REPLY #10405 /* ~"Also gut. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 0.7 1.9 2.9
  SAY #10406 /* ~Er dreht sich um und spuckt auf den Boden. "Pharod? Pah. Wenn du ihm den Rücken kehrst, kannst du sicher sein, daß er dir einen Dolch zwischen die Rippen jagt. So wie du aussiehst, weißt du bestimmt, wovon ich rede. Aber wenn du Pharod auf Teufel komm raus finden willst, dann sprich mit Ebb Knarrknie da drüben. Er hat bestimmt wertvolle Informationen."~ */
  IF ~~ THEN REPLY #10407 /* ~"Gut, das werde ich dann gleich tun, nachdem du mir noch ein paar Fragen beantwortet hast."~ */ GOTO 2
  IF ~~ THEN REPLY #10408 /* ~"Ebb? Der Alte? Danke auch."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.6 1.11 2.6
  SAY #10409 /* ~"Tatsächlich? Dann steht dir eine besondere Belohnung zu, mein Freund... Du kriegst alles umsonst hier, jederzeit."~ */
  IF ~~ THEN REPLY #10410 /* ~"Das muß aber 'ne ziemlich dicke Summe gewesen sein, die sie bei dir anrechnen ließ."~ */ GOTO 32
  IF ~~ THEN REPLY #10411 /* ~"Danke. Noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #10412 /* ~"Ich werd' später darauf zurückkommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #10413 /* ~"Du kennst nicht mal die Hälfte der Geschichte. Willst du jetzt was trinken?"~ */
  IF ~~ THEN REPLY #10414 /* ~"Ja, und mach's schön voll."~ */ GOTO 18
  IF ~~ THEN REPLY #10415 /* ~"Im Moment suche ich nach Informationen."~ */ GOTO 2
  IF ~~ THEN REPLY #10416 /* ~"Nein, aber ich werde wiederkommen."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #10417 /* ~"Feuersamen. Kommen sofort!"~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from: 0.8 1.12 2.10
  SAY #45136 /* ~"Goldspore, was? Laß mich mal sehn." Er nimmt dir den Handzettel weg und überfliegt ihn. Dann sagt er stirnrunzelnd: "Richt ihm aus, das geht in Ordnung. Wolltest du sonst noch was?"~ */
  IF ~~ THEN REPLY #45137 /* ~"Nur noch ein paar Antworten..."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ GOTO 2
  IF ~~ THEN REPLY #45138 /* ~"Nein, danke. Leb wohl."~ */ DO ~TakePartyItemNum("GiltPost",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 1.10 2.11
  SAY #57943 /* ~Er sieht dich verwundert an. "Das haben wir schon mal durchgemacht, oder etwa nicht? Willst du noch etwas wissen, was ich dir noch nicht gesagt habe?"~ */
  IF ~~ THEN REPLY #57944 /* ~"Beantworte mir nur ein paar Fragen."~ */ GOTO 2
  IF ~~ THEN REPLY #57945 /* ~"Nein. Leb wohl."~ */ EXIT
END
