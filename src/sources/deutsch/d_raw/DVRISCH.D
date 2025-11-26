// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVRISCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVRISCH~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3001 /* ~Das Aussehen dieser Frau mit den scharfen Gesichtszügen ist zwar attraktiv, aber auch ein wenig verstörend mit ihrer blauschwarzen Haut und ihren hellgelben Augen. Während sie dich prüfend betrachtet, entfaltet sich auf ihrem Rücken ein Paar fledermausartiger Flügel, die sich dann wieder auf ihrem Rücken zurechtzulegen scheinen.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 52.0
  SAY #50480 /* ~"So, so... Ein schwebender, körperloser, Ausflüchte machender Schädel..."~ */
  IF ~~ THEN GOTO 4
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",0)
~ THEN BEGIN 2 // from: 53.0
  SAY #50481 /* ~"So, so... Grace, die Gefallene... oder wie auch immer du dich jetzt nennst. Ich freue mich wirklich, dich hier zu sehen. Welchem Umstand habe ich die Ehre deines Besuchs zu verdanken? Ich dachte, du verkehrst nur noch selten mit Unsereins." Sie sieht dich einen Moment lang mit demselben dünnen, spöttischen Lächeln auf den Lippen an. "Oder ist dein Auftrag hier fast beendet?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 3 // from: 54.0
  SAY #50482 /* ~"So, so... Ein schwebender, körperloser, Ausflüchte machender Schädel und Grace, die Gefallene, oder wie auch immer du dich jetzt nennst. Ich freue mich wirklich, dich hier zu sehen. Welchem Umstand habe ich die Ehre deines Besuchs zu verdanken? Ich dachte, du verkehrst nur noch selten mit Unsereins." Sie sieht dich einen Moment lang mit demselben dünnen, spöttischen Lächeln auf den Lippen an. "Oder ist dein Auftrag hier fast beendet?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0 6.0
  SAY #50483 /* ~Sie kneift die Augen zusammen. "Du... Du bist der Mann mit den Narben, der herumläuft und Fragen stellt?" Sie mustert dich von Kopf bis Fuß. "Du siehst wirklich etwas verloren aus. Wolltest du wirklich reinkommen, oder siehst du dich hier nur um, weil du nichts Besseres zu tun hast?"

"Weil Vrischika...", sie zeigt auf sich, "...dir helfen kann."
~ */
  IF ~~ THEN REPLY #50485 /* ~"Wie kannst du mir helfen?"~ */ GOTO 19
  IF ~~ THEN REPLY #50486 /* ~"Was ist das für ein Ort?"~ */ GOTO 8
  IF ~~ THEN REPLY #50487 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #50488 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #50484 /* ~Ihre Antwort ist kurz, und sie schießt ihre Gegenfrage wie einen Pfeil ab: "Ich habe es mir selbst ausgesucht. Und du? Wohin führen dich deine Befehle als nächstes?" Sie dreht sich plötzlich zu dir um. "Weißt du, *kleiner* Mann...", Vrischika lächelt, als ließe sie sich die Worte genüßlich auf der Zunge zergehen, "...die beste Verführerin ist eine, die dich an die Illusion glauben läßt, sie sei gleichzeitig promiskuitiv und tugendhaft. Eine Mischung aus einer Prostituierten und einer Priesterin, um genau zu sein. Grace gehört zu den besten unter ihnen..." Sie wendet sich Grace, der Gefallenen, zu. "...nicht wahr? Man sollte nicht meinen, daß mehrere Jahrtausende der Sklaverei ihre Spuren hinterlassen haben, oder?"~ */
  IF ~~ THEN DO ~SetGlobal("Vris_vs_Grace","GLOBAL",1)
~ EXTERN ~DGRACE~ 152
END

