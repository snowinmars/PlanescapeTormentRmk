// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWRK~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5503 /* ~Der Hofarbeiter dreht sich um und rennt weg.~ */
  IF ~~ THEN REPLY #5504 /* ~Erledigt.
~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5505 /* ~Diese Person ignoriert dich geflissentlich, während dich die Wachen zum Ausgang begleiten.~ */
  IF ~~ THEN REPLY #5506 /* ~Erledigt.~ */ EXIT
END

IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #5507 /* ~"Ich habe gehört, daß man in der Nähe der Leiche eine Schmiedeahle gefunden hat. Aber ich glaube, daß man überall hier so ein Ding finden kann. Ich wette, daß Thildon der Schuldige ist - es gibt in der Gießerei keinen hinterhältigeren Typen als ihn."~ */
  IF ~~ THEN REPLY #5508 /* ~"Danke für deine Hilfe. Aber ich bräuchte noch die Antworten auf ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #5509 /* ~"Okay. Das ist alles, was ich wissen wollte."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 5.1 8.0 11.0 16.0 17.0 18.0
  SAY #5510 /* ~"Frag nur."~ */
  IF ~~ THEN REPLY #5511 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #5512 /* ~"Was machst du?"~ */ GOTO 5
  IF ~~ THEN REPLY #5513 /* ~"Wer ist dein Boss?"~ */ GOTO 6
  IF ~~ THEN REPLY #5514 /* ~"Vergiss es. Lebe wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #5515 /* ~"Warum? Bist du bei den Nehmern? Ich habe meine Steuern schon bezahlt."~ */
  IF ~~ THEN REPLY #5516 /* ~Die Nehmer? Wer?"~ */ GOTO 7
  IF ~~ THEN REPLY #5517 /* ~"Nein, ich war bloß neugierig. Weißte. Wollte nur nett sein."~ */ GOTO 8
  IF ~~ THEN REPLY #5518 /* ~"Vergiß es. Ich wollte sowieso was anderes wissen."~ */ GOTO 3
  IF ~~ THEN REPLY #5519 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #5520 /* ~"Ich verdien mein tägliches Brot. Ich versuch mich hochzuarbeiten. Ich halt' den Laden sauber. Ich sorge dafür, daß die Schmiede das Material bekommen, wenn sie es brauchen. Ich sorge dafür, daß die fertigen Produkte dahin gelangen, wo sie sollen... kurzum, ich mache meine Arbeit."~ */
  IF ~~ THEN REPLY #5521 /* ~"Deine Arbeit besteht also vor allem aus Saubermachen und Murren?"~ */ GOTO 9
  IF ~~ THEN REPLY #5522 /* ~"Ich verstehe. Hätte da noch 'ne Frage an dich."~ */ GOTO 3
  IF ~~ THEN REPLY #5523 /* ~"Ich verstehe. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #5524 /* ~"Warum? Arbeitest du für ihn?~ */
  IF ~~ THEN REPLY #5525 /* ~"Ähm ... ja."~ */ GOTO 10
  IF ~~ THEN REPLY #5526 /* ~"Willste mich auf'n Arm nehmen?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY #5527 /* ~"Du kennst die ... Steuereintreiber der Stadt? Was bist du, ein Planloser? Ich muß zurück an die Arbeit."~ */
  IF ~~ THEN REPLY #5528 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #5529 /* ~"Ich hab' keine Zeit für Nettigkeiten, vor allem nicht, wenn einem der Hofchef auf die Finger guckt. Wir haben im Moment viel zu tun. Laß es mich so sagen: Ich kann erst wieder freundlich sein, wenn dieses Projekt abgeschlossen ist."~ */
  IF ~~ THEN REPLY #5530 /* ~"Okay. Vielleicht kannst du mir eine andere Frage beantworten."~ */ GOTO 3
  IF ~~ THEN REPLY #5531 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #5532 /* ~"Wenn du es so betrachten willst. Da ich gerade dieses Göttermenschengeschwafel lerne, glaube ich eher, daß es ein Test der Sturheit ist. Ich betrachte mein ganzes Leben als Test der Sturheit."~ */
  IF ~~ THEN REPLY #5533 /* ~"Warum siehst du's nicht als Intelligenztest und gehst einfach?"~ */ GOTO 12
  IF ~~ THEN REPLY #5534 /* ~"Hilft das wirklich?"~ */ GOTO 13
  IF ~~ THEN REPLY #5535 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #5536 /* ~"Und er ist das Salz der Erde. Ein echter Gentleman. Ich kann nur Gutes über ihn berichten, aber jetzt muß ich zurück an die Arbeit. Leb wohl." Der Arbeiter wendet sich ab und ignoriert weitere Fragen.~ */
  IF ~~ THEN REPLY #5537 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #5538 /* ~"Einer der verdorbensten Schurken, denen ich das Pech hatte zu begegnen... Und ich bin im Stock mit ein paar echten Gewinnern aufgewachsen. Ich hoffe, er wird bald ins Gras beißen... schmerzvoll und grausam. Aber das passiert mit den meisten von uns Hofarbeitern sowieso."
