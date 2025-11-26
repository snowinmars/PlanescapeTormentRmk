// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUELL~

IF ~  Global("Quell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #29455 /* ~Dieser ältere Mann kaut auf etwas herum und murmelt vor sich hin... Nach einer Weile vernimmst du ein *KNACKEN*, als er auf den Gegenstand in seinem Mund beißt, und dann schluckt er ihn hinunter. Er zieht seine buschigen, glänzend weißen Augenbrauen kurz zusammen, hebt sie und zieht sie dann wieder zusammen. "Hmmm..."~ */
  IF ~~ THEN REPLY #29456 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #29457 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29458 /* ~Ohne dich richtig anzusehen, faßt der Mann in seine Tunika, holt ein flohfarbenes Bonbon hervor, betrachtet es eine Weile interessiert und steckt es sich dann in den Mund.~ */
  IF ~~ THEN REPLY #29459 /* ~"Ich sagte, 'Sei gegrüßt...'"~ */ GOTO 2
  IF ~~ THEN REPLY #29460 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29461 /* ~Der Mann runzelt die Stirn und bedeutet dir, wegzugehen. Dann nickt er bedächtig, während er auf dem herumlutscht, was er sich in den Mund gesteckt hat.~ */
  IF ~~ THEN REPLY #29462 /* ~"Ich... habe ein paar Fragen..."~ */ DO ~SetGlobal("Quell","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #29463 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29464 /* ~Der Mann lächelt süffisant, leckt sich seinen Finger ab und hält dann plötzlich inne... seine Wangen blähen sich auf und mit einem heftigen Prusten spuckt er eine große schwarze Fliege aus, die daraufhin im Raum umhersurrt. "*Scheiß* Minaurosianische Süßigkeiten", schreit er und schlägt mit seiner Faust nach dem Insekt. Er wirbelt zu dir herum. "Hä?!"~ */
  IF ~~ THEN REPLY #29465 /* ~"Ich möchte dich was über dich fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #29466 /* ~"Ich hätte da ein paar Fragen über diesen Ort..."~ */ GOTO 4
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29467 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 4
  IF ~~ THEN REPLY #29468 /* ~"Nichts. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 5.0
  SAY #29469 /* ~Er steckt sich ein rotes Bonbon in den Mund. "Latscht du immer durch die Gegend und belästigst mächtige Magier mit deinem dummen Gequatsche?! Bla bla bla BLA!"Als er das letzte bla ausspricht, fliegt das Bonbon in hohem Bogen durch die Luft und landet mit einem *Platsch* auf dem Boden. Er starrt es traurig an.~ */
  IF ~~ THEN REPLY #68083 /* ~"Und meine Frage...?"~ */ GOTO 6
  IF ~~ THEN REPLY #29470 /* ~"Oh, schade ums Bonbon."~ */ GOTO 6
  IF ~~ THEN REPLY #29471 /* ~Heb das Bonbon auf und iß es.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY #29473 /* ~Er stöhnt ungläubig und faßt sich an die Stirn. "Nichts? *LEB WOHL*?"~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 4.0 4.1
  SAY #29474 /* ~"Es war so *lecker*...", jammert er. Plötzlich schaut er auf und faucht. "ES TUT DIR LEID?! Das *sollte* es auch, du stinkender Mistkäfer! Magier müssen mit Respekt behandelt werden und solche Schlägertypen wie du sollten sich entsprechend benehmen!" Er fängt an, auf und ab zu springen. "Benehmen! Benehmen!"~ */
  IF ~~ THEN REPLY #29475 /* ~"Krieg dich wieder ein. Ich will dich doch nur was fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #29476 /* ~Heb das Bonbon des Magiers auf und iß es.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1
  SAY #29478 /* ~Du hebst das Bonbon auf und steckst es in den Mund. Es schmeckt süß und streng. Dem Magier klappt die Kinnlade runter. "Mein... mein köstliches, leckeres bytopianisches Fruchtbonbon!"~ */
  IF ~~ THEN REPLY #29479 /* ~"Das war ja superlecker. Kann ich noch eins haben?"~ */ GOTO 8
  IF ~~ THEN REPLY #29480 /* ~"Krieg dich wieder ein. Ich will dich doch nur was fragen..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29483 /* ~"Noch eins?! *Noch* eins?! Sag mal, spinnst du? Wie kommst du darauf, daß du noch ein Bonbon *verdienst*, du ungehobelter Klotz?!"~ */
  IF ~~ THEN REPLY #29484 /* ~"Ich *verdiene* keins, ich *will* eins. Und jetzt her damit."~ */ GOTO 12
  IF ~~ THEN REPLY #29485 /* ~"Na los... nur ein einziges."~ */ GOTO 9
  IF ~~ THEN REPLY #29486 /* ~"Vergiß es einfach."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 12.0
  SAY #29487 /* ~"Von mir kriegst du gar nichts! Und mir ist egal, ob's dir *paßt* oder nicht." Er steckt sich demonstrativ ein Bonbon in den Mund. "Mmmmmm. *Leeecker*." Er schiebt das Bonbon in seinem Mund hin und her und hält dabei seine Augen geschlossen, als ob er sich in Trance befindet. "*Leeecker*."~ */
  IF ~~ THEN REPLY #29488 /* ~"Ich *will* eins und du wirst es mir *geben*. Und jetzt her damit."~ */ GOTO 12
  IF ~~ THEN REPLY #29489 /* ~"Na gut... vergiß es."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.2 9.1 12.1
  SAY #29490 /* ~"Mach ich! Schon vergessen! Schon vergessen, du grobschlächtiger, hirnloser Rüpel! Und jetzt leb wohl."~ */
  IF ~~ THEN REPLY #29491 /* ~"Aber... ich hätte da ein paar Fragen..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.1 10.0 13.1
  SAY #29493 /* ~"Ist mir *WURSCHT*, du aufgeblähter Schweinehund mit dem Hirn eines Rindviechs!" Seine Augen treten hervor, als sein Kopf von Stromschlägen geschüttelt wird und seine Augenbrauen stehen ab. Er pikst dich mich dem Finger: "Und jetzt fort mit dir! FORT! MIT! DIR!" Und mit einem lauten Knacken und dem Geruch von Ozon bist du... verschwunden.~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29494 /* ~"Ja?"~ */ GOTO 14
  IF ~~ THEN REPLY #68057 /* ~"Schön... Dann sehe ich mich im Bezirk nach etwas Passendem um."~ */ JOURNAL #68058 /* ~Ein ziemlich exzentrischer Magier namens Quell weigert sich, mit mir zu sprechen. Ich würde ihm nicht genug Respekt zollen, da ich ihm kein Geschenk mitgebracht hätte. Er hätte gern Süßigkeiten, Bonbons oder Schokolade... Aber keine gewöhnlichen - 'exotisch' müssen sie sein. Ich hab' ihm gesagt, daß ich mal im Bezirk der Kuratoren danach suchen werde.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0
  SAY #29495 /* ~"Wie kannst du es *wagen*, so taktlos Bonbons von mir zu *verlangen*? Als ob es ein göttliches Recht wäre, daß du von den größten Mächten bekommen hast! Soll ich etwa vor dir *niederknien*, oh Mächtiger? Meine heißgeliebten Bonbons deiner stigmatisierten Heiligkeit kredenzen? Warum salbe ich sie nicht vorher mit kostbaren Ölen und weihe sie zuerst?" Er stampft bei jedem Wort mit dem Fuß auf: "Nein! Nein! Nein! Wohl kaum!"~ */
  IF ~~ THEN REPLY #29496 /* ~"Na los... nur ein einziges."~ */ GOTO 9
  IF ~~ THEN REPLY #29497 /* ~"Na gut. Vergiß es."~ */ GOTO 10
END

IF ~  Global("Quell","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #29498 /* ~Der Magier erstarrt, als er dich näherkommen sieht. "Unfaßbar! Willst du mich schon wieder mit deiner widerlichen Gegenwart nerven, du begriffsstutziger, stinkender Sack?" Er unterbricht seine Tirade, um ein kleines Pfefferminzbonbon zu essen. "Ich hoffe, du hast dir ein paar bessere *Manieren* zugelegt!"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29499 /* ~"Ich hab' dir leckere Schokolade mitgebracht."~ */ GOTO 14
  IF ~~ THEN REPLY #29500 /* ~"Eigentlich wollte ich dich was fragen..."~ */ GOTO 11
  IF ~~ THEN REPLY #29501 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0
  SAY #29502 /* ~"Oh?" Sein Benehmen ändert sich schlagartig. "Sehr nett von dir, sehr liebenswürdig! Darf ich mal sehen?"~ */
  IF ~~ THEN REPLY #29503 /* ~Zeig ihm den Schokoladenquasit.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29504 /* ~"Nein."~ */ GOTO 15
  IF ~~ THEN REPLY #29505 /* ~"Später. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #29506 /* ~Völlig verblüfft bäumt er sich auf. "WAS?!"~ */
  IF ~~ THEN REPLY #29507 /* ~"Hab' nur Spaß gemacht. Hier, bitte..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29508 /* ~"Eigentlich verdienst du's gar nicht. Du warst so gemein zu mir."~ */ GOTO 16
  IF ~~ THEN REPLY #29509 /* ~"Ich bring sie später vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29510 /* ~"*Waaaas*?" Er fängt an, herumzuhüpfen. "Grotesk! Absurd! Lächerlich! *GEMEIN* wäre es, dich in eine Schüssel mit Baatorischen Gewürzbohnen zu verwandeln, dich zu essen und dich dann in ganz Sigil als stinkende kleine Furze aus meinem Hintern zu verteilen! *DAS* wäre äußerst gemein, aber so bin ich *überhaupt nicht* zu dir gewesen!"~ */
  IF ~~ THEN REPLY #29511 /* ~"Du kriegst die Schokolade trotzdem erst, wenn du dich entschuldigt hast."~ */ GOTO 17
  IF ~~ THEN REPLY #29512 /* ~"Hab' nur Spaß gemacht. Hier, bitte..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29513 /* ~"Vielleicht bringe ich sie dir später vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #29514 /* ~Er wird plötzlich still und kneift seine Augen mißtrauisch zusammen. "Würdest du mich das Geschenk wenigstens mal *sehen* lassen?"~ */
  IF ~~ THEN REPLY #29515 /* ~Gewähr ihm nur einen kurzen Blick auf den Schokoladenquasit.~ */ GOTO 18
  IF ~~ THEN REPLY #29516 /* ~"Hab' wirklich nur Spaß gemacht. Hier, bitte..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29517 /* ~"Vielleicht bringe ich sie dir später vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29518 /* ~Der Hut des Mannes fliegt mit einem lauten *Plopp* in die Luft und landet genau wieder auf seinem Kopf. "Oh... oh. Ist das... etwa...? Er leckt sich die Lippen und greift zaghaft nach dem Schokoladenquasit.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #29519 /* ~"Nein. Entschuldige dich. Jetzt."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29520 /* ~"Nein. Entschuldige dich. Jetzt."~ */ GOTO 20
  IF ~~ THEN REPLY #29521 /* ~Laß ihn die Schokolade nehmen.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29522 /* ~"Vielleicht bringe ich sie dir später vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #29523 /* ~Er verzieht sein Gesicht, beißt sich auf die Lippe und schwingt schweigend seine Fäuste. Schließlich hört er auf, streicht über seine Kleidung und atmet langsam aus. "Na gut. Ich entschuldige mich." Du bemerkst, daß er eine Hand hinter den Rücken hält.~ */
  IF ~~ THEN REPLY #29524 /* ~"Hmm. Na gut. Bitte, ein Schokoladenquasit."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29525 /* ~"Vielleicht bringe ich sie dir später vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #29526 /* ~Er verzieht sein Gesicht, beißt sich auf die Lippe und schwingt schweigend seine Fäuste. Schließlich hört er auf, streicht über seine Kleidung und atmet langsam aus. "Na gut. Ich entschuldige mich." Du bemerkst, daß er eine Hand hinter den Rücken hält.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 290
END

IF ~~ THEN BEGIN 21 // from:
  SAY #29527 /* ~"Hör mit dem Gelabere auf... oh! Also, ich mache so was nicht!" Der Magier lächelt dich unschuldig an und zeigt dir seine Hände.
~ */
  IF ~~ THEN REPLY #29528 /* ~"Hmm. Na gut. Bitte, ein Schokoladenquasit."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29529 /* ~"Vielleicht bringe ich sie dir später vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.1 17.1 18.2 19.0 21.0
  SAY #29530 /* ~Er nimmt ihn dir aus der Hand. "Oh... die sind sehr selten und sehr lecker." Er beißt ein großes Stück ab und stopft sich den Rest in seine Tunika.~ */
  IF ~~ THEN REPLY #29531 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 23
  IF ~~ THEN REPLY #29532 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29533 /* ~Er sieht dich finster an und leckt sich dabei die restliche Schokolade von den Fingern. "Wer hat dir gesagt, daß du mich mit dümmlichen Fragen belästigen sollst?!" Er starrt dich vorwurfsvoll an. "Na los... sag, womit du mich nerven willst oder verschwinde!" Er fischt ein Malzbonbon aus seinem Ärmel und ißt es.~ */
  IF ~~ THEN REPLY #29534 /* ~"Wer bist du?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29535 /* ~"Ich möchte ein paar Zauber kaufen."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29537 /* ~"Kann ich ein Bonbon haben?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29539 /* ~"Ich möchte ein paar Bonbons kaufen."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29540 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29541 /* ~"Was weißt du über Ravel Rätselschön?"~ */ GOTO 34
  IF ~~ THEN REPLY #29542 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 26.2 27.0 28.1 29.0 30.1 32.1 33.0 34.1 35.5 36.2 38.2 39.1 40.1 41.2 42.1 43.1 46.0 47.1 48.2 49.0 50.1 51.2 52.1 53.4 54.1 55.1 56.0 57.3
  SAY #29538 /* ~Er rollt mit den Augen und bedeutet dir mit einer Handbewegung, fortzufahren.~ */
  IF ~~ THEN REPLY #29543 /* ~"Wer bist du?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29544 /* ~"Ich möchte ein paar Zauber kaufen."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29546 /* ~"Kann ich ein Bonbon haben?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29547 /* ~"Ich möchte ein paar Bonbons kaufen."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29548 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29549 /* ~"Was weißt du über Ravel Rätselschön?"~ */ GOTO 34
  IF ~~ THEN REPLY #29550 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #29551 /* ~"Ich... bin Quell." Er hebt gebieterisch seine Hand, als ob er dich daran hindern will, dich vorzustellen. "...und du brauchst dich auch nicht vorzustellen. Du mußt die unverschämteste und nervigste Pest auf dieser Seite von Sigil sein, von der ich schon so viel gehört habe!"~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #29552 /* ~"Wie *angenehm*, dich kennenzulernen, und danke den Mächten, daß es passiert, bevor du den Löffel abgibst und stirbst... obwohl mir dann die Mühe erspart geblieben wäre, mit dir zu plaudern! Ich würde liebend gerne meine gewaltigen Hexenkünste gegen einen kleinen Zauber eintauschen, um dir in deinen Dickschädel einzuimpfen, was 'Manieren' sind!"~ */
  IF ~~ THEN REPLY #29553 /* ~"Manieren? Und was ist mit der Schokolade, die ich dir mitgebracht habe?"~ */ GOTO 27
  IF ~~ THEN REPLY #29554 /* ~"Gewaltige Hexenkünste? Könntest du sie mir beibringen?"~ */ GOTO 48
  IF ~~ THEN REPLY #29555 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29556 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #29557 /* ~Er hebt seinen Zeigefinger und öffnet seinen Mund, um etwas zu sagen, dann hält er inne. "Hmm. Da hast du eigentlich recht." Er zuckt mit den Achseln und ißt noch ein Bonbon.~ */
  IF ~~ THEN REPLY #29558 /* ~"Ich weiß. Ich hätte da noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29559 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #29560 /* ~Er wirkt perplex. "Ich? Hut? Wie jetzt... aber ich trage doch gar keinen Hut!" Er schürzt seine Lippen und sieht dich aus zusammengekniffenen Augen mißtrauisch von der Seite an.~ */
  IF ~~ THEN REPLY #29561 /* ~"Wenn's kein Hut ist, was ist dann das glühende Teil auf deinem Kopf dann?"~ */ GOTO 29
  IF ~~ THEN REPLY #29562 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29563 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29564 /* ~"Absoluter Blödsinn! Ich habe nichts auf meinem Kopf... nichts, überhaupt nichts! Und jetzt genug davon."~ */
  IF ~~ THEN REPLY #29565 /* ~"Hmm. Ich habe da noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29566 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.2 24.2
  SAY #29567 /* ~"Ein Bonbon?! Ich hör wohl nicht recht: Ein *Bonbon*?! Wie zum Teufel käme ich dazu, einem halbnackten, unverschämten Grobian wie dir ein Bonbon zu *schenken*, hä?" Er verschränkt die Arme, klopft mit dem Fuß auf den Boden und wartet auf deine Antwort.~ */
  IF ~~ THEN REPLY #29568 /* ~"Würdest du mir dann eins *verkaufen*?"~ */ DO ~SetGlobal("Quell_Candy","AR0604",1)
~ GOTO 31
  IF ~~ THEN REPLY #29569 /* ~"Vergiß es. Ich habe da eine andere Frage..."~ */ GOTO 24
  IF ~~ THEN REPLY #29570 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #29571 /* ~"Also das... das *würde* ich vielleicht. Aber ich warne dich! Ich verkaufe keine gewöhnlichen Bonbons, sondern Schokoladenbonbons... mit *Zauberkräften*!" Er zieht das letzte Wort in die Länge und reibt sich gierig die Hände...~ */
  IF ~~ THEN REPLY #29572 /* ~"Schokoladenbonbons... mit Zauberkräften?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #29573 /* ~Er nickt. "Ja. Sie sind aber nicht *billig*. Wenn du knapp bei Kasse bist, dann vergessen wir die Sache am besten *gleich*. Willst du mal sehen, was ich habe?" Er legt seinen Kopf auf die Seite und sieht dich listig an.~ */
  IF ~~ THEN REPLY #29574 /* ~"Ja."~ */ DO ~StartStore("Quell_C",Protagonist)
~ JOURNAL #28833 /* ~Ich habe einen Zauberkundigen namens Quell getroffen, im Privaten Sinnsorium der Städtischen Festhalle. Er verkauft eine Vielfalt magischer Pralinen, die alle mit unterschiedlichen Zaubern versetzt sind, die wirksam werden, sobald man die Pralinen ißt. ~ */ EXIT
  IF ~~ THEN REPLY #29575 /* ~"Nein, aber ich habe da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29576 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.4 24.4
  SAY #29577 /* ~"Du stehst mitten in der Städtischen Festhalle, im exklusiven... *wirklich* exklusiven... bevor *du* hier reingelatscht bist... Privaten Sinnsorium. Sprich mit Splitter, dem Mann im Foyer der Festhalle, wenn du noch mehr blöde Fragen über diesen Ort hast."~ */
  IF ~~ THEN REPLY #29578 /* ~"Ich will dich noch mal was anderes fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29579 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.5 24.5
  SAY #29580 /* ~Als du ihren Namen erwähnst, schluckt er vor Schreck sein Bonbon runter und zuckt zusammen. "Was gibt's da zu erzählen?! Solche Geschichten sind besser in staubigen Büchern und den Hinterstübchen greiser Männer aufgehoben! Dieser Name, dieser Name... um ihn schwirren so viele Schauergeschichten wie Fliegen um eine Leiche."~ */
  IF ~~ THEN REPLY #29581 /* ~"Erzähl mir die Geschichte trotzdem."~ */ GOTO 35
  IF ~~ THEN REPLY #29582 /* ~"Na gut. Ich hätte da noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29583 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #29584 /* ~Er rollt mit den Augen und wirft sich ein weiteres Bonbon in den Mund. "Sie ist 'ne Nachthexe, mein Junge, die nach Sigil gekommen ist. Sie war boshaft und irre, und so voll von ihrer Schattenmagie, daß sie sich mit der Dame der Schmerzen angelegt hat. Ü-ber-ge-schnapp-te alte Hexe... Und alles, was sie davon hat, ist, daß sie jetzt in einem Irrgang sitzt. Wahrscheinlich ist sie inzwischen schon tot."~ */
  IF ~~ THEN REPLY #29585 /* ~"Schattenmagie?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29586 /* ~"Wie kann ich sie finden?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29587 /* ~"Wie kann ich sie finden?"~ */ GOTO 38
  IF ~~ THEN REPLY #29588 /* ~"In die Irrgänge geschickt?"~ */ GOTO 57
  IF ~~ THEN REPLY #29589 /* ~"Dame der Schmerzen?"~ */ GOTO 57
  IF ~~ THEN REPLY #29590 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29591 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.1 57.0
  SAY #29592 /* ~"Ja, ja, ja..." Er scheint nur ungern über sie sprechen zu wollen. "Ravel beschäftigte... nein, sie *brillierte* in allen Bereichen der Magie. Sie beherrschte die Schattenmagie, Illusionsmagie und Schattensubstanz, Schatten, Überreste toter Dinge."~ */
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29593 /* ~"Wie kann ich sie finden?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29594 /* ~"Wie kann ich sie finden?"~ */ GOTO 38
  IF ~~ THEN REPLY #29595 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29596 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.0 57.1
  SAY #29597 /* ~"Wie du sie finden KANNST?!" Sein Bonbon kullert ihm aus dem Mund und fällt auf den Boden. Eh du dich versiehst, hat er es schon aufgehoben und sich wieder in den Mund gesteckt. Er sieht dich giftig an.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 35.2 36.1 37.0 57.2
  SAY #29598 /* ~"Warum... warum *fragst* du mich so was? Bist du *VERRÜCKT*? Was willst du von einer so teuflischen Kreatur?"~ */
  IF ~~ THEN REPLY #29599 /* ~"Sie weiß etwas über meine Vergangenheit."~ */ GOTO 39
  IF ~~ THEN REPLY #29600 /* ~"Vergiß es. Was hast du noch mal über die 'Schattenmagie' gesagt?'"~ */ GOTO 36
  IF ~~ THEN REPLY #29601 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29602 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #29603 /* ~"Das bezweifle ich... sie wurde vor vielen Jahrhunderten in den Irrgang verbannt. Tot, ins Totenbuch eingetragen ist sie. Und selbst wenn sie sich immer noch irgendwo, *irgendwie* ans Leben klammert mit ihren schwarzen, blutigen Krallen, was *könnte* sie schon über *dich* wissen? Wenn sie nicht das spuckende Abbild des Bösen wäre, das sie ja ist und überhaupt *bereit* wäre, dir zu helfen..."~ */
  IF ~~ THEN REPLY #29604 /* ~"Ich kann nur hoffen, daß sie noch lebt und bereit ist, mir zu helfen."~ */ GOTO 40
  IF ~~ THEN REPLY #29605 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29606 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #29607 /* ~"Bei Leshes sechs Zitzen und ihrem aufgeblähtem Bauch: was für ein flackerndes Licht der Hoffnung stürzt sich da in den heulenden Wind des Pandämoniums! *Flacker-flacker-whuuusch*! Stell dich nicht dümmer an als du's wirklich bist!"~ */
  IF ~~ THEN REPLY #29608 /* ~"Ich muß sie aber finden, ob tot oder lebendig."~ */ GOTO 41
  IF ~~ THEN REPLY #29609 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29610 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #29611 /* ~"Nehmen wir mal an, sie ist tot, was ja sehr wahrscheinlich ist: was willst du dann machen? Hast du das alles gut durchdacht? Was Quell erzählt, ist ja bloß heiße Luft, Blödsinn, Quatsch! Was *machst* du, wenn sie im Totenbuch ist, hä?"~ */
  IF ~~ THEN REPLY #29612 /* ~"Ich weiß nicht. Mir wird schon was einfallen."~ */ GOTO 42
  IF ~~ THEN REPLY #29613 /* ~"Was würdest du denn vorschlagen?"~ */ GOTO 47
  IF ~~ THEN REPLY #29614 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29615 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29616 /* ~"Das ist der beste Plan, den ich je gehört habe! Eine blendende Idee, geradezu genial! Du hast keine Ahnung, wie du in den Irrgang gelangst, keine Ahnung, wie du wieder rauskommst, keine Ahnung, was du machst, wenn sie tot ist, und überhaupt keine Ahnung, was du machst, wenn sie noch lebt. Ich könnte mich genausogut mit einem Lemuren unterhalten!"~ */
  IF ~~ THEN REPLY #29617 /* ~"Kannst du mir sagen, wie ich zu ihrem Irrgang komme?"~ */ GOTO 43
  IF ~~ THEN REPLY #29618 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29619 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 47.0
  SAY #29620 /* ~"Irrer! Wahnsinniger! Vollidiot! Hast du mir denn überhaupt nicht zugehört?! Sie ist in einem überdimensionalen *Irrgang* gefangen, weil sie versucht hat, die *DAME DER SCHMERZEN* herauszufordern! Also ist sie mindestens zehnmal so bescheuert und hundertmal so mächtig wie du! Und sehr wahrscheinlich tot, tot, tot, tot und... falls sie es nicht ist... dann bist *du* tot!"~ */
  IF ~~ THEN REPLY #29621 /* ~"Natürlich habe ich dir zugehört! Aber ich brauche wirklich deine Hilfe. Kannst du mir nun sagen, wie ich dahin komme oder nicht?"~ */ GOTO 44
  IF ~~ THEN REPLY #29622 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29623 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #29624 /* ~Quell verstummt und kaut auf seinen Lippen. Nach einer Weile kramt er ein Pfefferminzbonbon aus seiner Tunika hervor und steckt es sich in den Mund. "Meinst du's ernst? Ja? Warum so verbissen, so baator-artig, so stur und dickköpfig?" Er seufzt. "Nun, du bist planlos gestorben und du wirst planlos sterben."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #29625 /* ~"Ja...?"~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",1)
~ JOURNAL #28832 /* ~Ein Zauberkundiger namens Quell hat mir erzählt, daß er Schlüssel zum Portal, das in Ravels Irrgang führen würde, - so seltsam es sich auch anhören mag - ein Stück von Ravel selbst sei.~ */ GOTO 45
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #18041 /* ~"Ja...?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #29626 /* ~"Alle Irrgänge haben Portale. Das kann ich mit *Gewißheit* sagen. Ein Weg führt hinein, einer hinaus... so werden sie von der Dame angelegt. Ich weiß nichts über das Portal... wo es ist, wie es aussieht... aber ich habe gehört, daß der Schlüssel... ein Teil von Ravel ist."~ */
  IF ~~ THEN REPLY #29627 /* ~"Ein Teil von Ravel? Aber wenn Ravel IN DEN IRRGANG verbannt ist, wie soll ich dann..."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29628 /* ~"Tja, dann suche nach etwas, was mit Ravel zu tun hat, vielleicht... Das ist alles, was ich weiß! Alles! Und jetzt nerv mich nicht länger damit! Wenn du irgendwen damit belästigen willst, dann geh ins Bordell zum Befriedigen Intelektueller Lüste - eine der Damen da hat bestimmt jemanden getroffen oder weiß etwas, das dir was nützt."~ */
  IF ~~ THEN REPLY #29629 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ JOURNAL #66703 /* ~Quell hat gesagt, ich solle zum Bordell zum Befriedigen Intellektueller Lüste gehen und dort nach dem Schlüsssel zu Ravels Irrgang suchen. Er behauptet, daß mindestens eine der Damen dort wahrscheinlich jemanden - oder etwas - getroffen hat, der oder das mir weiterhelfen kann.~ */ GOTO 24
  IF ~~ THEN REPLY #29630 /* ~"Vielen Dank für deine Hilfe. Leb wohl."~ */ JOURNAL #66703 /* ~Quell hat gesagt, ich solle zum Bordell zum Befriedigen Intellektueller Lüste gehen und dort nach dem Schlüsssel zu Ravels Irrgang suchen. Er behauptet, daß mindestens eine der Damen dort wahrscheinlich jemanden - oder etwas - getroffen hat, der oder das mir weiterhelfen kann.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY #29631 /* ~"Das ist die erste vernünftige Frage, die du stellst! *Ich* finde, du solltest diesen aberwitzigen Plan, in Irrgänge zu gehen und mit Nachthexen zu sprechen, aufgeben und in die Krypta zurückkriechen, aus der du rausgekrochen bist! Das ist jedenfalls besser, als sich den Groll der Dame einzuhandeln."~ */
  IF ~~ THEN REPLY #29632 /* ~"Kannst du mir sagen, wie ich zu ihrem Irrgang komme?"~ */ GOTO 43
  IF ~~ THEN REPLY #29633 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29634 /* ~"Vergiß einfach, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 26.1
  SAY #29635 /* ~"Dich etwas *lehren*?! Ha! Bist du überhaupt ein *Magier*?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29636 /* ~"Ja."~ */ GOTO 50
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #29637 /* ~"Nein, aber ich hoffte, du könntest mich zu einem machen."~ */ GOTO 49
  IF ~~ THEN REPLY #29638 /* ~"Vergiß es. Ich hätte da noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29639 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #29640 /* ~Er grinst dich spöttisch an. "Ooooh, hätte ich doch nur Bigbys Stiefel des Gerechten Arschtritts, um dich damit zu treten! NEIN!!! Ich werde ganz bestimmt *keinen* Magier aus dir machen, du strohdummer Kerl! Wenn ich das täte, würde ich mich an der Kunst versündigen!"~ */
  IF ~~ THEN REPLY #29641 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29642 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #29643 /* ~"Oh! Was für Wunder das Multiversum heute doch für Quell bereithält! Na los, zeig mir dein Zauberbuch!"~ */
  IF ~~ THEN REPLY #29644 /* ~Laß es ihn ansehen.~ */ GOTO 51
  IF ~~ THEN REPLY #29645 /* ~"Nein. Laß mich dich was anderes fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29646 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29647 /* ~Er entreißt es dir und starrt es wütend an. "Was ist das denn für'n Müll?! Mist! Mist, Mist, Mist! Auf diesen verschmierten Seiten kann man ja fast gar nichts mehr lesen... du hast das Buch wohl als Lappen benutzt, so dreckig wie das aussieht! Kannst du nicht besser auf dein Zauberbuch aufpassen?! Wie soll ich jemanden etwas lehren, der der Kunst keinen Respekt zollt?!"~ */
  IF ~~ THEN REPLY #29648 /* ~"Wieso ist es so wichtig, wie es aussieht?"~ */ GOTO 52
  IF ~~ THEN REPLY #29649 /* ~"Es enthält meine Zauber. Wie es aussieht, ist völlig unwichtig."~ */ GOTO 53
  IF ~~ THEN REPLY #29650 /* ~"Vergiß es einfach. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29651 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 54.0
  SAY #29652 /* ~"Im Aussehen deines Zauberbuchs spiegelt sich dein Respekt für seine Macht wider. Dein kleines Schundbuch taugt nur für die niedersten Worte! *Echte* Zauber sollten mit seltener, kostbarer Tinte auf Pergamentpapier mit Goldrand niedergeschrieben werden! Alles muß seine Ordnung haben, sonst geht gar nichts!" Er fängt an, wie verrückt herumzuhüpfen. "Ordnung! Ordnung!"~ */
  IF ~~ THEN REPLY #29653 /* ~"Aha... wirst du mich nun lehren oder nicht?"~ */ DO ~SetGlobal("Quell_Spells","AR0604",1)
~ GOTO 55
  IF ~~ THEN REPLY #29654 /* ~"Vergiß es einfach. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29655 /* ~"Vergiß, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #29656 /* ~"Lächerlich! Absurd! Der lächerlichste Spruch, den ich je gehört hab'! Wer hat dich denn die Kunst *gelehrt*?"~ */
  IF ~  Global("Mage_Training","GLOBAL",1)
~ THEN REPLY #29657 /* ~"Eine Hebamme auf dem Lumpensammlerplatz, Mebbeth."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",2)
~ THEN REPLY #50720 /* ~"Lady Dornenkamm, hier in der Festhalle."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",3)
~ THEN REPLY #67160 /* ~"Einen Magier, namens Sebastion, den ich im Unteren Bezirk getroffen habe."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",4)
~ THEN REPLY #67161 /* ~"Eine Frau namens Kitla, die ich in Verdammnis getroffen habe."~ */ GOTO 54
  IF ~~ THEN REPLY #29658 /* ~"Vergiß es einfach. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29659 /* ~"Vergiß, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 53.2 53.3
  SAY #29660 /* ~"Dann Schande über sie! So einen völligen Mumpitz zu verbreiten! Und diese Zauber! Was haben sie dir bloß für einen Plunder beigebracht, versiffte Zauber mit Flüchen und jeder Menge Brimborium! Triviale, banale, wie eine Kerze flackernde Zauber mit bombastischen Namen!"~ */
  IF ~~ THEN REPLY #29661 /* ~"Also wieso ist es so wichtig, wie es aussieht?"~ */ GOTO 52
  IF ~~ THEN REPLY #29662 /* ~"Vergiß es einfach. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29663 /* ~"Vergiß, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.0
  SAY #29664 /* ~Er schließt seine Augen und massiert sich eine Weile die Schläfen. Schließlich spricht er mit kühler und monotoner Stimme: "Es liegt auf der Hand, daß ich dich nichts lehren kann. Ich habe aber ein paar Zauber, die du mir vielleicht *abkaufen* willst. Willst du sie mal sehen?"~ */
  IF ~~ THEN REPLY #29665 /* ~"Ja."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29666 /* ~"Nicht jetzt. Ich hätte da noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29667 /* ~"Nein danke. Leb wohl."~ */ EXIT
END

IF ~  Global("Quell","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #29668 /* ~Quell schaut sich um, als du dich ihm näherst. "Mist! Er hat mich gesehen!" Er seufzt laut auf. "Also, raus damit! Was willst du *diesmal* von mir?" Er steckt sich ein Bonbon in den Mund und sieht dich erwartungsvoll an.~ */
  IF ~~ THEN REPLY #29669 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29670 /* ~"Nichts, komm nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 35.3 35.4
  SAY #29671 /* ~Er nickt grimmig. "Die Dame der Schmerzen. Sie... 'herrscht' über die Stadt Sigil, hält die Mächte fern und so. Eine der Strafen für die, die ihr in die Quere kommen, sind die Irrgänge... sie bricht ein Stück aus Sigil heraus, verdreht es, verbannt es wer weiß wohin und hält den Aufmüpfigen darin gefangen. Und dann sind sie fort, verschwunden in den Ebenen!"~ */
  IF ~~ THEN REPLY #29672 /* ~"Du hattest doch von 'Schattenmagie' gesprochen?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29673 /* ~"Wie kann ich sie finden?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29674 /* ~"Wie kann ich sie finden?"~ */ GOTO 38
  IF ~~ THEN REPLY #29675 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 24
  IF ~~ THEN REPLY #29676 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