IF ~~ THEN BEGIN 6 // from:
  SAY #50489 /* ~"Nun gut. Obwohl ihr es wart, die in *mein* Warenhaus gekommen seid." Vrischika sieht dich an.~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN GOTO 4
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #50717 /* ~"Ja?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.0 9.0 10.2 17.1 18.0 19.0 44.5 50.0 55.0
  SAY #50490 /* ~"Ich beantworte alle Fragen zu den Waren, aber ich lasse mich nicht auf dein berühmtes, endloses Frage-und-Antwort-Spiel ein, *verstanden*?"~ */
  IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN REPLY #50491 /* ~"Möchtest du vielleicht einen Sklaven oder Diener kaufen, Vrischika?"~ */ GOTO 44
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66961 /* ~"Ich hab jemandem die Scheusals Zunge gegeben, und sie hatte ein paar... üble Nebenwirkungen. Wie kann das angehen?"~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #50492 /* ~"Was bist du, Vrischika?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50493 /* ~"Was hast du damit gemeint, Morte würde 'Ausflüchte machen'?"~ */ GOTO 9
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50494 /* ~"Du und Grace, die Gefallene, ihr scheint euch nicht gerade zu mögen..."~ */ GOTO 10
  IF ~~ THEN REPLY #50495 /* ~"Erzähl mir wenigstens etwas über diesen Ort."~ */ GOTO 8
  IF ~~ THEN REPLY #50496 /* ~"Dann zeig mal deine Waren."~ */ GOTO 20
  IF ~~ THEN REPLY #50497 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 7.5
  SAY #50498 /* ~"Was du in diesem Laden siehst, ist das Ergebnis von vielen Handelsreisen kreuz und quer über die Ebenen." Sie weist mit ausholender Geste auf den Laden. "Waffen, Talismane... und auch andere *spezielle* Artikel stehen hier zum Verkauf... Dieses Warenhaus ist gefüllt mit allem, was selten und ach so exquisit ist. Deine Bedürfnisse. Ich stille sie."~ */
  IF ~~ THEN REPLY #50499 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 7
  IF ~~ THEN REPLY #50500 /* ~"Dann zeig mal deine Waren."~ */ GOTO 20
  IF ~~ THEN REPLY #50501 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #50502 /* ~"Ausflüchte machend... Tatsachen verdrehend, Meineide schwörend, sich verstellend, *lügend*... oh, hab ich das wirklich gesagt? Ich wollte sagen, ein schwebender, körperloser, *dozierender* Schädel. Im Sinne von belehrend - muß immer selbstgefällig seine Meinung kundtun." Vrischika lächelt unschuldig.~ */
  IF ~~ THEN REPLY #50503 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 7
  IF ~~ THEN REPLY #50504 /* ~"In Ordnung. Zeig mal deine Waren..."~ */ GOTO 20
  IF ~~ THEN REPLY #50505 /* ~"Ich... verstehe. Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.4
  SAY #50507 /* ~"Oh, diese Anhängerin des Baatezu-Lagers, die sich in Sigil niedergelassen hat? Eigenartig, nicht? Andererseits, wo könnte sie besser ihre Agenten ausbilden als in ihrem kleinen 'Bordell'...?"~ */
  IF ~~ THEN REPLY #50508 /* ~"Anhängerin des Baatezu-Lagers?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50509 /* ~"Ihre Agenten ausbilden?"~ */ GOTO 14
  IF ~~ THEN REPLY #50510 /* ~"Hmm. Ich hätte da noch eine Frage..."~ */ GOTO 7
  IF ~~ THEN REPLY #50511 /* ~"Ich möchte deine Waren sehen..."~ */ GOTO 20
  IF ~~ THEN REPLY #50512 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 17.0
  SAY #50513 /* ~"Nachdem ihre Mutter sie als Sklavin verkauft hat, war sie viele Jahrhunderte lang ein Spielzeug der Ebenen. Sie behauptet, daß sie sich aus ihren Ketten befreien konnte, aber ihren Worten kannst du soviel Glauben schenken wie denen jeder anderen Tanar'ri-Schlampe." Sie deutet ein Lächeln an. "Mich selbst natürlich ausgenommen."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 153
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50514 /* ~"Wahrheit?! *Wahrheit*?! Man kann sich nicht aus Verträgen mit den Baatezu 'befreien', in Menschenhaut gehüllte Schlampe. Du lügst, und alle Tanar'ri-Horden wissen das, von den niedersten Legionen bis zu den anderen Sukkuben, die über die Ebenen toben. 'Von Geburt an war Grace, die Gefallene, nichts als eine Baatezu-Sklavin, und das wird sie auch *immer* bleiben.' Du bist immer noch ein gelehriges Spielzeug der Baatezu, das sie foltern und herumkommandieren, wie es ihnen gefällt." Vrischika grinst höhnisch. "Du *benimmst* dich sogar genau wie sie."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 154
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50515 /* ~"Genug! Ich bin nicht bereit, deine Lügen anzuhören!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 155
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #50516 /* ~"Ja... Sie sind ihre Augen und Ohren in der Stadt Sigil und auf den Ebenen. Was sie nicht sehen oder hören, können sie jemandem abnötigen, der gesehen und gehört hat. Und wer würde vermuten, daß Menschen solcher Täuschungen und Tricks fähig wären? Ja, Grace ist wirklich clever. Vielleicht nicht so clever wie ihre Mutter, aber immerhin..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 156
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50517 /* ~"Aber *natürlich* nicht! Würde ich es wagen, Anlaß zu solchen Vermutungen zu geben? Aber vielleicht solltest du den Mann selbst urteilen lassen." Vrischika wendet sich dir zu, ihre Augen funkeln. "Wunderst du dich nicht, kleiner Mann? Kommt dir diesbezüglich niemals auch nur ein Anflug von Zweifel und Neugier in den Sinn? Erscheint dir das Arrangement im Bordell nicht *seltsam*?"~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #50518 /* ~Vrischika redet weiter, bevor du antworten kannst. "Occams Klinge kann zwar eine Narbe hinterlassen, aber sie kann auch den Krebs beseitigen, der so oft durch das Gift der Lügner und Phantasten verursacht wird."

"Und jetzt ist sie hier, mit dir auf Reisen. Höchst interessant. Warum sollte jemand, die Besitzerin eines solchen Etablissements, dieses aus irgendeinem Grund verlassen? Und das für einen Mann, den sie kaum kennt? Fragen über Fragen..."

"Die Antworten könnten in der Tat schmerzhaft sein."
~ */
  IF ~~ THEN EXTERN ~DGRACE~ 157
END