~ */
  IF ~~ THEN REPLY #5539 /* ~"Ich verstehe. Beantworte mir noch ein paar Fragen."~ */ GOTO 3
  IF ~~ THEN REPLY #5540 /* ~"Schon kapiert. Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #5541 /* ~"Aber wohin sollte ich gehen? Wer sollte mich einstellen? Das System hat dafür gesorgt, daß ich zur keiner anderen Arbeit außer zu niederen Tätigkeiten tauge, denn ich wurde im Stock geboren. Verdammt, ich bin glücklich, daß ich es soweit gebracht habe. Wenn du mir keine bessere Arbeit als diese hier verschaffen kannst, dann bin ich hier glücklich. Immer noch besser als zu verhungern."~ */
  IF ~~ THEN REPLY #5542 /* ~"Oh, ich bitte dich, du kannst heute alles erreichen, wenn du's nur willst."~ */ GOTO 14
  IF ~~ THEN REPLY #5543 /* ~"Das klingt überzeugend. Aber glaubst du nicht, du könntest es besser machen?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #5544 /* ~"Erstaunlicherweise ja. Gibt mit Hoffnung, daß ich es zu mehr bringen werde, entweder in diesem Leben oder im nächsten. Vielleicht verschließe ich vor den Tatsachen meine Augen, aber ich will dir mal folgendes sagen: Wenn du einmal Dreck gefressen hast, so wie ich, dann freust du dich über die kleinste Freundlichkeit, die das Leben dir schenkt. Für die unteren Klassen ist das Leben kein Zuckerschlecken, Dussel." Der Arbeiter wendet sich ab. "Ich muß zurück an die Arbeit. Leb wohl."~ */
  IF ~~ THEN REPLY #5545 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #5546 /* ~"Was? Um schließlich wie ein ausgemergelter Zombie wie du auszusehen? Nein danke. Ich weiß nicht, was du gemacht hast, aber ich bin glücklich, so wie ich bin. Eine langsame Entwicklung entspricht eher meiner Lebensphilosophie." Der Arbeiter wendet sich ab und ignoriert dich.~ */
  IF ~~ THEN REPLY #5547 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #5548 /* ~"Ich sag dir was... Du lebst dein Leben und ich meins. Klar? Ich muß zurück an die Arbeit." Der Arbeiter wendet sich ab und ignoriert dich.~ */
  IF ~~ THEN REPLY #5549 /* ~Verschwinde.~ */ EXIT
END

IF ~  GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #5550 /* ~"Ich sage dir, bei all den aufregenden Sachen, die heutzutage hier so passieren, habe ich kaum eine Ahnung, was eigentlich vor sich geht. Es ist so, als ob ich den Stock nie verlassen hätte... Wie kann ich dir helfen?"~ */
  IF ~~ THEN REPLY #5551 /* ~"Du kannst mir ein paar Fragen beantworten."~ */ GOTO 3
  IF ~~ THEN REPLY #5552 /* ~"Kannste nicht. Vergiß es einfach."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #5553 /* ~Du siehst einen abgerissenen Stockbewohner, der Kisten schleppt. Du kannst nicht einmal erkennen, ob es sich bei der Jammergestalt um einen Mann oder eine Frau handelt. "Was willst du von mir?"~ */
  IF ~~ THEN REPLY #5554 /* ~"Bloß ein paar Antworten."~ */ GOTO 3
  IF ~~ THEN REPLY #5555 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #5556 /* ~"Was willst du?"
~ */
  IF ~~ THEN REPLY #5557 /* ~"Bloß ein paar Antworten."~ */ GOTO 3
  IF ~~ THEN REPLY #5558 /* ~"Nichts."~ */ EXIT
END
