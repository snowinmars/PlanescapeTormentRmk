// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DREEK~

IF ~  Global("Reekwind","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Dieser Mann sieht dich mit seltsamen, insektenähnlichen Augen an. Sie sind *riesig*... und sehen aus, als würden sie jeden Moment herausspringen und über das Pflaster rollen. Als du näherkommst, nickt er eifrig und bewegt dabei den Kopf wie ein Vogel auf und ab... auf einmal bemerkst du den Urin- und Fäkaliengeruch, der ihn umgibt.
~ */
  IF ~~ THEN REPLY #9339 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #11329 /* ~Laß den zerlumpten Mann in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Der Mann schnieft und wischt sich die Nase am Ärmel ab. Als er den Mund zum Sprechen öffnet, siehst du sein schwarzes, verfaultes Zahnfleisch. "Geschichten gegen Bares, Sir?" Sein Atem riecht, als hätte er ein Stück vergammeltes Fleisch im Mund stecken. "Geschichten gegen Bares?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~~ THEN REPLY #11330 /* ~"Nicht heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0
  SAY #11276 /* ~Der Mann schnaubt, ihm tritt der Schaum vor den Mund. "Namen, Namen... wer bist du, wer bist du..." Sein Kopf zuckt bei jeder Wiederholung leicht. "Namen... gefährlich, gefährlich." Er starrt auf den Boden und scharrt mit seinem Fuß im Dreck.~ */
  IF ~~ THEN REPLY #11331 /* ~"Gefährlich?"~ */ DO ~SetGlobal("Reekwind","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #11332 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11277 /* ~"Ein Name, den man kennt, oder der einem anhaftet, ist immer gefährlich." Er schaut wieder zu dir auf. "Mein Name wurde mir gegeben, ohne daß ich darum gebeten habe. Übelwind." Wieder schlägt dir sein übelriechender Atem und der Geruch von Urin und Fäkalien ins Gesicht. "Namen, Namen."~ */
  IF ~~ THEN REPLY #11333 /* ~"Ein... passender Name."~ */ GOTO 4
  IF ~~ THEN REPLY #11334 /* ~"Hey. Der Name paßt gut zu dir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Reekwind_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #11335 /* ~"Ist das dein richtiger Name?"~ */ GOTO 4
  IF ~~ THEN REPLY #11336 /* ~"Ich... verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #11278 /* ~"Nicht mein wahrer Name, wahrer Name," murmelt Übelwind, wobei sein Kopf jedesmal zuckt, wenn er das Wort *Name* ausspricht. "Ein wahrer Name ist gefährlich. Er verleiht anderen Macht." Er starrt dich mit weit aufgerissenen Augen an und erhebt seinen Finger. "Halte deinen wahren Namen geheim, verrate ihn niemals."~ */
  IF ~~ THEN REPLY #11337 /* ~"Was meinst du?"~ */ GOTO 5
  IF ~~ THEN REPLY #11338 /* ~"Ich... verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #11279 /* ~"Ein Name ist wie ein Geruch... damit kann man dich ausfindig machen." Übelwind hustet. Dabei springen seine Augen fast aus den Augenhöhlen. Sein Husten scheint seine Gedärme in Aufruhr zu bringen, denn er läßt ordentlich einen fahren, als wollte er seine Worte dadurch unterstreichen. "Einen wahren Namen zu kennen, verleiht Macht." Er leckt sich die Lippen. "Die Macht, andere zu *verletzen*."~ */
  IF ~~ THEN REPLY #11339 /* ~"Ich kenne meinen richtigen Namen nicht."~ */ JOURNAL #61613 /* ~Ich habe einen kranken Geschichtenerzähler im Stock getroffen, einen übelriechenden Mann namens "Übelwind". Als ich mit ihm sprach, warnte er mich vor der Gefahr von Namen. Er sagte, wenn man einen Namen trägt, kann man irgendwie verfolgt, gesehen... gejagt werden. Aus irgendeinem Grund hat mich der Gedanke erschauern lassen. Ist *das* der Grund, weshalb ich namenlos bin?~ */ GOTO 6
  IF ~~ THEN REPLY #11340 /* ~"Ich... verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #11280 /* ~Übelwind reißt seine Augen auf. Die Größe seiner Augäpfel bereitet dir Unbehagen. "Dann hast du Glück, Glück. Bleib namenlos, und du wirst sein wie ein Geist auf den Ebenen, unauffindbar, unaufspürbar, ungesehen, unentdeckt." Er macht ein schmatzendes Geräusch. "Ein gewählter oder gegebener Name... erlaubt anderen, dich zu finden und zu verletzen."~ */
  IF ~~ THEN REPLY #11341 /* ~"Bist du verletzt?"~ */ GOTO 7
  IF ~~ THEN REPLY #11342 /* ~"Ich... verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.1
  SAY #11281 /* ~Übelwind nickt mit dem Kopf und kratzt sich dann. "Mein Name ist mir einmal rausgerutscht, nur ein einziges Mal, nur ein einziges Mal." Seine Augen werden feucht, als ob ihm die Erinnerung daran Schmerzen bereitet. Er schaut dich unbehaglich an. "Ich erzähl dir die Geschichte, aber nur gegen drei Kupfermünzen." Er grinst, als er das Wort *Kupfermünzen* ausspricht. Sein Mundgeruch haut dich fast um.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11343 /* ~"Wie du meinst. Hier sind drei Kupfermünzen."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11344 /* ~Lüge: "Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11345 /* ~Wahrheit: " Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11346 /* ~"Heute nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.0 17.3
  SAY #11282 /* ~Übelwind geht in Stellung, schaut zuerst nach links, dann nach rechts und schließlich dir in die Augen. Er verzerrt sein Gesicht zu einer Grimasse und läßt erneut einen fahren. Der Gestank haut dich fast aus den Socken, doch ihn scheint das nicht zu stören. "Ich bin verdammt! Bin in meiner ganzen Pracht durch die Bezirke stolziert..." Er steht auf, streckt seine Nase in die Luft, geht auf und ab und nickt unsichtbaren Passanten zu.~ */
  IF ~~ THEN REPLY #11347 /* ~Hör ihm zu.~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
~ JOURNAL #63974 /* ~Übelwind hat mir erzählt, daß er nicht immer das stinkende Wrack war, das er heute ist - Offensichtlich ist er jemandem begegnet, der ihm nicht gerade freundlich gesinnt war, und wurde daraufhin verflucht. Anscheinend konnte derjenige, der ihn verfluchte, den Fluch dauerhaft machen, da er Übelwinds echten Namen kannte, und seitdem hat Übelwind unter den Konsequenzen gelitten. Übelwinds Beschreibung zufolge hat ihn ein fetter Mann mit ansetzender Glatze verflucht, der irgendwie nach einem "Kürbis" aussah... Das bedeutet wahrscheinlich, daß er sich bevorzugt orangefarben kleidet. Er hält sich wahrscheinlich in einem der Oberen Bezirke auf, wo Übelwind früher einmal gewohnt hat.~ */ GOTO 9
  IF ~~ THEN REPLY #11348 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11349 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11283 /* ~Übelwind erstarrt, die Arme in die Seiten gestemmt. "Bin einem Verrückten über den Weg gelaufen. Sah aus wie ein Kürbis, seine Samen - Flüche!" Übelwind drückt seinen Bauch heraus, um dick auszusehen, streicht sich das Haar mit seinen schmutzigen Handflächen so zurück, daß er fast kahl wirkt, und fängt dann an, mit den Fingern auf seinem 'dicken' Bauch herumzutrommeln. Dann tanzt er um die Stelle herum, an der er sich in seiner Rolle als 'spießiger Snob' befunden hatte. "Ein mit Flüchen beladener Wahnsinniger." Mit einem hämischen Grinsen und einer abfälligen Geste schleudert Übelwind dem 'spießigen Snob' einen unsichtbaren Fluch entgegen. ~ */
  IF ~~ THEN REPLY #11364 /* ~Hör ihm zu.~ */ GOTO 10
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11366 /* ~"Moment mal... Ich habe den, der dich verflucht hat, *getroffen*. Sein Name war doch Mördersinn, nicht wahr?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Offensichtlich wurde Übelwind von Jumble Mördersinn verflucht.~ */ GOTO 11
  IF ~~ THEN REPLY #11368 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11370 /* ~"Ich hab' genug gehört. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0 12.0
  SAY #11284 /* ~"Er kannte meinen Namen, er war mir rausgerutscht, rausgerutscht, er hat alles genommen, alles genommen!" Er erstarrt wieder, holt tief Luft und schlüpft in die Rolle des 'spießigen Snobs', der jedoch plötzlich zusammenbricht. Übelwind läßt wieder ordentlich einen fahren und verpestet beim Ausatmen die ganze Luft. "Gestraft bin ich mit Gestank, mit Exkrementen! Ich kam hierher, um Geschichten zu erzählen, zu erzählen. Und jetzt werde ich Übelwind genannt, genannt..."
~ */
  IF ~~ THEN REPLY #11372 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11375 /* ~"Moment mal... Ich habe den, der dich verflucht hat, *getroffen*. Sein Name war doch Mördersinn, nicht wahr?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Offensichtlich wurde Übelwind von Jumble Mördersinn verflucht.~ */ GOTO 11
  IF ~~ THEN REPLY #11378 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 15.7
  SAY #11285 /* ~Beim Klang dieses Namens blähen sich Übelwinds Backen auf, und seine Augen treten hervor. Er kotzt plötzlich auf den Boden. Er hustet und würgt so heftig, daß sein ganzer Körper zu zittern beginnt... nach einigen langen Minuten nickt er leicht und beschreibt einen Halbkreis über sein Herz.~ */
  IF ~~ THEN REPLY #11380 /* ~"Was geschah nach deinem Treffen mit... ihm?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 10
  IF ~~ THEN REPLY #11382 /* ~"Was für eine traurige Geschichte. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 15
  IF ~  Dead("Jumble")
~ THEN REPLY #11384 /* ~"Er ist tot, weißt du."~ */ GOTO 13
  IF ~  !Dead("Jumble")
~ THEN REPLY #11386 /* ~"Ich könnte ihn bestimmt dazu bringen, den Fluch von dir zu nehmen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Reekwind_1","GLOBALGood",1)
~ GOTO 12
  IF ~~ THEN REPLY #11389 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.3
  SAY #11286 /* ~Übelwinds Miene hellt sich kurz auf, doch dann sagt er traurig: "Versprechen, Versprechen..." Er gibt einen langen, übelriechenden Seufzer von sich, der von heftigem Schluckauf mehrmals unterbrochen wird. "Versuch es, wenn du meinst, wenn du meinst..."~ */
  IF ~~ THEN REPLY #11391 /* ~"Was geschah nach deinem Treffen mit... ihm?"
~ */ GOTO 10
  IF ~~ THEN REPLY #11411 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11412 /* ~"Ich werde sofort zu ihm gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #11287 /* ~Reekwind gibt einen langen, übelriechenden Seufzer von sich, der von heftigem Schluckauf mehrmals unterbrochen wird. "Schon gut, schon gut..."~ */
  IF ~~ THEN REPLY #11413 /* ~"Ich hätte noch ein paar Fragen an dich..."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ GOTO 15
  IF ~~ THEN REPLY #11414 /* ~"Leb wohl."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ EXIT
END

IF ~  OR(2)
Global("Reekwind","GLOBAL",1)
Global("reekwind","global",10)
~ THEN BEGIN 14 // from:
  SAY #11288 /* ~Übelwind sieht dich näherkommen, nickt eifrig und starrt dich mit seinen riesigen Augen an. Wieder weht dir der Geruch von Urin und Fäkalien in die Nase und haut dich fast um.~ */
  IF ~~ THEN REPLY #11415 /* ~"Sei gegrüßt, Übelwind. Ich hätte ein paar Fragen an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #11416 /* ~Laß Übelwind in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1 7.2 8.1 9.2 10.0 11.1 12.1 13.0 14.0 16.1 16.2 18.1 18.2 19.1 20.1 21.1 22.1 23.1 23.2 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 32.0 33.1 33.2 34.1 35.1 36.1 37.1 38.1 39.0 40.1 41.1 42.1 43.1 44.3 45.0 47.0
  SAY #11289 /* ~"Fragen, Fragen..." Übelwind zieht seine Schultern hoch und sieht dich mit seinen riesigen Augen mißtrauisch an. "Antworten, Antworten...?"~ */
  IF ~~ THEN REPLY #11417 /* ~"Wer bist du noch mal?"~ */ GOTO 2
  IF ~~ THEN REPLY #11418 /* ~"Was ist mit dir geschehen?"~ */ GOTO 7
  IF ~~ THEN REPLY #11419 /* ~"Erzähl mir eine Geschichte."~ */ GOTO 16
  IF ~~ THEN REPLY #11420 /* ~"Kannst du mir etwas über diese Gegend erzählen?"~ */ GOTO 18
  IF ~  Global("Pharod","GLOBAL",0)
Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #11421 /* ~"Kannst du mir sagen, wo ich jemanden mit dem Namen Pharod finden kann?"~ */ GOTO 33
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #11422 /* ~"Kannst du mir noch mal was über Pharod erzählen?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11423 /* ~"Ich vermisse ein Journal. Hast du zufällig eins gesehen?"~ */ GOTO 32
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11424 /* ~"Ich habe den Mann gefunden, der dich damals in der Städtischen Festhalle verflucht hat. Sein Name ist Mördersinn."~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 11
  IF ~~ THEN REPLY #11425 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY #11290 /* ~"Ich kann dir eine Geschichte erzählen, aber dafür will ich drei Kupferstücke sehen." Er grinst, und sein Mundgeruch trifft dich wie ein Schlag mit einem Hammer.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11426 /* ~"Wie du meinst. Hier sind drei Kupfermünzen."~ */ DO ~TakePartyGold(3)
~ GOTO 17
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11427 /* ~Lüge: "Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11428 /* ~Wahrheit: " Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11429 /* ~"Nicht heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11291 /* ~Er nimmt die Kupferstücke, kaut darauf herum und schluckt sie zu deiner Überraschung hinunter. "Die beste Geldbörse, beste Geldbörse ist der Bauch, der Bauch." Er verströmt seinen faulen Atem. "Eine Geschichte, eine Geschichte..." Er gibt ein schmatzendes Geräusch von sich und kratzt an seinen dreckigen Lumpen.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",0)
~ THEN REPLY #11430 /* ~Laß ihn eine Geschichte auswählen.~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",0)
~ THEN REPLY #11431 /* ~Laß ihn eine Geschichte auswählen.~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11432 /* ~Laß ihn eine Geschichte auswählen.~ */ GOTO 24
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
~ THEN REPLY #11433 /* ~"Erzähl mir, wie du verflucht wurdest."~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11434 /* ~"Erzähl mir, was mit der Gasse der gefährlichen Ecken geschehen ist."~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #11453 /* ~"Erzähl mir die Geschichte von Ignus."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatGT(Protagonist,13,INT)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11457 /* ~"Ich möchte die Geschichte von dem Mann hören, der ohne Namen und Gedächtnis in diese Stadt kam und mit dem verfluchten Geschichtenerzähler sprach, der ihn vor den Gefahren von Namen warnte."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11459 /* ~"Ich möchte die Geschichte von dem Mann hören, der ohne Namen und Gedächtnis in diese Stadt kam und mit dem verfluchten Geschichtenerzähler sprach, der ihn vor den Gefahren von Namen warnte."~ */ GOTO 40
  IF ~~ THEN REPLY #11463 /* ~"Nicht heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY #11292 /* ~"Der Stock, der Stock... ich kann dir was erzählen, aber dafür will ich drei Kupfermünzen sehen." Er gibt ein schmatzendes Geräusch von sich und grunzt wie ein Schwein.
~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11468 /* ~"Wie du meinst. Hier sind drei Kupfermünzen."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11479 /* ~Lüge: "Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11480 /* ~Wahrheit: " Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11481 /* ~"Nicht heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.4 18.0
  SAY #11293 /* ~"Richtung Mittelpunkt des Rings..." Er zeigt nach links auf die ausgebrannte Gasse in der Ferne. "Eine Gasse der *Gefährlichen Ecken*. Er verbiegt seine Gelenke, um eines der skelettartigen Gebäude darzustellen. "War nicht immer so verwinkelt und verbrannt, war früher mal voller Leben."~ */
  IF ~~ THEN REPLY #11482 /* ~Hör ihm zu.~ */ GOTO 20
  IF ~~ THEN REPLY #11483 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11484 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #11294 /* ~"Flammen, Feuer!" Er reißt seine Hände in die Höhe und gestikuliert wild damit herum, um Flammen darzustellen. "Die Gasse brannte, viel Rauch, überall Asche... und dann nur noch *Skelette* von Gebäuden übrig, die Knochen der toten Häuser. Und überall Ecken... Winkel."~ */
  IF ~~ THEN REPLY #11485 /* ~Hör ihm zu.~ */ JOURNAL #63976 /* ~Übelwind hat mir eine Geschichte der "Gasse der gefährlichen Ecken" erzählt, die sich in der Nähe seiner Absteige befindet. Er hat mir erzählt, daß es einmal eine Straße war, daß aber eines Nachts ein großes Feuer durch sie hindurchwütete, das Gebäude und Personen in Flammen setzte und nur die Skelette der Häuser zurückließ... und die der Bewohner. Die gebrochenen Holzrahmen der alten, abgebrannten Gebäude haben der Gasse ihren Namen gegeben. Anscheinend haben sich jetzt mehrere Gruppen von Schlägern dort niedergelassen.~ */ GOTO 21
  IF ~~ THEN REPLY #11486 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11487 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11295 /* ~Er beugt sich nach vorn und spricht mit flüsternder Stimme. Erneut weht dir sein übler Körpergeruch ins Gesicht. "Gefährlich, jetzt haben böse Männer dort ihre Absteige." Er neigt sich vor und läßt einen fahren. Es hört sich an, als würde jemand ins Horn stoßen. "Das ist die Geschichte von der Straße, die zur Gasse der gefährlichen Ecken wurde."~ */
  IF ~~ THEN REPLY #11488 /* ~"Wie ist das Feuer entstanden?"~ */ DO ~SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #11489 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #11490 /* ~"Ich verstehe... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #11296 /* ~Er beschreibt einen Halbkreis über seinem Herzen. "Ein Mann hat es entfacht. Eine Bestie. Ein Mann, den sogar die *Scheusale* bewundern."~ */
  IF ~~ THEN REPLY #11491 /* ~"Wer?"~ */ GOTO 23
  IF ~~ THEN REPLY #11492 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #11493 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11297 /* ~"Die Geschichte eines Zauberers, voller Wahnsinn, Traurigkeit, Feuer und Verlangen... Ich erzähl dir die Geschichte, aber dafür will ich drei Kupfermünzen sehen," zischt er. Das Geräusch erinnert dich an lodernde Flammen. "Eine gefährliche Geschichte, eine gefährliche Geschichte."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11494 /* ~"Wie du meinst. Hier sind drei Kupfermünzen."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
~ GOTO 24
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11495 /* ~Lüge: "Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11496 /* ~Wahrheit: " Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11497 /* ~"Nicht heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.2 17.5 23.0
  SAY #11298 /* ~"Es war einmal ein Zauberer, nicht einer dieser Heckenzauberer, sondern ein *Meister* seiner Kunst." Übelwind faltet seine Hände ehrerbietig zusammen und grinst böse. "Er verbrannte mit seiner Kunst, und die Kunst verbrannte mit ihm."~ */
  IF ~~ THEN REPLY #11498 /* ~Hör ihm zu.~ */ GOTO 25
  IF ~~ THEN REPLY #11499 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11500 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #11299 /* ~"Er war unter dem Namen Ignus bekannt, ein Name, den man erst respektierte, dann fürchtete, haßte und bestrafte." Übelwind keucht. Dann greift er mit den Händen in die Luft und zischt, offensichtlich, um 'Ignus' nachzuahmen.~ */
  IF ~~ THEN REPLY #11501 /* ~Hör ihm zu.~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #11502 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11503 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11300 /* ~"Ignus war der Lehrling eines der letzten großen Magier, und hatte als solcher großes Wissen erlangt... und doch nichts dazugelernt." Übelwind schüttelt traurig den Kopf. "In seinem Herzen, seinem kohlrabenschwarzen Herzen, wütete ein Feuer. Die Flammen loderten, und loderten. Sie wollten immer mehr *verschlingen*." Übelwind faßt sich in einem Ausdruck von Schmerz an die Brust. "Und auch Ignus wollte immer mehr. Er wollte die Ebenen *brennen* sehen."~ */
  IF ~~ THEN REPLY #11504 /* ~Hör ihm zu.~ */ GOTO 27
  IF ~~ THEN REPLY #11505 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11506 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11301 /* ~"Eines Nachts..." Gebückt bewegt sich Übelwind auf die Gasse zu und grinst dabei wie ein Wahnsinniger. "Ignus kam in die Straße, die heute die Gasse der gefährlichen Ecken heißt, und er ließ das Feuer in seinen Augen und in seinem Herzen um sich greifen." Übelwind zeigt auf die Straße, reißt die Arme empor, weint und lacht zugleich.~ */
  IF ~~ THEN REPLY #11507 /* ~Hör ihm zu.~ */ GOTO 28
  IF ~~ THEN REPLY #11508 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11509 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #11302 /* ~"Alles Fleisch zerlief wie Wachs, Menschen schmolzen dahin wie Kerzen, und Ignus lachte, lachte..." Übelwind läßt sich zu Boden sinken, sein Körper zuckt vor imaginären Schmerzen. "Böses, Böses war geschehen und wird nie mehr vergessen, vergessen." Er steht auf, macht einen Buckel, schaut nach links und rechts und beginnt zu murmeln, als würde er sich heimlich mit jemandem unterhalten. "Etwas mußte getan werden, getan werden..."~ */
  IF ~~ THEN REPLY #11510 /* ~Hör ihm zu.~ */ GOTO 29
  IF ~~ THEN REPLY #11511 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11512 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11303 /* ~Er steht hölzern und mit entschlossener Miene auf. "Es wurde beschlossen, ihn zu bestrafen. Heckenzauberer, weise Frauen, Runenleser, andere Zauberer und auch solche, die von der Kunst keine Ahnung hatten, kamen zusammen... um Ignus zu bestrafen. Jeder für sich gesehen war so klein wie eine Fliege...," sagt er mit einem summenden Geräusch, "doch zusammen waren sie stark, gefährlich."~ */
  IF ~~ THEN REPLY #11513 /* ~Hör ihm zu.~ */ GOTO 30
  IF ~~ THEN REPLY #11514 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11515 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11304 /* ~Er summt und erhebt seine Hand... "Sie schnappten Ignus, erfüllten seinen Wunsch..." Er wirbelt mit seinen Händen herum, als würde er einen Zauber aussprechen. "Er wollte Feuer, er bekam Feuer. Sie benutzten sein eigenes Verlangen, um das Zauberfeuer zu nähren. Sie verwandelten seinen Körper in einen Durchgang zur Feuerebene - sie wollten ihn töten, töten..."~ */
  IF ~~ THEN REPLY #11516 /* ~Hör ihm zu.~ */ JOURNAL #63977 /* ~Übelwind hat mir von Ignus erzählt, dem verrückten Zauberer, der für das Feuer in der Gasse der gefährlichen Ecken verantworlich war. Er hat gesagt, daß Ignus ein mächtiger Zauberer war, der von einem der letzten großen Magier unterrichtet wurde. In Ignus brannte die Kunst, und das so sehr, daß sie ihn dazu trieb, Menschen und Gebäude anzuzünden, wenn es ihn überkam. Eines Nachts ließ er seine Macht auf eine der Straßen im Stock los und verbrannte die Bewohner als lebende Fackeln. Ob es nun aus Rache war oder wegen der Gerechtigkeit, auf jeden Fall schlossen sich einige geringere Magier im Stock zusammen und wandten ihr gesammeltes Wissen der Kunst darauf an, Ignus' Körper in eine Leitung zur Feuerebene zu verwandeln. Sie hofften, der Schmerz würde ihn töten... aber das tat er nicht. Anscheinend fiel Ignus dadurch nur in einen tiefen Schlaf.~ */ GOTO 31
  IF ~~ THEN REPLY #11517 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11518 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11305 /* ~"Doch sie scheiterten, scheiterten..." Übelwind läßt erneut einen fahren, als wollte er das Versagen der Zauberer unterstreichen. "Ignus überlebte, überlebte, er schlief nur ein unter der Feuerdecke, Feuerdecke. Er war glücklich wie nie zuvor, nie zuvor..." Er schließt die Augen, umschlingt sich mit seinen Armen und dreht sich langsam um. "Er brannte, brannte, brannte..." Plötzlich reißt er die Augen auf. "Eines Tages wird er aufwachen, und die Ebenen werden *brennen!*"~ */
  IF ~~ THEN REPLY #11519 /* ~"Eine traurige Geschichte. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 15
  IF ~~ THEN REPLY #11520 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 15.6
  SAY #11306 /* ~Reekwind läßt einen fahren, dann kratzt er sich an den Armen. Nach kurzem Nachdenken schüttelt er den Kopf. "Kein Journal, ich habe kein Journal gesehen."~ */
  IF ~~ THEN REPLY #11521 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11522 /* ~"Naja, egal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 15.4 15.5
  SAY #11307 /* ~Übelwind beugt sich nach vorn und wirft dir einen spöttischen Blick zu. Er geht um dich herum, wobei er ein Bein nachzieht, als sei es lahm. "Ein König! Die Geschichte eines Edelmanns, Edelmanns! Ich erzähl sie dir, aber dafür will ich drei Kupfermünzen sehen..."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11523 /* ~"Wie du meinst. Hier sind drei Kupfermünzen."~ */ DO ~TakePartyGold(3)
~ GOTO 34
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11544 /* ~Lüge: "Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11548 /* ~Wahrheit: " Soviel hab' ich jetzt nicht bei mir. Ich hätte jedoch ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11552 /* ~"Nicht heute. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11308 /* ~Übelwind bleibt vornüber gebeugt und starrt dich an. "Pharod war einst ein angesehener Mann, der Ziele hatte, und eine *Position*. Doch dann löste sich alles in Luft auf." Übelwind kneift die Augen zusammen und läßt einen fahren. Es stinkt widerlich. "In Luft... und Gestank."~ */
  IF ~~ THEN REPLY #11554 /* ~Hör ihm zu.~ */ GOTO 35
  IF ~~ THEN REPLY #11556 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11558 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #11309 /* ~"Pharod war ein Lügner, ein Betrüger, ein Mann, der das Gesetzt beugte." Er beugt sich nach vorn, als würde er an einem Tisch sitzen und schreiben. Er 'schreibt' eine kleine Weile, bevor er plötzlich innehält. "Doch eines Tages erkannte er, daß er zu weit gegangen war!"~ */
  IF ~~ THEN REPLY #11560 /* ~Hör ihm zu.~ */ GOTO 36
  IF ~~ THEN REPLY #11563 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11564 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11310 /* ~"Er hatte soviel gelogen, daß er wußte, nach seinem Tod würde er an einem schrecklichen Ort landen..." Übelwind schüttelt traurig den Kopf, beugt sich wieder nach vorn und blickt wild um sich. "Und das wollte Pharod unter keinen Umständen hinnehmen, nein, nein! Er hatte andere hinters Licht geführt, jetzt wollte er seinem eigenen Schicksal ein Schnippchen schlagen!"~ */
  IF ~~ THEN REPLY #11567 /* ~Hör ihm zu.~ */ GOTO 37
  IF ~~ THEN REPLY #11569 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11572 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #11311 /* ~"Er wälzte Bücher und befragte Seher..." Übelwind schreitet hin und her und hält seine Hand über die Augen, als schaue er in die Ferne. "...und sie sagten ihm, daß er nur im Müll das fände, womit er seinem Schicksal ein Schnippchen schlagen könnte." Übelwind läßt wieder einen fahren und hustet seinen übelriechenden Atem aus. "Vielleicht haben sie gelogen..."~ */
  IF ~~ THEN REPLY #11575 /* ~Hör ihm zu.~ */ DO ~SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ JOURNAL #63978 /* ~Übelwind hat mir die Geschichte von Pharod erzählt. Anscheinend war Pharod ein Mitglied der "Aristokratie" in Sigil, nutzte seine Position aber dazu aus, Gesetze zu beugen, andere zu betrügen und sogar dazu, einen unschuldigen Mann zu verurteilen. Seine Handlungen waren so verräterisch, daß seine Seele dazu verdammt wurde, nach seinem Tod auf die Unteren Ebenen verbannt zu werden. Als er das erfuhr, bekam er es mit der Angst zu tun. Man sagte ihm, er könne ein Mittel, seine Seele zu retten, im Müll von Sigil finden. Pharod gab seine respektvolle Position auf und wurde zum König der Sammler, der eine Bande von Stockbewohnern auf die Suche nach etwas schickte, was seine Seele befreien würde... aber er weiß nicht, was das ist.~ */ GOTO 38
  IF ~~ THEN REPLY #11576 /* ~"Ich habe, ehrlich gesagt, keine Zeit für eine Geschichte. Ich hätte jedoch noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11577 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #11312 /* ~Übelwind steht hölzern auf und tut so, als würde er sich seiner Kleidung entledigen. Mit jedem 'Kleidungsstück', das er wegwirft, beugt er sich weiter nach vorn. "Pharod schmiß alles hin, seine Position und seine Ziele, und gab sich einen neuen Titel..." Übelwind hält kurz inne, dann wirft er dir einen spöttischen Blick zu. Er packt seine zerlumpten Klamotten und schüttelt sie. "Er wurde der Lumpenkönig! Er regierte den Müll, ließ seine Untertanen darin wühlen und das suchen, was er finden wollte." Er schüttelt den Kopf. "Und er sucht immer noch, immer noch..."~ */
  IF ~~ THEN REPLY #11578 /* ~"Äh... weißt du, wo ich ihn finden könnte?"~ */ GOTO 39
  IF ~~ THEN REPLY #11579 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #11581 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #11313 /* ~Übelwind schüttelt den Kopf. "Er lebt zwischen Lumpen, im Müll. Dort findest du ihn bestimmt, bestimmt..."~ */
  IF ~~ THEN REPLY #11582 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #11584 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 17.6 17.7
  SAY #11314 /* ~Übelwind hört kurz auf, an sich herumzuzupfen und -zukratzen. Er starrt dich an. "Diese Geschichte ist umsonst... weil sie nichts wert ist, aber traurig ist sie zweifellos."~ */
  IF ~~ THEN REPLY #11586 /* ~"Ich will sie trotzdem hören."~ */ GOTO 41
  IF ~~ THEN REPLY #11587 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11589 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #11315 /* ~"Wo beginnt so eine Geschichte...?" Übelwind grunzt. Dir weht ein Hauch seines stinkenden Atems ins Gesicht, der dir das Wasser in die Augen treibt. Er scheint nachzudenken.~ */
  IF ~~ THEN REPLY #11591 /* ~"Sie würde damit beginnen, daß ein Mann in der Leichenhalle aufwacht, der für tot gehalten wird. Doch in Wahrheit ist bloß sein Gedächtnis gestorben."~ */ GOTO 42
  IF ~~ THEN REPLY #11593 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11596 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #11316 /* ~Übelwind nickt. Dann schaut er dich prüfend an und beginnt sich so heftig zu kratzen, als wollte er sich Narben zufügen. "Tot, aber doch nicht tot... keine Erinnerungen, kein Name..."~ */
  IF ~~ THEN REPLY #11598 /* ~"Er flieht aus der Leichenhalle, geht in den Stock und spricht mit einem Mann, der seinen richtigen Namen einmal versehentlich ausspricht und es sofort bereut."~ */ GOTO 43
  IF ~~ THEN REPLY #11599 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11600 /* ~"Mehr will ich gar nicht hören. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #11317 /* ~Übelwind scheint wie hypnotisiert von deinen Worten zu sein: "Ja, ja, Namen sind sehr gefährlich... vielleicht..." Er zögert kurz. "Vielleicht ist der, mit dem der Namenlose spricht, eine Warnung vor der Gefahr der Namen." Er scheint seine Worte noch einmal zu überdenken. "Vielleicht ist der, der seinen Namen vergessen hat, besser dran..."~ */
  IF ~~ THEN REPLY #11601 /* ~"Meinst du? Ist es besser, die Wahrheit zu kennen, so schmerzhaft die Folgen auch sein mögen, oder weiterhin im Dunkeln zu tappen? Welcher von beiden ist besser dran?"~ */ GOTO 44
  IF ~~ THEN REPLY #11602 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11603 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11318 /* ~Übelwind gibt ein abgehacktes Husten von sich und spuckt einen grünen Schleim aus. Dann wendet er sich wieder dir zu. "Es ist deine Frage, deine Geschichte...", sagt er langsam, "und *du* mußt selbst eine Antwort finden."~ */
  IF ~~ THEN REPLY #11604 /* ~"Ich möchte deine Antwort hören."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 45
  IF ~~ THEN REPLY #11605 /* ~"Derjenige, der seinen wahren Namen kennt, ist besser dran, denn er kennt sich selbst und schöpft daraus Kraft."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11607 /* ~"Derjenige, der seinen wahren Namen vergessen hat, ist besser dran, weil er vor allen geschützt ist, die ihm Böses wollen - einschließlich sich selbst. Ein Mensch mit Namen wird stets verfolgt, wohin er auch geht. Ein Namenloser hinterläßt dagegen keine Spuren."
~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",3)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11610 /* ~"Na, egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11611 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #11319 /* ~Übelwind schüttelt den Kopf. "Meine Antwort, meine Antwort..." Er hustet wieder, und aus seinem Mund quellen Schwaden übelriechender Dämpfe. Er macht ein schmatzendes Geräusch, als wollte er den Geschmack im Mund loswerden. "Meine Antwort lautet: Sie sind beide töricht, aber nur einer weiß, daß er es ist."~ */
  IF ~~ THEN REPLY #11613 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11614 /* ~"Ich hab' genug gehört. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 44.2
  SAY #11320 /* ~Übelwind denkt kurz nach und leckt sich die Lippen. Dann nickt er langsam und murmelt etwas vor sich hin, als würde er mit sich selbst diskutieren. Schließlich wendet er sich wieder dir zu. "Dies ist eine Geschichte mit einer Moral, die etwas über die Moral des Erzählers aussagt." Er hustet und spuckt eine neue Ladung Schleim auf das Pflaster. "Eine Geschichte, die sich selbst beantworten wird, wenn die Zeit gekommen ist...?"~ */
  IF ~~ THEN REPLY #11615 /* ~Wahrheit: "Das mag sein. Was geschehen wird, wird geschehen, und vielleicht gibt es auf diese Geschichte auch keine Antwort."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_2","GLOBALLaw",-2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11616 /* ~Wahrheit: "Ich muß die Antwort wissen. Jede Geschichte hat ein Ende. Nichts anderes werde ich akzeptieren."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_2","GLOBALLaw",2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11617 /* ~Wahrheit: "Ich weiß nicht. Das kann ich nicht entscheiden."~ */ DO ~GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 46.2
  SAY #11321 /* ~Übelwind kratzt sich kurz, nickt dann, greift in die Falten seiner Robe und bringt eine Münze zum Vorschein. "So eine Geschichte verdient eine halbe Kupfermünze." Er grinst höhnisch. "Mehr nicht, denn schließlich ist sie nicht zuende."~ */
  IF ~~ THEN REPLY #11618 /* ~"Ein fairer Preis. Also gut, vielleicht kannst du mir ja ein paar Fragen beantworten..."~ */ GOTO 15
  IF ~~ THEN REPLY #11619 /* ~"Leb wohl."~ */ EXIT
END

IF ~  GlobalLT("reekwind","global",10)
GlobalGT("Reekwind","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11322 /* ~Du siehst Übelwind... seine Augen haben wieder ihre normale Größe angenommen, und die Krämpfe haben aufgehört, ihn zu durchzucken. Er lächelt und sieht plötzlich viel sauberer aus als vorhin.~ */
  IF ~~ THEN REPLY #11620 /* ~"Sei gegrüßt, Übelwind. Ich hätte ein paar Fragen an dich..."~ */ GOTO 49
  IF ~~ THEN REPLY #11621 /* ~Laß Übelwind in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #11323 /* ~Er schaut dich erstaunt an. "Es... hat aufgehört. Einfach so." Er schnalzt mit den Fingern und schaut an sich herab. "Bei den Mächten, ich..." Er lacht. "Ich fühle mich wieder *sauber*."~ */
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11622 /* ~"Das hört man gern. Jumble wollte den Fluch nicht aufheben, aber ich hab' ihn doch dazu gebracht."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11623 /* ~"Gut zu hören, daß es dir gut geht."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11624 /* ~"Das hört man gern. Jumble wollte den Fluch nicht aufheben, aber ich hab' ihn doch dazu gebracht."~ */ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11625 /* ~"Gut zu hören, daß es dir gut geht."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2 49.3
  SAY #11324 /* ~"Ich danke dir. Ich..." Er wirkt leicht verstört. "Ich habe nichts, womit ich dich bezahlen könnte, doch ich stehe in deiner Schuld..." Er zuckt mit den Achseln. "Was auch immer das wert sein mag." Er runzelt die Stirn und richtet sich auf. "Ich werde allen, die es hören wollen, von deiner Güte erzählen."~ */
  IF ~  Global("Reekwind","GLOBAL",3)
~ THEN REPLY #11626 /* ~"Gibt es vielleicht noch ein paar Geschichten, die du mir noch nicht erzählt hast? Das wäre mir Lohn genug..."~ */ DO ~SetGlobal("Reekwind","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #11627 /* ~"Danke, Übelwind. Ich habe dir gern geholfen."~ */ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #11325 /* ~"Natürlich, natürlich!" Übelwind blickt um sich... "Obwohl ich eigentlich genug davon habe, Geschichten zu erzählen... hast du was, worauf ich sie schreiben könnte?"~ */
  IF ~~ THEN REPLY #11628 /* ~"Ich habe hier so ein Journal."~ */ JOURNAL #63979 /* ~Dafür, daß ich Übelwind geholfen habe, seinen Fluch loszuwerden, hat er alle Geschichten, die er kannte, in mein Journal geschrieben.

Die erste war die Geschichte der "Gasse der gefährlichen Ecken" in der Nähe seiner Absteige. Es war einmal eine Straße, aber eines Nachts wütete ein großes Feuer durch sie hindurch, das Gebäude und Personen in Flammen setzte und nur die Skelette der Häuser zurückließ... und die der Bewohner. Die gebrochenen Holzrahmen der alten, abgebrannten Gebäude haben der Gasse ihren Namen gegeben. Anscheinend haben sich jetzt mehrere Gruppen von Schlägern dort niedergelassen.

Die zweite war die Geschichte von Ignus, dem verrückten Zauberer, der für das Feuer in der Gasse der gefährlichen Ecken verantworlich war. Ignus war ein mächtiger Zauberer, der von einem der letzten großen Magier gelehrt worden war. In Ignus brannte die Kunst, und das so sehr, daß sie ihn dazu trieb, Menschen und Gebäude anzuzünden, wenn es ihn überkam. Eines Nachts ließ er seine Macht auf eine der Straßen im Stock los und verbrannte die Bewohner als lebende Fackeln. Ob es nun aus Rache war oder wegen der Gerechtigkeit, auf jeden Fall schlossen sich einige geringere Magier im Stock zusammen und wandten ihr gesammeltes Wissen der Kunst darauf an, Ignus' Körper in eine Leitung zur Feuerebene zu verwandeln. Sie hofften, der Schmerz würde ihn töten... aber das tat er nicht. Anscheinend fiel Ignus dadurch nur in einen tiefen Schlaf.

Die dritte Geschichte handelte von Pharod. Anscheinend war Pharod ein Mitglied der "Aristokratie" in Sigil, nutzte seine Position aber dazu aus, Gesetze zu beugen, andere zu betrügen und sogar dazu, einen unschuldigen Mann zu verurteilen. Seine Handlungen waren so verräterisch, daß seine Seele dazu verdammt wurde, nach seinem Tod auf die Unteren Ebenen verbannt zu werden. Als er das erfuhr, bekam er es mit der Angst zu tun. Man sagte ihm, er könne ein Mittel, seine Seele zu retten, im Müll von Sigil finden. Pharod gab seine respektvolle Position auf und wurde zum König der Sammler, der eine Bande von Stockbewohnern auf die Suche nach etwas schickte, was seine Seele befreien würde... aber er weiß nicht, was das ist.
~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #11326 /* ~Übelwind nimmt das Journal. "Ah..." Er schreibt eine Weile und gibt es dir dann zurück. "Bitte sehr."~ */
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Vielen Dank, Übelwind."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Vielen Dank, Übelwind."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 50.1 52.0 52.1
  SAY #11327 /* ~"Äh... wenn du diesen Namen nie mehr gebrauchen würdest, wäre... ich dir sehr dankbar."~ */
  IF ~~ THEN REPLY #11632 /* ~"Wie du willst. Wie soll ich dich nennen?"~ */ GOTO 54
  IF ~~ THEN REPLY #11634 /* ~"Auch gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #11328 /* ~"Ich heiße-" Er kann sich gerade noch bremsen. "Nein, das sollte ich diesmal am besten für mich behalten." Er nickt dir respektvoll zu. "Ich danke dir vielmals."~ */
  IF ~~ THEN REPLY #11636 /* ~"Leb wohl."~ */ EXIT
END