IF ~~ THEN BEGIN 17 // from:
  SAY #50519 /* ~"Oh, ich bin sicher, daß er gefragt hat... Welcher Mann könnte da widerstehen?" Vrischika lächelt spöttisch und schaut angewidert weg.~ */
  IF ~~ THEN REPLY #50520 /* ~"Was sagtest du eben darüber, daß sie eine Anhängerin des Baatezu-Lagers ist?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50521 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 7
  IF ~~ THEN REPLY #50522 /* ~"Ich möchte deine Waren sehen..."~ */ GOTO 20
  IF ~~ THEN REPLY #50523 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY #50524 /* ~Vrischika seufzt laut. "Ein Alu-Scheusal... ein Halbdämon. Meine Mutter war eine Tanar'ri, ein Scheusal, und mein Vater war ein großer König der Sterblichen. Was für eine unhöfliche Frage... Aber du siehst ja auch selbst recht unflätig aus, nicht wahr?"~ */
  IF ~~ THEN REPLY #50525 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 7
  IF ~~ THEN REPLY #50526 /* ~"Ich möchte deine Waren sehen..."~ */ GOTO 20
  IF ~~ THEN REPLY #50527 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.0
  SAY #50528 /* ~"Ich reise und handle viel. Ich höre viel, ich kaufe viel, und ich besitze viel. Vielleicht kann ich dir auch viel bieten. Wünschst du irgend etwas, das du gebrauchen kannst?"~ */
  IF ~~ THEN REPLY #50529 /* ~"Nur Antworten auf ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #50530 /* ~"Vielleicht. Was verkaufst du?"~ */ GOTO 20
  IF ~~ THEN REPLY #50531 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.6 8.1 9.1 10.3 17.2 18.1 19.1 50.1 55.1
  SAY #50533 /* ~"Würdest du dir gerne die Waffen und Talismane ansehen? Oder einige meiner *exotischeren* Erwerbungen?"~ */
  IF ~~ THEN REPLY #50534 /* ~"Die Waffen und Talismane..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50535 /* ~"Die exotischen Sachen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50536 /* ~"Gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1 22.2 23.1 24.1 31.2 31.3 32.1 33.1 34.1 37.2 38.1 41.1 43.1 58.1 59.6 60.6
  SAY #50539 /* ~Vrischika lächelt, als du dir die verschiedenen Regale in der Mitte des Ladens ansiehst. "Wenn du hier nichts findest, was dir gefällt, vorne und hinten im Laden gibt es noch mehr Objekte."~ */
  IF ~  Global("Vris_Buy_05","AR0609",0)
~ THEN REPLY #50551 /* ~Guck dir die Scheusalszunge näher an.~ */ GOTO 31
  IF ~  Global("Vris_Buy_06","AR0609",0)
~ THEN REPLY #50552 /* ~Guck dir die Gorgonische Salbe näher an.~ */ GOTO 32
  IF ~  Global("Vris_Buy_08","AR0609",0)
~ THEN REPLY #50554 /* ~Guck dir die würfelförmige Metallfigur näher an.~ */ GOTO 33
  IF ~  Global("Vris_Buy_09","AR0609",0)
~ THEN REPLY #50555 /* ~Guck dir den Monsterkrug näher an.~ */ GOTO 34
  IF ~~ THEN REPLY #66633 /* ~Guck dir den vorderen Teil des Ladens an.~ */ GOTO 59
  IF ~~ THEN REPLY #66634 /* ~Guck dir den hinteren Teil des Ladens an.~ */ GOTO 60
  IF ~~ THEN REPLY #50562 /* ~"Laß mich die Waffen und Talismane ansehen..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50563 /* ~"Im Moment interessiert mich nichts. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #50564 /* ~Vrischika bemerkt, daß du das Buch mit der Aufschrift "CHEATCODES" betrachtest. "Ja... Sie sind genau das, wofür du sie hältst. Schau sie dir ruhig an."~ */
  IF ~~ THEN REPLY #50565 /* ~"Betrügereiencodes? Ich verstehe nicht..."~ */ GOTO 23
  IF ~~ THEN REPLY #50566 /* ~Sieh dir die verschiedenen Betrügereiencodes an.~ */ GOTO 24
  IF ~~ THEN REPLY #50567 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50568 /* ~"Im Moment interessiert mich nichts. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #50573 /* ~"Ach, komm schon." Vrischika stemmt die Hände in die Hüften und legt den Kopf schief. "Spiel hier nicht den Naiven! Vergiß nicht, ich bin ein Scheusal, ich kann deine Aufregung *riechen*. Ja..." Sie spricht langsam, wie mit einem Kind. "Dies sind *Cheatcodes*. Sie versetzen dich in die Lage zu *betrügen*. Schau sie dir ruhig an. Sie werden dir schon nicht schaden."~ */
  IF ~~ THEN REPLY #50574 /* ~Sieh dir die verschiedenen Betrügereiencodes an.~ */ GOTO 24
  IF ~~ THEN REPLY #50575 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50576 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 23.0
  SAY #50577 /* ~Das Buch ist in verschiedene Kapitel unterteilt: Teleportations-Cheat, Heilungs-Cheat, Reichtums-Cheat, Zaubererneuerungs-Cheat, Attributpunktzahl-Cheat, Todes-Cheat, Gegenderkundungs-Cheat, Gutes-Wort-Cheat und Böses-Wort-Cheat.~ */
  IF ~~ THEN REPLY #50578 /* ~"Was willst du dafür?"~ */ GOTO 41
  IF ~~ THEN REPLY #50579 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50580 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 59.0
  SAY #50581 /* ~Du betrachtest eine Reihe von Flaschen, die alle die Bezeichnung "Babyöl" tragen. Vrischika nimmt eine in die Hand und hält sie dir hin. "Interessiert? Es ist natürlich das echte. Es wurde aus Tausenden von wimmernden, sterblichen Säuglingen hergestellt."~ */
  IF ~~ THEN REPLY #50582 /* ~"Eh... Nein, danke. Laß mich das andere Zeug sehen."~ */ GOTO 59
  IF ~~ THEN REPLY #50583 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 59.1
  SAY #50584 /* ~Du betrachtest eine kleine, verdrehte, zwergenähnliche Figur aus reiner Milchschokolade. "Sieht wirklich lecker aus, nicht wahr? Importiert von den Unteren Ebenen. Sie sind selten und bei Liebhabern von Schokolade und Konfekt sehr geschätzt. Es ist ein echter Quasit - ein Vertrauter der Scheusale, durch mächtige Zauberei in Schokolade verwandelt. Er kostet nur 199 Kupfermünzen."~ */
  IF ~  PartyGoldGT(198)
