// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAVEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAVEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Ravel_Cut_Scene","AR0610",0)
~ THEN BEGIN 0 // from:
  SAY #2976 /* ~Die plumpe, hakennasige Vettel vor dir sieht nicht gerade wie ein Mythos aus. Sie trägt ein einfaches, aber dreckiges braunes Hemd und Leggings, und von ihrem ausgefransten Gürtel hängen eine Reihe Beutel. Sie scheint dich nicht zu bemerken, sondern zu sehr mit dem schwarzen Wurzelgewirr beschäftigt zu sein, das zum Boden des Irrgangs verflochten ist, als um irgend etwas um sich herum wahrzunehmen.~ */
  IF ~~ THEN REPLY #2977 /* ~Sieh sie dir eine Weile lang genau an.~ */ GOTO 1
  IF ~~ THEN REPLY #51564 /* ~Laß die Frau in Ruhe in ihrem Garten werkeln.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51566 /* ~Zotteliges, graues Haar ragt aus der Kapuze der Alten hervor und bedeckt ihre Schultern wie eine Masse von verdrehten, grauen Wurzeln. Kränklich blaugraues Fleisch hängt in losen Falten von ihrem Gesicht. Ihr schmales Kinn ist lang und spitz und steht in extremem Unterbiß hervor. Zwei schmutzige, gelbe Eckzähne ragen wie kleine Hauer aus ihrem Unterkiefer.~ */
  IF ~~ THEN REPLY #51567 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #51568 /* ~Greif sie an, bevor sie auf dich aufmerksam wird.~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #51569 /* ~Greif sie an, bevor sie dich bemerkt.~ */ GOTO 3
  IF ~~ THEN REPLY #51570 /* ~Laß die Frau in Ruhe in ihrem Garten werkeln.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #51571 /* ~Als du anfängst, bei der Alten nach Schwachstellen zu suchen, spürst du ein flaues Gefühl in der Magengegend, wie Übelkeit. Tief im Innern weißt du, daß ein Angriff jetzt taktisch richtig wäre, aber du WEISST, daß du erst herausfinden mußt, was diese Alte... dieses Wesen... über dich weiß. ~ */
  IF ~~ THEN REPLY #51572 /* ~Greif sie trotzdem an.~ */ GOTO 3
  IF ~~ THEN REPLY #51573 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #51574 /* ~Als der Gedanke an Angriff durch deinen Kopf blitzt, hebt die Alte den Kopf, als ob ihr gerade ein seltsamer Gedanke gekommen sei. Sie blinzelt und gibt ein kratziges Zischen von sich, wie einen Seufzer.~ */
  IF ~~ THEN REPLY #51575 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF WEIGHT #1 ~  Global("Ravel_Cut_Scene","AR0610",1)
~ THEN BEGIN 4 // from:
  SAY #51576 /* ~"Ah... Besucher." Die Stimme der Alten ist belegt und kratzig, als ob sie sich ihren Weg durch Schichten von Staub bahnen muß. Ihre Augen sind von matter, blutroter Farbe und werden von schwarzen Adern durchzogen, die wie die Zweige eines Baumes wirken. Als sie dich anblickt, beschleicht dich ein seltsames Gefühl, als ob sich Schlangen unter deiner Haut winden.~ [RAV005] */
  IF ~~ THEN REPLY #51577 /* ~"Sei gegrüßt... Ravel."~ */ DO ~SetGlobal("Ravel","GLOBAL",1)
AddexperienceParty(90000)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51578 /* ~"Na? Hallo, mein Hübscher... Bist du endlich zurückgekommen?" Ravels Gesicht verzieht sich zu einem grotesken Lächeln, das den Blick auf eine Reihe abgesplitterter, gelber Reißzähne freigibt. "Du warst so lange weg, ich hatte schon befürchtet, du hättest die alte, einsame Ravel vergessen."~ [RAV002] */
  IF ~~ THEN REPLY #51579 /* ~"Ich hatte dich eine Zeitlang vergessen. Jetzt bin ich zurückgekommen."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #51580 /* ~"Wie hätte ich dich vergessen können, Ravel? Ich habe dich vermisst, aber du hast dich an einem Ort versteckt, den ich nicht ohne Schwierigkeiten erreichen konnte. Komm schon... hast du dir meine Anwesenheit nicht gewünscht?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #51581 /* ~"Ahhh...." Ravels gelbes Lächeln wird breiter, die Falten ihrer Haut schieben sich zusammen, und sie kichert leise. "Solch *nette* Worte... Du kennst schon die Antwort auf deine Frage, mein Schatz. Ich habe Hinweise fallen lassen wie Kastanien. Sie waren mein Mittel, dich zu meinem Garten zu führen. Ich hatte befürchtet, daß DU es warst, der *mich* vergessen hat."~ */
  IF ~~ THEN REPLY #51582 /* ~"Ich versichere dir, ich habe nichts dergleichen getan. Ich bin schließlich zu dir zurückgekommen."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #51583 /* ~"So? Aber WAS ist zurückgekommen?" Sie blinzelt dich mit ihren schwarzgeäderten Augen an und zischt leise. "Laß Ravel sehen, wie es dir in diesem Leben ergangen ist." Sie streckt ihre Hand nach dir aus, als wolle sie dich streicheln. Du bemerkst plötzlich, daß sie statt Fingern Klauen hat und daß ihre Fingernägel schmutzig und schrecklich scharf sind.~ */
  IF ~~ THEN REPLY #51584 /* ~Laß sie dich berühren.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #51585 /* ~"Berühr mich nicht, Ravel. Ich will mich mit dir nur unterhalten, sonst nichts."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
  IF ~~ THEN REPLY #51586 /* ~Schlag sie, als sie die Hand ausstreckt, um dich zu berühren.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #51587 /* ~Als der Gedanke an Angriff durch deinen Kopf blitzt, *lodern* Ravels Augen wie Flammen auf, und ihre Stimme bekommt plötzlich einen drohenden Unterton. "Tu es NICHT. Wenn dir das *bißchen*, was du noch hast, etwas wert ist, tu es NICHT."~ */
  IF ~~ THEN REPLY #51588 /* ~"Ich glaube nicht, daß du mich aufhalten kannst, Ravel. Versuch's nur."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
  IF ~~ THEN REPLY #51589 /* ~"Dann berühr mich nicht, Ravel. Ich möchte mit dir nur Worte austauschen, nichts sonst."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0 49.1 50.0 86.0
  SAY #51590 /* ~"Du hast deinen Platz vergessen, HALB-Mensch. Übe dich in Demut."~ [RAV065] */
  IF ~~ THEN REPLY #51591 /* ~"Wir werden sehen, du üble Hexe..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #51592 /* ~Ihre ausgefransten Klauen wandern über deine Haut, und du verspürst das gleiche seltsame Kribbelgefühl, daß du gespürt hast, als Ravel dich zum ersten Mal angesehen hat. Ihr Blick verdüstert sich leicht, und ihre Klauen gleiten sanft über dein Gesicht und verweilen auf deinen Narben.~ */
  IF ~~ THEN REPLY #51594 /* ~Warte...~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51595 /* ~Streck die Hand aus, um sie zu berühren, ihre Gesichtszüge zu ertasten.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51596 /* ~Streck die Hand aus, um sie zu berühren, ihre Gesichtszüge zu ertasten.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51597 /* ~Streck die Hand aus, um sie zu berühren, ihre Gesichtszüge zu ertasten.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #51598 /* ~Deine Hand berührt Ravels Wange, während ihre Klauen dein Gesicht streicheln, und instinktiv spiegelst du ihre Berührungen wider - wenn sie mit ihrer Klaue über deine linke Wange streicht, streichen deine Finger über ihre. Sie schließt die Augen, und du tust es ihr gleich. Es ist ein seltsam vertrautes Gefühl, aber du kannst die Erinnerung nicht heraufbeschwören. Nach einem Moment öffnen sich ihre blutunterlaufenen Augen, und sie gibt ein kratziges Zischen von sich.~ */
  IF ~~ THEN REPLY #51599 /* ~Warte.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 10.2 10.3
  SAY #51600 /* ~Deine Hand berührt Ravels Wange, während ihre Klauen dein Gesicht streicheln, und instinktiv spiegelst du ihre Berührungen wider - wenn sie mit ihrer Klaue über deine linke Wange streicht, streichen deine Finger über ihre. Sie schließt die Augen, und du tust es ihr gleich. Es ist ein seltsam vertrautes Gefühl...~ */
  IF ~~ THEN REPLY #51601 /* ~Schließ die Augen, gib dich der Erinnerung hin.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Ravel_Memory","GLOBAL",1)
PlaySound("SPTR_01")
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51602 /* ~Als du die Augen öffnest, hast du das Gefühl, als sei alle Farbe aus den Bäumen und dem Irrgang gewichen. *Alles* ist gleichförmig, staubig, totengrau. Ravels Augen sind immer noch geschlossen, aber als du sie ansiehst, öffnen sie sich langsam, und Ravel lächelt ein trauriges, graues Lächeln. Dir kommen Worte in den Sinn wie ein Echo von etwas, das du in der Vergangenheit gesagt hast, an einem anderen Ort, auf einer anderen Ebene...~ */
  IF ~~ THEN REPLY #51603 /* ~Echo der Erinnerung: "Es heißt, du seist die größte der Grauen Schwestern, Ravel. Ich bin weit gereist, um zu dir zu gelangen."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #51604 /* ~Sie nickt, aber langsam, zu langsam, wie im Traum. Als sie spricht, klingen ihre Worte dumpf, als würden sie unter Wasser gesprochen. "Aber *warum* bist du so weit gereist? Deine Not muß groß sein... und doch scheinst du *nichts* mitgebracht zu haben, was mich interessieren könnte. Du mußt für die Dienste BEZAHLEN..."~ */
  IF ~~ THEN REPLY #51605 /* ~Echo der Erinnerung: "Meine Not ist groß. Meine Währung ist dies: eine Herausforderung. Vielleicht eine unmögliche Herausforderung - eine, die wohl auch *deine* Fähigkeiten übersteigen wird..."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #51606 /* ~Du wiederholst die Worte wie ein Echo, und du spürst die MANIPULATION, die subtile Andeutung, die Ravel herausfordern soll. In deiner traumähnlichen Erinnerung lodern ihre Augen in einem feurigen Grau, und das Grau, das die Landschaft verzehrt, scheint aus ihrem Gesicht zu strömen. "Es gibt NICHTS, das ich nicht schaffe! NICHTS! Nenn deine Herausforderung, ich werde dich anhören!"~ */
  IF ~~ THEN REPLY #51607 /* ~Echo der Erinnerung: "Der Tod wartet am Ende des Lebens auf alle Menschen. Auf mich darf er nicht länger warten... Kannst du dies für mich tun, schöne Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #51608 /* ~Die Sicht wird klarer, das Grau weicht aus dem Irrgang, bis die Farbe wieder da ist. Deine Hand liegt immer noch auf Ravels Wange. Ihre Augen sind geschlossen, und sie seufzt. Du ziehst langsam deine Hand zurück. Kurz darauf öffnen sich Ravels Augen, und sie gibt ein kratziges Zischen von sich. "Jahhhh..."~ */
  IF ~~ THEN REPLY #51609 /* ~"Ravel...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #51610 /* ~Als ich zu Ravel in den Schwarzstachel-Irrgang zurückkehrte, habe ich mich plötzlich an unsere wahrscheinlich erste Begegnung erinnert... an einem Ort, an dem alles grau war, als ob aus allem die Farbe gewichen sei. Ich habe sie dazu herausgefordert, mich unsterblich zu machen, und wenn mich mein Gedächtnis nicht trügt, hat sie meinem Wunsch entsprochen.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 10.0 11.0 16.0
  SAY #51611 /* ~Ravels zieht ihren Finger zurück und sieht dich traurig an. "Oh, trauriges, trauriges, zerbrochenes Halb-Etwas. Alles in Stücken." Sie blinzelt dich wieder an. "Nicht mehr der, den Ravel kannte, bist du... Bist du immer noch zerbrochen, nach all dieser traurigen, traurigen Zeit?"~ */
  IF ~~ THEN REPLY #51612 /* ~"Zerbrochen? Was meinst du?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 7.1 8.1
  SAY #51613 /* ~"Ah... Immer der Vorsichtige, mein liebstes Rätsel?" Sie zieht ihren Finger zurück und läßt ihn sinken. "So habe ich dich bereits bezeichnet, als du zum *ersten* Mal in der Einöde zu mir kamst, mit deiner Herausforderung für Ravel."~ */
  IF ~~ THEN REPLY #51614 /* ~"Ich... erinnere mich nicht an eine solche Begegnung. Es gibt vieles, was ich vergessen habe."~ */ GOTO 19
  IF ~~ THEN REPLY #51615 /* ~"Wovon sprichst du?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #51616 /* ~Ravel seufzt leise und betrachtet dich eingehend. "Oh, trauriges, trauriges, zerbrochenes Halb-Etwas. Alles in Stücken. Nicht mehr der, den Ravel kannte, bist du... Bist du immer noch zerbrochen, nach all dieser traurigen, traurigen Zeit?"~ */
  IF ~~ THEN REPLY #51617 /* ~"Was meinst du?"~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51618 /* ~"Ravel, das Ritual, das du ausgeführt hast, hatte Fehler... Es hat nicht funktioniert. Jedesmal wenn ich sterbe... oder zumindest jedesmal, wenn ich *bislang* gestorben bin, habe ich mich vergessen und bin jemand anders geworden. Ich bin zerbrochen, ja. Kannst du mich heilen, mir helfen, mich zu erinnern?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0 19.1
  SAY #51619 /* ~"Einen Körper besitzt du, aber kein Wissen?" Sie zeigt mit ihrer ausgefransten Klaue auf deine Brust, auf deine Narben. "Viele solcher... solcher Narben hast du, überall auf deiner Haut. Viele Geschichten erzählt deine Haut."~ */
  IF ~~ THEN REPLY #51620 /* ~"Wovon redest du eigentlich?"~ */ GOTO 21
  IF ~~ THEN REPLY #51621 /* ~"Was für Geschichten erzählt meine Haut?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #51622 /* ~"Deine Narben und Tätowierungen rufen mir zu: 'Hier ist ein Mann in Konfrontation mit der Welt'." Ravel gibt ein gurrendes Geräusch von sich, einem sterbenden Vogel nicht unähnlich. "Ja, solche Geschichten würden selbst die Ohren einer *Hexe* schrumpfen lassen..."~ */
  IF ~~ THEN REPLY #51623 /* ~"Erzähl mir diese... Geschichten. Ich möchte sie hören."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 24.0 26.0 27.0 29.0
  SAY #51624 /* ~"Es sind viele Geschichten. Sie künden wie ein Echo von unausgeglichenem Gleichgewicht, Kriegsprüfungen, Schlachten mit Scheusalelementen und einer Kreatur, die sich aus der Ferne von anderen ernährt, um sich selbst zu erhalten... und von Folter, einer *Folter*, die das Fleisch nie gekannt hat..."~ */
  IF ~~ THEN REPLY #51625 /* ~"Unausgeglichenes Gleichgewicht?"~ */ DO ~SetGlobal("Ravel_Tale_1","AR0610",1)
~ GOTO 23
  IF ~~ THEN REPLY #51626 /* ~"Kriegsprüfungen?"~ */ DO ~SetGlobal("Ravel_Tale_2","AR0610",1)
~ GOTO 25
  IF ~~ THEN REPLY #51627 /* ~"Schlachten mit Scheusalelementen?"~ */ DO ~SetGlobal("Ravel_Tale_3","AR0610",1)
~ GOTO 27
  IF ~~ THEN REPLY #51628 /* ~"Eine Kreatur, die sich aus der Ferne von anderen ernährt?"~ */ DO ~SetGlobal("Ravel_Tale_4","AR0610",1)
~ GOTO 28
  IF ~  NumInParty(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51629 /* ~"Und diese Foltern, von denen du sprichst... Was sind das für Foltern?"~ */ JOURNAL #51631 /* ~Ravel hat gesagt, ich sei "zerbrochen". Sie ließ ein paar rätselhafte Bemerkungen über meine Narben und Tätowierungen fallen und hat gesagt, daß sie von einem "unausgeglichenen Gleichgewicht" künden, von "Kriegsprüfungen" und "Schlachten mit Scheusalelementen". Zudem nannte sie mich eine Kreatur, "die sich aus der Ferne von anderen ernährt". Sie hat zugegeben, daß sie mir meine Sterblichkeit genommen hat, und gesagt, daß ich gepeinigte Seelen wie ein Magnet Eisen anziehe.~ */ GOTO 30
  IF ~  NumInPartyGT(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51630 /* ~"Und diese Foltern, von denen du sprichst... Was sind das für Foltern?"~ */ JOURNAL #51631 /* ~Ravel hat gesagt, ich sei "zerbrochen". Sie ließ ein paar rätselhafte Bemerkungen über meine Narben und Tätowierungen fallen und hat gesagt, daß sie von einem "unausgeglichenen Gleichgewicht" künden, von "Kriegsprüfungen" und "Schlachten mit Scheusalelementen". Zudem nannte sie mich eine Kreatur, "die sich aus der Ferne von anderen ernährt". Sie hat zugegeben, daß sie mir meine Sterblichkeit genommen hat, und gesagt, daß ich gepeinigte Seelen wie ein Magnet Eisen anziehe.~ */ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #51632 /* ~"Zweigeteilt wurdest du, als deine Sterblichkeit von dir abgestreift wurde. Nicht länger im Gleichgewicht, viel wurde zerbrochen bei der Trennung... ein Segen und auch ein Fehler... aber mehr ein Fehler als ein Segen, glaubt Ravel."~ */
  IF ~~ THEN REPLY #51633 /* ~"Du hast meine Sterblichkeit *genommen*? Wie?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #51634 /* ~"Vergessen habe ich das Wie... habe ich das?" Ravels Blick verdüstert sich kurz, die schwarzen Adern in ihren Augen verschwimmen. "Und selbst wenn ich mich daran erinnerte, ich würde es nicht ein zweites Mal tun. Nicht vergessen habe ich den Moment nach dem *Bruch*, in dem ich den Schmerz aus deinen Adern habe fließen sehen, deine Schreie wie die eines weinenden Kindes, als du bis in den letzten Winkel gefüllt wurdest mit *Leere*. Schrecklich, sogar für diese Augen."~ */
  IF ~~ THEN REPLY #51635 /* ~"Also... deshalb fühle ich mich innerlich hohl? Weil meine Sterblichkeit fort ist? Nun gut... Was für Geschichten erzählt meine Haut noch?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY #51636 /* ~"Große, große Kriegsprüfungen... Viel zu viel, um von einem, irgendeinem Sterblichen ertragen zu werden."~ */
  IF ~~ THEN REPLY #51637 /* ~"Welcher Krieg? Wo?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #51638 /* ~"Dieser Krieg berührt ALLE, mein geliebter Halb-Mann. Es gibt keinen Ort, an dem seine Berührung nicht zu spüren ist... Hat er dich berührt?" Ravels stimme senkt sich, fast bitter. "Darauf antwortet Ravel mit 'Ja'."~ */
  IF ~~ THEN REPLY #51639 /* ~"Das würde die Narben erklären... Welche Geschichten erzählt meine Haut noch?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY #51640 /* ~"Zwei Scheusale schlagen ihre Köpfe aneinander..." Ravel schnaubt, als ob sie Verachtung empfindet. "Ihre kleinen Köpfe sind mit Ideen gefüllt, wie die Ebenen sein *sollten*, aber *nie* sein können, oder sie wären nicht länger die Ebenen. Solche Dummheit!"~ */
  IF ~~ THEN REPLY #51641 /* ~"Ich bin mir nicht sicher, ob ich das verstehe... Welche Geschichten erzählt meine Haut noch?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 22.3
  SAY #51642 /* ~"Keine niederen Begierden verspürst du, aber viel, viel schrecklichere brodeln unter deiner Haut. Und *solch* ein Preis..."~ */
  IF ~~ THEN REPLY #51643 /* ~"Begierden? Was meinst du damit?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #51644 /* ~"Ich weiß nicht... nicht? Ich kenne nicht das Wesen, noch die Ursache dieser Begierden. Aber merk dir dies: Kommende Ereignisse werfen ihre *Schatten* voraus, mein geliebter Halb-Mann... Man kann nicht sagen, welche Ereignisse es sein werden, nicht einmal *Ravels* Augen können es sehen."~ */
  IF ~~ THEN REPLY #51645 /* ~"Oh, nun gut... Welche Geschichten erzählt meine Haut noch?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 22.4
  SAY #51646 /* ~"Ein Magnet zieht Eisen an... Und das tust du auch, geliebter Halb-Mann, aber nicht Eisen, sondern gepeinigte Seelen. Wenn andere leiden, werden sie von dir angezogen, und dein Pfad wird zu ihrem."~ */
  IF ~~ THEN REPLY #51647 /* ~"Warum ist das so?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 31 // from: 22.5
  SAY #51648 /* ~"Ein Magnet zieht Eisen an... Und das tust du auch, geliebter Halb-Mann, aber nicht Eisen, sondern gepeinigte Seelen. Wenn andere leiden, werden sie von dir angezogen, und dein Pfad wird zu ihrem." Sie macht eine ausschweifende Geste. "Siehst du es nicht in den Augen derer, die mit dir hierher gereist sind?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51649 /* ~"Meine Gefährten? Was meinst du?"~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",1)
~ GOTO 32
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51650 /* ~"Meine Gefährten? Was meinst du?"~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ GOTO 33
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51651 /* ~"Meine Gefährten? Was meinst du?"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51652 /* ~"Meine Gefährten? Was meinst du?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51653 /* ~"Meine Gefährten? Was meinst du?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51654 /* ~"Meine Gefährten? Was meinst du?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51655 /* ~"Meine Gefährten? Was meinst du?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 239
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #51656 /* ~"Möchtest *du* es erklären, Gith?" Ravel wirft Dak'kon einen flammenden Blick zu, der durch ein Lächeln gemildert wird. "Schwüre können bindender sein als alle Ketten, nicht? Die Ketten einer Rasse, die einst versklavt war und jetzt wieder ein Sklave ist?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 170
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY #51657 /* ~"Das Ersatzteillager..." Ravels Blick wandert zu Nordom. "Einst kannte er nur die Definition von *Leiden*, jetzt spürt er seinen Schmerz. Es ist kein Platz für '2' in einer Welt voller Einsen und Nullen, kein Platz für 'vielleicht' in einem Haus von 'wahr' und 'falsch' und kein 'grün vor Neid' in einer schwarzweißen Welt. Wenn er entdeckt, wie die Ebenen sich drehen, wenn er die WAHRHEIT hinter Loyalität und falscher Logik entdeckt, wird er noch mehr Qual erfahren..."~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #51658 /* ~"Ravel, laß meine Gefährten in Ruhe. Ich habe Fra..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51659 /* ~"Ravel, laß meine Gefährten in Ruhe. Ich habe Fra..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51660 /* ~"Ravel, laß meine Gefährten in Ruhe. Ich habe Fra..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51661 /* ~"Ravel, laß meine Gefährten in Ruhe. Ich habe Fra..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51662 /* ~"Ravel, laß meine Gefährten in Ruhe. Ich habe Fra..."~ */ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 31.2 33.0
  SAY #51663 /* ~"Der knisternde, lodernde Magier..." Ravels Augen scheinen Ignus' Feuer aufzufangen und sein höllisches Licht zu versprühen. "Einen glühenden Funken von Ravels einstiger Leidenschaft trägt er, denn ihm ist egal, was er tut, aber... vielleicht... tief im Innern, an den lichtlosen Orten, wird er von dem gequält, was er EINST war, bevor die Leidenschaften über ihn kamen... Enthalten meine Worte eine brennende Wahrheit, oh schwelende Leiche...?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 17
END

IF ~~ THEN BEGIN 35 // from: 31.3 33.1
  SAY #51667 /* ~"Der plappernde Schädel..." Ravel sieht Morte nicht einmal an, als ob er ihrer Aufmerksamkeit nicht würdig wäre. "Sind die spitzen Bemerkungen ein ausreichender Schild für das, was in deiner Birne begraben liegt, hmmm? Warum die Wahrheit sagen, wenn Lügen reichen?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #51671 /* ~"Morte...? Was meinst du, Ravel?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51672 /* ~"Morte...? Was meinst du, Ravel?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51673 /* ~"Morte...? Was meinst du, Ravel?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 31.4 33.2 35.0
  SAY #51668 /* ~"Die Verführerin des Abgrunds...", bemerkt Ravel höhnisch, und ihre gelben Reißzähne blitzen zwischen ihren violett gefärbten Lippen, als sie Grace, die Gefallene, blinzelnd ansieht. "So helle Haut, so volle Lippen, Augen, die dich Ravel selbst vergessen lassen könnten... Und doch leidet sie, mehr als irgend jemand sonst. Wenn man sich gegen seine Natur wendet, sind es der Foltern viele, die aus solchem Verrat entstehen."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 158
END

IF ~~ THEN BEGIN 37 // from:
  SAY #51674 /* ~"Du LÜGST, Sukkubus!" Ravels Lippen falten sich in einem Knurren zurück. "Du LÜGST! WAGE es nicht, mich anzulügen, wo doch dein Herz wie ein offenes BUCH für mich ist! Jedes Wort, das du AUSSPUCKST, kündet *schreiend* von deiner Folter!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51675 /* ~"Paß auf, was du sagst, Ravel! Das reicht!"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51676 /* ~"Paß auf, was du sagst, Ravel! Das reicht!"~ */ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 31.5 33.3 35.1 37.0
  SAY #51677 /* ~"Ah..." Ravel deutet auf Annah, als ob sie zur Versteigerung stünde. "Sieh dir diesen lebendigen Tiefling an... Stimme und Haar so *feurig*..." Ravel lächelt und entblößt ihre vergilbten Zahnreihen. "Soll ich von *deiner* Folter sprechen, Tiefling?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 252
END

IF ~~ THEN BEGIN 39 // from:
  SAY #51678 /* ~"Nein... Nein, ich werde nicht davon sprechen." Ravels Stimme senkt sich, als sei sie erschöpft. Das Lächeln auf ihrem Gesicht verblaßt. "Der Grausamkeiten und Foltern müde ist Ravel... Die Welt ist bereits zerrissen genug..." Sie wendet sich dir zu, ihre blutunterlaufenen Augen verdunkeln sich, und sie seufzt.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 33.4 35.2 37.1 39.0
  SAY #51679 /* ~"Und mein geliebter, geliebter Halb-Mann... für *dich* bleibt die größte aller Foltern... ewiges Leben. Könnte das Leben sich so um dich sorgen wie Ravel?" Sie knirscht mit ihren vergilbten Hauern, ein schreckliches Geräusch. "So mutig, so leidenschaftlich, so schrecklich verloren, traurig, traurig."~ */
  IF ~~ THEN REPLY #51680 /* ~"Ravel, *warum* hast du mich unsterblich gemacht? Ich muß es wi..."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 238.0
  SAY #51681 /* ~"Ein Rätsel aus Knochen und Haut bist du immer gewesen, fesselnd und mir der liebste von allen, die zu mir kamen, bittend, bettelnd, flehend...? Um Hilfe flehend." Ravel starrt dich an, ihre schwarzgeäderten, glühenden Augen verengen sich. "Es ist so *schwer*, unter die Narben zu schauen, den Mann, der einst war, darunter hervorzuholen..."~ */
  IF ~~ THEN REPLY #51682 /* ~"Ravel, kannst du mir irgendetwas darüber sagen, wer ich einst war?"~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #51683 /* ~"Ein Schatten mit Substanz, der sucht, was das Licht wirft. Ich kenne dich besser und kein... nicht..." Ravel unterbricht sich, ihre Augen verdunkeln sich. "Doch nicht besser als ich das Wesen IRGENDEINES Menschen kenne. Gemeinsame Vergangenheiten haben wir... Ein von Un-Tod gezeichneter Mensch, der noch die Schmerzen der Trennung spürt, und eine verwelkte Alte, jetzt ganz gefangen."~ */
  IF ~~ THEN REPLY #51684 /* ~"Gemeinsame Vergangenheiten?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #51685 /* ~"Sieht es so aus, als ob wir uns zum ersten Mal begegnen? Nein, nein, nicht... nicht?" Ravel wirkt einen Moment verwirrt, dann schaudert sie, als ob sie eine Last abschüttelt. "Überhaupt nicht. Das Echo einer zukünftigen Begegnung ist dies... oder einer vergangenen Begegnung, je nachdem, wie man die Zeit betrachtet."~ */
  IF ~~ THEN REPLY #51686 /* ~"Diese... diese Begegnung ist also ein Echo einer Begegnung in der Vergangenheit?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #51687 /* ~"Das Jetzt und Damals - sehr... ähnlich? So verwoben sind das Jetzt und das Damals, jedes spiegelt sich im andern wider... Immer wieder erscheinst du vor mir mit einem Problem und forderst mich heraus, eine Lösung für eine UNMÖGLICHKEIT zu finden." Ravel zischt dich an, und ihre Augen lodern. "Schöner, *undankbarer*, geliebter Mann!"~ */
  IF ~~ THEN REPLY #51688 /* ~"Was war das für eine Unmöglichkeit, um deren Lösung ich dich gebeten hatte?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #51689 /* ~Ravel scheint dich nicht gehört zu haben. Sie scheint immer noch in der Vergangenheit zu schwelgen, denn ihre Augen sind dunkel, als ob sie weit in die Ferne blicken. "Solches Feuer in deinen Augen, genug, um das Herz einer Grauen Dame zu berühren... Begierde, frei zu sein. Aber nach der Befreiung erlosch das Feuer in deinen Augen. Mit der Trennung hat dein Leben alle Bedeutung abgeworfen, fürchte ich." Ravel lächelt mit ihren gelben Reißzähnen, dann schlägt sie sie aufeinander, als ob sie lachte. "Vielleicht solltest du Männchen machen, vielleicht gibt Ravel dir noch einen Fetzen Wissen."~ */
  IF ~~ THEN REPLY #51690 /* ~"Wenn betteln mir Antworten bringt, dann werde ich dich anbetteln, Ravel: Sag mir, was du weißt. Du mußt mir helfen, mich daran zu erinnern, was passiert ist."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 46
  IF ~~ THEN REPLY #51691 /* ~"Ich werde nicht um deine Hilfe *betteln*, Ravel. Ich werde fragen, du wirst antworten, sonst nichts."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #51692 /* ~"Ah... Ein weicheres Herz jetzt?" Ravels schwarzgeäderte Augen glänzen, und ihre Mundwinkel ziehen sich nach oben, wie eine Schlange. "Hat das Leben dich weich gemacht... Ach, aber man kann hoffen."~ */
  IF ~~ THEN REPLY #51693 /* ~"Ravel, ich habe viele Fragen, die ich dir stellen möchte..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #51694 /* ~"Du warst nie einer, der sein Knie vor mir beugen würde, mein Schatz."~ */
  IF ~~ THEN REPLY #51695 /* ~"Ravel, ich habe viele Fragen, die ich dir stellen möchte..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #51696 /* ~"Oh, du hast noch MEHR Fragen?" Ravel gurrt leise, wenn auch mit vorwurfsvollem Unterton. "Ts, ts. Aber du hast schon *soooo* viele gestellt." Ravels schwarzgeäderte Augen nehmen einen neugierigen Glanz an. "Jetzt ist es Zeit für MEINE Fragen, Halb-Mann."~ */
  IF ~~ THEN REPLY #51697 /* ~"Nun gut, Ravel... Stell deine Fragen."~ */ GOTO 51
  IF ~~ THEN REPLY #51698 /* ~"Ravel, ich brauche erst noch etwas mehr Informationen..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #51699 /* ~"Du sollst KEINE Samen des Wissens aus meinem Gedächtnis mehr sammeln, bis MEINE Fragen *beantwortet* sind. Stelle meine GEDULD nicht auf die Probe. Die Kostbarkeit, die du in meinen Augen besitzt, hat *Grenzen*."~ */
  IF ~~ THEN REPLY #51700 /* ~"Nun gut..."~ */ GOTO 51
  IF ~~ THEN REPLY #51701 /* ~"Ich werde meine Fragen stellen, und du wirst antworten, Ravel. Ich habe weder die Zeit noch die Geduld für deine Fragen..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 52.17 52.18 58.2 58.3 68.12 68.13 69.11 69.12 70.10 70.11 92.2 98.15 99.15
  SAY #51702 /* ~"Du wirst mir keine Antworten geben? Du WAGST es...?" Zu deiner Überraschung verlängern sich ihre vergilbten Reißzähne und fangen an zu glänzen. Du siehst, wie ihre Klauen *wachsen*. "Ich habe dich GEWARNT, dich vorzusehen, das habe ich... Sonst werden dich deine Fragen ZERREISSEN..."~ */
  IF ~~ THEN REPLY #51703 /* ~"Ravel, ich..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #51704 /* ~"Merk dir dies und merk dir Ravels Gesetz: Wenn du meine Fragen nicht beantwortest, werde ich keine *deiner* Fragen mehr beantworten, mein Schatz. Sieh dich vor mit deinen Antworten, sonst wird das Fragenstellen dich ZERREISSEN..."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #51705 /* ~"Verstanden. Stell deine Fragen, Ravel."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51706 /* ~"Verstanden. Stell deine Fragen, Ravel."~ */ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51707 /* ~"Ist in Ordnung. Stell deine Fragen, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51708 /* ~"Ist in Ordnung. Stell deine Fragen, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51709 /* ~"*Droh* mir nicht, Ravel... Stell deine Fragen und gib Ruhe..."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51710 /* ~"*Droh* mir nicht, Ravel... Stell deine Fragen und gib Ruhe..."~ */ GOTO 58
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.2 51.4
  SAY #51735 /* ~"Ich will wissen, warum du hier ganz alleine vor mir stehst... Warum stehen keine anderen neben dir?"~ */
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51736 /* ~"Ich wünsche mir keine Gefährten. Mein Pfad ist mein eigener, und ich habe nicht den Wunsch, ihn mit anderen zu gehen."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51737 /* ~"Ich wünsche mir keine Gefährten. Mein Pfad ist mein eigener, und ich habe nicht den Wunsch, ihn mit anderen zu gehen."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51738 /* ~"Ich wünsche mir keine Gefährten. Mein Pfad ist mein eigener, und ich habe nicht den Wunsch, ihn mit anderen zu gehen."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51739 /* ~"Ich wünsche mir keine Gefährten. Mein Pfad ist mein eigener, und ich habe nicht den Wunsch, ihn mit anderen zu gehen."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51740 /* ~"Ich wünsche mir keine Gefährten. Mein Pfad ist mein eigener, und ich habe nicht den Wunsch, ihn mit anderen zu gehen."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51741 /* ~"Ich wünsche mir keine Gefährten. Mein Pfad ist mein eigener, und ich habe nicht den Wunsch, ihn mit anderen zu gehen."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51742 /* ~"Ich wünsche mir keine Gefährten. Mein Pfad ist mein eigener, und ich habe nicht den Wunsch, ihn mit anderen zu gehen."~ */ GOTO 54
  IF ~~ THEN REPLY #51743 /* ~"Ich habe niemanden getroffen, mit dem ich reisen möchte."~ */ GOTO 53
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51744 /* ~"Ich würde niemanden an diesen Ort bringen, Ravel, vor allem nicht, wenn der Rückweg unbekannt ist. Also dachte ich, daß ich die Reise besser alleine machen sollte."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51745 /* ~Wahrheit: "Die anderen sind hier. Ich habe ihnen gesagt, anderswo zu warten... Denn ich dachte, daß wir alleine reden sollten."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51746 /* ~Wahrheit: "Die anderen sind hier. Ich habe ihnen gesagt, anderswo zu warten... Denn ich dachte, daß wir alleine reden sollten."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51747 /* ~Wahrheit: "Die anderen sind hier. Ich habe ihnen gesagt, anderswo zu warten... Denn ich dachte, daß wir alleine reden sollten."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51748 /* ~Wahrheit: "Die anderen sind hier. Ich habe ihnen gesagt, anderswo zu warten... Denn ich dachte, daß wir alleine reden sollten."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51749 /* ~Wahrheit: "Die anderen sind hier. Ich habe ihnen gesagt, anderswo zu warten... Denn ich dachte, daß wir alleine reden sollten."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51750 /* ~Wahrheit: "Die anderen sind hier. Ich habe ihnen gesagt, anderswo zu warten... Denn ich dachte, daß wir alleine reden sollten."~ */ GOTO 58
  IF ~~ THEN REPLY #51751 /* ~"Ich wollte mit dir alleine sprechen, Ravel."~ */ GOTO 56
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51752 /* ~"Ich dachte, wir könnten alleine sprechen, schöne Ravel, von den alten Zeiten reden, nur du und ich..."~ */ GOTO 57
  IF ~~ THEN REPLY #51753 /* ~"Diese Frage werde ich nicht beantworten, Ravel... Stell eine andere."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51754 /* ~"Ich bin deiner Fragen müde, Ravel. Jetzt bin ich wieder an der Reihe."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.7 52.8
  SAY #51755 /* ~"Ahhh... so war es damals... so ist es jetzt. Noch eine Frage habe ich..."~ */
  IF ~~ THEN REPLY #51756 /* ~"Nur zu..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2 52.3 52.4 52.5 52.6
  SAY #51757 /* ~"Ist das der Grund, weshalb du ihnen gesagt hast, anderswo in meinem Schwarzstachel-Irrgang zu warten, mein Schatz? Du reist nur in Worten alleine, denn du hast *andere* mit dir gebracht. Aber vielleicht sprichst du doch die Wahrheit... Obwohl Ravel nicht geneigt ist, deinen honigsüßen Worten zu glauben." Sie schnieft. "Nun, noch eine Frage..."~ */
  IF ~~ THEN REPLY #51758 /* ~"Nur zu..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 55 // from: 141.4
  SAY #51759 /* ~"Ich habe versucht, einer Dame zu helfen, und freundlich aufgenommen hat sie es nicht."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 162
END

IF ~~ THEN BEGIN 56 // from: 52.15
  SAY #51760 /* ~"Ahhh... sehr gut. Antworten und Fragen werden du und ich austauschen... Sie sollen *Geheimnisse* zwischen uns bleiben. Jetzt habe ich noch eine Frage..."~ */
  IF ~~ THEN REPLY #51761 /* ~"Nur zu..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 57 // from: 52.16
  SAY #51762 /* ~"Ts! Schmeichler!" Ravels Gesicht verzieht sich zu einem gemeinen Grinsen, dann kichert sie leise. "Doch sind deine Aufmerksamkeiten nicht unwillkommen... Vielleicht leistet Schmeichelei dir hier gute Dienste. Also... Antworten und Fragen werden du und ich austauschen... Sie sollen Geheimnisse zwischen dir und mir bleiben." Ihr Grinsen verschwindet. "Jetzt habe ich noch eine Frage..."~ */
  IF ~~ THEN REPLY #51763 /* ~"Nur zu..."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 92
END

IF ~~ THEN BEGIN 58 // from: 51.1 51.3 51.5 52.9 52.10 52.11 52.12 52.13 52.14
  SAY #51764 /* ~"Ich will wissen, *warum* du mit diesen anderen hierher gereist bist... obwohl sie den Ort nicht kannten, zu dem sie reisten?"~ */
  IF ~~ THEN REPLY #51765 /* ~"Sie haben es sich selbst ausgesucht, diesen Pfad mit mir zu gehen."~ */ GOTO 61
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51766 /* ~"Natürlich wußten sie es. Wer würde *nicht* gerne hierher reisen, um dich zu treffen, schöne Ravel? Wenig Gelegenheiten bietet das Leben zu solch einer Begegnung. Sie wollten sehen, ob die Geschichten über deine Macht und Schönheit wahr sind... Von denen ich wußte, daß sie wahr sind."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",2)
~ GOTO 59
  IF ~~ THEN REPLY #51767 /* ~"Diese Frage werde ich nicht beantworten, Ravel... Stell eine andere."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51768 /* ~"Ich bin deiner Fragen müde, Ravel. Jetzt bin ich wieder an der Reihe."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #51769 /* ~Ravel starrt dich einen Moment schweigend an, dann erscheint ein schreckliches Grinsen auf ihrem Gesicht, und ihre Reihe vergilbter Reißzähne glänzt im schwachen Licht ihrer Augen. "Ahhhh... mein Schatz, du bringst *nur* Worte mit..." Eine schwärzliche Zunge schießt zwischen ihren violetten Lippen hervor und fährt um ihren Mund, wie in Erwartung einer Mahlzeit. "...Aber du bist wirklich GUT gewappnet..."~ */
  IF ~~ THEN REPLY #51770 /* ~Wahrheit: "Nur Wahrheiten spreche ich, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_4","GLOBALLaw",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
  IF ~~ THEN REPLY #51771 /* ~Lüge: "Nur Wahrheiten spreche ich, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_3","GLOBALLaw",-1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #51772 /* ~Sie nickt langsam, und ihr Grinsen verschwindet. "Und sie reisen freiwillig mit dir?"~ */
  IF ~~ THEN REPLY #51773 /* ~"Sie haben es sich selbst ausgesucht, diesen Pfad mit mir zu gehen. Wie ich sagte, wer würde nicht ge..."~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 58.0 60.0
  SAY #51774 /* ~"*Gewählt*? Ahh... ein gefährliches Wort. Ist das so?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51775 /* ~"Ja."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",2)
~ GOTO 62
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51776 /* ~"Ja."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ GOTO 63
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51777 /* ~"Ja."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ GOTO 64
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51778 /* ~"Ja."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ GOTO 65
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51779 /* ~"Ja."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ GOTO 66
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51780 /* ~"Ja."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51781 /* ~"Ja, hör zu, Ravel, ich habe keine Zeit für..."~ */ GOTO 68
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #51782 /* ~"Ja?" Ravel wirft einen Blick aus ihren schwarzgeäderten Augen auf Dak'kon und feuert ihre Worte ab wie Pfeile. "Ist es eine *Wahl*, Gith? Ist es das? Oder ist es eine Frage von zwei Himmeln?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 171
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #51783 /* ~"Was ist mit dem Ersatzteillager?" Ravel wendet sich abfällig lächelnd Nordom zu. "Was weiß ER von *Wahl*?" Sie schnippt mit den Fingern, was wie das Brechen von Knochen klingt. "Es gibt nur Gehorchen und Gehorchen, hmm?"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 15
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #51785 /* ~"Du glaubst, der brennende Mann interessiert sich auch nur ein bißchen für *Wahl*? Brennen oder nicht brennen, das sind seine einzigen Optionen, und am Ende gewinnt immer eine 'Wahl'. Denn kennt Feuer einen anderen Wunsch als zu *brennen*?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 18
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY #51786 /* ~"Schädel, Schädel, Schädel..." Ravel schnalzt nach jedem Wort mit der Zunge, und ihr Lächeln wird breiter. "Dein Gesichtsausdruck ist ohne die Haut schwer zu deuten, aber ich kann deine ANGST von hier aus fühlen. Hierher zu kommen war *nicht* deine Wahl."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 508
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY #51787 /* ~"Sukkubus..." Ravel blinzelt. "Hatte sie eine Wahl? Vielleicht in ihren samthäutigen Geist von weicher Seide und harten Wahrheiten. VIELLEICHT hatte sie eine Wahl... ts. Aber nein. Ein Sinnsat MUSS alles erfahren, und wenn du dich geweigert hättest - du wärst KEIN Sinnsat. Immer noch keine Wahl!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51788 /* ~"Ravel. Es reicht..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51789 /* ~"Ravel. Es reicht..."~ */ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 61.5 66.0
  SAY #51790 /* ~"Der *Tiefling*. Die FEURIGE." Ravel kichert leise, und ihre Augen flammen auf, als sei sie amüsiert. "Keine Wahl. Überhaupt. Keine. Wenn man *fühlt*, anstatt zu *denken*, gibt es wenig Raum für Wahl."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 251
END

IF ~~ THEN BEGIN 68 // from: 61.6 66.1
  SAY #51791 /* ~"Pssst... Du wirst genug Zeit zum Reden haben, mein Schatz." Ravel klopft mit einer Klaue gegen einen ihrer vergilbten Hauer. "Als nächstes diese Frage: Was fühlst du für die, die mit dir gekommen sind? Liegen sie dir am HERZEN?" Sie lächelt, schwarze Adern tanzen in ihren Augen. "Oder sind sie MITTEL zum ZWECK für deinen Willen?"~ */
  IF ~~ THEN REPLY #51792 /* ~"Warum willst du so etwas wissen?"~ */ GOTO 69
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51793 /* ~Wahrheit: "Sie sind mir *wichtig*, und das ist alles, was du wissen mußt. Stell die nächste Frage."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51794 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51795 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51796 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51797 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51798 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Das ist alles, was du wissen mußt, also stell deine nächste Frage."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51799 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51800 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51801 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51802 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51803 /* ~"Meine Gefühle für meine Gefährten sind eine Angelegenheit zwischen ihnen und mir, Ravel. Stell eine andere Frage, denn diese werde ich nicht beantworten."~ */ GOTO 70
  IF ~~ THEN REPLY #51804 /* ~"Ich werde diese Frage nicht beantworten, Ravel..."~ */ GOTO 50
  IF ~~ THEN REPLY #51805 /* ~"Ich bin deiner Fragen müde, Ravel. Jetzt bin ich wieder an der Reihe."~ */ GOTO 50
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #51806 /* ~"Ts... Schwer von Begriff und dickköpfig wie ein Githzerai! Das ist NOCH EINE Frage, aber die Antwort soll dich nichts kosten. Meine Antwort lautet: weil ich es wissen MÖCHTE, aus keinem anderen Grund. Nun entringe deinem skeptischen Herzen eine Antwort."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51807 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51808 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51809 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51810 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51811 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51812 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Das ist alles, was du wissen mußt, also stell deine nächste Frage."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51813 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51814 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51815 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51816 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51817 /* ~"Meine Gefühle für meine Gefährten sind eine Angelegenheit zwischen ihnen und mir, Ravel. Stell eine andere Frage, denn diese werde ich nicht beantworten."~ */ GOTO 70
  IF ~~ THEN REPLY #51818 /* ~"Ich werde diese Frage nicht beantworten, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51819 /* ~"Ich bin deiner Fragen müde, Ravel. Jetzt bin ich wieder an der Reihe."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 70 // from: 68.11 69.10
  SAY #51820 /* ~"Du wirst *hier* keine Geheimnisse vor mir haben, Halb-Mann!" Ravel zischt. "Du WIRST meine Fragen beantworten, oder du wirst in diesen dornigen Mauern leiden."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51821 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51822 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51823 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51824 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51825 /* ~Wahrheit: "Sie sind mir *wichtig*."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51826 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Das ist alles, was du wissen mußt, also stell deine nächste Frage."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51827 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51828 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51829 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51830 /* ~Wahrheit: "Nur Mittel zum Zweck. Mehr nicht. Sie folgen aus ihren eigenen Gründen, und ihre Fähigkeiten werde ich benutzen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51831 /* ~"Ich werde diese Frage nicht beantworten, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51832 /* ~"Ich bin deiner Fragen müde, Ravel. Jetzt bin ich wieder an der Reihe."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 71 // from: 68.2 69.1 70.1
  SAY #51833 /* ~"Sogar der Gith?" Ravels glühender Blick fällt auf Dak'kon, dann blickt sie wieder dir in die Augen. "Sag, wieviel er dir bedeutet, und sag die Wahrheit, sonst wird er meinen Garten *bedecken*."~ */
  IF ~~ THEN REPLY #51834 /* ~Wahrheit: "Er ist mein Verbündeter. Ich *kenne* ihn. Er ist mein Freund."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #51835 /* ~Wahrheit: "Der Gith? Er ist mir völlig gleichgültig."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
SetGlobal("Ravel_Dakkon","GLOBAL",4)
~ GOTO 73
  IF ~~ THEN REPLY #51836 /* ~Wahrheit: "Oft verärgert er mich. Ich hasse ihn."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",5)
~ GOTO 73
  IF ~~ THEN REPLY #51837 /* ~Wahrheit: "Er schweigt zu vielen Dingen. Ich traue ihm noch nicht."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #51838 /* ~Wahrheit: "Er ist nützlich... Mehr nicht."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",7)
~ GOTO 73
  IF ~~ THEN REPLY #51839 /* ~Wahrheit: "Er scheint ganz verläßlich zu sein. Er ist loyal und hat tapfer an meiner Seite gekämpft."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",8)
~ GOTO 73
  IF ~~ THEN REPLY #51840 /* ~Wahrheit: "Ich weiß noch nicht genug über Dak'kon, um das sagen zu können."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",9)
~ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 68.7 69.6 70.6
  SAY #51841 /* ~"Sogar der Gith?" Ravels glühender Blick fällt auf Dak'kon, dann blickt sie wieder dir in die Augen. "Er bedeutet dir nichts? Sprich die Wahrheit, ist er ein Mittel zum Zweck?"~ */
  IF ~~ THEN REPLY #51842 /* ~Wahrheit: "Er bedeutet mir nichts. Er folgt mir, er gehorcht meinen Befehlen. Das ist alles."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",10)
~ GOTO 73
  IF ~~ THEN REPLY #51843 /* ~Wahrheit: "Ich hasse ihn."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 73
  IF ~~ THEN REPLY #51844 /* ~Wahrheit: "Ja, und er wird immer ein Werkzeug bleiben, denn zwischen uns gibt es kein Vertrauen."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 73
  IF ~~ THEN REPLY #51845 /* ~Wahrheit: "Vielleicht kenne ich ihn noch nicht gut genug, aber im Moment bedeutet er mir nichts."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.0 71.1 71.2 71.3 71.4 71.5 72.0 72.1 72.2 72.3
  SAY #51846 /* ~"Ah..." Ravel nickt... Dann lächelt sie wieder, ihre Klauen stoßen gegeneinander.~ */
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51847 /* ~"Überrascht dich das?"~ */ GOTO 75
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51848 /* ~"Überrascht dich das?"~ */ DO ~MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51849 /* ~"Überrascht dich das?"~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("Dannah")
~ THEN REPLY #51850 /* ~"Überrascht dich das?"~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51851 /* ~"Überrascht dich das?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 74 // from: 71.6
  SAY #51852 /* ~Ravel schnauft, dann schlägt sie ihre Hauer gegeneinander. "Eine diffuse Antwort, doch einfach. Egal."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #51853 /* ~"Es ist die Wahrheit, Ravel."~ */ GOTO 75
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51854 /* ~"Es ist die Wahrheit, Ravel."~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51855 /* ~"Es ist die Wahrheit, Ravel."~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51856 /* ~"Es ist die Wahrheit, Ravel."~ */ GOTO 92
END

IF ~~ THEN BEGIN 75 // from: 68.3 69.2 70.2 73.0 74.0
  SAY #51857 /* ~"Was ist mit dem Schädel?" Ravel sieht Morte nicht einmal an. "Sicher ist er jemandem wie dir *nicht* wichtig! Oder... doch?"~ */
  IF ~~ THEN REPLY #51858 /* ~Wahrheit: "Ich mag ihn... Er ist mein Freund."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",3)
~ GOTO 77
  IF ~~ THEN REPLY #51859 /* ~Wahrheit: "Der Schädel? Er ist mir völlig gleichgültig."~ */ DO ~MoraleDec("Morte",2)
SetGlobal("Ravel_Morte","GLOBAL",4)
~ GOTO 77
  IF ~~ THEN REPLY #51860 /* ~Wahrheit: "Er verärgert mich oft und ist im Kampf nicht zu gebrauchen. Ich hasse ihn."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",5)
~ GOTO 77
  IF ~~ THEN REPLY #51861 /* ~Wahrheit: "Ehrlich gesagt traue ich ihm noch nicht. Er scheint zuviel zu wissen, aber er ist vorsichtig, was er preisgibt."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",6)
~ GOTO 77
  IF ~~ THEN REPLY #51862 /* ~Wahrheit: "Er kann lästig sein... aber auch nützlich."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",7)
~ GOTO 77
  IF ~~ THEN REPLY #51863 /* ~Wahrheit: "Er ist nützlich... Mehr nicht."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",8)
~ GOTO 77
  IF ~~ THEN REPLY #51864 /* ~Wahrheit: "Ich weiß noch nicht genug über Morte, um das sagen zu können."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",9)
~ GOTO 77
  IF ~~ THEN REPLY #51865 /* ~Wahrheit: "Er scheint ganz verläßlich zu sein. Er ist loyal, und er hat in der Leichenhalle geholfen, mein Leben zu retten."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",10)
~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 68.8 69.7 70.7 73.1
  SAY #51866 /* ~"Was ist mit dem Schädel?" Ravel sieht Morte nicht einmal an. "Kein Wunder, daß er jemandem wie dir *nicht* wichtig ist! Oder... ist er es doch?"~ */
  IF ~~ THEN REPLY #51867 /* ~Wahrheit: "Nein, er bedeutet mir nichts. Er folgt mir, er gehorcht meinen Befehlen. Das ist alles."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 77
  IF ~~ THEN REPLY #51868 /* ~Wahrheit: "Ich hasse ihn."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 77
  IF ~~ THEN REPLY #51869 /* ~Wahrheit: "Ja, und er wird immer ein Werkzeug bleiben, denn zwischen uns gibt es kein Vertrauen."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 77
  IF ~~ THEN REPLY #51870 /* ~Wahrheit: "Vielleicht kenne ich ihn noch nicht gut genug, aber im Moment bedeutet er mir nichts."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",14)
~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.1 75.2 75.3 75.4 75.5 75.6 75.7 76.0 76.1 76.2 76.3
  SAY #51871 /* ~"Neugierig, neugierig-er, neugierig-sie..." Ravel lächelt. "Du wirst langsam zu einer richtigen Rätselkiste. Was lauert sonst noch in den dunklen Windungen deines Gehirns?"~ */
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51872 /* ~"Ich verberge nichts."~ */ GOTO 78
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51873 /* ~"Ich verberge nichts."~ */ DO ~MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51874 /* ~"Ich verberge nichts."~ */ GOTO 87
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51875 /* ~"Ich verberge nichts."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51876 /* ~"Ich verberge nichts."~ */ GOTO 92
END

IF ~~ THEN BEGIN 78 // from: 68.4 68.9 69.3 69.8 70.3 70.8 73.2 74.1 77.0 77.1
  SAY #51877 /* ~"Ah..." Ravels Stimme bekommt einen drohenden Unterton, und sie wendet sich mit ihren roten, lodernden Augen Grace, der Gefallenen, zu. "Und hier kommen wir der Sache schon näher - die Verführerin des Abgrunds... Bedeutet sie mehr für dich als nur das Fleischliche, oder ist sie in deinen Augen etwas *anderes*, hmm?" ~ */
  IF ~~ THEN EXTERN ~DGRACE~ 163
END

IF ~~ THEN BEGIN 79 // from:
  SAY #51878 /* ~Ravel wendet sich wieder dir zu und klappert wie in Erwartung mit ihren vergilbten Hauern. "*Sprich*, mein Schatz, aber sieh dich vor, wohin deine Worte fallen."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51879 /* ~Lüge: "Was ist sie im Vergleich zu dir, hübsche Ravel? Sie kann sich mit dir nicht vergleichen, mit deinem Aussehen, deinem Intellekt, deiner Macht."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",3)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51880 /* ~Wahrheit: "Was kümmert sie dich, schöne Ravel? Sie könnte keinem Vergleich mit deinem Aussehen, deiner Intelligenz, deiner Macht standhalten."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",4)
~ GOTO 81
  IF ~~ THEN REPLY #51881 /* ~Wahrheit: "Ich könnte mich in sie verlieben."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",5)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51882 /* ~Wahrheit: "Ich mag sie. Sie hat viele gute Eigenschaften. Ich betrachte sie als Freundin."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",6)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51883 /* ~Wahrheit: "Der Sukkubus? Sie bedeutet mir rein gar nichts."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",7)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51884 /* ~Wahrheit: "Ihre Überheblichkeit ist oft schwer zu ertragen. Ich hasse sie."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",8)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51885 /* ~Wahrheit: "Als ein Scheusal, das schon seit Jahrhunderten lebt, hat sie wenig über ihre Vergangenheit zu erzählen. Ich vertraue ihr noch nicht."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",9)
MoraleDec("Grace",1)
~ GOTO 80
  IF ~~ THEN REPLY #51886 /* ~Wahrheit: "Sie hat ihren Nutzen... Mehr nicht."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",10)
MoraleDec("Grace",1)
~ GOTO 81
  IF ~~ THEN REPLY #51887 /* ~Wahrheit: "Ich kenne sie noch nicht gut genug."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",11)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.3 79.6 79.8 82.0
  SAY #51888 /* ~Ravel wendet ihren Blick von dir ab und sieht mit zusammengekniffenen Augen Grace an. "Hmmmm..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51889 /* ~"Genug von diesen Spielen, Ravel. Hör zu -"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51890 /* ~"Genug von diesen Spielen, Ravel. Hör zu -"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51891 /* ~"Noch Fragen?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 81 // from: 79.0 79.1 79.4 79.5 79.7
  SAY #51892 /* ~Ravel wendet ihren Blick von dir ab und sieht mit zusammengekniffenen Augen Grace an. "Hmmmm... Wenn ich sie also niederschlüge, ihr höllisches Herz auslöschte, du würdest dich nicht rühren? Antworte mit Bedacht..."~ */
  IF ~~ THEN REPLY #51893 /* ~"Ich... ziehe meine Worte zurück. Ich will nicht, daß ihr etwas geschieht."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 82
  IF ~~ THEN REPLY #51894 /* ~"Erschlag sie, Ravel - sie ist mir völlig gleichgültig. Sie ist ein Stück Eigentum, ein Sklave, mehr nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_4","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_5","GLOBALGood",-3)
MoraleDec("Grace",5)
SetAnimState("Grace",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Grace",ANIM_MIMESTANCE)
~ EXTERN ~DGRACE~ 164
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #51895 /* ~"Pah! Widerborstiger Mann!" Ravels Augen glühen, und als sie sich wieder dir zuwendet, siehst du, daß die Adern in ihren Augen *schärfere* Konturen angenommen haben. "Welcher Gedanke rattert jetzt in deinem Schädel umher?"~ */
  IF ~~ THEN REPLY #51896 /* ~"Ich habe unwahr gesprochen - mir war nicht klar, was ich gesagt habe, aber ich habe genug vom Tod... von meinem und dem anderer... daß es mir für mehrere Lebenszeiten reicht."~ */ GOTO 80
END

IF ~~ THEN BEGIN 83 // from:
  SAY #51897 /* ~Ravel betrachtet Grace, die Gefallene, abschätzend und kichert dann. "Jede Verteidigung, die du aufbringst, ist hier *nutzlos*, Tanar'ri... Aber was für ein ehrenwerter Versuch. Klammere dich ruhig weiterhin an deine Angst, ich werde mich gleich um dich kümmern..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51898 /* ~"Genug von diesen Spielen, Ravel. Hör zu -"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51899 /* ~"Genug von diesen Spielen, Ravel. Hör zu -"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51900 /* ~"Noch Fragen?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 80.0 80.1 83.0 83.1
  SAY #51901 /* ~"Hmm..." Ravel dreht sich um, schlägt die Hauer aufeinander und sieht dann höhnisch grinsend Annah an. "Und was ist mit DIESEM Fetzen Fleisch... dem kleinen Scheusal, dem Tiefling mit dem scharlachroten Haar und der feurigen Leidenschaft. Was ist SIE für dich, mein Schatz?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51902 /* ~Lüge: "Nichts, schöne Ravel. Nur du bedeutest mir etwas... niemand sonst."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51903 /* ~Wahrheit: "Nichts, schöne Ravel. Nur du bedeutest mir etwas... niemand sonst."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~  Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51904 /* ~Wahrheit: "Ich könnte mich in sie verlieben."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleDec("Grace",3)
~ GOTO 85
  IF ~  !Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51905 /* ~Wahrheit: "Ich könnte mich in sie verlieben."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51906 /* ~Wahrheit: "Ich mag ihre Gesellschaft... Ich betrachte sie als Freundin."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51907 /* ~Wahrheit: "Das kleine Scheusal? Sie ist mir völlig gleichgültig."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51908 /* ~Wahrheit: "Ihre Dreistigkeit ist oft schwer zu ertragen. Ich hasse sie."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51909 /* ~Wahrheit: "Ich glaube, sie hat die schlimmsten aller Scheusaleigenschaften. Ich traue ihr ungefähr so weit, wie ich sie werfen kann."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51910 /* ~Wahrheit: "Sie hat ihren Nutzen... Mehr nicht."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51911 /* ~Wahrheit: "Ich kenne sie noch nicht gut genug."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 88
END

IF ~~ THEN BEGIN 85 // from: 84.2
  SAY #51912 /* ~Ravels Augen GLÜHEN, und sie hält ihre Klauen wie einen Fächer vor ihren Körper. Unwillkürlich machst du einen Schritt nach hinten. "Du weißt nichts von LIEBE, mein Schatz, wenn du glaubst, daß du sie so zwischen diesen beiden Scheusalshuren und Ravel AUFTEILEN kannst... Keines deiner Worte will ich mehr hören - du hast meine Fragen BEANTWORTET..."~ */
  IF ~~ THEN REPLY #51913 /* ~"Ravel, ich habe mich versprochen! Mir war nicht bewußt, was ich gesagt habe - du weißt, daß ich nicht..."~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #51914 /* ~Ravels Lippen kräuseln sich, und ihre Stimme wird schrill wie das Heulen des Windes. "Was weißt DU von WISSEN, Halb-Mann?! WISSE dies: WISSE, daß du bis IN ALLE EWIGKEIT hier in meinem dornigen Garten bleiben, niemals hinauskommen, und mich LIEBEN wirst, wie du es SOLLTEST, wie du es VERSPROCHEN HAST!"~ */
  IF ~~ THEN REPLY #51915 /* ~"Wenn wir kämpfen müssen, um das zu klären, dann werden wir das tun. Mach dich bereit, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 87 // from: 68.5 68.10 69.4 69.9 70.4 70.9 73.3 74.2 77.2 77.3
  SAY #51916 /* ~"Ah... Und hier ist die schmerzliche Frage, nicht zweischneidig, sondern hundertschneidig, jede Schneide SCHÄFER als die nächste..." Ravel stößt eine ihrer Klauen Richtung Annah. "Das kleine Scheusal, der Tiefling mit dem scharlachroten Haar und der feurigen Leidenschaft. Was bedeutet sie dir, mein Schatz?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51917 /* ~Lüge: "Nichts, schöne Ravel. Nur du bedeutest mir etwas... niemand sonst."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51918 /* ~Wahrheit: "Nichts, schöne Ravel. Nur du bedeutest mir etwas... niemand sonst."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~~ THEN REPLY #51919 /* ~Wahrheit: "Ich könnte mich in sie verlieben."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51920 /* ~Wahrheit: "Ich mag ihre Gesellschaft... Ich betrachte sie als Freundin."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51921 /* ~Wahrheit: "Das kleine Scheusal? Sie ist mir völlig gleichgültig."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 88
  IF ~~ THEN REPLY #51922 /* ~Wahrheit: "Ihre Dreistigkeit ist oft schwer zu ertragen. Ich hasse sie."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51923 /* ~Wahrheit: "Ich glaube, sie hat die schlimmsten aller Scheusaleigenschaften. Ich traue ihr ungefähr so weit, wie ich sie werfen kann."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51924 /* ~Wahrheit: "Sie hat ihren Nutzen... Mehr nicht."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51925 /* ~Wahrheit: "Ich kenne sie noch nicht gut genug."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 84.3 84.4 84.9 87.2 87.3 87.4 90.0
  SAY #51926 /* ~Ravel wirft einen Blick auf Annah, dann grunzt sie, und ihre schwarzgeäderten Augen glänzen. "Hmmmm... So sei es."~ */
  IF ~~ THEN REPLY #51927 /* ~"Genug von diesen Spielen, Ravel. Hör zu -"~ */ GOTO 92
END

IF ~~ THEN BEGIN 89 // from: 84.0 84.1 84.5 84.6 84.7 84.8 87.0 87.1 87.5 87.6 87.7 87.8
  SAY #51928 /* ~Ravel wirft einen Blick auf Annah, dann schnauft sie, und ihre schwarzgeäderten Augen glänzen. "Hmmmm... Du würdest sie also nicht vermissen? Ihr feuriges Blut wäre ein willkommenes Getränk für die Trigits... Es ist sehr lange her, daß sie Scheusalblut gekostet haben." Ravel läßt Annah nicht aus den Augen, redet aber weiter mit dir. "Antworte mit Bedacht, mein Schatz. Dies ist KEIN Spiel."~ */
  IF ~~ THEN REPLY #51929 /* ~"Ich... ziehe meine Worte zurück. Ich will nicht, daß ihr etwas geschieht."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 90
  IF ~~ THEN REPLY #51930 /* ~"Erschlag sie, Ravel - sie ist mir völlig gleichgültig. Sie ist Abschaum aus der Stockgosse, mehr nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_6","GLOBALGood",-3)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-5)
~ EXTERN ~DANNAH~ 255
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #51931 /* ~"Pah! Widerborstiger Mann!" Ravels Augen glühen, und als sie sich wieder dir zuwendet, siehst du, daß die Adern in ihren Augen *schärfere* Konturen angenommen haben. "Welcher Gedanke rattert jetzt in deinem Schädel umher?"~ */
  IF ~~ THEN REPLY #51932 /* ~"Ich habe unwahr gesprochen - mir war nicht klar, was ich gesagt habe, aber ich habe genug vom Tod... von meinem und dem anderer... daß es mir für mehrere Lebenszeiten reicht."~ */ GOTO 88
END

IF ~~ THEN BEGIN 91 // from:
  SAY #51933 /* ~"Ich werde sie nicht töten... noch nicht. Denn sie wird in diesem Schwarzstachel-Irrgang nicht lange überdauern... Hast du gehört, Mädchen? Die Schatten, die du bevorzugst, werden dir hier keine SICHERHEIT bieten." Ravel kichert Annah zu. "Bete, daß dein Zorn dir Kraft gibt. Dies könnten die kostbaren wenigen Augenblicke zwischen Leben und Tod sein..."~ */
  IF ~~ THEN REPLY #51934 /* ~"Genug von diesen Spielen, Ravel. Hast du deine Fragen erschöpft?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 53.0 54.0 56.0 57.0 68.1 68.6 69.0 69.5 70.0 70.5 73.4 74.3 77.4 80.2 83.2 88.0 91.0
  SAY #51935 /* ~"Meine NÄCHSTE Frage ist diese..." Ravels Stimme senkt sich fast zu einem Flüstern. Und plötzlich hast du das merkwürdige Gefühl, daß sie die Antwort nicht hören will. "Warum hast du so lange gewartet, bevor du zu mir *zurückgekommen* bist? Ravel war einsam ohne dich, mein Schatz."~ */
  IF ~~ THEN REPLY #51936 /* ~"Der Weg zu diesem Ort ist... schwierig, Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 93
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51937 /* ~"Der Weg zu diesem Ort ist schwierig, schöne Ravel. Man hat sich bemüht sicherzustellen, daß du wenig Gesellschaft hast, und viele Prüfungen mußte ich bestehen, um vor dir zu stehen. Doch bin ich froh, dich wiederzusehen, Ravel - die Zeit hat deine Schönheit nicht ermatten lassen, wie ich sehe."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 94
  IF ~~ THEN REPLY #51938 /* ~"Diese Frage werde ich nicht beantworten, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #51939 /* ~"Ist der Weg so schwer?" Die Andeutung eines Lächelns umspielt ihre Mundwinkel. "Dann ist dein Besuch hier kostbar, und ich danke dir."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51940 /* ~"Hast du noch eine Frage an mich?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51941 /* ~"Hast du noch eine Frage an mich?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51942 /* ~"Hast du noch eine Frage an mich?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY #51943 /* ~"Deine Antworten..." Ravels Augen glänzen, und ihre Lippen verziehen sich zu einem grotesken Lächeln. "Deine Worte sind *tröstlich* und lange nicht gehört worden... Sie berühren sogar mein schwarzstacheliges Herz. Wo auch immer deine Erinnerungen sind, dein Charme ist geblieben, schönes Wesen..." ~ */
  IF ~~ THEN REPLY #51944 /* ~"Nein, es ist *dein* Charm, der immer noch da ist, schöne Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 95
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51945 /* ~"Vielleicht. Hast du noch eine Frage an mich?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51946 /* ~"Vielleicht. Hast du noch eine Frage an mich?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51947 /* ~"Vielleicht. Hast du noch eine Frage an mich?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #51948 /* ~"Charme, Verzauberung, Betörung... all diese hat Ravel gemeistert... Doch es scheint viel zu geben, was du mich *lehren* könntest..."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51949 /* ~"Vielleicht. Hast du noch eine Frage an mich?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51950 /* ~"Vielleicht. Hast du noch eine Frage an mich?"~ */ GOTO 97
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51952 /* ~"Vielleicht. Hast du noch eine Frage an mich?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 93.0 94.1 95.0
  SAY #51953 /* ~"Ahhhh, jaaa. Die dritte und letzte meiner Fragen ist eine einfache: Beantworte sie, dann darfst du DEINE Fragen auf mich loslassen, und Ravel wird sie mit Antworten einfangen... Meine letzte Frage an dich ist *diese*..."~ */
  IF ~~ THEN REPLY #51954 /* ~"Ja...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",7)
StartCutSceneMode()
StartCutSceneEx("0610Cut9",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1 93.2 94.2 94.3 95.1 95.2
  SAY #51959 /* ~"Ahhhh, jaaa. Die dritte und letzte Frage... ist *diese*..." Als Ravel den Mund öffnet, um ihre letzte Frage zu stellen, erfaßt dich plötzlich die schreckliche Erkenntnis, daß diese letzte Frage viele andere, denen sie gestellt wurde, das Leben gekostet hat. Du weißt, welche Frage es ist, du fühlst sie in dir aufsteigen, und du fühlst den Zwang, sie auszusprechen.~ */
  IF ~~ THEN REPLY #51962 /* ~Echo: "Was kann das Wesen eines Menschen ändern?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",8)
StartCutSceneMode()
StartCutSceneEx("0610CutC",FALSE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",7)
~ THEN BEGIN 98 // from:
  SAY #51963 /* ~"Was kann das Wesen eines Menschen ändern?"~ [RAV079B] */
  IF ~~ THEN REPLY #51964 /* ~Wahrheit: "Ich.. weiß es nicht."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51965 /* ~Wahrheit: "Liebe."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51966 /* ~Wahrheit: "Haß."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51967 /* ~Wahrheit: "Macht."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51968 /* ~Wahrheit: "Gier."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51969 /* ~Wahrheit: "Verrat."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51970 /* ~Wahrheit: "Tod."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51971 /* ~Wahrheit: "Reue."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51972 /* ~Wahrheit: "Alter."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51973 /* ~Wahrheit: "Leiden."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51974 /* ~Wahrheit: "Erfolg."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51975 /* ~Wahrheit: "Die Ebenen."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51976 /* ~Wahrheit: "Du, Ravel. Wie du mein Wesen für immer verändert hast."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51977 /* ~Lüge: "Eine schöne Frau, Ravel. Wie du mich verändert hast."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51978 /* ~Wahrheit: "Nichts kann das Wesen eines Menschen ändern, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51979 /* ~Wahrheit: "Ich kann diese Frage nicht beantworten..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF WEIGHT #8 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",8)
~ THEN BEGIN 99 // from:
  SAY #51980 /* ~"Ich sehe, du hast nicht vergessen..." Ravel lächelt, ihre gelben Reißzähne glänzen. "Wie lautet deine Antwort?"~ */
  IF ~~ THEN REPLY #51981 /* ~Wahrheit: "Ich.. weiß es nicht."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51982 /* ~Wahrheit: "Liebe."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51983 /* ~Wahrheit: "Haß."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51984 /* ~Wahrheit: "Macht."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51985 /* ~Wahrheit: "Gier."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51986 /* ~Wahrheit: "Verrat."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51987 /* ~Wahrheit: "Tod."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51988 /* ~Wahrheit: "Reue."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51989 /* ~Wahrheit: "Alter."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51990 /* ~Wahrheit: "Leiden."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51991 /* ~Wahrheit: "Erfolg."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51992 /* ~Wahrheit: "Die Ebenen."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51993 /* ~Wahrheit: "Du, Ravel. Wie du mein Wesen für immer verändert hast."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51994 /* ~Lüge: "Eine schöne Frau, Ravel. Wie du mich verändert hast."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51995 /* ~Wahrheit: "Nichts kann das Wesen eines Menschen ändern, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51996 /* ~Wahrheit: "Ich kann diese Frage nicht beantworten..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF ~~ THEN BEGIN 100 // from: 98.0 98.1 98.2 98.3 98.4 98.5 98.6 98.7 98.8 98.9 98.10 98.11 98.12 98.13 98.14 99.0 99.1 99.2 99.3 99.4 99.5 99.6 99.7 99.8 99.9 99.10 99.11 99.12 99.13 99.14
  SAY #51997 /* ~"Und das ist deine Antwort...?" Die Adern in Ravels Augen beginnen sich leicht zu verlagern, und sie setzt ein böses Grinsen auf. "Überleg gut, bevor du sprichst."~ */
  IF ~~ THEN REPLY #51998 /* ~"Vielleicht ist dies nicht *deine* Antwort, aber es ist *meine* Antwort."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 101 // from:
  SAY #51999 /* ~"Ah!" Ravel kichert, dann erstirbt ihr Kichern, und sie heftet ihren Blick mit solcher Intensität auf dich, daß du beinahe spürst, wie sich deine Haut zusammenzieht, wie bei einem Stich. Die Adern in Ravels Augen beginnen sich langsam zu verlagern, und ihr Mund verzieht sich langsam zu einem bösen Grinsen. "Eine gefällige Antwort... Aber ist es die richtige? Überleg gut, bevor du sprichst."~ */
  IF ~~ THEN REPLY #52000 /* ~"Vielleicht ist dies nicht *deine* Antwort, aber es ist *meine* Antwort."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 100.0 101.0
  SAY #52001 /* ~"Und das ist alles, was ich wollte, mein Schatz." Ravels Lächeln entspannt sich. "Eine einfache Antwort, und schließlich sind es der Männer viele, die ich überwältigt habe, während sie MEINE Antwort suchten." ~ */
  IF ~~ THEN REPLY #52002 /* ~"Das ist es...? Ich dachte..."~ */ GOTO 103
  IF ~~ THEN REPLY #52003 /* ~"Ha! Schön dumm sind sie... Aber sind Sterbliche nicht einfach so?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_7","GLOBALGood",-1)
~ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #52004 /* ~Ravel kichert. "Unzählige Male wurde die Frage gestellt, und nicht EINMAL hat eine der armseligen Hüllen, die zu mir kamen, IHRE eigene Antwort gegeben, sondern alle versuchten immer, sich in mich hineinzuversetzen und herauszufinden, was *ich* dachte... ts! Darin liegt keine Wahrheit."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52005 /* ~"Ich... glaube dir nicht. Eigentlich glaube ich nicht, daß sie dir überhaupt wahr hätten antworten können, selbst wenn es für sie wahr gewesen wäre."~ */ GOTO 104
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52006 /* ~"Ach, komm, du brauchst mich nicht anzulügen, Ravel. Wir wissen beide, daß sie dir nie wahr hätten antworten können, selbst wenn es für sie wahr gewesen wäre."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #52007 /* ~Seltsamerweise verstummt Ravel plötzlich. Sie betrachtet dich müde.~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52008 /* ~"MEINE Antwort war die einzige, die du gesucht hast. Deshalb konnte niemand JEMALS deine Frage beantworten. Der Leichenstapel muß am Ende ziemlich hoch gewesen sein, nicht?"~ */ JOURNAL #52010 /* ~Dieses widerliche Weib, Ravel, hat mich mit drei hirnverbrannten Fragen belästigt. Die letzte davon hatte ich *früher* schon einmal gehört: "Was kann das Wesen eines Menschen ändern?" Ich habe ihr geantwortet, und sie hat meine Antwort akzeptiert. Wie ich bereits vermutet hatte, hätte sie jede Antwort von mir akzeptiert und für diejenige gehalten, nach der sie so lange gesucht hat. Ich glaube, daß viele Narren im Laufe der Zeit bei dem Versuch, Ravels Frage zu beantworten, ihr Leben lassen mußten... weil sie nicht wußten, daß meine Antwort die einzige war, die sie hören wollte. Vielleicht treibt Dummheit die Ebenen an...~ */ GOTO 105
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52009 /* ~"Dir war *nie* eine andere Antwort als meine wichtig. Niemals. Oder? Trotzdem hast du die Frage gestellt, in dem Wissen, daß sie, egal was sie antworteten, durch deine Hand sterben würden."~ */ JOURNAL #52011 /* ~Ravel hat mir drei Fragen gestellt. Die letzte davon hatte ich *früher* schon einmal gehört: "Was kann das Wesen eines Menschen ändern?" Ich habe ihr geantwortet, und sie hat meine Antwort akzeptiert. Solange sie für mich wahr ist, hätte sie jede Antwort von mir akzeptiert und für diejenige gehalten, nach der sie so lange gesucht hat. Ich glaube, daß viele Bittsteller bei dem Versuch, Ravels Frage zu beantworten, ihr Leben lassen mußten... Sie wußten nicht, daß meine Antwort die einzige war, die sie hören wollte.~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0 104.1
  SAY #52012 /* ~Ravel zischt. "NATÜRLICH war deine Antwort die einzige, die ich hören wollte, denn du warst der EINZIGE Grund, daß ich die Frage gestellt habe! Hast du gedacht, sie bedeuteten mir etwas...? Ts! Hast du gedacht, daß sie mir auch nur einen *Bruchteil* dessen bedeuteten, was *du* mir bedeutest, mein Schatz? Antworte mir darauf!"~ */
  IF ~~ THEN REPLY #52013 /* ~"Ich hab's *satt*, deine Fragen zu beantworten, Ravel. Jetzt wirst du dir *meine* anhören."~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0 107.1 108.2 109.1 110.1 111.1 112.1 113.1 114.1 115.4 116.2 117.1 118.1 119.1 120.1 121.1 125.1 126.2 127.1 128.3 129.2 131.1 136.1 137.1 138.2 139.0 140.0 141.8
  SAY #52014 /* ~"Natürlich... Fragen über Fragen über Fragen..."~ */
  IF ~  Global("Ravel_Ritual_4","AR0610",0)
~ THEN REPLY #52015 /* ~"Warum hast du mich unsterblich gemacht, Ravel?"~ */ GOTO 107
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52016 /* ~"Sag es mir noch einmal, Ravel - warum hast du mich unsterblich gemacht?"~ */ GOTO 107
  IF ~  NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52017 /* ~"Du hast mir also meine Sterblichkeit genommen, Ravel... Ist sie noch unversehrt?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52018 /* ~"Du hast mir also meine Sterblichkeit genommen, Ravel... Ist sie noch unversehrt?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52019 /* ~"Du hast mir also meine Sterblichkeit genommen, Ravel... Ist sie noch unversehrt?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52020 /* ~"Ist meine Sterblichkeit noch unversehrt, Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52021 /* ~"Wer ist es, der auch noch weiß, wo meine Sterblichkeit ist?"~ */ GOTO 135
  IF ~~ THEN REPLY #52022 /* ~"Ich habe einige Fragen zu DIR, Ravel..."~ */ GOTO 141
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52023 /* ~"Danke für die Informationen, die du mir gegeben hast, Ravel. Ich muß jetzt gehen." ~ */ GOTO 213
END

IF ~~ THEN BEGIN 107 // from: 106.0 106.1
  SAY #52024 /* ~"Du *wolltest* es so, Keimling, und du hast so nett darum gebeten... Wie könnte Ravel zu jemandem wie dir 'Nein' sagen? Unsterblichkeit war *deine* Lösung und deine Herausforderung für mich."~ */
  IF ~~ THEN REPLY #52025 /* ~"*Meine* Lösung? Aber warum?"~ */ GOTO 108
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52026 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #52027 /* ~"Ich weiß es nicht, Keimling. Die Zeit hat auch an meiner Erinnerung genagt, so scheint es...? Wenn du dich erinnerst, sag es mir... Ich bin selbst neugierig. Es muß etwas Wichtiges gewesen sein... Liegt es nicht im Wesen des Menschen, ewig leben zu wollen?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN EXTERN ~DDAKKON~ 169
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #52028 /* ~"Ravel... Dies ist SEHR wichtig: Hast du eine Ahnung, warum ich dich gebeten habe, es zu tun?"~ */ GOTO 109
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52029 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY #52030 /* ~"Der Tod war etwas, dem du aus dem Weg gehen mußtest. Das ist leicht gesagt, aber leicht zu TUN ist es nicht! Unsterblichkeit, mit all ihren Nachteilen, war die beste Lösung, auf die dieses verwelkte Gehirn kommen konnte..."~ */
  IF ~~ THEN REPLY #52031 /* ~"Ja?"~ */ GOTO 110
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52032 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #52033 /* ~"Blei läßt sich nicht leicht in Gold verwandeln, aber es ist möglich, wenn auch unklug... Ravel. Wenn man Blut Wasser entziehen kann, dann kann man einem Sterblichen auch seine Sterblichkeit entziehen, sie wird abgestreift wie eine klebrige Schicht..."~ */
  IF ~~ THEN REPLY #52034 /* ~"Du hast sie also abgezogen?"~ */ GOTO 111
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52035 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #52036 /* ~"Die Kluft zwischen Mensch und Nichtmensch ist groß. Du hast sie überwunden. Ich habe dir die Mittel dazu gegeben, aber du bist alleine hinübergelangt." Ravel schlägt sich an den Kopf und fährt sich mit der Hand durch die Haare. "Böse Ravel! Sterbliche sind zu unvollkommen, um ewig zu währen. Immer noch zerbrechen sie! Sie müssen tretend und schreiend in eine ungesunde, neue Form gebracht werden."~ */
  IF ~~ THEN REPLY #52037 /* ~"Ungesund...? Das Ritual hatte also Fehler?"~ */ GOTO 112
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52038 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #52039 /* ~"Abkürzungen müssen genommen werden, und sie können die Geformten *zerbrechen*... Denn nicht immer bricht die Form, sondern die Masse, die hineingegossen wurde. Zwinge etwas in eine Form, die es nicht haben sollte, und es zerbricht! Ich dachte, das Material wäre stärker, aber du bist zerbrochen."~ */
  IF ~~ THEN REPLY #52040 /* ~"Aber ich *bin* unsterblich - dann muß es doch ein Erfolg gewesen sein?"~ */ GOTO 113
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52041 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #52042 /* ~"Du hast lange überlebt, Unsterblichgemachter, aber du bist dem Untier zum Opfer gefallen, das das Leben ist." Sie faltet die Hände zu einer Schale, dann dreht sie sie um, so daß sie ein Dach bilden. "Der Körper ist nur eine Hütte für die Seele. Aber jetzt lebt niemand in deiner Hütte."~ */
  IF ~~ THEN REPLY #52043 /* ~"Was ist schiefgelaufen bei dem Ritual?"~ */ GOTO 114
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52044 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #52045 /* ~"Rätselhafter, zerbrochener, schöner, sterblicher Mann, das Ritual war nicht... keine? Keine fertige Sache." Ravels Stirn legt sich in Falten, ihre Klauen ziehen an einer einzelnen Strähne ihres Haars. "Das Ritual hat dir gegeben, was du wolltest, aber..."~ */
  IF ~~ THEN REPLY #52046 /* ~"Aber..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52047 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 115 // from: 114.0 117.0 118.0 119.0
  SAY #52048 /* ~"Das Ritual hat dir gegeben, was du wolltest, aber *hoch* war der Preis... Das Werfen von Schatten, die stillen, grausamen Tode des Geistes und die schmerzhafte Leere... Diese Dinge waren gefährlich für solch ein zerbrechliches Gefäß, egal wie stark der sterbliche Mann ist. Sie und das Ritual bereue ich."~ */
  IF ~~ THEN REPLY #52049 /* ~"Werfen von Schatten?"~ */ DO ~SetGlobal("Ravel_Ritual_1","AR0610",1)
~ GOTO 116
  IF ~~ THEN REPLY #52050 /* ~"Die stillen, grausamen Tode des Geistes?"~ */ DO ~SetGlobal("Ravel_Ritual_2","AR0610",1)
~ GOTO 118
  IF ~~ THEN REPLY #52051 /* ~"Schmerzhafte Leere?"~ */ DO ~SetGlobal("Ravel_Ritual_3","AR0610",1)
~ GOTO 119
  IF ~  Global("Ravel_Ritual_1","AR0610",1)
Global("Ravel_Ritual_2","AR0610",1)
Global("Ravel_Ritual_3","AR0610",1)
~ THEN REPLY #52052 /* ~"Trotz dieser Probleme scheint das Ritual funktioniert zu haben..."~ */ JOURNAL #52054 /* ~Ravel hat gesagt, daß ich sie gebeten habe, mich unsterblich zu machen, aber sie kann sich nicht erinnern, warum. Sie hat mir in allen Einzelheiten von dem Ritual erzählt und gesagt, ich "werfe Schatten auf meine Existenz". Immer wenn ich sterbe, werde ein neuer Schatten geboren, der ausziehen würde, um mich zu töten. Sie hat auch gesagt, daß mein Fleisch zwar immer wieder gesunde, aber mein Geist nicht... Je öfter ich sterbe, desto mehr von mir ginge verloren, wenn mein Geist wieder erwachte. Könnte dies meinen Gedächtnisverlust erklären? Ich weiß es nicht. Sie hat außerdem gesagt, daß die Leere in meinem Innern den Ort kennzeichne, an dem einst meine Sterblichkeit ruhte.~ */ GOTO 120
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52053 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #52055 /* ~"Undankbare Schatten... aber undankbar ohne Grund? Die Schatten... Sie hassen dich, Namenloser, weil sie von dir gezeugt wurden, deine Kinder sind. Einmal im Stich gelassen, werden sie nie verzeihen. Sie werden alles tun, um den Vater zu zerstören... So sind Kinder."~ */
  IF ~  !Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52056 /* ~"Wie zeuge ich Schatten... diese Schatten?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0610Cut1",FALSE)
SetGlobal("Ravel_Cut_Scene","AR0610",2)
~ EXIT
  IF ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52057 /* ~"Wie zeuge ich Schatten... diese Schatten?"~ */ GOTO 117
  IF ~~ THEN REPLY #52058 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF WEIGHT #2 ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN BEGIN 117 // from: 116.1
  SAY #52059 /* ~"Du wirfst Schatten auf die Existenz, Namenloser. Mit jedem Tod wächst ein neuer Schatten auf den Feldern deines Fleisches. Sie wandern eine Zeitlang umher, aber sie kehren immer zurück, um ihren Vater zu ermorden. So sind viele Nachkommen..." Ravel setzt eine ablehnende Miene auf, dann drückt sie dir plötzlich eine Kralle auf die Brust. "...und undankbare junge Männer wie du."~ */
  IF ~~ THEN REPLY #52060 /* ~"Erzähl mir mehr über dieses Ritual..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52061 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 118 // from: 115.1
  SAY #52062 /* ~"Tausend Tode, und du erholst dich von jedem. Nicht so dein Geist, dein Geist ist viel empfindlicher. Seine Narben sind tief und heilen nicht. Das Gehirn ist in eine harte Knochenschale gehüllt, die schwer zu durchdringen ist. Sie bietet jedoch keinen Schutz gegen das, was von innen an ihm nagt."~ */
  IF ~~ THEN REPLY #52063 /* ~"Erzähl mir mehr über dieses Ritual..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52064 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 119 // from: 115.2
  SAY #52065 /* ~"Du hast ein Loch, wo... wo deine Sterblichkeit einst im Innern deiner Hülle lag." Sie ballt die Hand zur Faust und schüttelt sie. "*Rassel-rassel* macht der hohle Mann, ein Babyspielzeug, mit nichts als einem kleinen Stein, der in deinem Innern rasselt und klappert."~ */
  IF ~~ THEN REPLY #52066 /* ~"Erzähl mir mehr über dieses Ritual..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52067 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 120 // from: 115.3
  SAY #52071 /* ~"Du zweifelst an Ravel? Natürlich habe ich erfüllt, was versprochen war! Nicht lange nachdem der Zauber beendet war, habe ich dich getötet, um zu sehen, ob er gewirkt hat. Du hast dich mit aller Kraft gewehrt, aber ich habe dich *gut* festgehalten und dir bei deinem ersten von vielen Toden zugesehen." Ravel *klappert* mit den Zähnen. "Dann wurde ich auf die Mängel aufmerksam..."~ */
  IF ~~ THEN REPLY #52072 /* ~"Welche Fehler?"~ */ GOTO 121
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52073 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #52074 /* ~"Das Ego umgibt uns wie ein Gefängnis. Vergessen hatte ich, daß es oft als Schutzschild dient." Ravel schnalzt mit der Zunge. "Mein schönes, schönes Ding, es steckt viel Wahrheit und Verständnis in der Weisheit, daß das Leben eine Vorbereitung auf das ultimative Ziel ist: den Tod. Unser Leben ist ein Mittel, durch das wir lernen, *wie* man stirbt. Wenn wir solche Dinge VERGESSEN..." ~ */
  IF ~~ THEN REPLY #52075 /* ~"Da hast du also bemerkt, daß ich meine Erinnerungen verliere, wenn ich sterbe..."~ */ DO ~SetGlobal("Ravel_Ritual_4","AR0610",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 122
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52076 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #52077 /* ~"Jaa..." Ravel nickt. "Leider... Ohne die Sterblichkeit, die solche Erinnerungen festhält, ist der Körper nur eine Hülle..." ~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52078 /* ~"Du hast mir also meine Sterblichkeit genommen... Ist sie noch unversehrt?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52079 /* ~"Du hast mir also meine Sterblichkeit genommen... Ist sie noch unversehrt?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52080 /* ~"Du hast mir also meine Sterblichkeit genommen... Ist sie noch unversehrt?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
END

IF ~~ THEN BEGIN 123 // from: 106.2 122.0
  SAY #52081 /* ~Ravel scheint erst überrascht, dann alarmiert. "Ja, ja, *ja*! Hab keine Angst, daß deine Sterblichkeit zerbrochen ist... Wenn du hier bist... hier bist und mit mir redest, muß deine Sterblichkeit unversehrt sein. So etwas kann nicht... zerstört werden, solange du existierst. Du bist ein *Anker* deiner sterblichen Seele. Solange *du* unversehrt bist, wird sie es auch sein. Du bist dazu gemacht zu überdauern..." Ravel lächelt und stößt ein pfeifendes Lachen aus. "Denn das Leben hat dich verschluckt und ausgespien!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 506
END

IF ~~ THEN BEGIN 124 // from: 106.3 122.1
  SAY #52082 /* ~Ravel scheint erst überrascht, dann alarmiert. "Ja, ja, *ja*! Hab keine Angst, daß deine Sterblichkeit zerbrochen ist... Wenn du hier bist... hier bist und mit mir redest, muß deine Sterblichkeit unversehrt sein. So etwas kann nicht... zerstört werden, solange du existierst. Du bist ein *Anker* deiner sterblichen Seele. Solange *du* unversehrt bist, wird sie es auch sein. Du bist dazu gemacht zu überdauern..." Ravel lächelt und stößt ein pfeifendes Lachen aus. "Denn das Leben hat dich verschluckt und ausgespien!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 253
END

IF ~~ THEN BEGIN 125 // from: 106.4 106.5 122.2
  SAY #52083 /* ~Ravel scheint erst überrascht, dann alarmiert. "Ja, ja, *ja*! Hab keine Angst, daß deine Sterblichkeit zerbrochen ist... Wenn du hier bist... hier bist und mit mir redest, muß deine Sterblichkeit unversehrt sein. So etwas kann nicht... zerstört werden, solange du existierst. Du bist ein *Anker* deiner sterblichen Seele. Solange *du* unversehrt bist, wird sie es auch sein. Sie kann ebensowenig zerstört werden wie du!"~ */
  IF ~  Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52084 /* ~"Das reicht, Ravel. Du hast mir meine Sterblichkeit genommen, und es hat mehr geschadet als genützt. Ich will sie jetzt zurückhaben - du hattest sie nun lang genug, schon zu lang, wie ich finde."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 126
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52085 /* ~"Nun gut. Ich hätte noch mehr Fragen an dich, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #52086 /* ~"Ah... Du stellst eine Forderung...?" Ravels schwarzgeäderte Augen verengen sich und nehmen einen beunruhigenden, *wissenden* Ausdruck an. Sie bleckt ihre gelben Reißzähne. "Nein, nein, nein. Das wird Ravel, werde ich, *nicht* tun. Was zerstört ist, kann nicht wiederhergestellt werden."~ */
  IF ~~ THEN REPLY #52087 /* ~"Ravel... Ich bin deine Wortspiele leid, ich spiele nicht mehr mit dir. Gib mir meine Sterblichkeit zurück, oder ich bring dich um."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 127
  IF ~~ THEN REPLY #52088 /* ~"Warum nicht?"~ */ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52089 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #52090 /* ~"Töten wirst du mich, dein Wille soll mich töten, es spielt keine Rolle. Es ist schwer zu sagen, in welche der vielen Richtungen der Zeit ich schaue. Sterbliche schauen in die entgegengesetzte Richtung, in die Zukunft, und ich schaue in die Vergangenheit, denn mir gefällt nicht, was ich in der Zukunft sehe."~ */
  IF ~~ THEN REPLY #52091 /* ~"Hör auf, diesen Unsinn zu reden, Ravel. Ich bin es leid, mit dir Worte auszutauschen. Gib mir meine Sterblichkeit zurück... *jetzt*."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52092 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 128 // from: 126.1 127.0
  SAY #52093 /* ~"Ravel kann sie dir *nicht* geben, mein Schatz, denn Ravel hat *nichts* zu geben... Ich habe *dich* oder deine Sterblichkeit nie besessen... Obwohl ich euch beide als Andenken an eine egoistische Zuneigung in meinem Garten behalten wollte, die Muster deines Fleisches nachziehen... Aber Ravel konnte sich nicht durchringen, so etwas zu tun..."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52094 /* ~"Warum nicht?"~ */ EXTERN ~DANNAH~ 254
  IF ~  !NearbyDialog("Dannah")
NearbyDialog("DGrace")
~ THEN REPLY #52095 /* ~"Warum nicht?"~ */ EXTERN ~DGRACE~ 159
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("DGrace")
~ THEN REPLY #52096 /* ~"Wenn du sie nicht hast...Wo ist meine Sterblichkeit?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52097 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52098 /* ~Ravel setzt ein niederträchtiges, breites Grinsen auf. "Ist das so schwer für dich zu glauben, kleines Scheusal...?" Sie kichert leise vor sich hin. "*Verdient* Ravel, weil sie Ravel und somit ein Mythos ist, es nicht, solch ein Gefühl in ihrem schwarzstacheligen Herzen zu tragen...?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 160
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #52099 /* ~"Also, wenn du sie nicht hast, Ravel... Wo ist meine Sterblichkeit dann?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52100 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 130 // from:
  SAY #52101 /* ~Ravel setzt ein niederträchtiges, breites Grinsen auf. "Ist das so schwer für dich zu glauben, Sukkubus...?" Sie kichert leise vor sich hin. "*Verdient* Ravel, weil sie Ravel und somit ein Mythos ist, es nicht, solch ein Gefühl in ihrem schwarzstacheligen Herzen zu tragen...?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #52102 /* ~"Ts! Die Vergangenheit ist vergangen, und Geschichten kümmert es wenig, darüber die Wahrheit zu erzählen..." Ravel runzelt die Stirn, dann senkt sich ihre Stimme leicht, aber drohend, während sie Grace mustert. "Das Gefühl hat mich *gestreift*, ja... Und jetzt *halte* deine silbrige Zunge im Zaum, Tochter des Abgrunds. Deine sanften Worte sollen hier nicht die Luft vernebeln - der Mann und ich werden reden, und du wirst dich raushalten. Ich werde mich in Kürze mit dir befassen."~ */
  IF ~~ THEN REPLY #52103 /* ~"Genug, Ravel: Wenn du meine Sterblichkeit nicht hast... Wo ist sie dann?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52104 /* ~"Ich habe genug gehört. Ich hätte noch mehr Fragen..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 132 // from: 128.2 129.1 131.0
  SAY #52105 /* ~"*Ich* weiß es nicht, mein süßes Ding. Aber wenn ich du wäre, würde ich sie mir schnell-schnell zurückholen. Nicht auszudenken, welch schreckliche Dinge derjenige dir antun könnte, der deine Sterblichkeit als GEISEL hält." Ravel läßt ihre Klauen gegeneinander *schlagen*. "Es wäre, als würde man jemandes süße, saftige Seele festhalten... Eine Marionette wärst du, deren Fäden jemand anderes hält, und eine höchst traurige Marionette dazu... Ich weiß nicht, wo sie ist."~ */
  IF ~~ THEN REPLY #52106 /* ~"Nun, es wäre auch zu EINFACH für dich gewesen zu wissen, wo sie zu finden sein könnte... Sieht aus, als steht mir die nächste Jagd bevor."~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 133
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #52107 /* ~"Moment mal... Du sagst, DU weißt nicht, wo meine Sterblichkeit ist. Laß mich die Frage anders formulieren: Kennst du jemanden, der WEISS, wo sie ist?"~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #52108 /* ~"Ahhh... Du solltest nichts übereilen." Ravel setzt ein fürchterliches Grinsen auf, ihre Hauer glänzen. "*Ich* weiß nicht, wo deine Sterblichkeit ist, mein Schatz... Aber es gibt *jemand anderen*, der vielleicht über eine solche Sache Bescheid weiß..."~ */
  IF ~~ THEN REPLY #52109 /* ~"'Jemand anderes weiß es vielleicht'? Wer?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 132.1
  SAY #52110 /* ~Ravel setzt ein furchtbares Grinsen auf, ihre Hauer glänzen. "Clever, clever, *clever* bist du... Ja, es gibt JEMAND ANDEREN, der vielleicht die Dinge weiß, die Ravel nicht weiß..."~ */
  IF ~~ THEN REPLY #52111 /* ~"'Jemand anderes weiß es vielleicht'? Wer?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 106.6 133.0 134.0
  SAY #52112 /* ~Ravels Blick verdunkelt sich, als starre sie auf etwas in der Ferne, und sie spricht langsamer. "Jemand... Hellhäutigen... mußt du fragen. Einen Engel, einen Deva, einen, den die Flügel des Morgens tragen, und der mit eigenen Händen die Horizonte erbaut. Er liegt... liegt außerhalb meiner Reichweite, in einem anderen Käfig, in einem anderen Gefängnis... Sein Wissen birgt das Wissen um das, was du zu wissen begehrst. Stell ihm deine Fragen, höre seine Antworten, laß dich von ihnen führen."~ */
  IF ~  Global("Ravel_Trias","GLOBAL",0)
~ THEN REPLY #52113 /* ~"Wo kann ich diesen Engel finden?"~ */ DO ~SetGlobal("Ravel_Trias","GLOBAL",1)
AddexperienceParty(180000)
~ JOURNAL #52115 /* ~Ravel hat mir gesagt, meine Sterblichkeit sei noch unversehrt... und befinde sich irgendwo, aber sie wisse nicht, wo. Sie kenne jedoch jemanden, der es wissen *könnte*. Ravel hat mich angewiesen, ihren Irrgang zu verlassen und mich in ein anderes Gefängnis zu begeben. Dort würde ich auf einen Engel, einen "Deva", stoßen, der mir sagen würde, wo meine Sterblichkeit sei. Wenn dieser Engel nur halb so schwierig zu finden ist wie Ravel, bezweifle ich fast, daß ich meine Sterblichkeit JEMALS finden werde. Es scheint jedoch wichtiger, als ich zuerst dachte. Ravel hat mir ans Herz gelegt, meine Sterblichkeit zurückzubekommen, bevor jemand anders sie finde und über mich verfügen könne wie über eine Marionette.~ */ GOTO 136
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52114 /* ~"Wo kann ich diesen Engel finden?"~ */ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0 135.1
  SAY #52116 /* ~"Wenn du dieses Gefängnis verläßt, wirst du zu einem *anderen* verdammten Gefängnis gelangen... obwohl es vielleicht auf den ersten Blick nicht als solches erscheint. Sieh dich vor, und finde das goldene Glied in der immer kürzer werdenden Kette. Das Licht wird das Dunkel der Sache erleuchten, und neue Pfade werden sich dir eröffnen."~ */
  IF ~~ THEN REPLY #52117 /* ~"Entzückend kryptisch... wenn auch nicht überraschend. Danke."~ */ GOTO 137
  IF ~~ THEN REPLY #52118 /* ~"Ich hätte noch mehr Fragen an dich, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #52119 /* ~Ravel kichert. "Bei der Vergangenheit halte ich mich nicht mit Details auf... Du hast Glück, daß du *überhaupt etwas* erhältst, oh Sarkastischer!"~ */
  IF ~~ THEN REPLY #52120 /* ~"Oh, hab ich? Es ist nur so, daß die Kette derer, die wissen, was und wo sie sind, scheinbar nie eine glatte Reihe von Gliedern ist."~ */ GOTO 138
  IF ~~ THEN REPLY #52121 /* ~"Vielleicht. Ich hätte jedenfalls noch mehr Fragen an dich, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #52122 /* ~"Ahhh..." Ravel lächelt und hält eine ihrer Krallen hoch. "Und deshalb mußt du jedes Glied der Kette vor Schaden bewahren, denn wenn sie jetzt schon nicht vollständig intakt sind, stell dir vor, wie die Kette sein wird, wenn MEHR Glieder zerbrechen... Zeit und Tod sind nicht mit allen so *geduldig* wie mit dir."~ */
  IF ~~ THEN REPLY #52123 /* ~"Was sagst du da?"~ */ GOTO 139
  IF ~~ THEN REPLY #52124 /* ~"Das sollte besser keine Drohung gewesen sein."~ */ GOTO 140
  IF ~~ THEN REPLY #52125 /* ~"Vielleicht. Ich hätte jedenfalls noch mehr Fragen an dich, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #52126 /* ~"Was, wenn eines deiner kostbaren Glieder *sterben* würde? Und was, wenn du dich wieder selbst vergessen würdest? Was würdest du dann tun? Wo wäre deine gestohlene Sterblichkeit dann ... Sie wäre für immer VERLOREN, denn es gäbe niemanden mehr, den du FRAGEN könntest, wie du sie finden kannst. Deinem Pfad zu folgen würde schwieriger werden... vielleicht sogar UNMÖGLICH..."~ */
  IF ~~ THEN REPLY #52127 /* ~"Da ist was dran. Ich hätte jedenfalls noch mehr Fragen an dich, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 140 // from: 138.1
  SAY #52128 /* ~"Keine Drohung von mir, aber trotzdem eine *sehr* reale Drohung. Was, wenn eines deiner kostbaren Glieder *sterben* würde? Und was, wenn du dich wieder selbst vergessen würdest? Was würdest du dann tun? Wo wäre deine gestohlene Sterblichkeit dann ... Sie wäre für immer VERLOREN, denn es gäbe niemanden mehr, den du FRAGEN könntest, wie du sie finden kannst. Deinem Pfad zu folgen würde schwieriger werden... vielleicht sogar UNMÖGLICH..."~ */
  IF ~~ THEN REPLY #52129 /* ~"Da ist was dran. Ich hätte jedenfalls noch mehr Fragen an dich, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 141 // from: 106.7 142.1 144.0 149.0 162.1 163.6 164.4 165.1 167.1 169.1 171.1 175.1 182.1 183.1 184.1 185.2 188.1 189.1 190.1 192.1 193.4 194.2 195.0 199.0 200.0 201.2 202.5 203.1 206.0 207.0 207.1 211.0 241.1
  SAY #52130 /* ~"Ja? Stell deine Fragen über Ravel, mein Schatz."~ */
  IF ~~ THEN REPLY #52131 /* ~"Ravel... Wer bist du? Wo kommst du her?"~ */ GOTO 142
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",0)
~ THEN REPLY #52132 /* ~"Welche anderen Formen hast du in deinem Leben angenommen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52133 /* ~"Was ist das für ein Ort?"~ */ GOTO 200
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52134 /* ~"Warum warst du gefangen, Ravel?"~ */ GOTO 186
  IF ~  NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52135 /* ~"Warum warst du gefangen, Ravel?"~ */ GOTO 55
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52136 /* ~"Warum warst du gefangen, Ravel?"~ */ GOTO 185
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52137 /* ~"Warum warst du gefangen, Ravel?"~ */ GOTO 185
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #52138 /* ~"Der Legende nach sollst du eine mächtige Zauberin sein, Ravel. Kannst du mir etwas von der Kunst beibringen?"~ */ GOTO 201
  IF ~~ THEN REPLY #52139 /* ~"Ich hätte noch mehr Fragen zu meiner Unsterblichkeit..."~ */ GOTO 106
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52140 /* ~"Danke für die Informationen, die du mir gegeben hast, Ravel. Ich muß jetzt gehen." ~ */ GOTO 213
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #52141 /* ~"Ich? Ravel bin ich, ich schaffe und zerstöre Rätsel, ich löse, was *nicht* gelöst werden kann, ich verwirre und entwirre Gedanken, bis die Gedankenfäden verknotet sind wie die Haare eines Betrunkenen." Ravel ergreift eines ihrer zotteligen, grauen Haare und wickelt es sich um den Finger. "Es ist genug, genug ist es."~ */
  IF ~~ THEN REPLY #52142 /* ~"Aber *was* bist du? Einige haben dich eine 'Nachthexe' genannt, was auch immer das sein soll."~ */ GOTO 143
  IF ~~ THEN REPLY #52143 /* ~"Ich hätte noch mehr Fragen an dich..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #52144 /* ~"Nachthexe...?" Ravel setzt ein grauenerregendes Lächeln auf, ihre vergilbten Zähne wirken wie Nadeln. "Ich bin nur eine *Frau*, die ihr geliebtes Geschöpf schmerzlich... schmerzlich vermißt hat. Manche nannten mich Alte, Graue Dame, Yaga-Schwester, Nachthexe - aber ICH SELBST ist mein Name, Ravel, Ravel, die schön rätselt, die Rätsel zum Entziffern stellt und Unmöglichkeiten unmöglich macht. Aber..."~ */
  IF ~  Global("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52145 /* ~"Aber...?"~ */ GOTO 145
  IF ~  GlobalGT("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52146 /* ~"Aber...?"~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #52147 /* ~"Aber es spielt keine Rolle. Soweit waren wir schon einmal." Ravel macht ein 'verscheuchendes' Geräusch. "Andere Fragen hast du?"~ */
  IF ~~ THEN REPLY #52148 /* ~"Ja..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 145 // from: 143.0
  SAY #52149 /* ~"VIELE Dinge werden über uns graue Damen gesagt. Eine Rasse sind wir 'Nachthexen', aber ein *Individuum* bin ich. Einige nennen uns das Böse von Früher, Verfolger sterblicher Träume, die Freundlichen, häßliche, abscheuliche Dinge, die in den dunklen Windungen des menschlichen Gehirns Zuhause sind." Ravels Augen verengen sich zu rötlichen Schlitzen. "Aber das bedeutet mir NICHTS... Wie würde jemand wie DU jemanden wie mich nennen, mein Schönster?"~ */
  IF ~~ THEN REPLY #52150 /* ~Lüge: "Ich würde dich als schön bezeichnen, Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ravel_2","GLOBALLaw",-2)
SetGlobal("Ravel_Self_Answer","GLOBAL",1)
~ GOTO 146
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52151 /* ~Wahrheit: "Ich finde dich schön, Ravel. Vielleicht nicht für das Auge, aber dein Verstand scheint scharf und lebhaft."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_1","GLOBALLaw",2)
SetGlobal("Ravel_Self_Answer","GLOBAL",2)
~ GOTO 148
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52152 /* ~Wahrheit: "Ich würde dich als häßlich bezeichnen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52153 /* ~Wahrheit: "Ich würde dich als häßlich bezeichnen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52154 /* ~Wahrheit: "Ich würde dich als häßlich bezeichnen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 160
  IF ~~ THEN REPLY #52155 /* ~"Ich würde sagen, daß alle Beschreibungen richtig sind."~ */ DO ~SetGlobal("Ravel_Self_Answer","GLOBAL",4)
~ GOTO 149
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #52156 /* ~Ravel schweigt einen Moment, dann kichert sie. "Oh, du bist ein *Diamant*, mein kostbarer Singvogel. Du warst die Jahrhunderte wert! Wie süß du für diese müden Ohren singst, die sich nur von Stille und dem langsamen Kriechen von wuchernden Schwarzstacheln ernährt haben..." Ravel lächelt. "Und doch LÜGST du mich an..."~ */
  IF ~~ THEN REPLY #52157 /* ~"Nein, Ravel, ich..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #52158 /* ~"Ts! Glaubst du, mich interessieren Wahrheiten?! Täuschung ist in meinen Augen *schön*, Singvogel, und Ravel liebt es, dich solche Dinge sagen zu hören, wirklich. Häßlich mag ich sein..."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52159 /* ~"Ravel, du bist *nicht* häßlich..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52160 /* ~"Ravel, du bist *nicht* häßlich..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52161 /* ~"Ravel, du bist *nicht* häßlich..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 148 // from: 145.1
  SAY #52162 /* ~"Ts! Glaubst du, mich interessieren solche Wahrheiten?! Verflucht sei die innere Schönheit, egal wie lange sie dem Fleisch erhalten bleibt. Denkst du, ich bin häßlich...?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52163 /* ~"Ravel, du bist *nicht* häßlich..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52164 /* ~"Ravel, du bist *nicht* häßlich..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52165 /* ~"Ravel, du bist *nicht* häßlich..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 149 // from: 145.5
  SAY #52166 /* ~"Ja, aber das ist nicht DEINE Antwort. Ts! Ich ziehe die Frage zurück, oh Diskreter. Wir wollen nicht mehr davon sprechen."~ */
  IF ~~ THEN REPLY #52167 /* ~"Oh... Äh, ich hätte noch mehr Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 150 // from: 145.2 147.0 148.0
  SAY #52168 /* ~"Aber häßlich muß ich *nicht* sein, schönes Ding. Mein Aussehen ist Wachs in den Händen meines Willens, ich kann die Fasern zu einem schöneren Stoff verweben..." Ravel wirft Grace, der Gefallenen, einen Blick zu, dann lächelt sie und leckt sich die Lippen. "Ja..."~ */
  IF ~~ THEN REPLY #52169 /* ~"Ravel, was..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",3)
StartCutSceneMode()
StartCutSceneEx("0610Cut5",FALSE)
~ EXIT
END

IF WEIGHT #3 ~  Global("Ravel_Cut_Scene","AR0610",3)
~ THEN BEGIN 151 // from:
  SAY #52170 /* ~Ravel hat... die Gestalt von Grace, der Gefallenen, ihre Haltung, ihre Gesichtszüge, die Form ihrer Kleidung angenommen... "Ist diese Form gefälliger?" Ravel lächelt, ihre Zähne leuchten in perfektem Weiß. Auf den Lippen liegt ein zarter *Schimmer* von Rot. "So kultiviert und atemberaubend?" Sie bedeutet dir näherzukommen. "Komm, mein Schatz, auf *meinen* Lippen brennen nicht die Qualen des Abgrunds. Leg deine Lippen auf meine."~ */
  IF ~~ THEN REPLY #52171 /* ~"Nun gut..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",1)
~ GOTO 152
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52172 /* ~"Nein, Ravel."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52173 /* ~"Nein, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52174 /* ~"Ravel, hör mit den Spielchen auf... Ich habe weder Zeit noch Geduld dafür. Nimm wieder deine Form an."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52175 /* ~"Ravel, hör mit den Spielchen auf... Ich habe weder Zeit noch Geduld dafür. Nimm wieder deine Form an."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0 158.0 161.0
  SAY #52176 /* ~Du berührst Ravels Lippen mit deinen. Trotz ihrer neuen Form sind ihre Lippen trocken wie Sand, und als sich eure Lippen berühren, spürst du einen scharfen Nadelstich, als ob du eine Reihe Stachelsamen küßt. Du ziehst den Kopf weg und leckst dir das Blut von den Lippen. Ravel ahmt deine Geste nach, die wegen ihrer neuen Form noch entsetzlicher wirkt. Ein Tropfen deines Blutes bleibt am Rand ihres Mundes hängen, und sie lächelt böse.~ */
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
NearbyDialog("Dannah")
~ THEN REPLY #52177 /* ~"Du... hast mich gebissen."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",4)
~ GOTO 155
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
!NearbyDialog("Dannah")
~ THEN REPLY #52178 /* ~"Du... hast mich gebissen."~ */ GOTO 153
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #52179 /* ~"Du... hast mich gebissen."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",5)
~ GOTO 156
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
!NearbyDialog("DGrace")
~ THEN REPLY #52180 /* ~"Du... hast mich gebissen."~ */ GOTO 154
  IF ~  Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #52181 /* ~"Du... hast mich gebissen."~ */ GOTO 240
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY #52182 /* ~"Und du hast mich gebissen, vor so langer Zeit, es war kein Kuß damals, sondern ein Biß ins Herz..." Ravel lächelt. "Sei nicht erstaunt, mein Schatz. Es ist nichts geschehen... außer vielleicht denen, die mit dir reisen." Sie kichert leise, und dir wird plötzlich bewußt, daß Graces Blick auf dir ruht. Äußerlich wirkt sie gefaßt, aber du hast das seltsame Gefühl, daß sich zwischen euch beiden etwas *verändert* hat.~ */
  IF ~~ THEN REPLY #52183 /* ~"Nimm wieder deine normale Form an, Ravel."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 152.3
  SAY #52184 /* ~"Und du hast mich gebissen, vor so langer Zeit, es war kein Kuß damals, sondern ein Biß ins Herz..." Ravel lächelt. "Sei nicht erstaunt, mein kostbarer Mann. Es ist nichts geschehen... außer vielleicht denen, die mit dir reisen." Sie kichert leise, und dir wird plötzlich bewußt, daß Annahs Blick auf dir ruht. Ihre Augen sind geweitet, ihr Herz rast.~ */
  IF ~~ THEN REPLY #52185 /* ~"Nimm wieder deine normale Form an, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from: 152.0
  SAY #52186 /* ~"Und du hast mich gebissen, vor so langer Zeit, es war kein Kuß damals, sondern ein Biß ins Herz..." Ravel lächelt. "Sei nicht erstaunt, mein kostbarer Mann. Es ist nichts geschehen... außer vielleicht denen, die mit dir reisen." Sie kichert leise, und dir wird plötzlich bewußt, daß die Blicke von Grace und Annah auf dir ruhen. Äußerlich wirkt Grace gefaßt, aber du hast das seltsame Gefühl, daß sich zwischen euch beiden etwas *verändert* hat. Annahs Augen haben sich zu Schlitzen verengt, und ihr Schweif zuckt drohend vor und zurück. ~ */
  IF ~~ THEN REPLY #52187 /* ~"Nimm wieder deine normale Form an, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from: 152.2
  SAY #52188 /* ~"Und du hast mich gebissen, vor so langer Zeit, es war kein Kuß damals, sondern ein Biß ins Herz..." Ravel lächelt. "Sei nicht erstaunt, mein kostbarer Mann. Es ist nichts geschehen... außer vielleicht denen, die mit dir reisen." Sie kichert leise, und dir wird plötzlich bewußt, daß Annahs Blick auf dir ruht. Ihre Augen sind geweitet, ihr Herz schlägt schnell. Grace dagegen beobachtet Annah mit neugierigem Gesichtsausdruck.~ */
  IF ~~ THEN REPLY #52189 /* ~"Nimm wieder deine normale Form an, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 145.3 147.1 148.1
  SAY #52191 /* ~"Aber häßlich muß ich *nicht* sein, schönes Ding. Mein Aussehen ist Wachs in den Händen meines Willens, ich kann die Fasern zu einem schöneren Stoff verweben..." Ravel wirft Annah einen stechenden Blick zu, woraufhin diese sich sichtlich versteift. Ravel lächelt, als sie Annahs Angst bemerkt, dann leckt sie sich die Lippen. "Ja..."~ */
  IF ~~ THEN REPLY #52192 /* ~"Ravel, was..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  Global("Ravel_Cut_Scene","AR0610",4)
~ THEN BEGIN 158 // from:
  SAY #52193 /* ~Ravel hat... die Gestalt von Annahs, ihre Haltung, ihre Züge, die Form ihrer Lederweste angenommen... "Ist es die ungeschliffene Frau, die du begehrst, die, deren Leidenschaft noch nicht durch das Alter besänftigt wurde?" Annahs... Ravels... Schweif zuckt wie in Erwartung. "Komm, liebkose meine Lippen mit deinen, und ich werde dir gefällig sein."~ */
  IF ~~ THEN REPLY #52194 /* ~"Nun gut..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",2)
~ GOTO 152
  IF ~~ THEN REPLY #52195 /* ~"Nein, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52196 /* ~"Ravel, hör mit den Spielchen auf... Ich habe weder Zeit noch Geduld dafür. Nimm wieder deine Form an."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from: 151.1 151.3
  SAY #52197 /* ~"Vielleicht... ist es die rauhere Frau, die du begehrst, die mit dem leidenschaftlichen Feuer?" Ravel wirft Annah einen stechenden Blick zu, woraufhin diese sich sichtlich versteift. "Vielleicht ist es SIE, die deinen Appetit anregt..."~ */
  IF ~~ THEN REPLY #52198 /* ~"Ravel, hör auf damit. Ich habe keine Zeit mehr für deine Sp..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52199 /* ~Warte ab, was passiert...~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 145.4 147.2 148.2
  SAY #52200 /* ~"Aber häßlich muß ich *nicht* sein, schönes Ding. Mein Aussehen ist Wachs in den Händen meines Willens, ich kann die Fasern zu einem schöneren Stoff verweben." Ravel lächelt dich an, und ihre Form beginnt sich aufzulösen...~ */
  IF ~~ THEN REPLY #52201 /* ~"Was meinst d..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",5)
StartCutSceneMode()
StartCutSceneEx("0610Cut7",FALSE)
~ EXIT
END

IF WEIGHT #5 ~  Global("Ravel_Cut_Scene","AR0610",5)
~ THEN BEGIN 161 // from:
  SAY #52202 /* ~Ravel hat... die Gestalt einer schönen jungen Frau angenommen - ALLES an ihr hat sich verändert: ihre Haltung, ihre Züge, ihre Kleidung... "Ist es eine sanftere, jüngere Frau, die du begehrst, eine, die noch nicht die Spuren des Alters trägt?" Sie lächelt mit rubinroten Lippen... einladend. "Komm, liebkose meine Lippen mit deinen, und ich werde dir gefällig sein."~ */
  IF ~~ THEN REPLY #52203 /* ~"Nun gut..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",3)
~ GOTO 152
  IF ~~ THEN REPLY #52204 /* ~"Nein, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52205 /* ~"Ravel, hör mit den Spielchen auf... Ich habe weder Zeit noch Geduld dafür. Nimm wieder deine Form an."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF WEIGHT #6 ~  Global("Ravel_Cut_Scene","AR0610",6)
~ THEN BEGIN 162 // from:
  SAY #52206 /* ~Du blinzelst, und Ravel ist wieder in ihre ursprüngliche Form zurück*gesprungen*. "Ein schwer zufriedenzustellender Mann bist du! Pah! Und da fragen sie sich, warum es keine Männer unserer Art gibt!"~ */
  IF ~~ THEN REPLY #52207 /* ~"In welche anderen Formen kannst du... *hast* du dich verwandelt?"~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",2)
~ GOTO 163
  IF ~~ THEN REPLY #52208 /* ~"Genug... Ich hätte noch mehr Fragen..."~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 163 // from: 141.1 162.0 165.0 167.0 169.0 171.0 175.0 176.1 182.0 183.0 184.0 241.0
  SAY #52209 /* ~"Vielleicht eine, vielleicht keine. Ei, welche? Ei-Vene?" Die Frage scheint Ravel verwirrt zu haben. "Ich erinnere mich nicht an die Mengen, die Memmen... die Mebbeth? Ja, wer war da, vielleicht Marta... so viele Fäden und Zweige, so viele Ravels... Immer nähend und flickend und wachsend sind meine Formen."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52210 /* ~"Mebbeth? Du warst Mebbeth?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Mebbeth")
~ THEN REPLY #52211 /* ~"Mebbeth? Du warst Mebbeth? Aber... sie ist tot."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("EiVene","GLOBAL",0)
!Dead("EiVene")
~ THEN REPLY #52212 /* ~"Du warst Ei-Vene? In der Leichenhalle?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Dead("EiVene")
~ THEN REPLY #52213 /* ~"Du warst Ei-Vene? In der Leichenhalle? Aber... sie ist tot."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52214 /* ~"Du warst die übergeschnappte Näherin im Begrabenen Dorf? Marta?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Marta","GLOBAL",0)
Dead("Marta")
~ THEN REPLY #52215 /* ~"Du warst die übergeschnappte Näherin im Begrabenen Dorf? Marta? Aber... sie ist tot."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~~ THEN REPLY #52216 /* ~"Äh... Ach so. Ich hätte noch mehr Fragen..."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 164 // from: 163.0 163.2 163.4
  SAY #52217 /* ~"Das könnte einer meiner Namen gewesen sein... ja?" Ravel wirkt noch verwirrter, ihre schwarzgeäderten Augen wirken benebelt. "Namen sind *schwer* zu behalten..." Ihre Stimme wird leise. "Wie Rufe aus großer Entfernung..."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Global("Ravel_Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Art_Answer","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52218 /* ~"Mebbeth war nett zu mir und hat mir geholfen, Ravel. Das bedeutet, daß DU mir geholfen hast. Ich danke dir."~ */ GOTO 176
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Global("Ravel_EiVene","GLOBAL",1)
!Dead("EiVene")
~ THEN REPLY #52219 /* ~"Auf ihre Weise hat Ei-Vene mir geholfen, Ravel. Das bedeutet, daß DU mir geholfen hast. Ich danke dir."~ */ GOTO 166
  IF ~  GlobalGT("Marta","GLOBAL",0)
Global("Ravel_Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52220 /* ~"Marta war übergeschnappt, Ravel, aber sie war gütig und hilfsbereit. Wenn du sie warst, dann willst du mir nichts Böses. Ich danke dir."~ */ GOTO 170
  IF ~~ THEN REPLY #52221 /* ~"Warum hast du mir geholfen, Ravel?"~ */ GOTO 184
  IF ~~ THEN REPLY #52222 /* ~"Ich... verstehe. Ich hätte noch mehr Fragen an dich..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 165 // from: 163.1 163.3 163.5
  SAY #52223 /* ~Ravel blinzelt... "Ja... im Totenbuch steht diese. Nicht mehr bauen kann ich auf ihre Stärke..."~ */
  IF ~~ THEN REPLY #52224 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52225 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #52226 /* ~Beinahe unbewußt greift Ravels Hand nach dir, und einen Moment lang würdest du schwören, daß es Ei-Venes Klauen sind...~ */
  IF ~~ THEN REPLY #52227 /* ~Gehe einen Schritt zurück.~ */ GOTO 167
  IF ~~ THEN REPLY #52228 /* ~Weich nicht von der Stelle...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52229 /* ~Du machst einen Schritt zurück. Ravel blinzelt und murmelt dann vor sich hin. "Zomfie... Zomfie..."~ */
  IF ~~ THEN REPLY #52230 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52231 /* ~"Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY #52232 /* ~Ravels linke Hand reißt ein Haar von ihrem Kopf, legt es um eine ihrer Krallen. Blitzschnell schlägt sie dir eine andere Kralle in die Haut nahe einer deiner Narben. Du spürst kaum mehr als den Stich einer Nadel, aber es sieht aus, als ob sie anfängt, dich zu nähen.~ */
  IF ~~ THEN REPLY #52233 /* ~Laß sie ihre Arbeit tun.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
SetGlobal("Ravel_EiVene","GLOBAL",2)
~ JOURNAL #52234 /* ~Es hat sich herausgestellt, daß Ravel Ei-Vene war, jene seltsame Tiefling-Frau, der ich in der Leichenhalle begegnet bin. Als ich sie damit konfrontiert habe, schien Ravel für kurze Zeit noch einmal die Gestalt von Ei-Vene anzunehmen. Sie hat meine Wunden "genäht" und mich abgehärtet.~ */ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #52235 /* ~Genau wie bei Ei-Vene ist es eine eigenartig schmerzlose Empfindung, aber der Faden und die Näherei scheinen viel tiefer zu reichen, fast in dein INNERES, ohne wirklich tiefer als unter die Oberfläche der Haut zu gehen. Kurz danach ziehen sich Ravels Krallen zurück, und du fühlst dich... besser, stärker. Ravel murmelt mit Ei-Venes Stimme: "Zomfie..."~ */
  IF ~~ THEN REPLY #52236 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52237 /* ~"Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 170 // from: 164.2
  SAY #52238 /* ~Als du ihren Namen aussprichst, scheint sich Ravels Gesicht zu *verschieben*... Ihre blaue Haut sackt herunter, bis sie den gleichen säuerlichen Ausdruck trägt, den du auf Martas Gesicht gesehen hast. "Komm schon... mach's Marta nicht so schwer..." Sie hebt die Kralle ihres Zeigefingers wie ein Skalpell und nähert sich dir. "Falsche, böse Leiche."~ */
  IF ~~ THEN REPLY #52239 /* ~Gehe einen Schritt zurück.~ */ GOTO 171
  IF ~~ THEN REPLY #52240 /* ~Weich nicht von der Stelle...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #52241 /* ~Du machst einen Schritt zurück. Ravel blinzelt und murmelt dann vor sich hin. Ihre Züge *werden* wieder zu Ravels... Aber ihr Gesichtsausdruck wirkt noch immer benommenen, als hätte sie Schwierigkeiten, sich zu orientieren. "Böse Leiche, eh, Marta...? Ja, Marta, das ist er..."~ */
  IF ~~ THEN REPLY #52242 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52243 /* ~"Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 172 // from: 170.1
  SAY #52245 /* ~Ravels schmutzige Klaue gräbt sich in deinen Unterleib und zieht dann in einer sägeartigen Bewegung brutal nach unten... Aber du spürst keine Schmerzen. Du beobachtest, wie deine Haut sich bei ihrer Berührung langsam zurückrollt. Aus der Wunde kommt kein Blut. "Schau dir das an, Marta... Schau dir das an..."~ */
  IF ~~ THEN REPLY #52246 /* ~Laß sie ihre Arbeit tun.~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 173
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY #52247 /* ~Ravels freie Hand gräbt sich in deinen Brustkorb, wo sie deine Eingeweide wie Garn aufwickelt und aus deinem Bauch *zieht*... Während sie dies tut, verschließt sich dein Magen, als ob die Zeit rückwärts liefe. Marta... Ravel... hält deine Eingeweide wie eine Trophäe hoch. "Schön, schön, eh, Marta...? Man sollte so etwas nicht verschlucken, nein, nein..."~ */
  IF ~~ THEN REPLY #52248 /* ~"Äh... Kann ich die bitte zurückhaben? Ich brauche sie vielleicht später noch."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
GiveItemCreate("Intest2",Protagonist,3,0,0)
~ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #52249 /* ~Sie gibt dir die strähnige Masse... Obwohl sie noch frisch sind, sind die Säfte, die deine Eingeweide umgeben, bereits zu einem Harz getrocknet. Sie fühlen sich eher an wie eine Rolle lasiertes... Seil.~ */
  IF ~~ THEN REPLY #52250 /* ~"Äh... Danke. Ich werde dies wie einen Schatz hüten."~ */ DO ~SetGlobal("Ravel_Marta","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ JOURNAL #52251 /* ~Es hat sich herausgestellt, daß Ravel Marta war, jene übergeschnappte Näherin, der ich im Begrabenen Dorf begegnet bin. Als ich sie damit konfrontierte, schien Ravel für kurze Zeit noch einmal die Gestalt von Marta anzunehmen. Sie hat mir die Eingeweide rausgerissen... und gesagt, sie würden mir als mächtiger Talisman dienen. Ich weiß nur, daß es eine Menge Leute gibt, die einfach in meinen Körper hineingreifen, Dinge entnehmen, die man eigentlich NICHT entnehmen sollte, und ich mir das auch noch gefallen lasse.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #52252 /* ~Marta... Ravel... nickt langsam. "Sollte er auch, nicht wahr, Marta? Ja... Ja, sollte er, Marta. Mächtiger Zauber ist zu finden in Eingeweiden von einem Unsterblichen, ja... Nicht wie Zähnchen... oder Augen..."~ */
  IF ~~ THEN REPLY #52253 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52254 /* ~"Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 176 // from: 164.0
  SAY #52255 /* ~Als du Mebbeth erwähnst, scheint alle Farbe aus Ravels Gesicht zu weichen, bis sie fahl und kreidebleich ist - im wahrsten Sinne des Wortes. Es ist, als sei die Farbe einfach... verschwunden. "Und wer könntest du sein, hmmm? Bringt dein Pfad dich zurück zur Tür der alten Mebbeth, mein Kind...?"~ */
  IF ~~ THEN REPLY #52256 /* ~"Ja... Mebbeth... Ich, eh, bin gekommen, um mehr von der Kunst zu lernen. Kannst du mir noch mehr beibringen?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 177
  IF ~~ THEN REPLY #52257 /* ~"Diesmal nicht... In welche Formen hast du dich noch verwandelt, Ravel?"~ */ GOTO 163
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #52258 /* ~"Pah! Ich bin nur eine Hebamme, mein Kind, eine solche Macht, die für die Kunst vonnöten ist, ist für mich unerreichbar..."~ */
  IF ~~ THEN REPLY #52259 /* ~"Ich... glaube nicht. Ich denke, du kannst mir mehr beibringen als du vermutest. Viel mehr."~ */ GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #52260 /* ~Dann kommt die Frage, wie ein Echo: "Du willst die Kunst erlernen, ja? *Warum* willst du solche Dinge lernen?"~ */
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",1)
~ THEN REPLY #52261 /* ~Echo: "Weil ich es einfach wissen will."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 179
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",2)
~ THEN REPLY #52262 /* ~Echo: "Weil ich es brauche, um das Rätsel zu lösen, wer ich bin."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 180
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",3)
~ THEN REPLY #52263 /* ~Echo: "Weil ich Macht brauche."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 181
  IF ~~ THEN REPLY #52264 /* ~"Ich habe meine Gründe."~ */ GOTO 183
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #52265 /* ~Ravel... Mebbeth... spricht verächtlich: "Keine Kinderfibel ist dies, keine Gesetzessammlung eines Herrschners... Es ist die *Kunst*, mein Kind. Ich werde sie dich lehren, aber du mußt einen klaren Kopf behalten..." Sie lehnt sich zu dir. "Hör zu..."~ */
  IF ~~ THEN REPLY #52266 /* ~Hör zu...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Es hat sich herausgestellt, daß Ravel Mebbeth war, jene freundliche Hebamme, der ich auf dem Lumpensammler-Platz begegnet bin. Als ich sie damit konfrontierte, schien Ravel für kurze Zeit noch einmal die Gestalt von Mebbeth anzunehmen. Sie hat mir etwas erzählt... etwas, an das ich mich nicht einmal erinnern kann. Es scheint mir allerdings, als habe sie mein Verständnis für die Ebenen erweitert und mir größeres *Bewußtsein* für meine Umgebung gegeben.~ */ GOTO 182
  IF ~~ THEN REPLY #52267 /* ~"Nein, ich glaube nicht, daß ich wissen möchte, was du mir sagen willst... Vielleicht ein anderes mal."~ */ GOTO 241
END

IF ~~ THEN BEGIN 180 // from: 178.1
  SAY #52269 /* ~Nach einem Moment nickt Ravel... Mebbeth.... "Die Kunst hilft vielleicht, vielleicht nicht, und du darfst dich nicht darauf verlassen, daß sie all deine Probleme löst." Sie seufzt. "Mein Kind, sie wird wahrscheinlich deinen Berg von Fragen nur noch größer machen..." Sie lehnt sich zu dir. "Aber wenn du unbedingt willst, dann hör zu..."~ */
  IF ~~ THEN REPLY #52270 /* ~Hör zu...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Es hat sich herausgestellt, daß Ravel Mebbeth war, jene freundliche Hebamme, der ich auf dem Lumpensammler-Platz begegnet bin. Als ich sie damit konfrontierte, schien Ravel für kurze Zeit noch einmal die Gestalt von Mebbeth anzunehmen. Sie hat mir etwas erzählt... etwas, an das ich mich nicht einmal erinnern kann. Es scheint mir allerdings, als habe sie mein Verständnis für die Ebenen erweitert und mir größeres *Bewußtsein* für meine Umgebung gegeben.~ */ GOTO 182
  IF ~~ THEN REPLY #52271 /* ~"Nein, ich glaube nicht, daß ich wissen möchte, was du mir sagen willst... Vielleicht ein anderes mal."~ */ GOTO 241
END

IF ~~ THEN BEGIN 181 // from: 178.2
  SAY #52272 /* ~"Pah! Ein schlechter Wunsch, denn die Leiter der Kunst wird dich immer daran erinnern, daß genau über dir noch eine Sprosse ist, und daß sich darauf eine Menge Leute und Sachen befinden. Es wird immer jemanden geben, der besser ist, und dieser wird es *dich* wissen lassen, wenn du zu sehr danach strebst." Sie lehnt sich zu dir. "Aber wenn du unbedingt willst, dann hör zu..."~ */
  IF ~~ THEN REPLY #52273 /* ~Hör zu...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,120000)
~ JOURNAL #52268 /* ~Es hat sich herausgestellt, daß Ravel Mebbeth war, jene freundliche Hebamme, der ich auf dem Lumpensammler-Platz begegnet bin. Als ich sie damit konfrontierte, schien Ravel für kurze Zeit noch einmal die Gestalt von Mebbeth anzunehmen. Sie hat mir etwas erzählt... etwas, an das ich mich nicht einmal erinnern kann. Es scheint mir allerdings, als habe sie mein Verständnis für die Ebenen erweitert und mir größeres *Bewußtsein* für meine Umgebung gegeben.~ */ GOTO 182
  IF ~~ THEN REPLY #52274 /* ~"Nein, ich glaube nicht, daß ich wissen möchte, was du mir sagen willst... Vielleicht ein anderes mal."~ */ GOTO 241
END

IF ~~ THEN BEGIN 182 // from: 179.0 180.0 181.0
  SAY #52275 /* ~Mebbeth... Ravel... hat dir etwas zugeflüstert, und du fühlst dich *anders*, irgendwie verändert. Sie hat dir etwas Schreckliches gesagt, etwas darüber, wie die Ebenen funktionieren, aber dein Bewußtsein hat ihre Worte ausgesperrt, und du kannst dich nicht an sie erinnern. Schon der Gedanke an die Worte läßt dein Herz rasen... Ravel hat dir etwas gesagt, von dem du dir nicht sicher bist, ob es jemals *irgend jemand* wissen sollte. Sie betrachtet, beobachtet dich. ~ */
  IF ~~ THEN REPLY #52276 /* ~"W-Welche... Welche anderen Formen bist du gewesen, Ravel?"~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 163
  IF ~~ THEN REPLY #52277 /* ~"Ich... Ich... habe noch mehr Fragen an dich, Ravel."~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 183 // from: 178.3
  SAY #52278 /* ~"Ach ja? Nun, wenn deine Gründe deine Sache sind, dann ist mein *Wissen* meine Sache. Ich werde niemandem etwas beibringen, der sich vor dem Lehrer versteckt... Nur... Böses... kommt... auf einem solchen Pfad." Mebbeth... Ravel... blinzelt, als versuche sie, sich zu orientieren.~ */
  IF ~~ THEN REPLY #52279 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52280 /* ~"Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 184 // from: 164.3
  SAY #52281 /* ~"Ich KANN NICHT anders, als dir zu helfen, mein Schatz... Und das wird immer so sein, egal wie viele Ravels es gibt... In diesem Punkt sind sie sich einig."~ */
  IF ~~ THEN REPLY #52282 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52283 /* ~"Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 185 // from: 141.5 141.6
  SAY #52284 /* ~"Ich habe versucht, einer Dame zu helfen, und freundlich aufgenommen hat sie es nicht."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #52285 /* ~"Was meinst du?"~ */ GOTO 188
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52286 /* ~"Was meinst du?"~ */ GOTO 187
  IF ~~ THEN REPLY #52287 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 186 // from: 141.3
  SAY #52288 /* ~"Ich habe versucht, einer Dame zu helfen, und freundlich aufgenommen hat sie es nicht."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 161
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY #52289 /* ~"Die von mir angebotene Hilfe war nicht willkommen. Ich habe *versucht*, sie zu BEFREIEN. Sigil ist der KÄFIG, eine Stadt der Türen und Schlösser, ein Gefängnis für sie. So muß es doch sein, nicht wahr? Warum sonst sollte man die Stadt Sigil 'den Käfig' nennen? Und wer ist im Käfig eingesperrt? Die Dame! Ein so kleines Gefängnis für jemand so großes. Ungerechtigkeit, Unrecht, nicht tolerierbar, eine Frau so zu quälen!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 507
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #52290 /* ~"Die von mir angebotene Hilfe war nicht willkommen. Ich habe *versucht*, sie zu BEFREIEN. Sigil ist der KÄFIG, eine Stadt der Türen und Schlösser, ein Gefängnis für sie. So muß es doch sein, nicht wahr? Warum sonst sollte man die Stadt Sigil 'den Käfig' nennen? Und wer ist im Käfig eingesperrt? Die Dame! Ein so kleines Gefängnis für jemand so großes. Ungerechtigkeit, Unrecht, nicht tolerierbar, eine Frau so zu quälen!"~ */
  IF ~~ THEN REPLY #52291 /* ~"A-ha."~ */ GOTO 189
  IF ~~ THEN REPLY #52292 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #52293 /* ~"Ich habe versucht, den Käfig aufzubrechen, die Dame freizulassen." Sie macht eine abwinkende Bewegung, ihr Ausdruck wird schmerzlich, während sie unsichtbare Vögel vertreibt. "Sch, sch, oh schmerzvolle Frau, möge Sigils Ring zerbrochen werden, damit du weit weg fliegen kannst von seinen schmutzigen Straßen und den dummen Dabus, die es nicht wagen, in Worten zu sprechen, aus Angst, jemand könnte ihre Gedanken hören!" Ravel hört langsam auf, ihre Hand zu bewegen, und seufzt leise.~ */
  IF ~~ THEN REPLY #52294 /* ~"Erzähl weiter..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 190
  IF ~~ THEN REPLY #52295 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #52296 /* ~"Bevor ich die Sache beenden konnte, fand ich mich hier wieder, und meinen Erinnerungen hatte die Reise gar nicht gut getan... Viel ist entglitten, viel vergessen, ja, es war ... ist? War?" Ravel lächelt mit ihren vergilbten Zähnen. "Das Schwinden der Erinnerung ist zu einer Wohltat für diese alten Knochen geworden. Viel habe ich vergessen... Ich habe Glück, daß ich mich noch an dich erinnere."~ */
  IF ~~ THEN REPLY #52297 /* ~"Ravel, aber... WARUM hast du versucht, die *Dame der Schmerzen* aus Sigil zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52299 /* ~Es hat sich herausgestellt, daß Ravel in den Irrgang geschickt wurde, weil sie versucht hat, die Dame der Schmerzen aus Sigil zu befreien... War dies so ein schlimmes Verbrechen? Und dennoch, die besten Absichten... Ravel hat mir gesagt, daß sie es einfach nicht ertragen könne, wenn jemand in einem Käfig oder Gefängnis sei.~ */ GOTO 191
  IF ~~ THEN REPLY #52298 /* ~"Ich verstehe. Ich hätte noch mehr Fragen an dich..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #52300 /* ~Ravels Stimme senkt sich beinahe vorwurfsvoll. "Ich ärgere mich über alles, was gefangen ist, selbst eine Macht, und glaube, daß alle...ob Steine, Küsten oder stille, mit Klingen ausgerüstete Damen... FREI sein sollten. Manche haben gesagt, daß ich eine Närrin bin. Warum sollte man so etwas riskieren, haben sie gesagt."~ */
  IF ~~ THEN REPLY #52301 /* ~"Genau. Ich hätte die Dame in ihrem Käfig gelassen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_2","GLOBALGood",-2)
~ GOTO 192
  IF ~~ THEN REPLY #52302 /* ~"Ich glaube, du hast richtig gehandelt, als du versucht hast, sie zu befreien, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_2","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~~ THEN REPLY #52303 /* ~Lüge: "Ich... glaube, du hast richtig gehandelt, als du versucht hast, sie zu befreien, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52304 /* ~"Ist es das, was du versucht hast, als ich dich vor so langer Zeit getroffen habe? Warst du dabei, mich zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52305 /* ~"Ist es das, was du versucht hast, als ich dich vor so langer Zeit getroffen habe? Warst du dabei, mich zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #52306 /* ~"Es gibt einfach Dinge, die ich nicht ertragen kann, und ich werde nicht versuchen, mich zu entschuldigen, mein kostbarer Halb-Mann - noch nicht... Wenn ich die Dinge einfach nicht auf sich beruhen lassen kann... sind es viele Leben und Träume, die in Stücken auf dem Boden zurückbleiben. Wenn ich dich in Ruhe gelassen hätte, wäre dein Leben vielleicht besser gewesen..."~ */
  IF ~  Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52307 /* ~"Ist es das, was du versucht hast, als ich dich vor so langer Zeit getroffen habe? Warst du dabei, mich zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52308 /* ~"Vielleicht. Ich habe noch mehr Fragen an dich, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 193 // from: 191.1 191.2
  SAY #52309 /* ~"Ich bin froh, daß wir ähnlich denken und in dieser Angelegenheit einer Meinung sind. Doch... wenn ich die Dinge einfach nicht auf sich beruhen lassen kann... scheint es in meinen Augen, daß es viele Leben und Träume sind, die in Stücken auf dem Boden zurückbleiben."~ */
  IF ~~ THEN REPLY #52310 /* ~"Wenigstens hast du es versucht, Ravel, und ich sehe nichts Falsches an deiner Absicht."~ */ GOTO 194
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52311 /* ~"Du hast also einen Fehler gemacht, Ravel? Wenigstens hast du *versucht*, wozu anderen der Mut gefehlt hätte. Ich sehe nichts Falsches an deiner Absicht - sondern nur Stärke."~ */ DO ~IncrementGlobalOnceEx("GLOBALRavel_Flatter_2","GLOBALRavel_Flatter",2)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 195
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52312 /* ~"Ist es das, was du versucht hast, als ich dich vor so langer Zeit getroffen habe? Warst du dabei, mich zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52313 /* ~"Ist es das, was du versucht hast, als ich dich vor so langer Zeit getroffen habe? Warst du dabei, mich zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52314 /* ~"Ich habe noch mehr Fragen an dich, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #52315 /* ~"Ts. Wenigstens *einer*."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52316 /* ~"Ist es das, was du versucht hast, als ich dich vor so langer Zeit getroffen habe? Warst du dabei, mich zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52317 /* ~"Ist es das, was du versucht hast, als ich dich vor so langer Zeit getroffen habe? Warst du dabei, mich zu befreien?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52318 /* ~"Ich habe noch mehr Fragen an dich, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 195 // from: 193.1
  SAY #52319 /* ~Ravel starrt dich einen Moment schweigend an, dann kichert sie vor sich hin. "Solch honigsüße Worte! Wie ich dich VERMISST habe, mein kostbarer Halb-Mann! Du singst so süß. Du könntest Steine erweichen!"~ */
  IF ~~ THEN REPLY #52320 /* ~"Es schadet nicht, die Wahrheit zu sagen. Ich habe noch mehr Fragen an dich, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 196 // from: 191.3 191.4 192.0 193.2 193.3 194.0 194.1
  SAY #52321 /* ~"Schon möglich, möglich schon. Die Ketten des Lebens und die Angst vor dem Tod haben vielleicht den Mann, den ich kannte... damals kannte... zu fest im Griff gehabt... hmmmm, hmmmm?" Ravel nestelt an einer ihrer zotteligen, grauen Strähnen und wickelt sich ein Haar um den Finger. "Ketten und Käfige mag Ravel nicht..."~ */
  IF ~~ THEN REPLY #52322 /* ~"Ah, ich war also irgendwie in einem Käfig gefangen? Oder in Ketten? Es klingt, als ob sich deine Erinnerung regt, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #52323 /* ~"Ja..." Ravel blinzelt einen Moment, und der Glanz in ihren schwarzgeäderten Augen erlischt, als wäre sie von einer schweren Waffe getroffen. Ihre Klaue schließt sich fester um das graue Haar, so fest, daß es aussieht, als wolle sie es sich ausreißen. "Vielleicht... hast du in einer Falle gesessen? Aber es war kein normaler Käfig, der dich festhielt..."~ */
  IF ~~ THEN REPLY #52324 /* ~"Hast du irgendeine Ahnung, *was* mich festgehalten hat?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52325 /* ~Ravel ist der Ansicht, daß ich in einem Käfig oder Gefängnis gewesen sein könnte, als ich vor so langer Zeit zu ihr kam... Aber sie konnte sich nicht genau erinnern. Sie hat mir etwas von einem Versprechen erzählt, dann hat sie sich ein Haar ausgerissen und mir gesagt, ich solle es anstelle einer Antwort akzeptieren.~ */ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #52326 /* ~Ravel wirkt verwirrt, und ihr Gesicht *verzieht* sich, als kämpfe sie gegen einen unangenehmen Gedanken an. "Ich habe es vergessen... Vielleicht ein Versprechen...? Nein, nein..." Ihr Finger schließt sich fester um das graue Haar, und zu deinem Erstaunen hörst du ein *Knacken* wie das eines abbrechenden Zweiges, als Ravel es sich ausreißt. Ein wenig schwarzes Blut sickert aus ihrem Schädel, und sie zischt zornig.~ */
  IF ~~ THEN REPLY #52327 /* ~"Ravel...? Ist alles in Ordnung mit dir?"~ */ DO ~GiveItemCreate("RavelHai",Protagonist,1,0,0)
SetGlobal("Ravel_Hair","GLOBAL",1)
AddexperienceParty(90000)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #52328 /* ~"NICHTS mehr werde ich sagen..." Ravels Gesicht verzieht sich vor Schmerzen, um ihre Klaue gewickelt ist das an der Spitze blutige graue Haar, das selbst ausgerissen noch zerzaust und steif aussieht. "Ich weiß nichts und werde kein Wissen teilen!" Sie starrt auf das um ihre Klaue gewickelte graue Haar herunter, dann zischt sie und wirft es dir zu. "Nimm dies, und laß die Vergangenheit ruhen, wo sie liegt, Halb-Mann!"~ */
  IF ~~ THEN REPLY #52329 /* ~"Nun gut, Ravel. Dann gibt es zu dieser Sache nichts mehr zu sagen. Ich hätte noch mehr Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 200 // from: 141.2
  SAY #52330 /* ~Ravel macht eine ausschweifende Geste. "Einst war es ein Irrgang aus leblosem Stein, leer, aber in meinem Haar hatte sich ein kleiner, schwarzer Samen verfangen, als ich an diesen Ort kam, und er wuchs zwischen diesen Steinen, wucherte und wucherte, bis er sich üppig durch den ganzen Irrgang zog, wie das lose Haar einer Alten... Und so wird dieser Irrgang eines anderen zu MEINEM Garten."~ */
  IF ~~ THEN REPLY #52331 /* ~"Ich hätte noch mehr Fragen an dich, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 201 // from: 141.7
  SAY #52404 /* ~Ravel runzelt mißbilligend die Stirn, ihre bläuliche Haut verzieht sich wie ein ausgewrungenes Tuch. "Kennt Ravel die *Kunst*?! Hat dein Verstand es deiner Sterblichkeit gleichgetan und dich verlassen?! Ich habe mehr von der Kunst vergessen, als *du*..." Sie kratzt dich mit einer ihrer Krallen. "Jemals." Sie kratzt dich abermals. "Wissen wirst."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #52405 /* ~"Kannst du mir dann etwas von der 'Kunst' beibringen?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 203
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #52406 /* ~"Kannst du mir dann etwas von der 'Kunst' beibringen?"~ */ GOTO 202
  IF ~~ THEN REPLY #52407 /* ~"Naja, nichts für ungut. Ich hätte noch ein paar Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 202 // from: 201.1
  SAY #52408 /* ~Ravel verengt ihre schwarzgeäderten Augen und mustert dich. "Vielleicht könnte ich von jemandem wie dir überredet werden... Obwohl NIEMANDEM sonst eine solche Chance, geschweige denn die Gunst zuteil würde. Bist du ein Anfänger in der Kunst, oder stehe ich vor einem erprobten und versierten... erfahrenen Meister?"~ */
  IF ~~ THEN REPLY #52409 /* ~"Ich bin nur ein Anfänger."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52410 /* ~"Ich bin nur ein Anfänger, schöne Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52411 /* ~"Ein Meister der Künste."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52412 /* ~"Ein Meister der Künste, schöne Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52413 /* ~"Ich könnte es wirklich nicht sagen... Für meine Bemühungen scheine ich abwechselnd bewundert und ausgelacht zu werden."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 212
  IF ~~ THEN REPLY #52414 /* ~"Vielleicht könnte ich ein andermal Unterricht nehmen. Ich hätte noch ein paar Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 203 // from: 201.0
  SAY #52415 /* ~Ravel schnauft. "Ha! Ich werde mein Wissen mit niemandem teilen außer mit einem WAHREN Kenner und niemandem sonst, und nichts wird mich davon abbringen, nicht einmal du."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52416 /* ~"Schöne Ravel, ich bitte dich nur, daß du mir einige deiner Methoden beibringst... Ich bitte um nichts weiter als einen kurzen Blick in die tiefe Quelle deines Wissens, das du zweifellos besitzt."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52417 /* ~"Also gut. Ich hätte noch ein paar Fragen..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 204 // from: 202.1 202.3 203.0
  SAY #52418 /* ~"Schmeichler...und doch wärmen mich deine Worte." Ravels Stimme verändert sich, die Höhe schwankt, als ob jemand ein Saiteninstrument zupft. "Viel habe ich gelernt, während ich diesen Garten gepflegt habe. Talismane und Zauber, gewonnen aus den Stacheln..." Sie beginnt, leise vor sich hin zu summen. "...reimen, Konsonanten hin und her bewegen, Konstanten und Bewegungen, die dir die Dornbüsche zu Hilfe rufen... Hör zu, die Ranken werden davon erzählen."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52419 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,30000)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52420 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,60000)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52421 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52422 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52423 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,120000)
~ GOTO 208
END

IF ~~ THEN BEGIN 205 // from: 202.0 202.2
  SAY #52424 /* ~"Nun gut..." Ravels Stimme verändert sich, die Höhe schwankt, als ob jemand ein Saiteninstrument zupft. "Viel habe ich gelernt, während ich diesen Garten gepflegt habe. Talismane und Zauber, gewonnen aus den Stacheln..." Sie beginnt, leise vor sich hin zu summen. "...reimen, Konsonanten hin und her bewegen, Konstanten und Bewegungen, die dir die Dornbüsche zur Hilfe rufen... Hör zu, die Ranken werden davon erzählen."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52425 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52426 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52427 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52428 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52429 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
END

IF ~~ THEN BEGIN 206 // from: 204.0 205.0 212.0
  SAY #52430 /* ~Als du die Augen schließt und zuhörst, durchläuft dich ein Beben, als ob stachelige Schlangen sich unter deine Haut graben. Als sich deine Augen öffnen, liegt in deiner Handfläche ein seltsamer, schwarzstacheliger Samen. Du hast keine Ahnung, wie er dahin gekommen ist. Ravel beobachtet dich aufmerksam. "Nimm den Samen. Lerne von ihm."~ */
  IF ~~ THEN REPLY #52431 /* ~"Nun gut... Ich hätte noch mehr Fragen an dich, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 207 // from: 204.1 205.1
  SAY #52432 /* ~Als du die Augen schließt und zuhörst, durchläuft dich ein starkes Zittern, als ob Dutzende von stacheligen Schlangen sich durch dein Fleisch graben. Als sich deine Augen öffnen, liegen in deiner Handfläche mehrere seltsame, schwarzstachelige Samen. Du hast keine Ahnung, wie sie dahin gekommen sind. Ravel beobachtet dich aufmerksam. "Nimm die Samen. Lerne von ihnen."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52433 /* ~"Nun gut... Ich hätte noch mehr Fragen an dich, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52434 /* ~"Nun gut... Ich hätte noch mehr Fragen an dich, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 208 // from: 204.2 204.3 204.4 205.2 205.3 205.4
  SAY #52435 /* ~Als du die Augen schließt und zuhörst, durchläuft dich ein starkes Zittern, als ob Dutzende von stacheligen Schlangen sich durch dein Fleisch graben. Gerade als du glaubst, daß du die Schmerzen nicht mehr aushalten kannst, beginnst du plötzlich, instinktiv, zu summen, die gleiche Melodie, die auch Ravel gesummt hat... Und die Schmerzen klingen ab. Fern im Irrgang kannst du das Klicken der Baumwesen hören, als ob sie auf deinen Ruf antworten.~ */
  IF ~~ THEN REPLY #52436 /* ~Summ weiter.~ */ DO ~SetGlobal("Ravel_Teach","GLOBAL",2)
~ GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #52437 /* ~Ravel beobachtet dich mit einem seltsamen Leuchten in ihren schwarzgeäderten Augen. "Solche *Macht*..." Sie zischt leise, als sei sie verwundert, und ihre Lippen verziehen sich zu einem Lächeln. "Es berührt alle, die es hören. Du bist mächtig, mein Schatz, so mächtig... Eines Tages könnten sich sogar die Ebenen deinem Willen beugen..."~ */
  IF ~~ THEN REPLY #52438 /* ~"So etwas wünsche ich nicht, Ravel. Es gibt viele, die diesen Pfad gehen würden, doch nicht ich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_1","GLOBALGood",2)
~ GOTO 210
  IF ~~ THEN REPLY #52439 /* ~"Der Tag, an dem sich die Ebenen mir beugen, ist nicht mehr weit, Ravel. Je mehr von meinen Erinnerungen zurückkehren, umso größer wird meine Macht, bis niemand mich mehr aufhalten kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_1","GLOBALGood",-2)
~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0 209.1
  SAY #52440 /* ~Ravel zeigt erst mit dem Kopf auf dich und dann auf deine Hand, die zu deiner Überraschung ein paar schwarzstachelige Samen enthält. "Nimm diese Samen. Benutze sie, wie du willst... Und dazu gewähre ich dir noch eine weitere Gunst." Sie reißt sich ein Haar aus und nimmt eine Handvoll Samen, legt sie in ihre Handfläche und zerdrückt sie dann. Eine dünne Spur schwärzliches Blut läuft aus ihrer Hand, aber als sie sie wieder öffnet, siehst du keine Wunde... nur eine Halskette aus schwarzen Stacheln, die um eine Strähne von Ravels grauem Haar gewunden ist. "Nimm dies, es ist *von* mir, und es wird dir nützlich sein."~ */
  IF ~~ THEN REPLY #52441 /* ~Nimm die Samen und den seltsamen Stacheltalisman.~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBChrm",Protagonist,1,0,0)
~ JOURNAL #52442 /* ~Ravel hat mir mehr über die Kunst beigebracht, und dabei bin ich so weit in die angrenzenden Gebiete ihres Schwarzstachel-Irrgangs vorgedrungen, daß die Baumwesen, die Trigiten, geantwortet haben, als ich sie rief. Ravel war sehr beeindruckt und gab mir einen zusätzlichen Talisman. Sie hat gesagt, es gäbe einen geheimen Raum innerhalb des Irrgangs, zu dem ich gelangen könne, wenn ich die Schwarzstachel-Samen bei mir trage.~ */ GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #52444 /* ~"Bewahre diese Samen auf, mein Schatz... Benutze sie nicht alle, denn sie könnten sich an *anderen* Orten in diesem Irrgang als nützlicher erweisen... Aber wenn du mächtig bist, wirst du diese Orte finden."~ */
  IF ~~ THEN REPLY #52445 /* ~"Nun gut... Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 212 // from: 202.4
  SAY #52446 /* ~"Du bist der, der auf dem mittleren Pfad vorankriecht, wenn er mit anderen spricht, ich verstehe. Solch einem Pfad mangelt es an Überzeugung..." Ravel kneift die Augen zusammen, während sie dich anstarrt. "Ich schätze, du bist ein Anfänger, aber du hast ein gewisses Talent, das noch wachsen muß. Ich gebe dir dies hier... Psst... Schließ die Augen, hör zu..."~ */
  IF ~~ THEN REPLY #52447 /* ~Schließ die Augen, hör zu.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
END

IF ~~ THEN BEGIN 213 // from: 106.8 141.9
  SAY #52448 /* ~"Halt..." Ravels Stimme senkt sich zu einem leisen Zischen, ähnlich dem einer Schlange. "Die wichtigste Frage mußt du NOCH stellen, mein Schatz. Ist sie dir schon eingefallen?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52449 /* ~"Nein... Von was für einer Frage sprichst du?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 214
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #52450 /* ~"Ja... Ich muß wissen, wie man diesen Ort verläßt. Weißt du die Antwort auf diese Frage?"~ */ GOTO 215
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52451 /* ~"Ja... Ich muß wissen, wie man diesen Ort verläßt. Weißt du die Antwort auf diese Frage?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #52452 /* ~"'Ravel, weißt du, wie man deinen schönen Garten verlassen kann', mußt du fragen - frag dies, ja?" Sie gibt dir ein Zeichen mit einer ihrer Krallen, ihre blutigen Augen leuchten. "Sprich, sprich."~ */
  IF ~~ THEN REPLY #52453 /* ~"Ravel... Wie verlasse ich deinen schönen Garten hier?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 213.1 213.2 214.0
  SAY #52454 /* ~"Ich kenne die Verzweigungen dieses Ortes, die Biegungen und Kurven und Gräben. Zwar gibt es hier keine Blätter, aber man kann sich doch von ihnen verabschieden, wenn sie es wünschen."~ */
  IF ~~ THEN REPLY #52455 /* ~"Du WEISST also, wie man herauskommt?"~ */ DO ~SetGlobal("Ravel_Curst_Portal","GLOBAL",1)
~ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #52456 /* ~"Leg deine Hände um dich wie Zweige, laß sie deine Brust umfassen wie einen Käfig. Gehe vom Rand des Irrgangs in die Dunkelheit, und in einen anderen Käfig wird dein Körper gehen - ein leichter Abschied, aber es gibt KEINE Rückkehr, wenn dieser letzte Schritt getan ist, also HÖR ZU und NIMM, was du brauchst, bevor du diesen Schritt tust."~ */
  IF ~~ THEN REPLY #52457 /* ~"Über welchen Rand des Irrgangs soll ich herausgehen?"~ */ GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #52458 /* ~"Welchen, eine Frage an die Hexe... Einer der Ränder weiß es, nicht ich. Ich habe vergessen welcher, und die Ränder des Irrgangs hatten wenig zu sagen zu der Angelegenheit."~ */
  IF ~~ THEN REPLY #52459 /* ~"Du hast gewußt, wie man herauskommt? Die ganze Zeit? Dann... Warum gehst du nicht?"~ */ GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #52460 /* ~"Warum bleiben, wenn man gehen kann, ist deine Frage an mich?" Ravel setzt ein schiefes Lächeln auf, das eine Reihe von Reißzähnen entblößt. "Ich stelle die Frage auf den Kopf und schicke sie ganz schnell zurück zu dir. Die Antwort liegt nicht im Bleiben oder Gehen, sondern in den Ursachen und Gründen, mein kostbarer Halb-Mann."~ */
  IF ~~ THEN REPLY #52461 /* ~"*Willst* du nicht gehen?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #52462 /* ~"Es ist *ein* Wunsch, ein einstiger Wunsch, aber kein jetziger Wunsch, und mehr und mehr ein Nicht-Wunsch. Was brauche ich, das jenseits meiner stacheligen Mauern liegt? Eine grausame, zerbrochene Welt liegt jenseits der Grenzen dieses Irrgangs, und Ravel hat *genügend* Splitter aus ihrer Haut gezogen."~ */
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",3)
~ THEN REPLY #52463 /* ~"Du hast mir einen großen Dienst erwiesen, schöne Ravel. Danke, daß du meine Bitte angehört und dein Wissen mit mir geteilt hast."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 220
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52464 /* ~"Sehr gut... Danke, Ravel. Ich muß mich jetzt von dir verabschieden."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52465 /* ~"Sehr gut... Danke, Ravel. Ich muß mich jetzt von dir verabschieden."~ */ GOTO 230
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #52466 /* ~Ravel setzt ein schiefes Lächeln auf und kichert dann leise. "Ah... *Ich* bin es, die dir dankt, mein Schatz. Lange ist es her, daß solch süße Schmeicheleien in diesen Irrgang gebracht wurden... Ich möchte dir eine Gunst gewähren, mein Singvogel."~ */
  IF ~~ THEN REPLY #52467 /* ~"Eine Gunst ist nicht nötig, schöne Ravel."~ */ GOTO 221
  IF ~~ THEN REPLY #52468 /* ~"Eine Gunst? Ich würde mit Freude jedes Geschenk annehmen, das du machen willst."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 223
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #52469 /* ~"Deine Beteuerungen sind hier fehl am Platz, Singvogel. Psst... Ich möchte dir ein Geheimnis verraten..."~ */
  IF ~~ THEN REPLY #52470 /* ~"Auf die Gefahr hin, mich zu wiederholen: Bitte, eine Gunst ist nicht nötig, schöne Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 222
  IF ~~ THEN REPLY #52471 /* ~"Nun gut..."~ */ GOTO 223
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #52472 /* ~"Nun gut..." Ravel zischt leise, als sei sie enttäuscht. "Keine Geschenke werde ich heute vergeben..."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52473 /* ~"Sehr gut... Danke, Ravel. Ich muß mich jetzt von dir verabschieden."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52474 /* ~"Sehr gut... Danke, Ravel. Ich muß mich jetzt von dir verabschieden."~ */ GOTO 230
END

IF ~~ THEN BEGIN 223 // from: 220.1 221.1
  SAY #52475 /* ~"Dann hör mir zu... Schließ die Augen, und ich werde dich einen Blick auf das Wesen des Multiversums werfen lassen..."~ */
  IF ~  GlobalLT("Ravel_Flatter","GLOBAL",7)
~ THEN REPLY #52476 /* ~Schließ die Augen und hör zu...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",6)
GlobalLT("Ravel_Flatter","GLOBAL",11)
~ THEN REPLY #52477 /* ~Schließ die Augen und hör zu...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,120000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",10)
~ THEN REPLY #52478 /* ~Schließ die Augen und hör zu...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,2)
GiveExperience(Protagonist,180000)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0 223.1 223.2
  SAY #52479 /* ~Du schließt die Augen, und dabei spürst du einen scharfen, stechenden Schmerz in deinem rechten Auge. Dein Auge... *eines* deiner Augen... öffnet sich... und du siehst Ravel vor dir, ihre blutroten Augen leuchten vor Entzücken. Eine ihrer Krallen ist ausgestreckt und trägt an der Spitze dein Blut ... und einen Augapfel. Deinen Augapfel.~ */
  IF ~~ THEN REPLY #52480 /* ~"Was... hast... du... getan...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #52481 /* ~"Eine Gunst habe ich dir gewährt, Singvogel. Eine Verzerrung der Wahrnehmung, einen Blick auf die Zweige des Verstands, einen Blick auf die Wurzeln von Ravels Wissen habe ich dir gewährt... einen Teil von mir..." Sie nimmt den Augapfel, und du beobachtest angeekelt, wie sie einen schwarzen Samen hervorholt und zusammen mit dem Augapfel in ihre linke Handfläche legt. Mit einem grotesken Lächeln zerdrückt sie beides mit einem ekelerregenden Geräusch. "Ahh..."~ */
  IF ~~ THEN REPLY #52482 /* ~"Gib... es zurück..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #52483 /* ~"Natürlich, Schatz..." Ravel öffnet ihre Hand, und dort liegt dein Auge, scheinbar unangetastet, und starrt dich an. Sie nimmt es zwischen Daumen und Zeigefinger, und bevor du reagieren kannst, drückt sie es in deine leere Augenhöhle.~ */
  IF ~~ THEN REPLY #52484 /* ~"Erhhkkkk..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ JOURNAL #52485 /* ~Als Antwort auf meine Schmeicheleien riß Ravel mir mein rechtes Auge raus, drückte einen Schwarzstachel-Samen hinein und steckte es mir zurück in meine blutende Augenhöhle. Jetzt sehe ich die Dinge etwas anders... Es ist, als ob ich die Ebenen sowohl aus Ravels als auch aus meiner Perspektive sähe. Natürlich hat diese Erfahrung mich auch gelehrt, daß ich in Zukunft vorsichtig sein muß, wem ich Schmeicheleien zuteil werden lasse, besonders wenn sich diese Person in unmittelbarer Reichweite befindet.~ */ GOTO 227
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #52486 /* ~"Ein Stück von mir wohnt in deinem guten Auge, Schatz. Wenn du die Ebenen durch dieses Auge siehst, wirst du MEHR verstehen als früher... Weiser wirst du sein, mehr Erfahrung mit den Ebenen wirst du haben und ihre Wendungen wirst du verstehen... Und das ist alles."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52487 /* ~"Sehr gut... Danke, Ravel. Ich muß mich jetzt von dir verabschieden."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52488 /* ~"Sehr gut... Danke, Ravel. Ich muß mich jetzt von dir verabschieden."~ */ GOTO 230
END

IF ~~ THEN BEGIN 228 // from: 219.1 222.0 227.0
  SAY #52489 /* ~Als du dich verabschieden willst, spürst du plötzlich ein Kribbeln in deinem Schädel. Du bemerkst, daß in Ravels schwarzgeäderten Augen jetzt ein seltsames, gieriges Feuer flackert. ~ */
  IF ~~ THEN REPLY #52490 /* ~"Du wirst mich nicht gehen lassen, nicht wahr, Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 229
  IF ~~ THEN REPLY #52491 /* ~"Äh... Danke, Ravel. Ich muß mich jetzt von dir verabschieden."~ */ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #52492 /* ~"Eine aufmerksame Frage - doch ist sie nicht die echte Frage." Ravels Stimme wird zu einem merkwürdigen, sehr traurigen Flüstern, das wie ein schwaches Echo durch dein Gedächtnis hallt. "Die Frage lautet, *willst* du mich verlassen, Halb-Mann?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52493 /* ~"Schöne Ravel, du hast mir geholfen, als ich vor so langer Zeit zu dir kam, und du hast es jetzt abermals getan. Ich werde nicht vergessen, was du getan hast. Aber ich muß gehen - ich muß mehr über mich erfahren."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52494 /* ~"Ich muß. Es ist wichtig, daß ich soviel wie möglich über mich herausfinde, und es gibt noch vieles mehr, was ich wissen muß."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52495 /* ~"Ich will nicht hier an diesem Ort gefangen sein, Ravel. Es ist dein Zuhause, nicht meins."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52496 /* ~"Ich will nicht in diesem Irrgang gefangen sein. Habe ich vor zu gehen? Ja."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 230 // from: 219.2 222.1 227.1 228.1
  SAY #52497 /* ~"Ah... Das sagst du..." Ravels Stimme wird zu einem merkwürdigen, sehr traurigen Flüstern, das wie ein schwaches Echo durch dein Gedächtnis hallt. "Eine letzte Frage habe ich an dich: *Willst* du mich verlassen, mein kostbarer Halb-Mann?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52498 /* ~"Schöne Ravel, du hast mir geholfen, als ich vor so langer Zeit zu dir kam, und du hast es jetzt abermals getan. Ich werde nicht vergessen, was du getan hast. Aber ich muß gehen - ich muß mehr über mich erfahren."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52499 /* ~"Ich muß. Es ist wichtig, daß ich soviel wie möglich über mich herausfinde, und es gibt noch vieles mehr, was ich wissen muß."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52500 /* ~"Ich will nicht hier an diesem Ort gefangen sein, Ravel. Es ist deine Heimat, nicht meine."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52501 /* ~"Ich will nicht in diesem Irrgang gefangen sein. Habe ich vor zu gehen? Ja."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 231 // from: 229.2 230.2
  SAY #52502 /* ~"Nein... Wisse DIES..." Ravel hebt einen klauenbewehrten Finger, als ob sie dich warnen wollte. "Wisse, daß dies UNSERE Heimat ist, mein kostbarer Halb-Mann. Zwei Unsterbliche werden wir in diesem Schwarzstachel-Garten sein, und ich werde dich vor den Ebenen schützen."~ */
  IF ~~ THEN REPLY #52503 /* ~"Ich glaube, du weißt nicht, was du sagst, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 229.3 230.3
  SAY #52504 /* ~"Du machst einen Fehler, wenn du mich verlassen willst. Deine Antwort scheint aus Überzeugung zu kommen, aber sie ist die *falsche* Antwort, mein kostbarer Halb-Mann." Sie läßt ihre vergilbten Zähne zuschnappen wie ein Fangeisen. "Nein, nein, ich werde dich hier an diesem Ort *behalten*. Zwei Unsterbliche werden wir in diesem Schwarzstachel-Garten sein, und ich werde dich vor den Ebenen schützen."~ */
  IF ~~ THEN REPLY #52505 /* ~"Ich glaube, du weißt nicht, was du sagst, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 229.0 229.1 230.0 230.1 231.0 232.0
  SAY #52506 /* ~In der Luft um Ravel liegt ein schreckliches *Schimmern* - und das Geräusch brechender Zweige und Baumglieder, und das grausige Geräusch sich *biegender* und *splitternder* Bäume...~ */
  IF ~~ THEN REPLY #52507 /* ~"Wa...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Ravel",ANIM_MIMESTANCE)
~ GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #52508 /* ~Ravels Lippen kräuseln sich, und ihre Stimme wird schrill wie das Heulen des Windes. "Was weißt DU von WISSEN, Halb-Mann?! WISSE dies: WISSE, daß du bis IN ALLE EWIGKEIT hier in meinem dornigen Garten bleiben, niemals hinauskommen, und mich LIEBEN wirst, wie du es SOLLTEST, wie du es VERSPROCHEN HAST!"~ */
  IF ~~ THEN REPLY #52509 /* ~"Das werde ich nicht, Ravel. Droh mir nicht... Ich WERDE diesen Ort verlassen."~ */ GOTO 235
  IF ~~ THEN REPLY #52510 /* ~"Ravel, beruhige dich - ich muß gehen, aber ich werde zurückkommen. Kein..."~ */ GOTO 235
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52511 /* ~"Ich fürchte, ich wäre keine gute Gesellschaft, Ravel. Und ich kann auf keinen Fall bleiben. Es tut mir leid, aber du mußt mich durchlassen."~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0 234.1 234.2
  SAY #52512 /* ~"Ich werde dich NICHT gehen lassen. Ich habe die Macht, dich hier FESTZUHALTEN, und ich werde sie BENUTZEN. Mein Schwarzstachel-Irrgang wird dir NICHT erlauben, dich außerhalb von ihm zu bewegen, solange ich LEBE, mein kostbarer, *kostbarer* Mann..."~ */
  IF ~~ THEN REPLY #52513 /* ~"Ravel, ich will nicht mit dir kämpfen... Tu es nicht. Laß mich durch, und ich werde zurückkommen und dich besuchen. Du mußt nicht allein an diesem Ort bleiben."~ */ GOTO 236
  IF ~~ THEN REPLY #52514 /* ~"Ich kann also nur gehen, wenn du tot bist? Nun gut, vielleicht bist DU ja diejenige, die einen Fehler gemacht und mich unterschätzt hat, Alte."~ */ GOTO 237
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #52515 /* ~"ZURÜCKKEHREN?! ZURÜCKKEHREN, wie du vor SO LANGER ZEIT BEHAUPTET hast?! Nein... Nein, du wirst Ravel kein ZWEITES Mal ANLÜGEN! Kein JAHRHUNDERT mehr werde ich auf dich WARTEN..." Ravels Lippen öffnen sich, und ihre Klauen scheinen zu wachsen und scheußliche Krallen zu bilden. "Hier in meinem Garten wirst du BLEIBEN und NICHT LÄNGER über die Ebenen wandern...!"~ */
  IF ~~ THEN REPLY #52516 /* ~"Ravel, beruhige dich, das ist nicht NÖTIG..."~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 235.1 236.0
  SAY #52517 /* ~"Du hast deinen Platz vergessen, HALB-Mensch. Übe dich in Demut."~ [RAV065] */
  IF ~~ THEN REPLY #52518 /* ~"Ravel, TU das nicht..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ JOURNAL #52520 /* ~Ravel hat mir meine Fragen beantwortet, aber ich glaube nicht, daß sie erwartet hat, ich würde sie verlassen... Als ich ihr gesagt habe, daß ich gehen müsse, hat sie mich angegriffen und geschworen, daß sie dies nicht zulasse, solange sie lebe. Sie ließ mir keine Wahl, als mit ihr zu kämpfen.~ */ EXIT
  IF ~~ THEN REPLY #52519 /* ~"Wir werden sehen, Hexe..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ EXIT
END

IF ~~ THEN BEGIN 238 // from: 30.0 239.0
  SAY #52521 /* ~"Nun, mein kostbarer, kostbarer Halb-Mann, du trägst die größte aller Qualen... ewiges Leben. Könnte das Leben sich so um dich sorgen, wie Ravel es tut?" Sie knirscht mit ihren vergilbten Hauern, ein schreckliches Geräusch. "So mutig, so leidenschaftlich, so schrecklich verloren, traurig, traurig."~ */
  IF ~~ THEN REPLY #52522 /* ~"Ravel, *warum* hast du mich unsterblich gemacht? Ich muß es wi..."~ */ GOTO 41
END

IF ~~ THEN BEGIN 239 // from: 31.6
  SAY #52523 /* ~"Sieh dir ihre Augen genau aus der Nähe an... Du wirst ihre Qualen *sehen*, denn davon sprechen werden sie nicht. Nichts mehr wird Ravel sagen... Vielleicht würde sie mehr sagen, wenn sie in der Nähe wären und Ravel sie sehen könnte... Aber nicht an diesem Tag."~ */
  IF ~~ THEN REPLY #52524 /* ~"Warum werden sie von mir angezogen?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 240 // from: 152.4
  SAY #52525 /* ~"Und du hast mich gebissen, vor so langer Zeit, es war kein Kuß damals, sondern ein Biß ins Herz..." Ravel lächelt. "Sei nicht erstaunt, mein Schatz. Es ist nichts geschehen..."~ */
  IF ~~ THEN REPLY #52526 /* ~"Nimm wieder deine normale Form an, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 179.1 180.1 181.1
  SAY #52527 /* ~Mebbeths... Ravels... Gesicht entspannt sich, und du beobachtest, wie ihre Haut wieder den Blaustich annimmt und die blutrote Farbe in ihre Augen zurückkehrt. Sie blinzelt langsam, als müßte sie erst die Orientierung wiederfinden. ~ */
  IF ~~ THEN REPLY #52528 /* ~"Welche anderen Formen bist du gewesen, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52529 /* ~"Ich hätte noch mehr Fragen an dich, Ravel."~ */ GOTO 141
END