~ THEN REPLY #50585 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_01","AR0609",1)
DestroyPartyGold(199)
GiveItemCreate("ChocoQ",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50586 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 59
  IF ~~ THEN REPLY #50587 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 59.2
  SAY #50589 /* ~Du betrachtest ein recht unauffällig aussehendes Buch, das mit einem winzigen Messingschloß verschlossen ist. "Das", säuselt Vrischika, "ist der Kodex des Unfaßbaren. Ich kann nur sagen, er ist einfach... einfach... Nun, ich kann's nicht erklären. Worte alleine reichen dafür nicht aus! Für nur tausend einfache Kupfermünzen gehört er dir... Und glaub mir: Er ist seinen Preis wirklich wert."~ */
  IF ~  PartyGoldGT(999)
~ THEN REPLY #50590 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_02","AR0609",1)
DestroyPartyGold(1000)
GiveItemCreate("CodexI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50591 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 59
  IF ~~ THEN REPLY #50592 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 59.3
  SAY #50593 /* ~Du betrachtest eine kleine Glasphiole, auf deren Etikett "Deva-Tränen" steht. "Diese stammen von einem Deva, der in einem Gefecht des Blutkriegs gefangengenommen wurde. Die Scheusale haben den gefangenen Engel eine kleine Ewigkeit gefoltert, bis er schließlich entkam - dieses Fläschchen enthält die zwölf Tränen, die er in jener Zeit vergossen hat. Sie kosten nur hundert einfache Kupfermünzen."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50594 /* ~"Ich nehm sie."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50595 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 59
  IF ~~ THEN REPLY #50596 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 59.4 61.0
  SAY #50597 /* ~Du betrachtest eine kleine Glasphiole, auf deren Etikett "Deva-Tränen" steht. Vrischika reicht sie dir. "Diese stammen von einem Deva, der in einem Gefecht des Blutkriegs gefangengenommen wurde. Die Scheusale haben den gefangenen Engel eine kleine Ewigkeit gefoltert, bis er schließlich entkam - dieses Fläschchen enthält die zwölf Tränen, die er in jener Zeit vergossen hat. Man sagt, daß durch die Berührung mit ihnen selbst die rasendste Wut besänftigt wird - sogar diejenige der Zunge eines Scheusals." Vrischika lächelt grausam. "Sie kosten nur 999 einfache Kupfermünzen."~ */
  IF ~  PartyHasItem("EcNote")
~ THEN REPLY #64175 /* ~"Ich habe diesen Tausend-Kupfermünzen-Schuldschein vom Bordell..."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyItem("EcNote",FALSE)
GiveGoldForce(1)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 58
  IF ~  PartyGoldGT(998)
~ THEN REPLY #50598 /* ~"Die könnten dafür sorgen, daß die Scheusalzunge aufhört zu fluchen. Ich nehme sie."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",2)
DestroyPartyGold(999)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50599 /* ~"Ach, zeig mir mal die anderen Sachen..."~ */ GOTO 59
  IF ~~ THEN REPLY #50600 /* ~"Die könnten genau das sein, was Ecco braucht... aber nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 59.5
  SAY #50601 /* ~Du betrachtest eine Flasche, auf deren Etikett "Elixier der schrecklichen Trennung" steht. Vrischika reicht sie dir. "Dieses Zeug wurde von einer Gelehrten gemischt, die einst eine dunkle Seite an sich entdeckte, eine Seite, die von Zeit zu Zeit die Kontrolle über sie übernahm und sie veranlaßte, schreckliche Dinge zu tun. Dieser Trank sollte ihre dunkle Hälfte von der anderen 'abspalten' und zwei getrennte Wesen schaffen. Gnadentöter fanden und exekutierten sie jedoch wegen einer Reihe scheußlicher Morde, bevor sie den Trank anwenden konnte. Ich würde dir für das Elixier nur zweihundert einfache Kupfermünzen berechnen."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #50602 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_04","AR0609",1)
DestroyPartyGold(200)
GiveItemCreate("ElixirS",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50603 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 59
  IF ~~ THEN REPLY #50604 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.0
  SAY #50605 /* ~Du betrachtest etwas, das eine Zunge zu sein scheint, die in einem Glas voller Lake schwimmt. Vrischika betrachtet es mit gerunzelter Stirn. "Das ist die Zunge eines Scheusals... Eines Cornugons, glaube ich, aber wer weiß das schon genau? Man sagt, daß derjenige, dem man sie in den Mund steckt, die Fähigkeit zum Sprechen erlangt, selbst wenn er diese vorher nicht besaß. Ich verkaufe diese Kuriosität für nur sechsundsechzig Kupfermünzen, falls du sie haben möchtest."~ */
  IF ~  PartyGoldGT(65)
!Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50606 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  PartyGoldGT(65)
Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50607 /* ~"Ich nehm sie. Vielleicht gibt sie Ecco ihre Stimme zurück."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66812 /* ~"Das könnte Ecco die Stimme wiedergeben... Aber laß mich zuerst nochmal die anderen Dingen sehen..."~ */ JOURNAL #66814 /* ~Ich habe die Zunge eines Scheusals in Vrischikas Kuriositätenladen gesehen. So, wie sie sie beschreibt, hört es sich so an, als ob sie Ecco ihre Stimme zurückgeben könnte.~ */ GOTO 21
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50608 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66813 /* ~"Das gibt Ecco vielleicht ihre Stimme wieder,... aber nein danke. Leb wohl."~ */ JOURNAL #66814 /* ~Ich habe die Zunge eines Scheusals in Vrischikas Kuriositätenladen gesehen. So, wie sie sie beschreibt, hört es sich so an, als ob sie Ecco ihre Stimme zurückgeben könnte.~ */ EXIT
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50609 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1
  SAY #50610 /* ~Du betrachtest eine Flasche, auf deren Etikett "Gorgonische Salbe" steht. Vrischika hält sie für dich hoch. "Diese habe ich irgendeinem schwertwerfenden Materier abgehandelt... Perseus war sein Name, glaube ich. Trägt man sie auf die Oberfläche eines versteinerten Wesens, wird dieses wieder zu Fleisch und Blut. Nur hundert einfache Kupfermünzen. Wirklich ein Schnäppchen, wenn man bedenkt, wie praktisch sie sein könnte, falls einmal einer deiner Freunde in Stein verwandelt wird."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50611 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_06","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Gsalve",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50612 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50613 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 21.2
  SAY #50614 /* ~Du betrachtest ein kleines Metallabbild eines würfelartigen Wesens mit großen Augen in einem seiner Gesichter. Das Spielzeug hat zwei Beine, zwei Arme, zwei zusammenfaltbare Flügel und mindestens achtzehn Gelenke. Vrischika lächelt, als du es in die Hand nimmst. "Ein Sammlerstück vielleicht, oder ein Kunstwerk. Wer weiß? Aber mir gefällt es. Wenn du es kaufst, frag herum... Irgend jemand weiß vielleicht mehr darüber als ich. Du kannst es für nur hundert Kupfermünzen haben."~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50615 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_08","AR0609",1)
DestroyPartyGold(1500)
GiveItemCreate("Cube",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50616 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50617 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 21.3
  SAY #50618 /* ~Du betrachtest einen schlichten Krug... Trotz seines gewöhnlichen Aussehens scheust du dich davor, ihn zu berühren, aus Angst, er könne dich beißen. Vrischika beobachtet dich, kichert vor sich hin und zuckt dann mit den Schultern. "Es ist ein Krug. In ihm ist eine Art Monster gefangen - deswegen läuft es dir kalt den Rücken runter. Wenn du ihn haben möchtest... Er kostet nur 123 Kupfermünzen."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50619 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_09","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("MonJug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50620 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50621 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 60.0
  SAY #50622 /* ~Du betrachtest eine farbige, geschliffene Glaslinse von der Größe eines Handtellers, die von einem Stahlring gehalten wird. Eine kleine Vorrichtung, die aus dem Ring hervortritt, läßt das Ganze aussehen, als ob die Linse an irgendeiner Art von Uhrwerkmechanismus befestigt werden soll. Zudem verströmt sie einen schwachen Duft nach schrecklichem Parfüm. Vrischika hält sie für dich hoch. "Ich habe keine Ahnung, was das wirklich ist, aber es strahlt eine ziemlich mächtige Magie aus. Ein alter Soldat namens Ghysis hat sie mir von einem Schlachtfeld auf einer Unteren Ebene mitgebracht. Er hatte seine eigenen Leute getötet, um seinem Diensteinsatz dort zu entkommen. Er hat mir einige interessante Dinge mitgebracht, die er im Laufe des Feldzugs gesammelt hatte. Ich habe sie vor allem als Gesprächsstoff aufbewahrt, aber du kannst sie für 149 Kupfermünzen haben, wenn du willst."~ */
  IF ~  PartyGoldGT(148)
~ THEN REPLY #50623 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_10","AR0609",1)
DestroyPartyGold(149)
GiveItemCreate("Lens12",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50624 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 60
  IF ~~ THEN REPLY #50625 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 60.1
  SAY #50626 /* ~Du betrachtest einen Ring in einer kleinen, gepolsterten Schatulle. Vrischika hält sie für dich hoch, damit du den Ring aus der Nähe sehen kannst. "Dies ist Yevrahs Ring der nahezu vollständigen Unsichtbarkeit. Er macht seinen Träger unsichtbar - beinahe jedenfalls. Für die läppische Summe von 349 einfachen Kupfermünzen trenne ich mich von ihm."~ */
  IF ~  PartyGoldGT(348)
~ THEN REPLY #50627 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_11","AR0609",1)
DestroyPartyGold(349)
GiveItemCreate("RingAI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50628 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 60
  IF ~~ THEN REPLY #50629 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #50630 /* ~Du betrachtest einen seltsam geformten Dolch, der auf einem reich verzierten Ausstellungsregal ruht. Auf einer Plakette unter dem Gestell steht "Schwert des Wh'ynn". Vrischika klopft mit einer Fingerspitze auf den Griff. "Es ist auch als Betrügerklinge bekannt. Man braucht es nur hochzuhalten und gewinnt das Spiel. Wenn du dir sicher bist, daß du es haben willst, verkaufe ich es dir für fünfzehnhundert einfache Kupfermünzen."~ */
  IF ~~ THEN REPLY #50631 /* ~"Was meinst du damit - 'und gewinnt das Spiel'?"~ */ GOTO 38
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50632 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50633 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50634 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #50635 /* ~Vrischika sieht dich mit zusammengekniffenen Augen an. "Ach, komm schon. Du weißt *genau*, was ich meine. Kauf die Betrügerklinge, und du gewinnst jedes Spiel. So einfach ist das... Kostet dich nur fünfzehnhundert einfache Kupfermünzen. Willst du es haben oder nicht?"~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50636 /* ~"Ja, ich nehm's."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50637 /* ~"Nein... Aber laß mich noch mal die anderen Sachen sehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50638 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 60.3
  SAY #50639 /* ~Die Jahre haben ihre Spuren an dieser kleinen Flickenpuppe hinterlassen: Die Nähte der Puppe platzen auf, und die Fäden scheinen sich aufzulösen. Die Puppe sieht aus wie eine seltsam gekleidete Frau mit einem Heiligenschein aus Stacheln auf dem Kopf. Vrischika hält sie für dich hoch. "Diese wurde in einer gut gesicherten Kassette tief unter der Oberfläche von Sigil gefunden. Sie war Bestandteil einer kleinen Ansammlung von Schätzen und verbotenen magischen Texten, obwohl ich nicht weiß, wozu sie gut ist. Wenn sie dir gefällt - sie kostet nur neunundneunzig Kupfermünzen."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50640 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50641 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 60
  IF ~~ THEN REPLY #50642 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 60.4
  SAY #50643 /* ~Die Jahre haben ihre Spuren an dieser kleinen Flickenpuppe hinterlassen: Die Nähte der Puppe platzen auf, und die Fäden scheinen sich aufzulösen. Die Puppe ist offenbar ein Abbild der Dame der Schmerzen, aber ihre Knopfaugen und plüschige Weichheit flößen dir wenig Angst ein. Vrischika hält sie für dich hoch. "Diese wurde in einer gut gesicherten Kassette tief unter der Oberfläche von Sigil gefunden. Sie war Bestandteil einer kleinen Ansammlung von Schätzen und verbotenen magischen Texten, obwohl ich nicht weiß, wozu sie gut ist. Wenn sie dir gefällt - sie kostet nur neunundneunzig Kupfermünzen."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50644 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50645 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 60
  IF ~~ THEN REPLY #50646 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 24.0
  SAY #50647 /* ~Vrischika tritt näher an dich heran. "Bloße Münzen sind nicht genug für solch ein Objekt. Ich hätte gerne ein Pfund deines Bluts, das dir hier vor meinen Augen mit *dieser* Klinge entnommen..." Plötzlich hält sie einen gezackten Dolch in der Hand. "...und in diesem eisernen Behälter gesammelt wird. Mit weniger gebe ich mich nicht zufrieden."~ */
  IF ~~ THEN REPLY #50648 /* ~"Okay."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,10)
FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Vris_Buy_07","GLOBAL",1)
GiveItemCreate("Cheats",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #50649 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50650 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #50651 /* ~Innerhalb von Minuten ist das greuliche Ritual vollzogen, und Vrischika gibt dir das Buch mit einem zufriedenen Grinsen auf den Lippen. "Habe jetzt keine Zeit mehr. Leb wohl."~ */
  IF ~~ THEN REPLY #50652 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 26.0 27.0 28.0 29.1 30.0 31.0 31.1 32.0 33.0 34.0 35.0 36.0 37.1 38.0 39.0 40.0 51.0
  SAY #50653 /* ~"Ja", schnurrt Vrischika, "eine weise Wahl." Die Kupfermünzen, die du in ihre Hand schüttest, scheinen zu verschwinden, sobald sie ihre Handfläche berühren. Sie gibt dir den Gegenstand. "Viel Vergnügen mit deiner neuesten Errungenschaft."~ */
  IF ~~ THEN REPLY #58910 /* ~"Ich würde jetzt gern einen Blick auf die Waffen und Talismane werfen..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58911 /* ~"Ich würde mir gern noch einmal die exotischeren Artikel ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #50654 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 7.0
  SAY #50655 /* ~Die vollen, schwarzen Lippen Vrishikas' verziehen sich zu einem Grinsen. "Ich bin *immer* daran interessiert, mehr Unterstützung zu bekommen. Standish, dieser faule Dummkopf, hilft mir im Laden, aber ich könnte noch jemanden für mein Anwesen brauchen. Wen würdest du anbieten? Ich bezahle fünftausend Münzen, für ein anständiges Angebot."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50656 /* ~"Wie wär's mit Morte?"~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 504
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50657 /* ~"Dieses Tiefling-Mädchen, Annah."~ */ DO ~SetGlobal("Sell_Annah","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DANNAH~ 250
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50658 /* ~"Dak'kon, den Githzerai."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 167
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50659 /* ~"Grace, die Gefallene."~ */ DO ~SetGlobal("Sell_Grace","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ GOTO 48
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #50660 /* ~"Diesen Modron hier - Nordom."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DNORDOM~ 13
  IF ~~ THEN REPLY #50661 /* ~"Ach, vergiß es. Ich hätte noch eine Frage..."~ */ GOTO 7
  IF ~~ THEN REPLY #50662 /* ~"Eigentlich niemanden. Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #50663 /* ~Vrischika sieht Morte mit zusammengekniffenen Augen an. "Hmmm... Er könnte schon nützlich sein, ja. Solange dir klar ist, daß du ihn nie wiedersehen wirst... Ich zahle dir fünftausend Kupfermünzen für ihn."~ */
  IF ~~ THEN REPLY #50664 /* ~"Nie wiedersehen, sagst du? Gut... Nimm ihn."~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DMORTE~ 505
  IF ~~ THEN REPLY #50665 /* ~"Nein, besser nicht. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #50666 /* ~Vrishika zeigt ihrem neuesten Sklaven, Morte, ein Stück Pergament. "Hier... Das ist die Adresse von meinem Haus, im Viertel der Dame. Geh jetzt dorthin... Versuch zu fliehen, und ich hetz dir so einen Trupp Scheusale auf den Hals, daß du darum betteln wirst, zurück nach Sigil kommen und mir dienen zu dürfen." Dann wendet sie sich dir zu. "Und *dir*... meinen Dank. Er wird sicher eine gute Unterhaltung sein. Hier sind deine fünftausend Einfachen... Leb wohl."~ */
  IF ~~ THEN REPLY #50668 /* ~"Leb wohl."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Morte")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #50667 /* ~Vrischika sieht Dak'kon mit zusammengekniffenen Augen an. "Hmmm... Ein Githzerai, was? Und ein Zerth noch dazu. Solange dir klar ist, daß du ihn nie wiedersehen wirst... Ich zahle dir fünftausend Kupfermünzen für ihn."~ */
  IF ~~ THEN REPLY #50669 /* ~"Nie? Ich verstehe. Nimm ihn."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DDAKKON~ 168
  IF ~~ THEN REPLY #50670 /* ~"Nein, besser nicht. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.3
  SAY #50671 /* ~"Mach dich nicht *lächerlich*", sagt Vrischika mit einem verächtlichen Grinsen und schüttelt den Kopf. "Als ob sie *dir* gehören würde, und du sie so einfach verkaufen könntest... Geh und komm wieder her, wenn du wieder klar denken kannst - oder laß es bleiben."~ */
  IF ~~ THEN REPLY #50672 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #50673 /* ~Vrischika sieht Nordom mit zusammengekniffenen Augen an. "Hmmm... Ein Uhrwerksklave ganz für mich allein? Ja, das ist ein gutes Geschäft. Solange dir klar ist, daß du ihn nie wiedersehen wirst... Ich zahle dir fünftausend Kupfermünzen für ihn."~ */
  IF ~~ THEN REPLY #50674 /* ~"Nie? Ich verstehe. Nimm ihn."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DNORDOM~ 14
  IF ~~ THEN REPLY #50675 /* ~"Nein, besser nicht. Leb wohl, Vrischika."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",1)
~ THEN BEGIN 50 // from: 6.1
  SAY #50676 /* ~Vrischika deutet eine kurze Verbeugung an. "Schön, daß du wieder hier bist. Willst du etwas kaufen?"~ */
  IF ~~ THEN REPLY #50677 /* ~"Nicht gerade jetzt. Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #50678 /* ~"Ja."~ */ GOTO 20
  IF ~~ THEN REPLY #52599 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 60.2
  SAY #50679 /* ~Du betrachtest einen großen Bierkrug aus Zinn, der mit seltsamen Runen bedeckt ist. Vrischika hält ihn hoch, damit du ihn aus der Nähe betrachten kannst. "Ein Bierkrug von ungewöhnlicher Machart, der seinen Inhalt - meistens natürlich Bier - immer eiskalt hält, egal welche Temperaturen um ihn herum herrschen. 299 einfache Kupfermünzen, und du kannst das kälteste Bier genießen, das du jemals außerhalb der Paraebene des Eises getrunken hast."~ */
  IF ~  PartyGoldGT(298)
~ THEN REPLY #50680 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Vris_Buy_14","AR0609",1)
DestroyPartyGold(299)
GiveItemCreate("DwfMug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50681 /* ~"Laß mich die anderen Sachen noch mal ansehen..."~ */ GOTO 60
  IF ~~ THEN REPLY #50682 /* ~"Nein, danke. Leb wohl, Vrischika."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 52 // from:
  SAY #50683 /* ~Das Aussehen dieser Frau mit den scharfen Gesichtszügen ist zwar attraktiv, aber auch ein wenig verstörend mit ihrer blauschwarzen Haut und ihren hellgelben Augen. Während sie dich prüfend betrachtet, entfaltet sich auf ihrem Rücken ein Paar fledermausartiger Flügel, die sich dann wieder auf ihrem Rücken zurechtzulegen scheinen.~ */
  IF ~~ THEN GOTO 1
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 53 // from:
  SAY #50684 /* ~Das Aussehen dieser Frau mit den scharfen Gesichtszügen ist zwar attraktiv, aber auch ein wenig verstörend mit ihrer blauschwarzen Haut und ihren hellgelben Augen. Während sie dich prüfend betrachtet, entfaltet sich auf ihrem Rücken ein Paar fledermausartiger Flügel, die sich dann wieder auf ihrem Rücken zurechtzulegen scheinen.~ */
  IF ~~ THEN GOTO 2
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 54 // from:
  SAY #50685 /* ~Das Aussehen dieser Frau mit den scharfen Gesichtszügen ist zwar attraktiv, aber auch ein wenig verstörend mit ihrer blauschwarzen Haut und ihren hellgelben Augen. Während sie dich prüfend betrachtet, entfaltet sich auf ihrem Rücken ein Paar fledermausartiger Flügel, die sich dann wieder auf ihrem Rücken zurechtzulegen scheinen.~ */
  IF ~~ THEN GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DGrace")
~ THEN BEGIN 55 // from:
  SAY #52596 /* ~Vrischika deutet eine kurze Verbeugung an. "Schön, daß du wieder hier bist. Willst du etwas kaufen?"~ */
  IF ~~ THEN REPLY #52597 /* ~"Nicht gerade jetzt. Ich hätte da ein paar Fragen..."~ */ GOTO 7
  IF ~~ THEN REPLY #52598 /* ~"Ja."~ */ GOTO 20
  IF ~~ THEN REPLY #52600 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63985 /* ~Vrishika zeigt ihrem neuesten Sklaven, Dak'kon, ein Stück Pergament. "Hier... das ist die Adresse meines Hauses, im Viertel der Dame, gehe jetzt dorthin... versuche zu fliehen, und ich hetze dir ein Rudel Scheusale auf den Leib, daß du darum betteln wirst, zurück nach Sigil kommen zu dürfen und mir zu dienen." Sie wendet sich dir zu. "Und *dir*... meinen Dank, ich bin mir sicher, er wird sehr unterhaltsam sein. Hier hast du fünftausend Kupfermünzen... leb wohl."~ */
  IF ~~ THEN REPLY #63986 /* ~"Leb wohl."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Dakkon")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #63987 /* ~Vrishika zeigt ihrem neuesten Sklaven, Nordom, ein Stück Pergament. "Hier... das ist die Adresse meines Hauses, im Viertel der Dame, gehe jetzt dorthin... versuche zu fliehen, und ich hetze dir ein Rudel Scheusale auf den Leib, daß du darum betteln wirst, zurück nach Sigil kommen zu dürfen und mir zu dienen." Sie wendet sich dir zu. "Und *dir*... meinen Dank, ich bin mir sicher, er wird sehr unterhaltsam sein. Hier hast du fünftausend Kupfermünzen... leb wohl."~ */
  IF ~~ THEN REPLY #63988 /* ~"Leb wohl."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Nordom")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 29.0
  SAY #64171 /* ~Vrischika runzelt leicht die Stirn und betrachtet die Notiz. "Nun... Ich denke, Standish könnte es später abholen. In Ordnung, da hast du es." Sie gibt dir den Gegenstand. "Bitte sehr, viel Spaß mit deinem neuen Kauf."~ */
  IF ~~ THEN REPLY #64172 /* ~"Ich würde jetzt gern einen Blick auf die Waffen und Talismane werfen..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64173 /* ~"Ich würde mir gern noch einmal die exotischeren Artikel ansehen..."~ */ GOTO 21
  IF ~~ THEN REPLY #64174 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.4 25.0 26.1 27.1 28.1 29.2 30.1 60.5
  SAY #66631 /* ~Du betrachtest die verschiedenen Regale, die im vorderen Teil von Vrischikas Laden stehen.~ */
  IF ~~ THEN REPLY #66635 /* ~Guck dir das Baby-Öl näher an.~ */ GOTO 25
  IF ~  Global("Vris_Buy_01","AR0609",0)
~ THEN REPLY #66636 /* ~Guck dir den Schokoladen-Quasit näher an.~ */ GOTO 26
  IF ~  Global("Vris_Buy_02","AR0609",0)
~ THEN REPLY #66637 /* ~Guck dir den Kodex des Unfaßbaren näher an.~ */ GOTO 27
  IF ~  Global("Vris_Buy_03","AR0609",0)
!Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66638 /* ~Guck dir die Deva-Tränen näher an.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66639 /* ~Guck dir die Deva-Tränen näher an.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ JOURNAL #66815 /* ~Ich habe ein paar Tränen eines Devas untersucht, die in Vrischikas Laden zum Verkauf stehen. Sie hat mir erzählt, sie würden auch die schrecklichste Wut besänftigen - selbst die der Zunge eines Scheusals. Vielleicht könnte das Ecco helfen...~ */ GOTO 29
  IF ~  Global("Vris_Buy_04","AR0609",0)
~ THEN REPLY #66640 /* ~Guck dir das Elixir der schrecklichen Trennung näher an.~ */ GOTO 30
  IF ~~ THEN REPLY #66641 /* ~Guck dir den mittleren Bereich des Ladens an.~ */ GOTO 21
  IF ~~ THEN REPLY #66642 /* ~Guck dir den hinteren Teil des Ladens an.~ */ GOTO 60
  IF ~~ THEN REPLY #66643 /* ~"Laß mich die Waffen und Talismane ansehen..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66644 /* ~"Im Moment interessiert mich nichts. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 21.5 35.1 36.1 39.1 40.1 51.1 59.7
  SAY #66632 /* ~Du betrachtest die verschiedenen Regale, die im hinteren Teil von Vrischikas Laden stehen.~ */
  IF ~  Global("Vris_Buy_10","AR0609",0)
~ THEN REPLY #66645 /* ~Guck dir die farbige Linse näher an.~ */ DO ~SetGlobal("CW_Vrischika_Ghysis","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Vris_Buy_11","AR0609",0)
~ THEN REPLY #66646 /* ~Guck dir Yevrahs Ring näher an.~ */ GOTO 36
  IF ~  Global("Vris_Buy_14","AR0609",0)
~ THEN REPLY #66647 /* ~Guck dir den runenbedeckten Bierkrug näher an.~ */ GOTO 51
  IF ~  Global("Vris_Buy_13","AR0609",0)
Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #66648 /* ~Guck dir die zerfledderte Flickenpuppe näher an.~ */ GOTO 39
  IF ~  Global("Vris_Buy_13","AR0609",0)
GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #66649 /* ~Guck dir die zerfledderte Flickenpuppe näher an.~ */ GOTO 40
  IF ~~ THEN REPLY #66650 /* ~Guck dir den vorderen Teil des Ladens an.~ */ GOTO 59
  IF ~~ THEN REPLY #66651 /* ~Guck dir den mittleren Bereich des Ladens an.~ */ GOTO 21
  IF ~~ THEN REPLY #66652 /* ~"Laß mich die Waffen und Talismane ansehen..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66653 /* ~"Im Moment interessiert mich nichts. Leb wohl, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 7.1
  SAY #66959 /* ~Vrischika lächelt nur und zeigt auf einen Gegenstand im vorderen Teil des Ladens.~ */
  IF ~~ THEN REPLY #66960 /* ~Untersuche den Gegenstand, auf den sie zeigt.~ */ GOTO 29
END
